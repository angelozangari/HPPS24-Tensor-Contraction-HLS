#include "krnl_tens_exp.h"
#include "tensor/io.h"

using namespace Complex;

void tensor_expansion(cmplx_t *A, cmplx_t *B, cmplx_t *C, dim_t A_NZ,
                      dim_t B_NZ, rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A
#pragma HLS INTERFACE m_axi port=B
#pragma HLS INTERFACE m_axi port=C
#pragma HLS INTERFACE s_axilite port=A_NZ
#pragma HLS INTERFACE s_axilite port=B_NZ
#pragma HLS INTERFACE s_axilite port=A_R
#pragma HLS INTERFACE s_axilite port=B_R
  // clang-format on

  hls::stream<cmplx_t> A_stream, B_stream, C_stream;

#pragma HLS dataflow
  Tensor::load(A, A_stream, A_NZ);
  Tensor::load(B, B_stream, B_NZ);
  Tensor::Expansion::compute(A_stream, B_stream, C_stream, A_R, B_R);
  Tensor::store(C_stream, C, A_NZ * B_NZ);
}

namespace Tensor {
namespace Expansion {

void compute(hls::stream<cmplx_t> &A_stream, hls::stream<cmplx_t> &B_stream,
             hls::stream<cmplx_t> &C_stream, const rank_t A_R,
             const rank_t B_R) {
  hls::stream<cmplx_t> A_stream_buffer, B1_stream_buffer, B2_stream_buffer;
  cmplx_t a, b;

  const dim_t AD = 2 << (A_R - 1);
  const dim_t BD = 2 << (B_R - 1);

LOOP_P: // store the entire B tensor in a stream
  for (int p = 0; p < AD * BD; p++) {
    B2_stream_buffer.write(B_stream.read());
  }

LOOP_N: // iterate over all rows of A
  for (int n = 0; n < AD; n++) {

  LOOP_M: // store in a stream the first row of A
    for (int m = 0; m < AD; m++) {
      A_stream_buffer.write(A_stream.read());
    }

  LOOP_L: // iter for all the rows of B
    for (int l = 0; l < BD; l++) {

    LOOP_Q: // store in a stream the first row of B
      for (int q = 0; q < BD; q++) {
        B1_stream_buffer.write(B2_stream_buffer.read());
      }

    LOOP_I: // compute the entire line of C
      for (int i = 0; i < AD; i++) {
        a = A_stream_buffer.read();
#pragma HLS PIPELINE II = 1
      LOOP_J:
        for (int j = 0; j < BD; j++) {
          b = B1_stream_buffer.read();
          C_stream.write(Complex::mul(a, b));
          if (i <
              AD - 1) { // reiterate the first row of B if As are not finished
            B1_stream_buffer.write(b);
          } else { // recharge the first row of B
            B2_stream_buffer.write(b);
          }
        }
        if (l < BD - 1) {
          A_stream_buffer.write(a);
        }
      }
    }
  }
}

} // namespace Expansion
} // namespace Tensor
