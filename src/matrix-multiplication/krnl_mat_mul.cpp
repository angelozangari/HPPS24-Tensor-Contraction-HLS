#include "krnl_mat_mul.h"

using namespace Complex;

void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C) {


}

namespace matrix {

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

namespace Multiplication {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream) {

// allocate 2 streams to store the two columnns of B
  hls::stream<coo_t> B_stream_col1_buffer, B_stream_col2_buffer;
  coo_t a, b, c;

// POTENTIAL IMPROVEMENT: allocate 1 stream to store a column of A

LOOP_P: // store the matrix by in col_i stream buffers
  for () {

  }

LOOP_N: // iterate over a \in A elements

LOOP_M: // compute c element

}

} // namespace Multiplication
} // namespace matrix
