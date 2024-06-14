#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ,
                           dim_t B_NZ);
}

namespace Matrix {
namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<Complex::cmplx_t> &A_stream,
             hls::stream<Complex::cmplx_t> &B_stream,
             hls::stream<Complex::cmplx_t> &C_stream, dim_t size, flag_t row_maj);

} // namespace Multiplication
} // namespace Matrix
