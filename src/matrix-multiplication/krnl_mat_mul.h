#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

namespace Matrix {

/**
 * @brief Load a COO matrix from memory to a stream
*/
void load(Complex::cmplx_t *A, hls::stream<Complex::cmplx_t> &A_stream,
          dim_t A_size);

/**
 * @brief Store a COO matrix from a stream to a memory
*/
void store(Complex::cmplx_t *C, hls::stream<Complex::cmplx_t> &C_stream,
          dim_t C_size);

namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<Complex::cmplx_t> &A_stream,
             hls::stream<Complex::cmplx_t> &B_stream,
             hls::stream<Complex::cmplx_t> &C_stream,
             dim_t A_size,
             dim_t B_size);

} // namespace Multiplication
} // namespace Matrix
