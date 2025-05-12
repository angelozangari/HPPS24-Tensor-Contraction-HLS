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

// squared dimension of a tensor (length of the matrix side)
// typedef ap_uint<18> edge_t;
typedef int edge_t;

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// flag
typedef ap_uint<1> flag_t;

namespace Tensor {

/// @brief data type representing a complex number element in a COO tensor
struct complex_t {
  complex_t() : r(0), i(0), m(0) {
#pragma HLS inline
  }
  complex_t(float r, float i, coo_meta_t m) : r(r), i(i), m(m) {
#pragma HLS inline
  }

  /// @brief real part
  float r;
  /// @brief imaginary part
  float i;
  /// @brief metadata
  coo_meta_t m;
};

} // namespace Tensor
