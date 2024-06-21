#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void tensor_expansion(Complex::cmplx_t *Ad, coo_meta_t *Am,
                      Complex::cmplx_t *Bd, coo_meta_t *Bm,
                      Complex::cmplx_t *Cd, coo_meta_t *Cm, dim_t A_NZ,
                      dim_t B_NZ, rank_t A_R, rank_t B_R);
}

namespace Tensor {
namespace Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t B_R);

} // namespace Expansion
} // namespace Tensor
