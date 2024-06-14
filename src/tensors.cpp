#include "tensors.h"

namespace Tensor {

void load(coo_t *A, hls::stream<coo_t> &A_stream, dim_t A_size) {
LOAD_LOOP:
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    A_stream.write(A[i]);
  }
}

void store(hls::stream<coo_t> &C_stream, coo_t *C, dim_t C_size) {
STORE_LOOP:
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    C[i] = C_stream.read();
  }
}

} // namespace Tensor
