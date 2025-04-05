#include "krnl_right_tp.h"

using namespace std;

void krnl_right_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16
#pragma HLS INTERFACE m_axi port=C bundle=gmem0 depth=32
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Right;

  hls::stream<complex_t> A_stream, C_stream;
  // clang-format off
#pragma HLS STREAM variable=A_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=C_stream depth=STREAM_SIZE
#pragma HLS DATAFLOW
  // clang-format on

  load(A, A_stream, size);
  compute(A_stream, C_stream, A_R, size);
  store(C_stream, C, size);
}

namespace Tensor {
namespace Product {
namespace Right {

void load(complex_t *A, hls::stream<complex_t> &A_stream, dim_t size) {
  complex_t tmp;

TPR_LOAD_LOOP:
  for (size_t i = 0; i < size * 2; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    tmp = A[i % size];
    A_stream.write(tmp);
  }
}

void compute(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
             rank_t A_R, dim_t size) {
  complex_t a;
  dim_t skip = 1 << A_R;

TPR_COMPUTE_LOOP_1:
  for (size_t i = 0; i < size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_stream.read();
    LAST_IN_TENSOR(a.m) = false;
    C_stream.write(a);
  }

TPR_COMPUTE_LOOP_2:
  for (size_t i = 0; i < size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_stream.read();
    X(a.m) = X(a.m) + skip;
    Y(a.m) = Y(a.m) + skip;
    C_stream.write(a);
  }
}

void store(hls::stream<complex_t> &C_stream, complex_t *C, dim_t size) {
  complex_t c;

TPR_STORE_LOOP:
  for (size_t i = 0; i < size * 2; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    c = C_stream.read();
    C[i] = c;
  }
}

} // namespace Right
} // namespace Product
} // namespace Tensor
