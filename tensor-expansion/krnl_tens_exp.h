#pragma once

#include <cstdint>

#include "../types.h"
#include "ap_int.h"
#include "hls_stream.h"

extern "C" {
/**
 * @brief Kernel for tensor expansion
 */
void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_size, dim_t B_size,
                      dim_t C_size);
}

namespace tensor {

/**
 * @brief Load a COO tensor from memory to a stream
 */
void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(hls::stream<coo_t> &C_stream, coo_t *C, dim_t C_size);

namespace expansion {

/**
 * @brief Compute the tensor expansion of two tensors
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t A_size, dim_t B_size);

} // namespace expansion
} // namespace tensor
