#include "krnl_mat_mul.h"
#include "tensors.h"

// TEST
#include <fstream>
#include <stdlib.h>
// TEST

/* print computing c row for elems x, y*/
// std::cout << "\n\ncomputing c for row: "<< A_row[n1].x << ", col: " << B_col[n2].y << "\n" << std::flush;

/* print elem x,y of A_row */
//std::cout << "\nA_row[" << A_row[n1].x <<"][" << A_row[n1].y << "]=(" << A_row[n1].data.real << ", " << A_row[n1].data.imag << "i) ; last in row: " <<  A_row[n1].last_in_row << "\n" << std::flush;

/* print elem x,y of B_col */
//std::cout << "B_col[" << B_col[n2].x <<"][" << B_col[n2].y << "]=(" << B_col[n2].data.real << ", " << B_col[n2].data.imag << "i) ; last in row: " <<  B_col[n2].last_in_row << "\n" << std::flush;      

/* print elem x,y of c */
//std::cout << "c[" << A_row[n1].x <<"][" << B_col[n2].y << "]=(" << c.data.real << ", " << c.data.imag << "i)\n\n" << std::flush;

/* First row read correctly */
//std::cout << "\nq: " << q << " A_row[" << A_row[q].x <<"][" << A_row[q].y << "]=(" << A_row[q].data.real << ", " << A_row[q].data.imag << "i) ; last in row: " <<  A_row[q].last_in_row << "\n" << std::flush;      

// Vectors read correcly, both times o = 0 
//std::cout << "o: " << o << " B_col[" << B_col[o].x <<"][" << B_col[o].y << "]=(" << B_col[o].data.real << ", " << B_col[o].data.imag << "i) ; last in row: " <<  B_col[o].last_in_row << "\n" << std::flush;      

//std::cout << "\nCompute c loop iteration: " << std::flush;
//std::cout << "\nA_row[" << n1 << "]=(" << A_row[n1].data.real << ", " << A_row[n1].data.imag << "i) ; last in row: " <<  A_row[n1].last_in_row << " ; last in tensor: " <<  A_row[n1].last_in_tensor << "\n" << std::flush;
//std::cout << "B_col[" << n2 << "]=(" << B_col[n2].data.real << ", " << B_col[n2].data.imag << "i) ; last in row: " <<  B_col[n2].last_in_row << " ; last in tensor: " <<  B_col[n2].last_in_tensor << "\n" << std::flush;      

// of X - val, x, y, lir, lit
//std::cout << "\nX val: " << x.data.real << "," << x.data.imag << "i" << std::flush;
//std::cout << "\nx: " << x.x << std::flush;
//std::cout << "\ny: " << x.y << std::flush;
//std::cout << "\nl_i_r: " << x.last_in_row << std::flush;
//std::cout << "\nl_i_t: " << x.last_in_tensor << std::flush;

using namespace Complex;

void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, rank_t A_R,
                           flag_t row_maj, dim_t *CD) {
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

  const dim_t AD = 1 << A_R;
  *CD = 0;

  // Load matrices A, B
  Tensor::load(A, A_stream, AD);
  Tensor::load(B, B_stream, AD);
  // Compute matrix multiplication
  Matrix::Multiplication::compute(A_stream, B_stream, C_stream, AD, row_maj, CD);
  // Store result
  Tensor::store(C_stream, C, *CD);
}

