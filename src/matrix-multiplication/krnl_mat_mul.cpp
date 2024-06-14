#include "krnl_mat_mul.h"

using namespace Complex;

void matrix_multiplication(cmplx_t *A, cmplx_t *B, cmplx_t *C,
                           dim_t A_size, dim_t B_size) {
    // clang-format off
        // TODO: add pragmas
    // clang-format on
    
    // hls-streams for matrices
    hls::stream<cmplx_t> A_stream, B_stream, C_stream;
    
    // Load matrices A, B
    Matrix::load(A, A_stream, A_size);
    Matrix::load(B, B_stream, B_size);
    // Compute matrix multiplication
    Matrix::Multiplication::compute(A_stream, B_stream, C_stream, A_size, B_size);
    // Store result
    Matrix::store(C, C_stream, A_size);
}




namespace Matrix {

void load(Complex::cmplx_t *A, hls::stream<Complex::cmplx_t> &A_stream,
          dim_t A_size) {
    // TODO: pragmas
    for (int i = 0; i < A_size; i++) {
        A_stream.write(A[i]);
    }
}

void store(Complex::cmplx_t *C, hls::stream<Complex::cmplx_t> &C_stream,
          dim_t C_size) {
    // TODO: pragmas
    for (int i = 0; i < C_size; i++) {
        C[i] = C_stream.read();
    }
}

namespace Multiplication {
void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream) {
    hls::stream<coo_t> A_stream_buffer, B_stream_buffer;
    coo_t a, b, c, c_tmp, tmp;

    // row major
    
    LOOP_N: // iterate over A rows
    while (!A_stream.empty()) {

        LOOP_M: // store A_stream_buf the row of A
        for (;;) {
            tmp = A_stream.read();
            A_stream_buffer.write(tmp);
            if (tmp.last_in_row) {
                break;
            }
        }

        LOOP_L: // iter over all cols of B
        for (;;) {
        
            LOOP_Q: // store B_stream_buf the col of B
            for (;;) {
                tmp = B_stream.read();
                B_stream_buffer.write(tmp);
                if (tmp.last_in_row) {
                    break;
                }
            }

            // pop elem & refill
            a = A_stream_buffer.read();
            b = B_stream_buffer.read();
            A_stream_buffer.write(a);
            B_stream.write(b);

            // init c and c_tmp data at 0 and other infos
            // c.data, c_tmp.data = 0
            c.x = a.x;
            c.y = a.y;
            // c.last_in_row
            // c.last_in_tensor

            LOOP_I: // compute c = a_row * b_col
            for (;;) {
                // compute
                if(a.y == b.x) {
                    c_tmp.data = Complex::mul(a.data, b.data);
                    c.data = Complex::add(c.data, c_tmp.data);
                }

                // checks on 'OR' last in row
                if(a.last_in_row || b.last_in_row) {
                    break;
                }
                
                // pop elem & refill
                if (a.y < b.x) {
                    // consume a
                    a = A_stream_buffer.read();
                    A_stream_buffer.write(a);
                } else {
                    // consume b
                    b = B_stream_buffer.read();
                    B_stream.write(b);
                }
            }

            // consume streams until 'AND' last in row
            while( !(a.last_in_row && b.last_in_row) ) {
                if (!a.last_in_row) {
                    // consume a
                    a = A_stream_buffer.read();
                    A_stream_buffer.write(a);
                }
                if (!b.last_in_row) {
                    // consume b
                    b = B_stream_buffer.read();
                    B_stream.write(b);
                }
            }

            // FIX: if b.last_in_tensor => c.last_in_row
            // FIX: if b.last_in_tensor && A_stream.empty() => c.last_in_tensor

            // write c on out_stream (if !0)

            if (b.last_in_tensor) {
                break;
            }
        }
    }
}

} // namespace Multiplication
} // namespace Matrix

// ***************** COL MAJOR ***************** //
//    // col major (dual)
//
//    // iterate cols B
//        // iterate rows A
//            // intersect
//            // repopulate A as needed
// ********************************************* //