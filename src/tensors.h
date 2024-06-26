#pragma once

#include "hls_stream.h"
#include "types.h"

namespace Tensor {

/**
 * @brief Load a COO tensor from memory to a stream
 */
void load(float *Ar, float *Ai, coo_meta_t *Am, hls::stream<float> &Ar_stream,
          hls::stream<float> &Ai_stream, hls::stream<coo_meta_t> &Am_stream,
          dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
           hls::stream<coo_meta_t> &Cm_stream, float *Cr, float *Ci, coo_meta_t *Cm,
           dim_t C_size);

} // namespace Tensor
