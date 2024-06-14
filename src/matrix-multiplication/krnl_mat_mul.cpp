#include "krnl_mat_mul.h"
#include "tensors.h"

using namespace Complex;

void matrix_multiplication(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ,
                           dim_t B_NZ) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A
#pragma HLS INTERFACE s_axilite port=B
#pragma HLS INTERFACE s_axilite port=C
#pragma HLS INTERFACE s_axilite port=return
  // clang-format on

  // hls-streams for matrices
  hls::stream<coo_t> A_stream, B_stream, C_stream;

  // Load matrices A, B
  Tensor::load(A, A_stream, A_NZ);
  Tensor::load(B, B_stream, B_NZ);
  // Compute matrix multiplication
  Matrix::Multiplication::compute(A_stream, B_stream, C_stream, 0, 0); // FIXME
  // Store result
  // Matrix::store(C, C_stream, // size of res);
}

namespace Matrix {
namespace Multiplication {

/* ASSUMPTIONS
- since we check for rows/cols on last_in_row, we can skip cleaning the arrays since the relevant data will be overwritten
- since we can't read and write to same stream in same loop, A/B_stream_temp are used to temporarely store the matrix A or B
*/

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, dim_t size, flag_t row_maj) {

  hls::stream<coo_t> A_stream_buf, B_stream_buf;
  coo_t *old_c = NULL; // use to keep reference to last computed c
  coo_t c_tmp, c; // c_tmp stores partial results of c
  coo_t A_row[size], B_col[size];
  int t, l, q1, q2;


if (row_maj) {
/******************************** ROW MAJOR ********************************/

LOOP_T:
  for(;;) { // iterate over A rows

    // read A_row
    t = 0;
  LOOP_N:
    for(;;) {
      A_row[t] = A_stream.read();
      t++;
      if(A_row[t].last_in_row) {
        break;
      }
    }

  LOOP_M:
    for(;;) { // iterate over B cols
    LOOP_L:
      // read B_col
      l = 0;
      for(;;) {
        B_col[l] = B_stream.read();
        B_stream_buf.write(B_col[l]);
        l++;
        if(B_col[l].last_in_row) {
          break;
        }
      }
      
    LOOP_Q:// read first elems A_row, B_col
    q1 = 0;
    q2 = 0;
    // TODO: init c.data to 0
      for(;;) { // compute c
        // compute if i=j
        if(A_row[q1].y == B_col[q2].x) {
          c_tmp.data = Complex::mul(A_row[q1].data, B_col[q2].data);
          c.data = Complex::add(c.data, c_tmp.data);
        }
        // break if last in row
        if (A_row[q1].last_in_row || B_col[q2].last_in_row) {
          break;
        }
        // find next elem to check
        if (q1 < q2) {
          q1++;
        } else {
          q2++;
        }
      }
      // update c
      c.x = A_row[q1].x;
      c.y = B_col[q2].y;
      if(old_c) {
        if((*old_c).x != c.x) {
          (*old_c).last_in_row = 1;
        } else {
          (*old_c).last_in_row = 0;
        }
      }
      C_stream.write(*old_c);
      old_c = &c;

      // exit if A_row last in tensor
      if(A_row[q1].last_in_tensor) {
        break;
      }
    }
    // recharge B cols
    while(!B_stream_buf.empty()) {
      B_stream.write(B_stream_buf.read());
    }
  }
  // update last in tensor for c
  c.last_in_row = 1;
  c.last_in_tensor = 1;
  C_stream.write(c);

} else {
/******************************** COL MAJOR ********************************/

LOOP_T:
  for(;;) { // iterate over B cols

    // read B_col
    t = 0;
  LOOP_N:
    for(;;) {
      B_col[t] = B_stream.read();
      t++;
      if(B_col[t].last_in_row) {
        break;
      }
    }

  LOOP_M:
    for(;;) { // iterate over A rows
    LOOP_L:
      // read A_row
      l = 0;
      for(;;) {
        A_row[l] = A_stream.read();
        A_stream_buf.write(A_row[l]);
        l++;
        if(A_row[l].last_in_row) {
          break;
        }
      }
      
    LOOP_Q:// read first elems A_row, B_col
    q1 = 0;
    q2 = 0;
    // TODO: init c.data to 0
      for(;;) { // compute c
        // compute if i=j
        if(A_row[q1].y == B_col[q2].x) {
          c_tmp.data = Complex::mul(A_row[q1].data, B_col[q2].data);
          c.data = Complex::add(c.data, c_tmp.data);
        }
        // break if last in row
        if (A_row[q1].last_in_row || B_col[q2].last_in_row) {
          break;
        }
        // find next elem to check
        if (q1 < q2) {
          q1++;
        } else {
          q2++;
        }
      }
      // update c
      c.x = A_row[q1].x;
      c.y = B_col[q2].y;
      if(old_c) {
        if((*old_c).x != c.x) {
          (*old_c).last_in_row = 1;
        } else {
          (*old_c).last_in_row = 0;
        }
      }
      C_stream.write(*old_c);
      old_c = &c;

      // exit if A_row last in tensor
      if(A_row[q1].last_in_tensor) {
        break;
      }
    }
    // recharge A rows
    while(!A_stream_buf.empty()) {
      A_stream.write(A_stream_buf.read());
    }
  }
  // update last in tensor for c
  c.last_in_row = 1;
  c.last_in_tensor = 1;
  C_stream.write(c);
}

}

} // namespace Multiplication
} // namespace Matrix