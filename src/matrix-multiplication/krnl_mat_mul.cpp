#include "krnl_mat_mul.h"
#include "tensors.h"

// #include <cstdint>

#define PACKET_SIZE 16

void matrix_multiplication(float *Ar, float *Ai, coo_meta_t *Am, float *Br,
                           float *Bi, coo_meta_t *Bm, float *Cr, float *Ci,
                           coo_meta_t *Cm, dim_t A_NZ, dim_t B_NZ, dim_t *CD) {
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
                                  Cm_stream, CD);
  // Store result
  // FIXME how to pass dimension of c stream
  Tensor::store(Cr_stream, Ci_stream, Cm_stream, Cr, Ci, Cm, *CD);
}

namespace Matrix {
namespace Multiplication {

/* WHAT ARRAY WILL WE HAVE:
 for each A,B,C, 3 arrays (*3 = 9 in total)
 2 array float (real, imag)
 1 array of meta (max 512) infomations -> macro to access
*/

void compute(hls::stream<float> &Ar_stream, hls::stream<float> &Ai_stream,
             hls::stream<coo_meta_t> &Am_stream, hls::stream<float> &Br_stream,
             hls::stream<float> &Bi_stream, hls::stream<coo_meta_t> &Bm_stream,
             hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
             hls::stream<coo_meta_t> &Cm_stream, dim_t *CD) {

  hls::stream<float> Br_stream_buf, Bi_stream_buf;
  hls::stream<coo_meta_t> Bm_stream_buf;

  *CD = 0;

  float cr, ci, c_tmp_r, c_tmp_i;
  coo_meta_t cm, c_tmp_m;
  cr = 0.0f;
  ci = 0.0f;

  flag_t c_ready = 0;

  uint8_t i, j; // indexes to read packets A, B
  i = 0;
  j = 0;

  for (;;) {

    float Ar_row[PACKET_SIZE], Ai_row[PACKET_SIZE], Br_col[PACKET_SIZE],
        Bi_col[PACKET_SIZE];
    coo_meta_t Am_row[PACKET_SIZE], Bm_col[PACKET_SIZE];

  LOOP_T: // if need to read, read packet A (16 x stream)
    // TODO: add check if need to read
    for (int t = 0; t < PACKET_SIZE; t++) {
      Ar_row[t] = Ar_stream.read();
      Ai_row[t] = Ai_stream.read();
      Am_row[t] = Am_stream.read();
    }

  LOOP_Q: // if need to read, read packet B -> write B back into a stream
    // TODO: add check if need to read
    for (int q = 0; q < PACKET_SIZE; q++) {
      Br_col[q] = Br_stream.read();
      Bi_col[q] = Bi_stream.read();
      Bm_col[q] = Bm_stream.read();
      // TODO: add check that doesn't write in B_stream_buf if last row of A
      Br_stream_buf.write(Br_col[q]);
      Bi_stream_buf.write(Bi_col[q]);
      Bm_stream_buf.write(Bm_col[q]);
    }

    for (int i = 0; i < PACKET_SIZE; i++) {
      // UNROLLED (dont write/read streams inside unrolled)
      // c = A[i] * B*J
      if (!(LAST_IN_ROW(Am_row[i]) && (Y(Am_row[i]) > X(Bm_col[j]))) ||
          !(LAST_IN_ROW(Bm_col[j]) && (Y(Am_row[i]) < X(Bm_col[j])))) {
        // update accumulator
        c_tmp_r = Ar_row[i] * Br_col[j] - Ai_row[i] * Bi_col[j];
        c_tmp_i = Ar_row[i] * Bi_col[j] + Ai_row[i] * Br_col[j];
        cr += c_tmp_r;
        ci += c_tmp_i;
      } else {
        c_ready = 1;
        break;
      }
    }

    // write result on stream C & update c to 0
    if (c_ready && (cr != 0.0f || ci != 0.0f)) {
      Cr_stream.write(cr);
      Ci_stream.write(ci);
      Cm_stream.write(cm);
      (*CD)++;
      c_ready = 0;
      cr = 0.0f;
      ci = 0.0f;
    }

    if (LAST_IN_TENSOR(Am_row[i]) &&
        LAST_IN_TENSOR(Bm_col[j])) { // exit if both A, B read
      break;
    }
  }
}

//  void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
//               hls::stream<coo_t> &C_stream, const rank_t A_R, dim_t *CD) {
//
//    const dim_t size = 1 << A_R;
//  //uint32_t size = 1 << A_R;
//    *CD = 0;
//
//    hls::stream<coo_t> A_stream_buf, B_stream_buf;
//    coo_t old_c; // used for FIFO of last computed c
//    old_c.data.real = 0.0f;
//    old_c.data.imag = 0.0f;
//    coo_t c_tmp, c; // c_tmp stores partial results of c
//    std::vector<coo_t> A_row(size), B_col(size);
//  //coo_t A_row[size], B_col[size];
//    int q, o, n1, n2; // row maj vars
//
//    flag_t last_row = 0;
//
//  /******************************** ROW MAJOR
//  ********************************/
//
//    LOOP_T: /* iterate over A rows */
//    for(;;) {
//
//      LOOP_Q: /* read A_row */
//      q = 0;
//      for(;;) {
//        A_row[q] = A_stream.read();
//        if(A_row[q].last_in_row) {
//          if(A_row[q].last_in_tensor) {
//            // TODO: set flag to not repopulate B
//            last_row = 1;
//          }
//          break;
//        }
//        q++;
//      }
//
//      LOOP_P: /* iterate over B cols */
//      for(;;) {
//
//        LOOP_O: /* read B_col */
//        o = 0;
//        for(;;) {
//          B_col[o] = B_stream.read();
//          if(!last_row) {
//            B_stream_buf.write(B_col[o]);
//          }
//          if(B_col[o].last_in_row) {
//            break;
//          }
//          o++;
//        }
//
//        LOOP_N: /* compute c = A_row * B_col */
//        n1 = 0;
//        n2 = 0;
//        c.data.real = 0.0f;
//        c.data.imag = 0.0f;
//        for(;;) {
//
//          if(A_row[n1].y == B_col[n2].x) {  /* if same index multiply */
//            c_tmp.data = Complex::mul(A_row[n1].data, B_col[n2].data);
//            c.data = Complex::add(c.data, c_tmp.data);
//          }
//
//          if ( ( A_row[n1].last_in_row && B_col[n2].x >= A_row[n1].y )
//            || ( B_col[n2].last_in_row && A_row[n1].y >= B_col[n2].x ) ) { /*
//            break if last in row */
//            //while (!A_row[n1].last_in_row) { /* go to last elem in A_row */
//            //  n1++;
//            //}
//            break;
//          }
//
//          if (A_row[n1].y < B_col[n2].x) { /* find next elem to check */
//            n1++;
//          } else {
//            n2++;
//          }
//        }
//
//        if ( !(c.data.real == 0.0f && c.data.imag == 0.0f) ) {  /* update c */
//          c.x = A_row[n1].x;
//          c.y = B_col[n2].y;
//          if( !(old_c.data.real == 0.0f && old_c.data.imag == 0.0f) ) {
//            if(old_c.x != c.x) {
//              old_c.last_in_row = 1;
//            } else {
//              old_c.last_in_row = 0;
//            }
//            old_c.last_in_tensor = 0;
//            C_stream.write(old_c);
//            (*CD)++;
//          }
//          old_c = c;
//        }
//
//        if(B_col[n2].last_in_tensor) {  /* exit if B_col last in tensor */
//          break;
//        }
//      }
//      while(!B_stream_buf.empty()) {  /* recharge B cols */
//        B_stream.write(B_stream_buf.read());
//      }
//
//      if(A_row[n1].last_in_tensor) {  /* exit if A_row last in tensor */
//          break;
//      }
//    }
//
//    if (!(old_c.data.real == 0.0f && old_c.data.imag == 0.0f)) {  /* update
//    last in tensor for c */
//      old_c.last_in_row = 1;
//      old_c.last_in_tensor = 1;
//      C_stream.write(old_c);
//      (*CD)++;
//    }
//
//  }

} // namespace Multiplication
} // namespace Matrix
