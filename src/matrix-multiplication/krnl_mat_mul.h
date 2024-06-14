#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

namespace Matrix {
namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<Complex::cmplx_t> &A_stream,
             hls::stream<Complex::cmplx_t> &B_stream,
             hls::stream<Complex::cmplx_t> &C_stream, dim_t size);

} // namespace Multiplication
} // namespace Matrix
