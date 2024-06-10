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

namespace Matrix {

namespace Multiplication {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t *C_NZ) {
  hls::stream<coo_t> A_stream_row_buffer, B_stream_col1_buffer, B_stream_col2_buffer;
  coo_t a, b, c;

  *C_NZ = 0;

// POTENTIAL IMPROVEMENT: keep 2 rows of A at a time so that we can pipeline the computation of n-C elems

LOOP_P: // store the matrix by in col_i stream buffers
  for (int p = 0; p < MATRIX_SIZE * MATRIX_SIZE; p++) {
    // ISSUE: how to check when B_stream ends
    b = B_stream.read();
    if (b.y == 0) {
      B_stream_col1_buffer.write(b);
    } else {
      B_stream_col2_buffer.write(b);
    }
  }

LOOP_N: // iterate over A rows; A is nxn, n = MATRIX_SIZE
  for (int n = 0; n < MATRIX_SIZE; n++) {
    LOOP_M: // store A row
    for (int m = 0; m < MATRIX_SIZE; m++) {
      A_stream_row_buffer.write(A_stream.read());
    }

  LOOP_L: // compute c element
    for (int l=0; l < MATRIX_SIZE; l++) {
      // c += A_stream_row_buffer[]
    }

    C_stream.write(c);
    // when writing NZ c elem - increment C_NZ
    *C_NZ++;
  }

}

// TODO/ISSUE: add guard on last_in_row

} // namespace Multiplication
} // namespace Matrix
