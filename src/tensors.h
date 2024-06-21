#pragma once

#include "hls_stream.h"
#include "types.h"

namespace Tensor {

/**
 * @brief Load a COO tensor from memory to a stream
 */
void load(Complex::cmplx_t *Ad, coo_meta_t *Am, hls::stream<coo_t> &A_stream,
          dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(hls::stream<coo_t> &C_stream, Complex::cmplx_t *Cd, coo_meta_t *Cm,
           dim_t C_size);

} // namespace Tensor
