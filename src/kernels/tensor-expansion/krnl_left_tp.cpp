#include "krnl_left_tp.h"

using namespace std;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16 // TODO change depth
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256 // TODO change depth
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  cache_t CACHE;
  size_t i = 0, reading_head = 0, writing_head = 0, elements_in_row_read = 0;
  bool first_row_cached = false, row_exhausted = false, tensor_exhausted = false;
  hls::stream<complex_t> A_row, A_cached, C_row;
  // clang-format off
#pragma HLS STREAM variable=A_row depth=STREAM_SIZE
#pragma HLS STREAM variable=A_cached depth=STREAM_SIZE
#pragma HLS STREAM variable=C_row depth=STREAM_SIZE
#pragma HLS ARRAY_PARTITION variable=H complete dim=1
  // clang-format on

  while (!tensor_exhausted) {
    for (i = 0; !row_exhausted; i++) {
      fetch_elems(A, first_row_cached, A_row, reading_head, elements_in_row_read);
      cache_write(A_row, CACHE);
      cache_read(CACHE, A_cached, row_exhausted, tensor_exhausted);
      compute_first(A_cached, C_row);
      store(C_row, C, writing_head);
    }

    // if a single iteration was performed, hence the first row size is less than
    // the cache size, then the cache is valid and the reading index can be kept as is,
    // otherwise the reading index needs to be reset to row start index (subtracting the
    // elements read in the row)
    if (i == 1) {
      first_row_cached = true;
    } else {
      first_row_cached = false;
      CACHE.reset_head();
      reading_head -= elements_in_row_read;
    }

    // reset row-wise information
    CACHE.reset_tail();
    row_exhausted = false;
    elements_in_row_read = 0;

    for (i = 0; !row_exhausted; i++) {
      fetch_elems(A, first_row_cached, A_row, reading_head, elements_in_row_read);
      cache_write(A_row, CACHE);
      cache_read(CACHE, A_cached, row_exhausted, tensor_exhausted);
      compute_second(A_cached, C_row);
      store(C_row, C, writing_head);
    }

    // reset row-wise information
    first_row_cached = false;
    row_exhausted = false;
    elements_in_row_read = 0;
    CACHE.reset();
  }
}

namespace Tensor {
namespace Product {
namespace Left {

// EXECUTION PATH OPTIONS:
// - first pass, cache valid, ready for second pass from cache
// - first pass, cache is too small, second pass is from the first stopped,
//   then again from the start with two passes.

void fetch_elems(complex_t *A, bool first_row_cached, hls::stream<complex_t> &A_row,
                 size_t &reading_head, size_t &elements_in_row_read) {
  size_t ix;
  complex_t tmp;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    if (!first_row_cached) {
      // read from head index and update to the next one
      ix = reading_head++;
      tmp = A[ix]; // read from DDR
      // increase elements read in this row
      elements_in_row_read++;

      A_row.write(tmp);

      if (LAST_IN_ROW(tmp.m))
        break;
    }
  }
}

void cache_write(hls::stream<complex_t> &A_row, cache_t &cache) {
  complex_t tmp;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // exit prematurely if stream is consumed
    if (A_row.empty())
      break;
    // write to cache from stream
    tmp = A_row.read();
    cache.write(tmp);
  }
}

void cache_read(cache_t &cache, hls::stream<complex_t> &A_cached, bool &row_exhausted,
                bool &tensor_exhausted) {
  complex_t tmp;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    // read from cache and write to stream
    tmp = cache.read();
    A_cached.write(tmp);

    // if last in row then break
    if (LAST_IN_ROW(tmp.m)) {
      row_exhausted = true;
      if (LAST_IN_TENSOR(tmp.m))
        tensor_exhausted = true;
      break;
    }
  }
}

void compute_first(hls::stream<complex_t> &A_cached, hls::stream<complex_t> &C_row) {
  complex_t a;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    a = A_cached.read();
    X(a.m) = X(a.m) << 1;
    Y(a.m) = Y(a.m) << 1;
    LAST_IN_TENSOR(a.m) = false;
    C_row.write(a);
    if (A_cached.empty())
      break;
  }
}

void compute_second(hls::stream<complex_t> &A_cached, hls::stream<complex_t> &C_row) {
  complex_t a;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    a = A_cached.read();
    X(a.m) = (X(a.m) << 1) + 1;
    Y(a.m) = (Y(a.m) << 1) + 1;
    C_row.write(a);
    if (A_cached.empty())
      break;
  }
}

void store(hls::stream<complex_t> &C_row, complex_t *C, size_t &writing_head) {
  complex_t tmp;

  for (size_t i = 0; i < CACHE_SIZE; i++) {
    if (C_row.empty())
      break;
    tmp = C_row.read();
    C[writing_head++] = tmp;
  }
}

} // namespace Left
} // namespace Product
} // namespace Tensor
