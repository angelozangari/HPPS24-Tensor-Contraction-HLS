#pragma once

#include <cstdint>

#include "ap_int.h"

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// complex number type
typedef struct {
  float real;
  float imag;
} cmplx_t;

// COO format for sparse tensors
typedef struct {
  cmplx_t data;
  dim_t x;
  dim_t y;
} coo_t;
