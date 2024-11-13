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
// size_t load_tensor_row(complex_t *M, size_t index, hls::stream<complex_t> &M_stream);

namespace Product {
namespace Left {

constexpr uint16_t CACHE_SIZE = 8;
constexpr uint16_t STREAM_SIZE = CACHE_SIZE;

struct fetch_result {
  fetch_result() { reset(); }

  void reset() {
    cache_validity = false;
    is_first_sweep = true;
    elements_in_row_read = 0;
    current_index = 0;
  }

  bool cache_validity;
  bool is_first_sweep;
  size_t elements_in_row_read;
  size_t current_index;
};

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
  size_t head;
  size_t tail;
};

using cache_t = CircularBuffer<CACHE_SIZE>;

void fetch_elems(complex_t *A, bool first_row_cached, hls::stream<complex_t> &A_row,
                 size_t &reading_head, size_t &elements_in_row_read);

void cache_write(hls::stream<complex_t> &A_row, cache_t &cache);

void cache_read(cache_t &cache, hls::stream<complex_t> &A_cached, bool &row_exhausted,
                bool &tensor_exhausted);

void compute_first(hls::stream<complex_t> &A_cached, hls::stream<complex_t> &C_row);

void compute_second(hls::stream<complex_t> &A_cached, hls::stream<complex_t> &C_row);

void store(hls::stream<complex_t> &C_row, complex_t *C, size_t &writing_head);

} // namespace Left
} // namespace Product
} // namespace Tensor
