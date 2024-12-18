#include "krnl_right_tp.h"

using namespace std;

void krnl_right_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=32
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Right;

  size_t writing_head = 0;

  block_dataflow(A, C, writing_head, A_R, size, true);
  block_dataflow(A, C, writing_head, A_R, size, false);
}

namespace Tensor {
namespace Product {
namespace Right {

void block_dataflow(complex_t *A, complex_t *C, size_t &writing_head, rank_t A_R,
                    dim_t size, bool is_first) {
  hls::stream<complex_t> A_stream, C_stream;
  // clang-format off
#pragma HLS STREAM variable=A_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=C_stream depth=STREAM_SIZE
#pragma HLS DATAFLOW
  // clang-format on

  load(A, A_stream, size);
  compute(A_stream, C_stream, A_R, size, is_first);
  store(C_stream, C, writing_head, size);
}

void load(complex_t *A, hls::stream<complex_t> &A_stream, dim_t size) {
  complex_t tmp;

TPR_LOAD_LOOP:
  for (size_t i = 0; i < size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    tmp = A[i];
    A_stream.write(tmp);
  }
}

void compute(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
             rank_t A_R, dim_t size, bool is_first) {
  complex_t a;
  dim_t skip = 1 << A_R;

TPR_COMPUTE_LOOP:
  for (size_t i = 0; i < size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a = A_stream.read();
    if (is_first) {
      LAST_IN_TENSOR(a.m) = false;
    } else {
      X(a.m) = X(a.m) + skip;
      Y(a.m) = Y(a.m) + skip;
    }
    C_stream.write(a);
  }
}

void store(hls::stream<complex_t> &C_stream, complex_t *C, size_t &writing_head,
           dim_t size) {
  complex_t c;

TPR_STORE_LOOP:
  for (size_t i = 0; i < size; i++) {
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
