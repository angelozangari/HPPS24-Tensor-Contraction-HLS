#include "krnl_mat_mul.h"
#include "tensors.h"

// #include <cstdint>

void matrix_multiplication(float *Ar, float *Ai, coo_meta_t *Am, float *Br,
                           float *Bi, coo_meta_t *Bm, float *Cr, float *Ci,
                           coo_meta_t *Cm, rank_t A_R, dim_t A_NZ, dim_t B_NZ,
                           dim_t *CD) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=Ar bundle=gmem0 //depth=1024
#pragma HLS INTERFACE m_axi port=Ai bundle=gmem1 //depth=1024
#pragma HLS INTERFACE m_axi port=Am bundle=gmem2 //depth=1024
#pragma HLS INTERFACE m_axi port=Br bundle=gmem3 //depth=1024
#pragma HLS INTERFACE m_axi port=Bi bundle=gmem4 //depth=1024
#pragma HLS INTERFACE m_axi port=Bm bundle=gmem5 //depth=1024
#pragma HLS INTERFACE m_axi port=Cr bundle=gmem6 //depth=1024
#pragma HLS INTERFACE m_axi port=Ci bundle=gmem7 //depth=1024
#pragma HLS INTERFACE m_axi port=Cm bundle=gmem8 //depth=1024
#pragma HLS INTERFACE s_axilite port=Ar bundle=control
#pragma HLS INTERFACE s_axilite port=Ai bundle=control
#pragma HLS INTERFACE s_axilite port=Am bundle=control
#pragma HLS INTERFACE s_axilite port=Br bundle=control
#pragma HLS INTERFACE s_axilite port=Bi bundle=control
#pragma HLS INTERFACE s_axilite port=Bm bundle=control
#pragma HLS INTERFACE s_axilite port=Cr bundle=control
#pragma HLS INTERFACE s_axilite port=Ci bundle=control
#pragma HLS INTERFACE s_axilite port=Cm bundle=control
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=A_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=B_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=CD bundle=control
#pragma HLS INTERFACE s_axilite port=return
  // clang-format on

  // hls-streams for matrices
  hls::stream<float> Ar_stream, Ai_stream, Br_stream, Bi_stream, Cr_stream,
      Ci_stream;
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
  Matrix::Multiplication::compute(Ar_stream, Ai_stream, Am_stream, Br_stream,
                                  Bi_stream, Bm_stream, Cr_stream, Ci_stream,
                                  Cm_stream, A_R, CD);
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
             hls::stream<coo_meta_t> &Cm_stream, const rank_t A_R, dim_t *CD) {

  const dim_t size = 1 << A_R;
  // uint32_t size = 1 << A_R;
  *CD = 0;

  hls::stream<float> Ar_stream_buf, Ai_stream_buf, Br_stream_buf, Bi_stream_buf;
  hls::stream<coo_meta_t> Am_stream_buf, Bm_stream_buf;
  float old_cr, old_ci; // used for FIFO of last computed c
  coo_meta_t old_cm;    // used for FIFO of last computed c
  old_cr = 0.0f;
  old_ci = 0.0f;

  float c_tmp_r, c_tmp_i, cr, ci; // c_tmp stores partial results of c
  coo_meta_t c_tmp_m, cm;
  std::vector<float> Ar_row(size), Ai_row(size), Br_col(size), Bi_col(size);
  std::vector<coo_meta_t> Am_row(size), Bm_col(size);
  // coo_t A_row[size], B_col[size];
  int q, o, n1, n2; // row maj vars

  flag_t last_row = 0;

  /******************************** ROW MAJOR ********************************/

LOOP_T: /* iterate over A rows */
  for (;;) {

  LOOP_Q: /* read A_row */
    q = 0;
    for (;;) {
      Ar_row[q] = Ar_stream.read();
      Ai_row[q] = Ai_stream.read();
      Am_row[q] = Am_stream.read();
      if (LAST_IN_ROW(Am_row[q])) {
        if (LAST_IN_TENSOR(Am_row[q])) {
          // TODO: set flag to not repopulate B
          last_row = 1;
        }
        break;
      }
      q++;
    }

  LOOP_P: /* iterate over B cols */
    for (;;) {

    LOOP_O: /* read B_col */
      o = 0;
      for (;;) {
        Br_col[o] = Br_stream.read();
        Bi_col[o] = Bi_stream.read();
        Bm_col[o] = Bm_stream.read();
        if (!last_row) {
          Br_stream_buf.write(Br_col[o]);
          Bi_stream_buf.write(Bi_col[o]);
          Bm_stream_buf.write(Bm_col[o]);
        }
        if (LAST_IN_ROW(Bm_col[o])) {
          break;
        }
        o++;
      }

    LOOP_N: /* compute c = A_row * B_col */
      n1 = 0;
      n2 = 0;
      cr = 0.0f;
      ci = 0.0f;
      for (;;) {

        if (Y(Am_row[n1]) == X(Bm_col[n2])) { /* if same index multiply */
          c_tmp_r = Ar_row[n1] * Br_col[n2] - Ai_row[n1] * Bi_col[n2];
          c_tmp_i = Ar_row[n1] * Bi_col[n2] + Ai_row[n1] * Br_col[n2];
          cr += c_tmp_r;
          ci += c_tmp_i;
        }

        if ((LAST_IN_ROW(Am_row[n1]) && X(Bm_col[n2]) >= Y(Am_row[n1])) ||
            (LAST_IN_ROW(Bm_col[n2]) &&
             Y(Am_row[n1]) >= X(Bm_col[n2]))) { /* break if last in row */
          // while (!A_row[n1].last_in_row) { /* go to last elem in A_row */
          //   n1++;
          // }
          break;
        }

        if (Y(Am_row[n1]) < X(Bm_col[n2])) { /* find next elem to check */
          n1++;
        } else {
          n2++;
        }
      }

      if (!(cr == 0.0f && ci == 0.0f)) { /* update c */
        X(cm) = X(Am_row[n1]);
        Y(cm) = Y(Bm_col[n2]);
        if (!(old_cr == 0.0f && old_ci == 0.0f)) {
          if (X(old_cm) != X(cm)) {
            LAST_IN_ROW(old_cm) = 1;
          } else {
            LAST_IN_ROW(old_cm) = 0;
          }
          LAST_IN_TENSOR(old_cm) = 0;
          Cr_stream.write(old_cr);
          Ci_stream.write(old_ci);
          Cm_stream.write(old_cm);
          (*CD)++;
        }
        old_cr = cr;
        old_ci = ci;
        old_cm = cm;
      }

      if (LAST_IN_TENSOR(Bm_col[n2])) { /* exit if B_col last in tensor */
        break;
      }
    }
    while (!Br_stream_buf.empty()) { /* recharge B cols */
      Br_stream.write(Br_stream_buf.read());
      Bi_stream.write(Bi_stream_buf.read());
      Bm_stream.write(Bm_stream_buf.read());
    }

    if (LAST_IN_TENSOR(Am_row[n1])) { /* exit if A_row last in tensor */
      break;
    }
  }

  if (!(old_cr == 0.0f && old_ci == 0.0f)) { /* update last in tensor for c */
    LAST_IN_ROW(old_cm) = 1;
    LAST_IN_TENSOR(old_cm) = 1;
    Cr_stream.write(old_cr);
    Ci_stream.write(old_ci);
    Cm_stream.write(old_cm);
    (*CD)++;
  }
}

} // namespace Multiplication
} // namespace Matrix
