#pragma once

#include <cstdint>

#include "ap_int.h"

// gate rank, with rank we mean the number of indices of a tensor, thus the
// number of dimensions. With a single-qubit gate (rank 2) we have 2^2 elements
typedef ap_uint<7> rank_t;

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// flag
typedef ap_uint<1> flag_t;

// Complex types and operations
namespace Complex {

// complex number type
typedef struct {
  float real;
  float imag;
} cmplx_t;

/**
 * @brief Add two complex numbers
 */
cmplx_t add(cmplx_t a, cmplx_t b);

/**
 * @brief Multiply two complex numbers
 */
cmplx_t mul(cmplx_t a, cmplx_t b);

} // namespace Complex

// COO format for sparse tensors
struct coo_t {
  Complex::cmplx_t data;
  dim_t x;
  dim_t y;
  flag_t last_in_row;
  flag_t last_in_tensor;

  bool operator==(const coo_t &rhs) const {
    return abs(data.real - rhs.data.real) < 1e-6 &&
           abs(data.imag - rhs.data.imag) < 1e-6 && x == rhs.x && y == rhs.y &&
           last_in_row == rhs.last_in_row &&
           last_in_tensor == rhs.last_in_tensor;
  }
};
