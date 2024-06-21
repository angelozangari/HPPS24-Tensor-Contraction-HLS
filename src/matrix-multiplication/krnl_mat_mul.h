#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "types.h"

extern "C" {
void matrix_multiplication(float *Ar, float *Ai, coo_meta_t *Am, float *Br,
                           float *Bi, coo_meta_t *Bm, float *Cr, float *Ci,
                           coo_meta_t *Cm, dim_t A_NZ, dim_t B_NZ, dim_t *CD);
}

namespace Matrix {
namespace Multiplication {

/**
 * @brief Compute the matrix multiplication C = A * B
 */
void compute(hls::stream<float> &Ar_stream, hls::stream<float> &Ai_stream,
             hls::stream<coo_meta_t> &Am_stream, hls::stream<float> &Br_stream,
             hls::stream<float> &Bi_stream, hls::stream<coo_meta_t> &Bm_stream,
             hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
             hls::stream<coo_meta_t> &Cm_stream, dim_t *CD);

} // namespace Multiplication
} // namespace Matrix
