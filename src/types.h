#pragma once

#include <cstdint>

#include "ap_int.h"

// TODO: implement better
#define ZERO {0.0f, 0.0f}

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
cmplx_t add(cmplx_t a, cmplx_t b) {
#pragma HLS INLINE off
  cmplx_t c;
  c.real = a.real + b.real;
  c.imag = a.imag + b.imag;
  return c;
}

/**
 * @brief Multiply two complex numbers
 */
cmplx_t mul(cmplx_t a, cmplx_t b) {
#pragma HLS INLINE off
  cmplx_t c;
  c.real = a.real * b.real - a.imag * b.imag;
  c.imag = a.real * b.imag + a.imag * b.real;
  return c;
}

} // namespace Complex

// COO format for sparse tensors
typedef struct {
  Complex::cmplx_t data;
  dim_t x;
  dim_t y;
  flag_t last_in_row;
} coo_t;
