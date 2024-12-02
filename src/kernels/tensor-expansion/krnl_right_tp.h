#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "kernels/types.h"

extern "C" {
/**
 * @brief Compute the tensor product between an Identity gate (of rank 1) and a tensor A.
 * @details This operation increases the rank of the tensor by 1, adding a new dimension
 * by expanding the tensor from above (in a quantum circuit view).
 * @param A pointer to the tensor in DDR
 * @param C pointer to the output tensor in DDR
 * @param A_R rank of the tensor A
 */
void krnl_right_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R);
}

namespace Tensor {
namespace Product {
namespace Right {

constexpr uint16_t STREAM_SIZE = 8;

/**
 * @brief Load elements from tensor A to a stream.
 * @param A Pointer to the tensor in DDR.
 * @param A_stream Stream to write the fetched elements.
 */
void load(complex_t *A, hls::stream<complex_t> &A_stream);

/**
 * @brief Compute the first pass of the tensor product.
 * @param A_stream Stream containing the elements.
 * @param C_stream Stream to write the computed elements.
 */
void compute_first(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream);

/**
 * @brief Compute the second pass of the tensor product.
 * @param A_stream Stream containing the elements.
 * @param C_stream Stream to write the computed elements.
 * @param A_R rank of the tensor A
 */
void compute_second(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
                    rank_t A_R);

/**
 * @brief Store the computed elements to the output tensor.
 * @param C_stream Stream containing the computed elements.
 * @param C Pointer to the output tensor in DDR.
 * @param writing_head Index to start writing to.
 */
void store(hls::stream<complex_t> &C_stream, complex_t *C, std::size_t &writing_head);

} // namespace Right
} // namespace Product
} // namespace Tensor
