#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "hls_task.h"
#include "kernels/types.h"
#include <array>

extern "C" {
/**
 * @brief Compute the tensor product of a tensor A and an Identity gate (of rank 1).
 * @details This operation increases the rank of the tensor by 1, adding a new dimension
 * by expanding the tensor from below (in a quantum circuit view).
 * @param A pointer to the tensor in DDR
 * @param C pointer to the output tensor in DDR
 * @param A_R rank of the tensor A
 */
void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size);
}

namespace Tensor {
namespace Product {
namespace Left {

// constexpr uint16_t CACHE_SIZE = 8;
constexpr uint16_t CHUNK_SIZE = 8;
constexpr uint16_t STREAM_SIZE = 64;

struct load_request_t {
  dim_t start;
  dim_t row_start_at;
  ap_uint<1> first_pass;

  load_request_t() : start(0), row_start_at(0), first_pass(1) {}
};

struct value_t {
  complex_t value;
  ap_uint<1> valid;
  dim_t row_start_at;
  dim_t index_on_A;
  ap_uint<1> first_pass;

  value_t(complex_t v)
      : value(v), row_start_at(0), valid(1), index_on_A(0), first_pass(1) {}
  value_t() : valid(0) {}
};

typedef std::array<value_t, CHUNK_SIZE> chunk_t;

/**
 * @brief Circular buffer implementation for caching tensor elements.
 * @tparam SIZE Size of the circular buffer.
 */
// template <std::size_t SIZE> class CircularBuffer {
// public:
//   CircularBuffer() : head(0), tail(0) {}

//   void write(complex_t elem) {
//     elems[head] = elem;
//     head = (head + 1) % SIZE;
//   }

//   complex_t read() {
//     complex_t elem = elems[tail];
//     tail = (tail + 1) % SIZE;
//     return elem;
//   }

//   void reset_head() { head = 0; }

//   void reset_tail() { tail = 0; }

//   void reset() {
//     reset_head();
//     reset_tail();
//   }

//   complex_t elems[SIZE];

// private:
//   std::size_t head;
//   std::size_t tail;
// };

// using cache_t = CircularBuffer<CACHE_SIZE>;

void load_chunk(complex_t *A, std::size_t size,
                hls::stream<load_request_t> &request_stream,
                hls::stream<chunk_t> &to_compute);

void compute(hls::stream<chunk_t> &to_compute, hls::stream<chunk_t> &to_write,
             hls::stream<load_request_t> &request_stream);

void store(complex_t *C, dim_t &writing_ix, hls::stream<chunk_t> &to_write);

/**
 * @brief Compute the pass described by the flag provided of the tensor product.
 * @param A_cached Stream containing the cached elements.
 * @param first_pass True if the first pass should be computed, false if the second pass.
 * @param C_row Stream to write the computed elements.
 */
// void compute(hls::stream<complex_t> &A_cached, bool first_pass,
//              hls::stream<complex_t> &C_row);

/**
 * @brief Store the computed elements to the output tensor.
 * @param C_row Stream containing the computed elements.
 * @param C Pointer to the output tensor in DDR.
 * @param writing_head Index to start writing to.
 */
// void store(hls::stream<complex_t> &C_row, complex_t *C, std::size_t &writing_head);

} // namespace Left
} // namespace Product
} // namespace Tensor
