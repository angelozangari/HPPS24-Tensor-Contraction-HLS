#pragma once

#ifdef QCS_HLS_CSIM
#include "utils/host_types.h"
#else
#include "kernels/types.h"
#endif

extern "C" {
// C-sim/host signature used by tests
void matrix_multiplication(
    float *left_r, float *left_i, coo_meta_t *left_m,
    float *right_r, float *right_i, coo_meta_t *right_m,
    float *out_r, float *out_i, coo_meta_t *out_m,
    dim_t left_nz, dim_t right_nz, dim_t *out_real_size,
    flag_t left_row_format);
}

