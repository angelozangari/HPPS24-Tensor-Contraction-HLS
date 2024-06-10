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

/**
 * @brief Load a COO tensor from memory to a stream
 */
void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(hls::stream<coo_t> &C_stream, coo_t *C, dim_t C_size);

namespace Expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t A_R, const rank_t B_R);

} // namespace Expansion
} // namespace Tensor
