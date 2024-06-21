#include "krnl_tens_exp.h"
#include "tensors.h"

using namespace Complex;

void tensor_expansion(cmplx_t *Ad, coo_meta_t *Am, cmplx_t *Bd, coo_meta_t *Bm,
                      cmplx_t *Cd, coo_meta_t *Cm, dim_t A_NZ, dim_t B_NZ,
                      rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=Ad bundle=gmem0 //depth=1024
#pragma HLS INTERFACE m_axi port=Am bundle=gmem0 //depth=1024
#pragma HLS INTERFACE m_axi port=Bd bundle=gmem1 //depth=1024
#pragma HLS INTERFACE m_axi port=Bm bundle=gmem1 //depth=1024
#pragma HLS INTERFACE m_axi port=Cd bundle=gmem2 //depth=1024
#pragma HLS INTERFACE m_axi port=Cm bundle=gmem2 //depth=1024
#pragma HLS INTERFACE s_axilite port=A bundle=control
#pragma HLS INTERFACE s_axilite port=B bundle=control
#pragma HLS INTERFACE s_axilite port=C bundle=control
#pragma HLS INTERFACE s_axilite port=A_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=B_NZ bundle=control
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=B_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  dim_t C_NZ = A_NZ * B_NZ;
  hls::stream<coo_t> A_stream, B_stream, C_stream;
  // clang-format off
#pragma HLS STREAM variable=A_stream depth=32
#pragma HLS STREAM variable=B_stream depth=32
#pragma HLS STREAM variable=C_stream depth=32
  // clang-format on

#pragma HLS dataflow
  Tensor::load(Ad, Am, A_stream, A_NZ);
  Tensor::load(Bd, Bm, B_stream, B_NZ);
  Tensor::Expansion::compute(A_stream, B_stream, C_stream, B_R);
  Tensor::store(C_stream, Cd, Cm, C_NZ);
}

namespace Tensor {
namespace Expansion {

void compute(hls::stream<coo_t> &A_stream, hls::stream<coo_t> &B_stream,
             hls::stream<coo_t> &C_stream, const rank_t B_R) {
  hls::stream<coo_t> A_stream_buffer, B_stream_buffer, B_cycle_buffer;
  // clang-format off
#pragma HLS STREAM variable=A_stream_buffer depth=32
#pragma HLS STREAM variable=B_stream_buffer depth=32
#pragma HLS STREAM variable=B_cycle_buffer depth=32
  // clang-format on
  coo_t a, b, c, tmp;

  const dim_t BD = 1 << B_R;

LOOP_T:
  for (;;) {
    tmp = B_stream.read();
    B_cycle_buffer.write(tmp);
    if (tmp.last_in_tensor) {
      break;
    }
  }

LOOP_N: // iterate over all rows of A
  while (!A_stream.empty()) {

  LOOP_M: // store in a stream the first row of A
    for (;;) {
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
        tmp = B_cycle_buffer.read();
        B_stream_buffer.write(tmp);
        if (tmp.last_in_row) {
          break;
        }
      }

    LOOP_I: // compute the entire line of C
      for (;;) {
        a = A_stream_buffer.read();
      LOOP_J:
        for (;;) {
#pragma HLS PIPELINE II = 1
          b = B_stream_buffer.read();
          c.data = Complex::mul(a.data, b.data);
          c.x = a.x * BD + b.x;
          c.y = a.y * BD + b.y;
          c.last_in_row = b.last_in_row & a.last_in_row;
          c.last_in_tensor = b.last_in_tensor & a.last_in_tensor;
          C_stream.write(c);
          if (!a.last_in_row) {
            // reiterate the first row of B if As are not finished
            B_stream_buffer.write(b);
          } else if (!A_stream.empty()) {
            // recharge the first row of B
            B_cycle_buffer.write(b);
          }

          if (b.last_in_row) {
            break;
          }
        }
        if (!b.last_in_tensor) {
          A_stream_buffer.write(a);
        }
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
