#include "tensors.h"

namespace Tensor {

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
           hls::stream<coo_meta_t> &Cm_stream, float *Cr, float *Ci,
           coo_meta_t *Cm, dim_t C_size) {
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

} // namespace Tensor
