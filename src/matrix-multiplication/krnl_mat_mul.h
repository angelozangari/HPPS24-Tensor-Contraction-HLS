#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, rank_t A_R,
                           dim_t A_NZ, dim_t B_NZ, flag_t row_maj, dim_t *CD);
}

namespace Matrix {
namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t A_R, flag_t row_maj, dim_t *CD);

} // namespace Multiplication
} // namespace Matrix
