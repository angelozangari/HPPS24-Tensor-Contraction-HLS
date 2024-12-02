#include "krnl_right_tp.h"

using namespace std;

void krnl_right_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16 // TODO change depth
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256 // TODO change depth
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Right;

  size_t writing_head = 0;
  hls::stream<complex_t> A_stream, C_stream;
  // clang-format off
#pragma HLS STREAM variable=A_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=C_stream depth=STREAM_SIZE
  // clang-format on

#pragma HLS DATAFLOW

  load(A, A_stream);
  compute_first(A_stream, C_stream);
  store(C_stream, C, writing_head);
  load(A, A_stream);
  compute_second(A_stream, C_stream, A_R);
  store(C_stream, C, writing_head);
}

namespace Tensor {
namespace Product {
namespace Right {

// TODO COSIM: size this buffer according to the latency reports in burst read
constexpr uint8_t DDR_BURST_BUFFER_SIZE = 8;

void load(complex_t *A, hls::stream<complex_t> &A_stream) {
  bool end_of_tensor_reached = false;
  size_t read_head = 0;
  complex_t tmp;
  hls::stream<complex_t> burst_stream;
  // clang-format off
#pragma HLS STREAM variable=burst_stream depth=DDR_BURST_BUFFER_SIZE
  // clang-format on

  // TODO COSIM: check if this is a bottleneck

TPR_LOAD_LOOP:
  for (;;) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on

#pragma HLS DATAFLOW

    // this loop read from DDR in bursts to avoid the latency of checking element-wise the
    // boundary of the tensor, though it introduces the issue of Memory Safety
  TPR_LOAD_READ_BURST:
    for (size_t i = 0; i < DDR_BURST_BUFFER_SIZE; i++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on
      tmp = A[read_head++];
      burst_stream.write(tmp);
    }

    // this loop checks the boundary of the tensor
    // and set a flag to stop reading from DDR when the end of the tensor is reached
    // otherwise spins as a free-running pipeline
  TPR_LOAD_CHECK_BOUNDARY:
    for (size_t i = 0; i < DDR_BURST_BUFFER_SIZE; i++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on
      tmp = burst_stream.read();
      if (!end_of_tensor_reached)
        A_stream.write(tmp);

      if (LAST_IN_TENSOR(tmp.m))
        end_of_tensor_reached = true;
    }

    if (end_of_tensor_reached) {
      break;
    }
  }
}

void compute_first(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream) {
  complex_t a;

TPR_COMPUTE_FIRST_LOOP:
  // TODO: do not use empty, use a read non-blocking
  while (!A_stream.empty()) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_stream.read();
    LAST_IN_TENSOR(a.m) = false;
    C_stream.write(a);
  }
}

void compute_second(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
                    rank_t A_R) {
  complex_t a;
  dim_t skip = 1 << A_R;

TPR_COMPUTE_SECOND_LOOP:
  // TODO: do not use empty, use a read non-blocking
  while (!A_stream.empty()) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_stream.read();
    X(a.m) = X(a.m) + skip;
    Y(a.m) = Y(a.m) + skip;
    C_stream.write(a);
  }
}

void store(hls::stream<complex_t> &C_stream, complex_t *C, size_t &writing_head) {
  complex_t c;

TPR_STORE_LOOP:
  // TODO: do not use empty, use a read non-blocking
  while (!C_stream.empty()) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    c = C_stream.read();
    C[writing_head++] = c;
  }
}

} // namespace Right
} // namespace Product
} // namespace Tensor
