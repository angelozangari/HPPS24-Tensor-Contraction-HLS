#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

namespace Tensor {

/**
 * @brief Load a COO tensor from memory to a stream
 */
void load(Complex::cmplx_t *A, hls::stream<Complex::cmplx_t> &A_stream,
          dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(hls::stream<Complex::cmplx_t> &C_stream, Complex::cmplx_t *C,
           dim_t C_size);

namespace Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<Complex::cmplx_t> &A_stream,
             hls::stream<Complex::cmplx_t> &B_stream,
             hls::stream<Complex::cmplx_t> &C_stream, const rank_t A_R,
             const rank_t B_R);

} // namespace Expansion
} // namespace Tensor
