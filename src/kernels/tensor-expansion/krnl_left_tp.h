#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "kernels/types.h"

extern "C" {
/**
 * @brief Compute the tensor product of a tensor A and an Identity gate (of rank 1).
 * @details This operation increases the rank of the tensor by 1, adding a new dimension
 * by expanding the tensor from below (in a quantum circuit view).
 * @param A pointer to the tensor in DDR
 * @param C pointer to the output tensor in DDR
 * @param A_R rank of the tensor A
 */
void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R);
}

namespace Tensor {

/**
 * @brief Load a tensor row from DDR to a stream.
 * @param M pointer to the tensor in DDR
 * @param index index of element to start reading from
 * @param M_stream stream to write the row to
 * @return number of elements read
 */
size_t load_tensor_row(complex_t *M, size_t index, hls::stream<complex_t> &M_stream);

namespace Product {
namespace Left {

// if CHUNK_SIZE is changed, the compute function must be updated accordingly (stream
// depths, etc.)
constexpr uint16_t CHUNK_SIZE = 8;

} // namespace Left
} // namespace Product
} // namespace Tensor
