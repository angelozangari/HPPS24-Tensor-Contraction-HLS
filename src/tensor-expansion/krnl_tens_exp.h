#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ, dim_t B_NZ,
                      rank_t A_R, rank_t B_R);
}

namespace Tensor {
namespace Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const dim_t B_NZ, const rank_t B_R);

} // namespace Expansion
} // namespace Tensor
