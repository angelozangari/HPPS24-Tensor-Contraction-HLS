#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "kernels/types.h"

extern "C" {
void tensor_expansion(Tensor::Expansion::complex_t *A, Tensor::Expansion::complex_t *B,
                      Tensor::Expansion::complex_t *C, rank_t A_R, rank_t B_R);
}

namespace Tensor {
namespace Expansion {

// if CHUNK_SIZE is changed, the compute function must be updated accordingly (stream
// depths, etc.)
constexpr uint16_t CHUNK_SIZE = 8;

/** @brief load operation for a row of a COO tensor. This can result in a partial read if
 * `CHUNK_SIZE` is smaller than the elements in a row (pointed out by
 * `read_info.row_consumed = 0`). If the chosen `CHUNK_SIZE` is larger than the number of
 * elements remaining in the row instead, the `read_info.row_consumed` flag will be set
 * to 1 and the stream will be filled with the remaining elements.
 * @param M pointer to the matrix in BRAM
 * @param M_stream stream to write the row to
 * @param read_info information about the previous and actual read operation
 */
void load_row(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info);

/** @brief load operation for the next row of a COO tensor, or the next elements in the
 * current row.
 * @param M pointer to the matrix in BRAM
 * @param M_stream stream to write the row to
 * @param read_info information about the previous and actual read operation
 */
void load_next(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info);

/** @brief load operation for the previous row of a COO tensor, rewinding the read head to
 * the start of the row.
 * @param M pointer to the matrix in BRAM
 * @param M_stream stream to write the row to
 * @param read_info information about the previous and actual read operation
 */
void load_prev(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info);

/** @brief store operation for chunked computations.
 * @param M_stream stream to read the row from
 * @param M pointer to the matrix in BRAM
 * @param write_info information about the previous and actual write operation
 */
void store_next(hls::stream<complex_t> &M_stream, complex_t *M, write_info_t &write_info);

/**
 * @brief Compute a single row of the output tensor, can be partial if the input tensors
 * are partial themselves.
 * @param A_row stream containing the row of the first tensor
 * @param A_read_info information about the read operation of the first tensor
 * @param B_row stream containing the row of the second tensor
 * @param B_read_info information about the read operation of the second tensor
 * @param C_row stream to write the row to
 * @param C_write_info information about the write operation
 * @param B_R rank of the second tensor
 * @param compute_info information about the computation, updated by the function
 */
void compute_chunked(hls::stream<complex_t> &A_row, read_info_t &A_read_info,
                     hls::stream<complex_t> &B_row, read_info_t &B_read_info,
                     hls::stream<complex_t> &C_row, write_info_t &C_write_info,
                     const rank_t B_R, compute_info_t &compute_info);

/**
 * @brief Compute the tensor expansion of two tensors using a chunked approach.
 * @param A pointer to the first tensor in BRAM
 * @param B pointer to the second tensor in BRAM
 * @param C pointer to the output tensor in BRAM
 * @param A_R rank of the first tensor
 * @param B_R rank of the second tensor
 */
void tensor_expansion_chunked(complex_t *A, complex_t *B, complex_t *C, rank_t A_R,
                              rank_t B_R);

} // namespace Expansion
} // namespace Tensor
