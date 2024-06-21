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
};

// Meta data for COO format
struct coo_meta_t {
  dim_t x;
  dim_t y;
  flag_t last_in_row;
  flag_t last_in_tensor;
};
