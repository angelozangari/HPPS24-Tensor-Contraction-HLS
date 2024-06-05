#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
/**
 * @brief Kernel for tensor expansion
 */
void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ, dim_t B_NZ,
                      rank_t A_R, rank_t B_R);
}

namespace Tensor::Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, rank_t A_R, rank_t B_R);

} // namespace Tensor::Expansion
