#include "krnl_mat_mul.h"
#include "../tensors.h"

#define PACKET_SIZE 16

void matrix_multiplication(float *Ar, float *Ai, coo_meta_t *Am, float *Br, float *Bi,
                           coo_meta_t *Bm, float *Cr, float *Ci, coo_meta_t *Cm,
                           dim_t A_NZ, dim_t B_NZ, dim_t *CD) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=Ar bundle=gmem0 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Ai bundle=gmem1 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Am bundle=gmem2 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Br bundle=gmem3 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Bi bundle=gmem4 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Bm bundle=gmem5 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Cr bundle=gmem6 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Ci bundle=gmem7 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Cm bundle=gmem8 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE s_axilite port=Ar bundle=control
#pragma HLS INTERFACE s_axilite port=Ai bundle=control
#pragma HLS INTERFACE s_axilite port=Am bundle=control
#pragma HLS INTERFACE s_axilite port=Br bundle=control
#pragma HLS INTERFACE s_axilite port=Bi bundle=control
#pragma HLS INTERFACE s_axilite port=Bm bundle=control
#pragma HLS INTERFACE s_axilite port=Cr bundle=control
#pragma HLS INTERFACE s_axilite port=Ci bundle=control
#pragma HLS INTERFACE s_axilite port=Cm bundle=control
#pragma HLS INTERFACE s_axilite port=A_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=B_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=CD bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  // hls-streams for matrices
  hls::stream<float> Ar_stream, Ai_stream, Br_stream, Bi_stream, Cr_stream, Ci_stream;
  // clang-format off
#pragma HLS STREAM variable=Ar_stream depth=32
#pragma HLS STREAM variable=Ai_stream depth=32
#pragma HLS STREAM variable=Br_stream depth=32
#pragma HLS STREAM variable=Bi_stream depth=32
#pragma HLS STREAM variable=Cr_stream depth=32
#pragma HLS STREAM variable=Ci_stream depth=32
  // clang-format on

  hls::stream<coo_meta_t> Am_stream, Bm_stream, Cm_stream;
  // clang-format off
#pragma HLS STREAM variable=Am_stream depth=32
#pragma HLS STREAM variable=Bm_stream depth=32
#pragma HLS STREAM variable=Cm_stream depth=32
  // clang-format on

  // Load matrices A, B
  Tensor::load(Ar, Ai, Am, Ar_stream, Ai_stream, Am_stream, A_NZ);
  Tensor::load(Br, Bi, Bm, Br_stream, Bi_stream, Bm_stream, B_NZ);
  // Compute matrix multiplication
  Matrix::Multiplication::compute(Ar_stream, Ai_stream, Am_stream, Br_stream, Bi_stream,
                                  Bm_stream, Cr_stream, Ci_stream, Cm_stream, CD);
  // Store result
  // FIXME how to pass dimension of c stream
  Tensor::store(Cr_stream, Ci_stream, Cm_stream, Cr, Ci, Cm, *CD);
}

