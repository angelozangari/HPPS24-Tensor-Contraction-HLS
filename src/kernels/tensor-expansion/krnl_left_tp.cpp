#include "krnl_left_tp.h"

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;

  complex_t a;
  size_t read = 0;
  hls::stream<complex_t> A_row, C_row;
  // clang-format off
#pragma HLS STREAM variable=A_row depth=16
#pragma HLS STREAM variable=C_row depth=16
  // clang-format on

  // load the first row of A
  load_tensor_row(A, 0, A_row);
  // load again the same row of A
  read = load_tensor_row(A, 0, A_row);

  // compute the first line of the tensor product
  for (size_t i = 0; i < read; i++) {
    a = A_row.read();
    X(a.m) = X(a.m) << 1;
    Y(a.m) = Y(a.m) << 1;
    LAST_IN_TENSOR(a.m) = false;
    C_row.write(a);
  }

  // compute the second
  for (size_t i = 0; i < read; i++) {
    a = A_row.read();
    X(a.m) = X(a.m) << 1 + 1;
    Y(a.m) = Y(a.m) << 1 + 1;
    C_row.write(a);
  }

  // Tensor::Expansion::tensor_expansion_chunked(A, B, C, A_R, B_R);
}

namespace Tensor {

size_t load_tensor_row(complex_t *M, size_t index, hls::stream<complex_t> &M_stream) {
  complex_t tmp;
  size_t n = 0, i = index;

LOAD_TENSOR_LOOP:
  for (;; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on

    tmp = M[index + i];
    M_stream.write(tmp);
    n++;

    // break only when reaching the end of the tensor
    if (LAST_IN_TENSOR(tmp.m)) {
      break;
    }
  }

  // return the number of elements read
  return n;
}

namespace Product {
namespace Left {} // namespace Left
} // namespace Product
} // namespace Tensor
