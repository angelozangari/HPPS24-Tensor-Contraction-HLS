#include "krnl_tens_exp.h"

using namespace Complex;

void tensor_expansion(coo_t *A, coo_t *B, coo_t *C, dim_t A_NZ, dim_t B_NZ,
                      rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A
#pragma HLS INTERFACE s_axilite port=B
#pragma HLS INTERFACE s_axilite port=C
#pragma HLS INTERFACE s_axilite port=A_NZ
#pragma HLS INTERFACE s_axilite port=B_NZ
#pragma HLS INTERFACE s_axilite port=A_R
#pragma HLS INTERFACE s_axilite port=B_R
#pragma HLS INTERFACE s_axilite port=return
  // clang-format on

  hls::stream<coo_t> A_stream, B_stream, C_stream;

#pragma HLS dataflow
  Tensor::load(A, A_stream, A_NZ);
  Tensor::load(B, B_stream, B_NZ);
  Tensor::Expansion::compute(A_stream, B_stream, C_stream, B_NZ, B_R);
  Tensor::store(C_stream, C, A_NZ * B_NZ);
}

namespace Tensor {

void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size) {
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    A_stream.write(A[i]);
  }
}

void store(hls::stream<coo_t> &C_stream, coo_t *C, dim_t C_size) {
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    C[i] = C_stream.read();
  }
}

namespace Expansion {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const dim_t B_NZ, const rank_t B_R) {
  hls::stream<coo_t> A_stream_buffer, B_stream_buffer;
  coo_t a, b, c, tmp;
  int l = 0;

  const dim_t BD = 1 << B_R;

LOOP_N: // iterate over all rows of A
  while (!A_stream.empty()) {

  LOOP_M: // store in a stream the first row of A
    for (;;) {
      // std::cout << "66 read A" << std::endl;
      tmp = A_stream.read();
      A_stream_buffer.write(tmp);
      if (tmp.last_in_row) {
        break;
      }
    }

  LOOP_L: // iter for all the rows of B
    for (;;) {

    LOOP_Q: // store in a stream the first row of B
      for (;;) {
        // std::cout << "79 read B" << std::endl;
        tmp = B_stream.read();
        B_stream_buffer.write(tmp);
        if (tmp.last_in_row) {
          break;
        }
      }

    LOOP_I: // compute the entire line of C
      for (;;) {
        a = A_stream_buffer.read();
        // std::cout << "89 read A(" << a.x << ", " << a.y << ")" << std::endl;
      LOOP_J:
        for (;;) {
          // std::cout << "l = " << l++ << std::endl;
#pragma HLS PIPELINE II = 1
          // std::cout << "95 read B" << std::endl;
          b = B_stream_buffer.read();
          c.data = Complex::mul(a.data, b.data);
          c.x = a.x * BD + b.x;
          c.y = a.y * BD + b.y;
          c.last_in_row = b.last_in_row & a.last_in_row;
          c.last_in_tensor = b.last_in_tensor & a.last_in_tensor;
          // std::cout << "99 write C(" << c.x << ", " << c.y << ")" <<
          // std::endl;
          C_stream.write(c);
          if (!a.last_in_row) {
            // reiterate the first row of B if As are not finished
            B_stream_buffer.write(b);
          } else if (!A_stream.empty()) {
            // recharge the first row of B
            B_stream.write(b);
          }

          if (b.last_in_row) {
            break;
          }
        }
        if (!b.last_in_tensor) {
          A_stream_buffer.write(a);
        }
        // std::cout << "a.last_in_row = " << a.last_in_row << std::endl;
        if (a.last_in_row) {
          break;
        }
      }

      if (b.last_in_tensor) {
        break;
      }
    }
  }
}

} // namespace Expansion
} // namespace Tensor
