#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

namespace Tensor {
namespace Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<cmplx_t> &A_stream, hls::stream<cmplx_t> &B_stream,
             hls::stream<cmplx_t> &C_stream, const rank_t A_R,
             const rank_t B_R);

} // namespace Expansion
} // namespace Tensor
