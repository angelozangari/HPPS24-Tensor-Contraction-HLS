#include "krnl_tens_exp.h"

void tensor_expansion(float *Ar, float *Ai, coo_meta_t *Am, float *Br, float *Bi,
                      coo_meta_t *Bm, float *Cr, float *Ci, coo_meta_t *Cm, dim_t A_NZ,
                      dim_t B_NZ, rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=Ar bundle=gmem0 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Ai bundle=gmem1 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Am bundle=gmem2 depth=8 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Br bundle=gmem3 depth=4 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Bi bundle=gmem4 depth=4 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Bm bundle=gmem5 depth=4 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port=Cr bundle=gmem6 depth=32 max_write_burst_length=32
#pragma HLS INTERFACE m_axi port=Ci bundle=gmem7 depth=32 max_write_burst_length=32
#pragma HLS INTERFACE m_axi port=Cm bundle=gmem8 depth=32 max_write_burst_length=32
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
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=B_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  dim_t C_NZ = A_NZ * B_NZ;
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

#pragma HLS dataflow
  Tensor::Expansion::load(Ar, Ai, Am, Ar_stream, Ai_stream, Am_stream, A_NZ);
  Tensor::Expansion::load(Br, Bi, Bm, Br_stream, Bi_stream, Bm_stream, B_NZ);
  Tensor::Expansion::compute(Ar_stream, Ai_stream, Am_stream, Br_stream, Bi_stream,
                             Bm_stream, Cr_stream, Ci_stream, Cm_stream, B_R);
  Tensor::Expansion::store(Cr_stream, Ci_stream, Cm_stream, Cr, Ci, Cm, C_NZ);
}

namespace Tensor {
namespace Expansion {

void load(float *Ar, float *Ai, coo_meta_t *Am, hls::stream<float> &Ar_stream,
          hls::stream<float> &Ai_stream, hls::stream<coo_meta_t> &Am_stream,
          dim_t A_size) {
LOAD_LOOP:
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    Ar_stream.write(Ar[i]);
    Ai_stream.write(Ai[i]);
    Am_stream.write(Am[i]);
  }
}

void store(hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
           hls::stream<coo_meta_t> &Cm_stream, float *Cr, float *Ci, coo_meta_t *Cm,
           dim_t C_size) {
STORE_LOOP:
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    Cr[i] = Cr_stream.read();
    Ci[i] = Ci_stream.read();
    Cm[i] = Cm_stream.read();
  }
}

void compute(hls::stream<float> &Ar_stream, hls::stream<float> &Ai_stream,
             hls::stream<coo_meta_t> &Am_stream, hls::stream<float> &Br_stream,
             hls::stream<float> &Bi_stream, hls::stream<coo_meta_t> &Bm_stream,
             hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
             hls::stream<coo_meta_t> &Cm_stream, const rank_t B_R) {
  hls::stream<float> Ar_stream_buffer, Ai_stream_buffer, Br_stream_buffer,
      Bi_stream_buffer, Br_cycle_buffer, Bi_cycle_buffer;
  // clang-format off
#pragma HLS STREAM variable=Ar_stream_buffer depth=32
#pragma HLS STREAM variable=Ai_stream_buffer depth=32
#pragma HLS STREAM variable=Br_stream_buffer depth=32
#pragma HLS STREAM variable=Bi_stream_buffer depth=32
#pragma HLS STREAM variable=Br_cycle_buffer depth=32
#pragma HLS STREAM variable=Bi_cycle_buffer depth=32
  // clang-format on
  hls::stream<coo_meta_t> Am_stream_buffer, Bm_stream_buffer, Bm_cycle_buffer;
  // clang-format off
#pragma HLS STREAM variable=Am_stream_buffer depth=32
#pragma HLS STREAM variable=Bm_stream_buffer depth=32
#pragma HLS STREAM variable=Bm_cycle_buffer depth=32
  // clang-format on
  float ar, ai, br, bi, cr, ci, tmp_r, tmp_i;
  coo_meta_t am, bm, cm, tmp_m;

  const dim_t BD = 1 << B_R;

LOOP_T:
  for (;;) {
    tmp_r = Br_stream.read();
    tmp_i = Bi_stream.read();
    tmp_m = Bm_stream.read();
    Br_cycle_buffer.write(tmp_r);
    Bi_cycle_buffer.write(tmp_i);
    Bm_cycle_buffer.write(tmp_m);
    if (LAST_IN_TENSOR(tmp_m)) {
      break;
    }
  }

LOOP_N: // iterate over all rows of A
  while (!Ar_stream.empty()) {

  LOOP_M: // store in a stream the first row of A
    for (;;) {
      tmp_r = Ar_stream.read();
      tmp_i = Ai_stream.read();
      tmp_m = Am_stream.read();
      Ar_stream_buffer.write(tmp_r);
      Ai_stream_buffer.write(tmp_i);
      Am_stream_buffer.write(tmp_m);
      if (LAST_IN_ROW(tmp_m)) {
        break;
      }
    }

  LOOP_L: // iter for all the rows of B
    for (;;) {

    LOOP_Q: // store in a stream the first row of B
      for (;;) {
        tmp_r = Br_cycle_buffer.read();
        tmp_i = Bi_cycle_buffer.read();
        tmp_m = Bm_cycle_buffer.read();
        Br_stream_buffer.write(tmp_r);
        Bi_stream_buffer.write(tmp_i);
        Bm_stream_buffer.write(tmp_m);
        if (LAST_IN_ROW(tmp_m)) {
          break;
        }
      }

    LOOP_I: // compute the entire line of C
      for (;;) {
        ar = Ar_stream_buffer.read();
        ai = Ai_stream_buffer.read();
        am = Am_stream_buffer.read();
      LOOP_J:
        for (;;) {
#pragma HLS PIPELINE II = 1
          br = Br_stream_buffer.read();
          bi = Bi_stream_buffer.read();
          bm = Bm_stream_buffer.read();
          cr = ar * br - ai * bi;
          ci = ar * bi + ai * br;
          X(cm) = X(am) * BD + X(bm);
          Y(cm) = Y(am) * BD + Y(bm);
          LAST_IN_ROW(cm) = LAST_IN_ROW(bm) & LAST_IN_ROW(am);
          LAST_IN_TENSOR(cm) = LAST_IN_TENSOR(bm) & LAST_IN_TENSOR(am);
          Cr_stream.write(cr);
          Ci_stream.write(ci);
          Cm_stream.write(cm);
          if (!LAST_IN_ROW(am)) {
            // reiterate the first row of B if As are not finished
            Br_stream_buffer.write(br);
            Bi_stream_buffer.write(bi);
            Bm_stream_buffer.write(bm);
          } else if (!Ar_stream.empty()) {
            // recharge the first row of B
            Br_cycle_buffer.write(br);
            Bi_cycle_buffer.write(bi);
            Bm_cycle_buffer.write(bm);
          }

          if (LAST_IN_ROW(bm)) {
            break;
          }
        }
        if (!LAST_IN_TENSOR(bm)) {
          Ar_stream_buffer.write(ar);
          Ai_stream_buffer.write(ai);
          Am_stream_buffer.write(am);
        }
        if (LAST_IN_ROW(am)) {
          break;
        }
      }

      if (LAST_IN_TENSOR(bm)) {
        break;
      }
    }
  }
}

} // namespace Expansion
} // namespace Tensor
