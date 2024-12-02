#include "krnl_right_tp.h"

using namespace std;

void krnl_right_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16 // TODO change depth
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256 // TODO change depth
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Right;

  size_t writing_head = 0;
  hls::stream<complex_t> A_stream, C_stream;
  // clang-format off
#pragma HLS STREAM variable=A_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=C_stream depth=STREAM_SIZE
  // clang-format on

  load(A, A_stream);
  compute_first(A_stream, C_stream);
  store(C_stream, C, writing_head);
  load(A, A_stream);
  compute_second(A_stream, C_stream, A_R);
  store(C_stream, C, writing_head);
}

namespace Tensor {
namespace Product {
namespace Right {

void load(complex_t *A, hls::stream<complex_t> &A_stream) {
  complex_t tmp;

  for (size_t i = 0;; i++) {
    tmp = A[i];
    A_stream.write(tmp);
    if (LAST_IN_TENSOR(tmp.m)) {
      break;
  // TODO remove these breaks
  // TODO: instead, take a look online and use a buffer, split this loop in two, first
  // load, then read
    }
  }
}

void compute_first(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream) {
  complex_t a;

  while (!A_stream.empty()) {
    a = A_stream.read();
    LAST_IN_TENSOR(a.m) = false;
    C_stream.write(a);
  }
}

void compute_second(hls::stream<complex_t> &A_stream, hls::stream<complex_t> &C_stream,
                    rank_t A_R) {
  complex_t a;
  dim_t skip = 1 << A_R;

  while (!A_stream.empty()) {
    a = A_stream.read();
    X(a.m) = X(a.m) + skip;
    Y(a.m) = Y(a.m) + skip;
    C_stream.write(a);
  }
}

void store(hls::stream<complex_t> &C_stream, complex_t *C, size_t &writing_head) {
  complex_t c;

  while (!C_stream.empty()) {
    c = C_stream.read();
    C[writing_head++] = c;
  }
}

} // namespace Right
} // namespace Product
} // namespace Tensor
