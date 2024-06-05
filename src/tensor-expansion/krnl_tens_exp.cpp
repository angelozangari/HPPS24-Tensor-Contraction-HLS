#include "krnl_tens_exp.h"

void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ, dim_t B_NZ,
                      rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A_size
#pragma HLS INTERFACE s_axilite port=B_size
#pragma HLS INTERFACE s_axilite port=C_size
  // clang-format on

  hls::stream<coo_t> A_stream, B_stream, C_stream;

#pragma HLS dataflow
  tensor::load(A, A_stream, A_NZ);
  tensor::load(B, B_stream, B_NZ);
  tensor::expansion::compute(A_stream, B_stream, C_stream, A_R, B_R);
  tensor::store(C_stream, C, A_NZ * B_NZ);
}

namespace tensor {

void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size) {
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    A_stream.write(A[i]);
  }
}

void store(hls::stream<coo_t> &C_stream, coo_t *C, dim_t C_size) {
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    C[i] = C_stream.read();
  }
}

namespace expansion {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, rank_t A_R, rank_t B_R) {
  hls::stream<coo_t> aij, blm;
  coo_t a1, a2, b1, b2, c;
  dim_t i = 0, j = 0;

  a1 = A_stream.read();
  aij.write(a1);
  i++;
  a2 = A_stream.read();
  while (a1.y == a2.y) {
    aij.write(a2);
    i++;
    a2 = A_stream.read();
  }

  b1 = B_stream.read();
  blm.write(b1);
  j++;
  b2 = B_stream.read();
  while (b1.y == b2.y) {
    blm.write(b2);
    j++;
    b2 = B_stream.read();
  }

  for (int k = 0; k < i; k++) {
    a1 = aij.read();
    for (int l = 0; l < j; l++) {
      b1 = blm.read();
      c.data = Complex::mul(a1.data, b1.data);
      c.x = a1.x * A_R + b1.x;
      c.y = a1.y * A_R + b1.y;
      C_stream.write(c);
    }
  }

  a2 = A_stream.read();
  while (a1.y == a2.y) {
    aij.write(a2);
  }
}

} // namespace expansion
} // namespace tensor
