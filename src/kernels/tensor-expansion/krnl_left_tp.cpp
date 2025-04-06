#include "krnl_left_tp.h"

using namespace std;
using namespace hls;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=4096
#pragma HLS INTERFACE m_axi port=C bundle=gmem0 depth=8192
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  complex_t tmp, a;
  size_t j = 0, m = 0;

TPL_FIRST_LOOP:
  for (size_t i = 0; i < size; i++) {
    // clang-format off
  #pragma HLS PIPELINE
    // clang-format on
    tmp = A[i];
    a = tmp;
    X(a.m) = X(a.m) << 1;
    Y(a.m) = Y(a.m) << 1;
    LAST_IN_TENSOR(a.m) = false;
    C[m++] = a;
    if (LAST_IN_ROW(tmp.m)) {
    TPL_SECOND_LOOP:
      for (size_t k = i - j; k <= i; k++) {
        // clang-format off
        #pragma HLS PIPELINE II=1
        // clang-format on
        a = A[k];
        X(a.m) = (X(a.m) << 1) + 1;
        Y(a.m) = (Y(a.m) << 1) + 1;
        C[m++] = a;
      }
      j = 0;
    } else {
      j++;
    }
  }
}

namespace Tensor {
namespace Product {
namespace Left {

// void load(complex_t *A, stream<complex_t> &A_row, size_t size) {
//   // clang-format off
//   #pragma HLS STREAM variable=A_row depth=STREAM_SIZE
//   // clang-format on

//   complex_t a;
//   size_t j = 0;

// TPL_MAIN_LOOP:
//   for (size_t i = 0; i < size; i++) {
//     // clang-format off
//     #pragma HLS PIPELINE II=1
//     // clang-format on
//     a = A[i];
//     X(a.m) = X(a.m) << 1;
//     Y(a.m) = Y(a.m) << 1;
//     C if (LAST_IN_ROW(tmp.m)) {
//       for (size_t k = i - j; k <= i; k++) {
//         // clang-format off
//         #pragma HLS PIPELINE II=1
//         // clang-format on
//         tmp = A[k];
//         A_row.write(tmp);
//       }
//       j = 0;
//     }
//     j++;
//   }
// }

// void compute(stream<complex_t> &A_cached, bool first_pass, stream<complex_t> &C_row) {
//   complex_t a;

// TLP_COMPUTE_LOOP:
//   for (size_t i = 0; i < CACHE_SIZE; i++) {
//     // clang-format off
// #pragma HLS PIPELINE II=1
//     // clang-format on
//     a = A_cached.read();
//     if (first_pass) {
//       X(a.m) = X(a.m) << 1;
//       Y(a.m) = Y(a.m) << 1;
//       LAST_IN_TENSOR(a.m) = false;
//     } else {
//       X(a.m) = (X(a.m) << 1) + 1;
//       Y(a.m) = (Y(a.m) << 1) + 1;
//     }
//     C_row.write(a);
//     if (A_cached.empty())
//       break;
//   }
// }

// void store(stream<complex_t> &C_row, complex_t *C, size_t &writing_head) {
//   complex_t tmp;

// TPL_STORE_LOOP:
//   for (size_t i = 0; i < CACHE_SIZE; i++) {
//     // clang-format off
// #pragma HLS PIPELINE II=1
//     // clang-format on
//     if (C_row.empty())
//       break;
//     tmp = C_row.read();
//     C[writing_head++] = tmp;
//   }
// }

} // namespace Left
} // namespace Product
} // namespace Tensor
