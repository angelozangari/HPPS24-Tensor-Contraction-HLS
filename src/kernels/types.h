#pragma once

#include <cstdint>

#include "ap_int.h"

#define X(v) v(35, 0)
#define Y(v) v(71, 36)
#define LAST_IN_ROW(v) v(72, 72)
#define LAST_IN_TENSOR(v) v(73, 73)

// Type containing the metadata of a tensor in COO format
// 0-35: x
// 36-71: y
// 72: last_in_row
// 73: last_in_tensor
typedef ap_uint<74> coo_meta_t;

// gate rank, with rank we mean the number of indices of a tensor, thus the
// number of dimensions. With a single-qubit gate (rank 2) we have 2^2 elements
typedef ap_uint<7> rank_t;

// squared dimension of a tensor (lenght of the matrix side)
typedef ap_uint<18> edge_t;

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// flag
typedef ap_uint<1> flag_t;

namespace Tensor {
namespace Expansion {

/// @brief type indicating information about the read operation performed
struct read_info_t {
  read_info_t() : row_index(0), offset_in_row(0), elements_read(0), row_consumed(0) {}

  /// @brief offset of the row being read
  dim_t row_index;
  /// @brief number of elements already read
  edge_t offset_in_row;
  /// @brief number of elements read in the current read operation
  edge_t elements_read;
  /// @brief flag indicating if the row has been consumed (can also be used to indicate if
  /// the read was partial)
  flag_t row_consumed;
};

/// @brief type indicating information about the write operation performed
struct write_info_t {
  write_info_t() : writing_tail(0), elements_to_write(0) {}

  /// @brief offset of the element being written
  dim_t writing_tail;
  /// @brief number of elements to write
  edge_t elements_to_write;
};

/// @brief type indicating information about the computation performed
struct compute_info_t {
  compute_info_t() : a_exhausted(0), b_exhausted(0) {}

  /// @brief flag indicating if A row has been exhausted after the computation
  flag_t a_exhausted;
  /// @brief flag indicating if B row has been exhausted after the computation
  flag_t b_exhausted;
};

/// @brief data type representing a complex number element in a COO tensor
struct complex_t {
  complex_t() : r(0), i(0), m(0) {}
  complex_t(float r, float i, coo_meta_t m) : r(r), i(i), m(m) {}

  /// @brief real part
  float r;
  /// @brief imaginary part
  float i;
  /// @brief metadata
  coo_meta_t m;
};

} // namespace Expansion
} // namespace Tensor