namespace Matrix {
namespace Multiplication {

void compute(hls::stream<float> &Ar_stream, hls::stream<float> &Ai_stream,
             hls::stream<coo_meta_t> &Am_stream, hls::stream<float> &Br_stream,
             hls::stream<float> &Bi_stream, hls::stream<coo_meta_t> &Bm_stream,
             hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
             hls::stream<coo_meta_t> &Cm_stream, dim_t *CD) {

  hls::stream<float> Ar_stream_buf, Ai_stream_buf;
  hls::stream<coo_meta_t> Am_stream_buf;

  *CD = 0;

  float cr, ci;
  coo_meta_t cm;
  cr = 0.0f;
  ci = 0.0f;

  float old_c_r, old_c_i;
  coo_meta_t old_c_m;
  old_c_r = 0.0f;
  old_c_i = 0.0f;

  float A_row_r[PACKET_SIZE], A_row_i[PACKET_SIZE];
  coo_meta_t A_row_m[PACKET_SIZE];

  float B_col_r[PACKET_SIZE], B_col_i[PACKET_SIZE];
  coo_meta_t B_col_m[PACKET_SIZE];

  uint32_t s, r, q; // loop vars

  uint32_t i, j; // indexes to scan packets
  i = PACKET_SIZE;
  j = PACKET_SIZE;

  flag_t A_read, c_ready;
  A_read = 1;
  c_ready = 0;

LOOP_T:
  for (;;) { /* external loop */

    if (i >= PACKET_SIZE) { /* read packet A */
    LOOP_S:
      for (s = 0; s < PACKET_SIZE; s++) { /* read packet A */
        if (A_read) {
          A_row_r[s] = Ar_stream.read();
          A_row_i[s] = Ai_stream.read();
          A_row_m[s] = Am_stream.read();
          if (LAST_IN_ROW(A_row_m[s])) {
            A_read = 0;
          }
        } else {
          A_row_r[s] = Ar_stream_buf.read();
          A_row_i[s] = Ai_stream_buf.read();
          A_row_m[s] = Am_stream_buf.read();
        }
        Ar_stream_buf.write(A_row_r[s]);
        Ai_stream_buf.write(A_row_i[s]);
        Am_stream_buf.write(A_row_m[s]);
        i = 0;
        if (LAST_IN_ROW(A_row_m[s])) { /* if last in row stop reading (don't even need to
                                          fill rest because break on l_i_r) */
          break;
        }
      }
    }

    if (j >= PACKET_SIZE) { /* read packet B */
    LOOP_R:
      for (r = 0; r < PACKET_SIZE; r++) { // read packet B
        B_col_r[r] = Br_stream.read();
        B_col_i[r] = Bi_stream.read();
        B_col_m[r] = Bm_stream.read();
        // TODO: check if i can read/write same stream in an unrolled loop
        Br_stream.write(B_col_r[r]);
        Bi_stream.write(B_col_i[r]);
        Bm_stream.write(B_col_m[r]);
        j = 0;
      }
    }

  LOOP_Q:
    for (; i < PACKET_SIZE &&
           j < PACKET_SIZE;) { /* compute c while both packets contain valid elements */
      if (Y(A_row_m[i]) == X(B_col_m[j])) {
        cr += A_row_r[i] * B_col_r[j] - A_row_i[i] * B_col_i[j];
        ci += A_row_i[i] * B_col_r[j] + A_row_r[i] * B_col_i[j];
      }

      if (LAST_IN_ROW(A_row_m[i]) && LAST_IN_ROW(B_col_m[j])) {
        if (!(cr == 0.0f && ci == 0.0f)) {
          c_ready = 1;
        }
        break;
      }

      // update i, j only if not last_in_row
      if (Y(A_row_m[i]) > X(B_col_m[j])) {
        if (!LAST_IN_ROW(B_col_m[j])) {
          j++;
        } else {
          i++;
        }
      } else {
        if (!LAST_IN_ROW(A_row_m[i])) {
          i++;
        } else {
          j++;
        }
      }
    }

    if (c_ready) { /* write c to stream if ready */
      X(cm) = X(A_row_m[i]);
      Y(cm) = Y(B_col_m[j]);
      if (!(old_c_r == 0.0f && old_c_i == 0.0f)) {
        if (X(old_c_m) != X(cm)) {
          LAST_IN_ROW(old_c_m) = 1;
        } else {
          LAST_IN_ROW(old_c_m) = 0;
        }
        LAST_IN_TENSOR(old_c_m) = 0;
        Cr_stream.write(old_c_r);
        Ci_stream.write(old_c_i);
        Cm_stream.write(old_c_m);
        (*CD)++;
      }
      old_c_r = cr;
      old_c_i = ci;
      old_c_m = cm;
      c_ready = 0;
      cr = 0.0f;
      ci = 0.0f;
    }

    if (LAST_IN_TENSOR(B_col_m[j]) && LAST_IN_ROW(A_row_m[i])) {
      // FIXME: check on all three?
      while (!Ar_stream_buf.empty()) {
        Ar_stream_buf.read();
        Ai_stream_buf.read();
        Am_stream_buf.read();
      }
      A_read = 1;
    }

    if (LAST_IN_TENSOR(A_row_m[i]) &&
        LAST_IN_TENSOR(B_col_m[j])) { /* if ended both A, B then exit */
      break;
    }

    if (LAST_IN_ROW(B_col_m[j]) &&
        LAST_IN_ROW(A_row_m[i])) { /*  if B_col[j].last_in_tensor, empty A_stream_buf and
                                      set A_read to 1 */
      i = PACKET_SIZE;
      j++;
    }
  }

  if (!(old_c_r == 0.0f && old_c_i == 0.0f)) { /* update last in tensor for c */
    LAST_IN_ROW(old_c_m) = 1;
    LAST_IN_TENSOR(old_c_m) = 1;
    Cr_stream.write(old_c_r);
    Ci_stream.write(old_c_i);
    Cm_stream.write(old_c_m);
    (*CD)++;
  }

  // FIXME check on all three ?
  while (!Br_stream.empty()) { /* empty B_stream */
    Br_stream.read();
    Bi_stream.read();
    Bm_stream.read();
  }
}

} // namespace Multiplication
} // namespace Matrix
