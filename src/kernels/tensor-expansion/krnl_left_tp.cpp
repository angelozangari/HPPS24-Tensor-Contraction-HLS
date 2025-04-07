#include "krnl_left_tp.h"

using namespace std;
using namespace hls;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
  #pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=4096 latency=30 num_read_outstanding=128 max_read_burst_length=128
  #pragma HLS INTERFACE m_axi port=C bundle=gmem0 depth=8192 latency=30 num_write_outstanding=128 max_write_burst_length=128
  #pragma HLS INTERFACE s_axilite port=A_R bundle=control
  #pragma HLS INTERFACE s_axilite port=size bundle=control
  #pragma HLS INTERFACE s_axilite port=return bundle=control
  #pragma HLS STABLE variable=A
  #pragma HLS STABLE variable=C
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  dim_t writing_ix = 0;
  ap_uint<1> ended = 0;
  stream<load_request_t> load_req_stream;
  stream<chunk_t> compute_stream;
  stream<chunk_t> writing_stream;
  // clang-format off
#pragma HLS STREAM variable=load_req_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=compute_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=writing_stream depth=STREAM_SIZE
  // clang-format on

  load_req_stream.write(load_request_t());

  while (!load_req_stream.empty()) {
    // clang-format off
  #pragma HLS PIPELINE II=8 style=frp
  #pragma HLS DATAFLOW
    // clang-format on

    load_chunk(A, size, load_req_stream, compute_stream);
    compute(compute_stream, writing_stream, load_req_stream);
    store(C, writing_ix, writing_stream);
  }

  // opt_complex_t A_chunk[CHUNK_SIZE], tmp;
  // size_t reading_ix = 0, next_reading_ix = 0, last_row_start = 0, next_row_start = 0,
  //        writing_ix = 0, j, l;

  // // flag registers
  // ap_uint<1> first_pass = 1, end_of_row_reached = 0;

  // while (writing_ix < size) {
  //   reading_ix = next_reading_ix;

  //   // fill buffer with optional values
  //   for (j = 0; j < CHUNK_SIZE; j++) {
  //     l = reading_ix + j;
  //     A_chunk[j] = (l < size) ? opt_complex_t(A[l]) : opt_complex_t();
  //   }

  //   for (j = 0; j < CHUNK_SIZE; j++) {
  //     if (A_chunk[j].valid) {
  //       complex_t &a = A_chunk[j].value;

  //       // update values in buffer
  //       if (first_pass) {
  //         X(a.m) = X(a.m) << 1;
  //         Y(a.m) = Y(a.m) << 1;
  //         LAST_IN_TENSOR(a.m) = false;
  //       } else {
  //         X(a.m) = (X(a.m) << 1) + 1;
  //         Y(a.m) = (Y(a.m) << 1) + 1;
  //       }

  //       // check if should go back
  //       if (LAST_IN_ROW(a.m) && first_pass) {
  //         // currently next_reading_ix is not updated yet
  //         next_row_start = next_reading_ix + j + 1;
  //         next_reading_ix = last_row_start;
  //         last_row_start = next_row_start;
  //         first_pass = false;
  //         // set last valid to break futute loop
  //         A_chunk[j].last_valid = 1;
  //         break;
  //       } else if (LAST_IN_ROW(a.m) && !first_pass) {
  //         next_reading_ix = next_row_start;
  //         first_pass = true;
  //         break;
  //       }
  //     }
  //   }

  //   // write buffer in C
  //   for (j = 0; j < CHUNK_SIZE; j++) {
  //     if (A_chunk[j].valid)
  //       C[writing_ix++] = A_chunk[j].value;
  //     if (A_chunk[j].last_valid)
  //       break;
  //   }
  // }
}

namespace Tensor {
namespace Product {
namespace Left {

void load_chunk(complex_t *A, size_t size, stream<load_request_t> &request_stream,
                stream<chunk_t> &to_compute) {
  // clang-format off
#pragma HLS INLINE off
  // clang-format on

  chunk_t chunk;
  value_t v;
  dim_t l, row_start_at;

  load_request_t req = request_stream.read();
  row_start_at = req.row_start_at;
  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    l = req.start + i;
    if (l < size) {
      v = value_t(A[l]);
      v.first_pass = req.first_pass;
      v.row_start_at = row_start_at;
      v.index_on_A = l;
    } else {
      v = value_t();
    }
    chunk[i] = v;
  }
  to_compute.write(chunk);
}

void compute(stream<chunk_t> &to_compute, stream<chunk_t> &to_write,
             stream<load_request_t> &request_stream) {
  // clang-format off
#pragma HLS INLINE off
  // clang-format on

  load_request_t req;
  ap_uint<1> end_of_row_reached = 0, all_invalid = 0;

  chunk_t chunk = to_compute.read();

  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    value_t &v = chunk[i];
    complex_t &a = v.value;

    if (!end_of_row_reached && v.valid) {

      if (v.first_pass) {
        X(a.m) = X(a.m) << 1;
        Y(a.m) = Y(a.m) << 1;
        LAST_IN_TENSOR(a.m) = false;
      } else {
        X(a.m) = (X(a.m) << 1) + 1;
        Y(a.m) = (Y(a.m) << 1) + 1;
      }

      if (LAST_IN_ROW(a.m) && v.first_pass) {
        req.first_pass = 0;
        req.row_start_at = v.row_start_at;
        req.start = req.row_start_at;
        end_of_row_reached = 1;
      } else if (LAST_IN_ROW(a.m) && !v.first_pass) {
        req.first_pass = 1;
        req.row_start_at = v.index_on_A + 1;
        req.start = req.row_start_at;
        end_of_row_reached = 1;
      }
    } else {
      v.valid = 0;
    }

    if (i == 0 && v.valid == 0)
      all_invalid = 1;
  }

  to_write.write(chunk);
  if (!all_invalid) {
    request_stream.write(req);
  }
}

void store(complex_t *C, dim_t &writing_ix, stream<chunk_t> &to_write) {
  // clang-format off
  #pragma HLS INLINE off
  // clang-format on

  chunk_t chunk = to_write.read();

  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    value_t tmp = chunk[i];
    if (tmp.valid)
      C[writing_ix++] = tmp.value;
  }
}

// void compute(stream<complex_t> &A_cached, bool first_pass, stream<complex_t> &C_row)
// {
//   complex_t a;

// TLP_COMPUTE_LOOP:
//   for (size_t i = 0; i < CACHE_SIZE; i++) {
//     // clang-format off
// #pragma HLS PIPELINE II=1
//     // clang-format on
//     a = A_cached.read();
//     if (first_pass) {
//       X(a.m) = X(a.m) << 1;
//       Y(a.m) = Y(a.m) << 1;
//       LAST_IN_TENSOR(a.m) = false;
//     } else {
//       X(a.m) = (X(a.m) << 1) + 1;
//       Y(a.m) = (Y(a.m) << 1) + 1;
//     }
//     C_row.write(a);
//     if (A_cached.empty())
//       break;
//   }
// }

// void store(stream<complex_t> &C_row, complex_t *C, size_t &writing_head) {
//   complex_t tmp;

// TPL_STORE_LOOP:
//   for (size_t i = 0; i < CACHE_SIZE; i++) {
//     // clang-format off
// #pragma HLS PIPELINE II=1
//     // clang-format on
//     if (C_row.empty())
//       break;
//     tmp = C_row.read();
//     C[writing_head++] = tmp;
//   }
// }

} // namespace Left
} // namespace Product
} // namespace Tensor
