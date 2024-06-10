#include "krnl_mat_mul.h"
#include "../tensor-expansion/krnl_tens_exp.h"

using namespace Complex;

void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C,
                           dim_t A_NZ, dim_t B_NZ) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A
#pragma HLS INTERFACE s_axilite port=B
#pragma HLS INTERFACE s_axilite port=C
#pragma HLS INTERFACE s_axilite port=A_NZ
#pragma HLS INTERFACE s_axilite port=B_NZ
#pragma HLS INTERFACE s_axilite port=return
  // clang-format on
  
  hls::stream<coo_t> A_stream, B_stream, C_stream;
  dim_t C_NZ;

//#pragma HLS dataflow
  Tensor::load(A, A_stream, A_NZ);
  Tensor::load(B, B_stream, B_NZ);
  Matrix::Multiplication::compute(A_stream, B_stream, C_stream, &C_NZ);
  // C_NZ calculated in compute function
  Tensor::store(C_stream, C, C_NZ);
}

namespace matrix {

/*
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
*/

namespace Multiplication {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t *C_NZ) {

// allocate 2 streams to store the two columnns of B
  hls::stream<coo_t> A_stream_row_buffer, B_stream_col1_buffer, B_stream_col2_buffer;
  coo_t a, b, c;

  *C_NZ = 0;
// POTENTIAL IMPROVEMENT: store 

LOOP_P: // store the matrix by in col_i stream buffers
  for () {

  }

LOOP_N: // iterate over A rows
  for () {
  LOOP_N: // store A row
  for () {

  }

  LOOP_N: // compute c element
    for () {
      // iterate over A row buf stream and B cols buf streams
    }

    // when writing NZ c elem - increment C_NZ
    *C_NZ++;
  }

}

} // namespace Multiplication
} // namespace matrix
