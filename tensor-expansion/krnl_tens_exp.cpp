#include "krnl_tens_exp.h"

void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_size, dim_t B_size,
                      dim_t C_size) {
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
  tensor::load(A, A_stream, A_size);
  tensor::load(B, B_stream, B_size);
  tensor::expansion::compute(A_stream, B_stream, C_stream, A_size, B_size);
  tensor::store(C_stream, C, C_size);
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
             hls::stream<coo_t> &C_stream, dim_t A_size, dim_t B_size) {}

} // namespace expansion
} // namespace tensor
