#pragma once

#include <cstdint>

#include "../types.h"
#include "ap_int.h"
#include "hls_stream.h"

extern "C" {
/**
 * @brief Kernel for matrix multiplication
 */
void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, dim_t A_size, dim_t B_size,
                            dim_t C_size);
}

namespace matrix {

/** 
 * @brief Load a COO tensor from memory to a stream
*/
void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size);

/**
 * @brief Store a COO tensor from a stream to memory
 */
void store(coo_t *C, hls::stream<coo_t> &C_stream, dim_t C_size);

namespace multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t A_size, dim_t B_size);

} // namespace multiplication
} // namespace matrix