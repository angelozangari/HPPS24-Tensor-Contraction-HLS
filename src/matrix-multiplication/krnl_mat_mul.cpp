#include "krnl_mat_mul.h"
#include "tensors.h"

using namespace Complex;

void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, rank_t A_R,
                           dim_t A_NZ, dim_t B_NZ, dim_t *CD) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A
#pragma HLS INTERFACE s_axilite port=B
#pragma HLS INTERFACE s_axilite port=C
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return
  // clang-format on

  // hls-streams for matrices
  hls::stream<coo_t> A_stream, B_stream, C_stream;

  // Load matrices A, B
  Tensor::load(A, A_stream, A_NZ);
  Tensor::load(B, B_stream, B_NZ);
  // Compute matrix multiplication
  Matrix::Multiplication::compute(A_stream, B_stream, C_stream, A_R, CD);
  // Store result
  Tensor::store(C_stream, C, *CD); // FIX how to pass dimension of c stream
}

namespace Matrix {
namespace Multiplication {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t A_R, dim_t *CD) {

  const dim_t size = 1 << A_R;
  *CD = 0;

  hls::stream<coo_t> A_stream_buf, B_stream_buf;
  coo_t old_c; // used for FIFO of last computed c
  old_c.data.real = 0.0f;
  old_c.data.imag = 0.0f;
  coo_t c_tmp, c; // c_tmp stores partial results of c
  std::vector<coo_t> A_row(size), B_col(size);
  int q, o, n1, n2; // row maj vars

/******************************** ROW MAJOR ********************************/

  LOOP_T: /* iterate over A rows */
  for(;;) {

    LOOP_Q: /* read A_row */
    q = 0;
    for(;;) {
      A_row[q] = A_stream.read();
      if(A_row[q].last_in_row) {
        if(A_row[q].last_in_tensor) {
          // TODO: set flag to not repopulate B
        }
        break;
      }
      q++;
    }

    LOOP_P: /* iterate over B cols */
    for(;;) {

      LOOP_O: /* read B_col */
      o = 0;
      for(;;) {
        B_col[o] = B_stream.read();
        B_stream_buf.write(B_col[o]);
        if(B_col[o].last_in_row) {
          break;
        }
        o++;
      }

      LOOP_N: /* compute c = A_row * B_col */
      n1 = 0;
      n2 = 0;
      c.data.real = 0.0f;
      c.data.imag = 0.0f;
      for(;;) {

        if(A_row[n1].y == B_col[n2].x) {  /* if same index multiply */
          c_tmp.data = Complex::mul(A_row[n1].data, B_col[n2].data);
          c.data = Complex::add(c.data, c_tmp.data);
        }
        
        if ( ( A_row[n1].last_in_row && B_col[n2].x >= A_row[n1].y ) 
          || ( B_col[n2].last_in_row && A_row[n1].y >= B_col[n2].x ) ) { /* break if last in row */
          //while (!A_row[n1].last_in_row) { /* go to last elem in A_row */
          //  n1++;
          //}
          break;
        }

        if (A_row[n1].y < B_col[n2].x) { /* find next elem to check */
          n1++;
        } else {
          n2++;
        }
      }

      if ( !(c.data.real == 0.0f && c.data.imag == 0.0f) ) {  /* update c */
        c.x = A_row[n1].x;
        c.y = B_col[n2].y;
        if( !(old_c.data.real == 0.0f && old_c.data.imag == 0.0f) ) {
          if(old_c.x != c.x) {
            old_c.last_in_row = 1;
          } else {
            old_c.last_in_row = 0;
          }
          old_c.last_in_tensor = 0;
          C_stream.write(old_c);
          (*CD)++;
        }
        old_c = c;
      }
      
      if(B_col[n2].last_in_tensor) {  /* exit if B_col last in tensor */
        break;
      }
    }
    while(!B_stream_buf.empty()) {  /* recharge B cols */
      B_stream.write(B_stream_buf.read());
    }

    if(A_row[n1].last_in_tensor) {  /* exit if A_row last in tensor */
        break;
    }
  }

  if (!(old_c.data.real == 0.0f && old_c.data.imag == 0.0f)) {  /* update last in tensor for c */
    old_c.last_in_row = 1;
    old_c.last_in_tensor = 1;
    C_stream.write(old_c);
    (*CD)++;
  } 

}

} // namespace Multiplication
} // namespace Matrix