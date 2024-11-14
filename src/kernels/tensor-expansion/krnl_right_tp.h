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

void load(complex_t *A, hls::stream<complex_t> &A_stream);

void compute_first(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream);

void compute_second(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
                    rank_t A_R);

void store(hls::stream<complex_t> &C_stream, complex_t *C, size_t &writing_head);

} // namespace Right
} // namespace Product
} // namespace Tensor
