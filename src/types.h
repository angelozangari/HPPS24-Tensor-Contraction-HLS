#pragma once

#include <cstdint>

#include "ap_int.h"
#include "complex/cmplx.h"

// gate rank, with rank we mean the number of indices of a tensor, thus the
// number of dimensions. With a single-qubit gate (rank 2) we have 2^2 elements
typedef ap_uint<7> rank_t;

// max size supported is 64 GBs (considering a identity-like sparsity)
typedef ap_uint<36> dim_t;

// COO format for sparse tensors
typedef struct {
  Complex::cmplx_t data;
  dim_t x;
  dim_t y;
} coo_t;
