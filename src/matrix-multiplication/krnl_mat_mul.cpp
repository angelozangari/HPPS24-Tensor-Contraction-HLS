#include "krnl_mat_mul.h"

using namespace Complex;

void matrix_multiplication(cmplx_t *A, cmplx_t *B, cmplx_t *C,
                           dim_t A_size, dim_t B_size) {
    // clang-format off
        // TODO: add pragmas
    // clang-format on
    
    // hls-streams for matrices
    hls::stream<cmplx_t> A_stream, B_stream, C_stream;
    
    // Load matrices A, B
    Matrix::load(A, A_stream, A_size);
    Matrix::load(B, B_stream, B_size);
    // Compute matrix multiplication
    Matrix::Multiplication::compute(A_stream, B_stream, C_stream, A_size, B_size);
    // Store result
    Matrix::store(C, C_stream, A_size);
}




namespace Matrix {

void load(Complex::cmplx_t *A, hls::stream<Complex::cmplx_t> &A_stream,
          dim_t A_size) {
    // TODO: pragmas
    for (int i = 0; i < A_size; i++) {
        A_stream.write(A[i]);
    }
}

void store(Complex::cmplx_t *C, hls::stream<Complex::cmplx_t> &C_stream,
          dim_t C_size) {
    // TODO: pragmas
    for (int i = 0; i < C_size; i++) {
        C[i] = C_stream.read();
    }
}

namespace Multiplication {

    // TODO: impl matmul

} // namespace Multiplication
} // namespace Matrix