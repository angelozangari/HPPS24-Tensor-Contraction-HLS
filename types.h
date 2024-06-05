#pragma once

#include <cstdint>

#include "./complex/cmplx.h"
#include "ap_int.h"

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// COO format for sparse tensors
typedef struct {
  Complex::cmplx_t data;
  dim_t x;
  dim_t y;
} coo_t;
