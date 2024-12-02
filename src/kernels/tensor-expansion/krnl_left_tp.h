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
namespace Product {
namespace Left {

constexpr uint16_t CACHE_SIZE = 8;
constexpr uint16_t STREAM_SIZE = CACHE_SIZE;

/**
 * @brief Circular buffer implementation for caching tensor elements.
 * @tparam SIZE Size of the circular buffer.
 */
template <size_t SIZE> class CircularBuffer {
public:
  CircularBuffer() : head(0), tail(0) {}

  void write(complex_t elem) {
    elems[head] = elem;
    head = (head + 1) % SIZE;
  }

  complex_t read() {
    complex_t elem = elems[tail];
    tail = (tail + 1) % SIZE;
    return elem;
  }

  void reset_head() { head = 0; }

  void reset_tail() { tail = 0; }

  void reset() {
    reset_head();
    reset_tail();
  }

private:
  complex_t elems[SIZE];
  // clang-format off
#pragma HLS array_partition variable=elems type=cyclic factor=2
  // clang-format on
  size_t head;
  size_t tail;
};

using cache_t = CircularBuffer<CACHE_SIZE>;

/**
 * @brief Dataflow for the tensor product of a tensor A and an Identity gate (of rank 1).
 * @param A Pointer to the tensor in DDR.
 * @param C Pointer to the output tensor in DDR.
 * @param CACHE Circular buffer cache to store the elements.
 * @param reading_head Index to start reading from.
 * @param writing_head Index to start writing to.
 * @param elements_in_row_read Number of elements read in the current row.
 * @param first_row_cached Flag indicating if the first row is cached.
 * @param compute_fist_pass Flag indicating if the first pass should be computed.
 * @param row_exhausted Flag indicating if the current row is exhausted.
 * @param tensor_exhausted Flag indicating if the entire tensor is exhausted.
 */
void left_tp_dataflow(Tensor::complex_t *A, Tensor::complex_t *C, cache_t &CACHE,
                      size_t &reading_head, size_t &writing_head,
                      size_t &elements_in_row_read, bool first_row_cached,
                      bool compute_fist_pass, bool &row_exhausted,
                      bool &tensor_exhausted);

/**
 * @brief Fetch elements from tensor A and write them to a stream.
 * @param A Pointer to the tensor in DDR.
 * @param first_row_cached Flag indicating if the first row is cached.
 * @param A_row Stream to write the fetched elements.
 * @param reading_head Index to start reading from.
 * @param elements_in_row_read Number of elements read in the current row.
 */
void fetch_elems(complex_t *A, bool first_row_cached, hls::stream<complex_t> &A_row,
                 size_t &reading_head, size_t &elements_in_row_read);

/**
 * @brief Write elements from a stream to the cache.
 * @param A_row Stream containing the elements to be cached.
 * @param cache Circular buffer cache to write the elements.
 */
void cache_write(hls::stream<complex_t> &A_row, cache_t &cache);

/**
 * @brief Read elements from the cache and write them to a stream.
 * @param cache Circular buffer cache to read the elements.
 * @param A_cached Stream to write the cached elements.
 * @param row_exhausted Flag indicating if the current row is exhausted.
 * @param tensor_exhausted Flag indicating if the entire tensor is exhausted.
 */
void cache_read(cache_t &cache, hls::stream<complex_t> &A_cached, bool &row_exhausted,
                bool &tensor_exhausted);

/**
 * @brief Compute the pass described by the flag provided of the tensor product.
 * @param A_cached Stream containing the cached elements.
 * @param first_pass True if the first pass should be computed, false if the second pass.
 * @param C_row Stream to write the computed elements.
 */
void compute(hls::stream<complex_t> &A_cached, bool first_pass,
             hls::stream<complex_t> &C_row);

/**
 * @brief Store the computed elements to the output tensor.
 * @param C_row Stream containing the computed elements.
 * @param C Pointer to the output tensor in DDR.
 * @param writing_head Index to start writing to.
 */
void store(hls::stream<complex_t> &C_row, complex_t *C, size_t &writing_head);

} // namespace Left
} // namespace Product
} // namespace Tensor