namespace Matrix {
namespace Multiplication {

/* ASSUMPTIONS
- since we check for rows/cols on last_in_row, we can skip cleaning the arrays since the relevant data will be overwritten
- since we can't read and write to same stream in same loop, A/B_stream_temp are used to temporarely store the matrix A or B
*/

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t size, flag_t row_maj, dim_t *CD) {

  hls::stream<coo_t> A_stream_buf, B_stream_buf;
  coo_t *old_c = NULL; // use to keep reference to last computed c
  coo_t c_tmp, c; // c_tmp stores partial results of c
  std::vector<coo_t> A_row(size), B_col(size);
  //int t, l, q1, q2;
  int q, o, n1, n2; // row maj vars


if (row_maj) {
/******************************** ROW MAJOR ********************************/

  LOOP_T: /* iterate over A rows */
  for(;;) {

    LOOP_Q: /* read A_row */
    q = 0;
    for(;;) {
//std::cout << "\nA_row[q] val: " << A_row[q].data.real << "," << A_row[q].data.imag << "i" << std::flush;
      A_row[q] = A_stream.read();
//std::cout << "\nA_row[q] val: " << A_row[q].data.real << "," << A_row[q].data.imag << "i" << std::flush;
//std::cout << "\nx: " << A_row[q].x << std::flush;
//std::cout << "\ny: " << A_row[q].y << std::flush;
//std::cout << "\nl_i_r: " << A_row[q].last_in_row << std::flush;
//std::cout << "\nl_i_t: " << A_row[q].last_in_tensor << std::flush;
      if(A_row[q].last_in_tensor) {
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
        
        if ( ( A_row[n1].last_in_row && B_col[n2].x >= A_row[n1].y ) || ( B_col[n2].last_in_row && A_row[n1].y >= B_col[n2].x ) ) { /* break if last in row */
          while (!A_row[n1].last_in_row) { /* go to last elem in A_row */
            n1++;
          }
          break;
        }

        if (A_row[n1].y < B_col[n2].x) { /* find next elem to check */
          n1++;
        } else {
          n2++;
        }
      }

      if ( !(c.data.real == 0.0f && c.data.imag == 0.0f) ) {  /* update c */
std::cout << "\n\033[1;31mFINAL COMPUTED C \033[0m[" << A_row[n1].x << "," << B_col[n2].y << "]=(" << c.data.real << "," << c.data.imag << "i)\n" << std::flush;
        c.x = A_row[n1].x;
        c.y = B_col[n2].y;
        if(old_c) {
          if((*old_c).x != c.x) {
            (*old_c).last_in_row = 1;
          } else {
            (*old_c).last_in_row = 0;
          }
          C_stream.write(*old_c);
          CD++;
        }
        old_c = &c;
      }
      
// of B_col[n2] - val, x, y, lir, lit
//std::cout << "\nB_col[n2] val: " << B_col[n2].data.real << "," << B_col[n2].data.imag << "i" << std::flush;
//std::cout << "\nx: " << B_col[n2].x << std::flush;
//std::cout << "\ny: " << B_col[n2].y << std::flush;
//std::cout << "\nl_i_r: " << B_col[n2].last_in_row << std::flush;
//std::cout << "\nl_i_t: " << B_col[n2].last_in_tensor << std::flush;
      if(B_col[n2].last_in_tensor) {  /* exit if B_col last in tensor */
        break;
      }
    }
    while(!B_stream_buf.empty()) {  /* recharge B cols */
      B_stream.write(B_stream_buf.read());
    }
// of A_row[n1] - val, x, y, lir, lit
//std::cout << "\nA_row[n1] val: " << A_row[n1].data.real << "," << A_row[n1].data.imag << "i" << std::flush;
//std::cout << "\nx: " << A_row[n1].x << std::flush;
//std::cout << "\ny: " << A_row[n1].y << std::flush;
//std::cout << "\nl_i_r: " << A_row[n1].last_in_row << std::flush;
//std::cout << "\nl_i_t: " << A_row[n1].last_in_tensor << std::flush;
    if(A_row[n1].last_in_tensor) {  /* exit if A_row last in tensor */
        break;
    }
  }
  // update last in tensor for c
  if (old_c) {
    (*old_c).last_in_row = 1;
    (*old_c).last_in_tensor = 1;
    C_stream.write(*old_c);
    CD++;
  } 

} else {
/******************************** COL MAJOR ********************************/
//
  return;
//LOOP_M:
//  for(;;) { // iterate over B cols
//
//    // read B_col
//    t = 0;
//  LOOP_L:
//    for(;;) {
//      B_col[t] = B_stream.read();
//      t++;
//      if(B_col[t].last_in_row) {
//        break;
//      }
//    }
//
//  LOOP_K:
//    for(;;) { // iterate over A rows
//    LOOP_J:
//      // read A_row
//      l = 0;
//      for(;;) {
//        A_row[l] = A_stream.read();
//        A_stream_buf.write(A_row[l]);
//        l++;
//        if(A_row[l].last_in_row) {
//          break;
//        }
//      }
//      
//    LOOP_I:// read first elems A_row, B_col
//    q1 = 0;
//    q2 = 0;
//    // init c.data to 0
//    c.data.real = 0.0f;
//    c.data.imag = 0.0f;
//      for(;;) { // compute c
//        // compute if i=j
//        if(A_row[q1].y == B_col[q2].x) {
//          c_tmp.data = Complex::mul(A_row[q1].data, B_col[q2].data);
//          c.data = Complex::add(c.data, c_tmp.data);
//        }
//        // break if last in row
//        if (A_row[q1].last_in_row || B_col[q2].last_in_row) {
//          break;
//        }
//        // find next elem to check
//        if (q1 < q2) {
//          q1++;
//        } else {
//          q2++;
//        }
//      }
//      // update c
//      if ( !(c.data.real == 0.0f && c.data.imag == 0.0f) ) {
//        c.x = A_row[q1].x;
//        c.y = B_col[q2].y;
//        if(old_c) {
//          if((*old_c).x != c.x) {
//            (*old_c).last_in_row = 1;
//          } else {
//            (*old_c).last_in_row = 0;
//          }
//        }
//        C_stream.write(*old_c);
//        CD++;
//        old_c = &c;
//      }
//      // exit if A_row last in tensor
//      if(A_row[q1].last_in_tensor) {
//        break;
//      }
//    }
//    // recharge A rows
//    while(!A_stream_buf.empty()) {
//      A_stream.write(A_stream_buf.read());
//    }
//  }
//  // update last in tensor for c
//  if (old_c) {
//    (*old_c).last_in_row = 1;
//    (*old_c).last_in_tensor = 1;
//    C_stream.write(*old_c);
//    CD++;
//  }
}

}

} // namespace Multiplication
} // namespace Matrix