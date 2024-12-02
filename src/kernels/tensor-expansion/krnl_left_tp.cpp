#include "krnl_left_tp.h"

using namespace std;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16 // TODO change depth
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256 // TODO change depth
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  cache_t CACHE;
  size_t i = 0, reading_head = 0, writing_head = 0, elements_in_row_read = 0;
  bool first_row_cached = false, row_exhausted = false, tensor_exhausted = false;

  // TODO: merge the two independent loop together as a single loop

TPL_MAIN_LOOP:
  while (!tensor_exhausted) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    // First pass: compute the first part of the tensor product
  TPL_FIRST_PASS_LOOP:
    for (i = 0; !row_exhausted; i++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on
      left_tp_dataflow(A, C, CACHE, reading_head, writing_head, elements_in_row_read,
                       first_row_cached, true, row_exhausted, tensor_exhausted);
    }

    // If a single iteration was performed, hence the first row size is less than
    // the cache size, then the cache is valid and the reading index can be kept as is,
    // otherwise the reading index needs to be reset to row start index (subtracting the
    // elements read in the row)
    if (i == 1) {
      first_row_cached = true; // Cache is valid for the next pass
    } else {
      first_row_cached = false; // Cache is not valid, reset reading head
      CACHE.reset_head();
      reading_head -= elements_in_row_read;
    }

    // Reset row-wise information for the next pass
    CACHE.reset_tail();
    row_exhausted = false;
    elements_in_row_read = 0;

    // Second pass: compute the second part of the tensor product
  TPL_SECOND_PASS_LOOP:
    for (i = 0; !row_exhausted; i++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on
      left_tp_dataflow(A, C, CACHE, reading_head, writing_head, elements_in_row_read,
                       first_row_cached, false, row_exhausted, tensor_exhausted);
    }

    // Reset row-wise information for the next iteration
    first_row_cached = false;
    row_exhausted = false;
    elements_in_row_read = 0;
    CACHE.reset();
  }
}

namespace Tensor {
namespace Product {
namespace Left {

void left_tp_dataflow(Tensor::complex_t *A, Tensor::complex_t *C, cache_t &CACHE,
                      size_t &reading_head, size_t &writing_head,
                      size_t &elements_in_row_read, bool first_row_cached,
                      bool compute_fist_pass, bool &row_exhausted,
                      bool &tensor_exhausted) {
#pragma HLS INLINE

  hls::stream<complex_t> A_row, A_cached, C_row;
  // clang-format off
#pragma HLS STREAM variable=A_row depth=STREAM_SIZE
#pragma HLS STREAM variable=A_cached depth=STREAM_SIZE
#pragma HLS STREAM variable=C_row depth=STREAM_SIZE
  // clang-format off
    
#pragma HLS dataflow
  fetch_elems(A, first_row_cached, A_row, reading_head, elements_in_row_read);
  cache_write(A_row, CACHE);
  cache_read(CACHE, A_cached, row_exhausted, tensor_exhausted);
  compute(A_cached, compute_fist_pass, C_row);
  store(C_row, C, writing_head);
}

void fetch_elems(complex_t *A, bool first_row_cached, hls::stream<complex_t> &A_row,
                 size_t &reading_head, size_t &elements_in_row_read) {
  bool end_of_row_reached = false;
  complex_t tmp;
  hls::stream<complex_t> burst_stream;

LTP_FETCH_READ_BURST:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    if (!first_row_cached) {
      // read from head index and update to the next one
      tmp = A[reading_head++]; // read from DDR
      // increase elements read in this row
      elements_in_row_read++;

      burst_stream.write(tmp);
      // A_row.write(tmp);

#ifdef QCS_HLS_CSIM
      // this is introduced to avoid the CSIM to access the DDR out of bounds
      // TODO COSIM: check if it's proper
      if (LAST_IN_ROW(tmp.m))
        break;
#endif
    }
  }

LTP_FETCH_CHECK_BOUNDARY:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    if (!first_row_cached) {
      tmp = burst_stream.read();
      if (!end_of_row_reached)
        A_row.write(tmp);

      if (LAST_IN_ROW(tmp.m))
        end_of_row_reached = true;

#ifdef QCS_HLS_CSIM
      // this is introduced to avoid the CSIM to access the DDR out of bounds
      // TODO COSIM: check if it's proper
      if (LAST_IN_ROW(tmp.m))
        break;
#endif
    }
  }
}

void cache_write(hls::stream<complex_t> &A_row, cache_t &cache) {
  complex_t tmp;

TLP_CACHE_WRITE_LOOP:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    // exit prematurely if stream is consumed
    // write to cache from stream
    if (A_row.read_nb(tmp))
      cache.write(tmp);
  }
}

void cache_read(cache_t &cache, hls::stream<complex_t> &A_cached, bool &row_exhausted,
                bool &tensor_exhausted) {
  complex_t tmp;

TLP_CACHE_READ_LOOP:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    // read from cache and write to stream
    tmp = cache.read();
    A_cached.write(tmp);

    // if last in row then break
    if (LAST_IN_ROW(tmp.m)) {
      row_exhausted = true;
      if (LAST_IN_TENSOR(tmp.m))
        tensor_exhausted = true;
      break;
    }
  }
}

void compute(hls::stream<complex_t> &A_cached, bool first_pass,
             hls::stream<complex_t> &C_row) {
  complex_t a;

TLP_COMPUTE_LOOP:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_cached.read();
    if (first_pass) {
      X(a.m) = X(a.m) << 1;
      Y(a.m) = Y(a.m) << 1;
      LAST_IN_TENSOR(a.m) = false;
    } else {
      X(a.m) = (X(a.m) << 1) + 1;
      Y(a.m) = (Y(a.m) << 1) + 1;
    }
    C_row.write(a);
    if (A_cached.empty())
      break;
  }
}

void store(hls::stream<complex_t> &C_row, complex_t *C, size_t &writing_head) {
  complex_t tmp;

TPL_STORE_LOOP:
  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    if (C_row.empty())
      break;
    tmp = C_row.read();
    C[writing_head++] = tmp;
  }
}

} // namespace Left
} // namespace Product
} // namespace Tensor
