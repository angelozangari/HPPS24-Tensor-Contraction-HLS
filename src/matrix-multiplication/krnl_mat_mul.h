#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void matrix_multiplication(Complex::cmplx_t *Ad, coo_meta_t *Am,
                           Complex::cmplx_t *Bd, coo_meta_t *Bm,
                           Complex::cmplx_t *Cd, coo_meta_t *Cm, rank_t A_R,
                           dim_t A_NZ, dim_t B_NZ, dim_t *CD);
}

namespace Matrix {
namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t A_R, dim_t *CD);

} // namespace Multiplication
} // namespace Matrix
