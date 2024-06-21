#include "tensors.h"

namespace Tensor {

void load(Complex::cmplx_t *Ad, coo_meta_t *Am, hls::stream<coo_t> &A_stream,
          dim_t A_size) {
  coo_t a;

LOAD_LOOP:
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    a.data = Ad[i];
    a.x = Am[i].x;
    a.y = Am[i].y;
    a.last_in_row = Am[i].last_in_row;
    a.last_in_tensor = Am[i].last_in_tensor;
    A_stream.write(a);
  }
}

void store(hls::stream<coo_t> &C_stream, Complex::cmplx_t *Cd, coo_meta_t *Cm,
           dim_t C_size) {
  coo_t c;

STORE_LOOP:
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    c = C_stream.read();
    Cd[i] = c.data;
    Cm[i].x = c.x;
    Cm[i].y = c.y;
    Cm[i].last_in_row = c.last_in_row;
    Cm[i].last_in_tensor = c.last_in_tensor;
  }
}

} // namespace Tensor
