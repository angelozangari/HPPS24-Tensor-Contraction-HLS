// Host code

#include <fstream>
#include <stdlib.h>

#include "kernels/tensor-expansion/krnl_left_tp.h"
#include "kernels/tensor-expansion/krnl_right_tp.h"
#include "kernels/types.h"
#include "utils/golden_reader.h"

using namespace std;
using namespace Tensor;

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  std::vector<std::unique_ptr<OP>> &ops = reader.operations;

#ifdef TEST_ALL
  for (size_t i = 0; i < ops.size(); i++) {
#else
  for (size_t i = 116; i < 118; i++) {
#endif
    OP &op = *ops[i];

    // Determine if the operation is unary or binary
    if (op.is_unary()) {
      UnaryOP &unary_op = static_cast<UnaryOP &>(op);
      CooTens input{unary_op.input};
      CooTens real_out{unary_op.out};

      // Call the appropriate kernel based on the operation kind
      std::vector<float> out_r(real_out.size());
      std::vector<float> out_i(real_out.size());
      std::vector<coo_meta_t> out_m(real_out.size());

      vector<complex_t> A_vec(input.data_r.size());
      vector<complex_t> C_vec(real_out.size());

      for (size_t i = 0; i < input.data_r.size(); i++) {
        A_vec[i].r = input.data_r[i];
        A_vec[i].i = input.data_i[i];
        A_vec[i].m = input.data_m[i];
      }

      if (op.kind == OpKind::TensProdLeft) {
        cout << "Running unary test (TPL) " << i << " with size " << input.rank << " -> "
             << real_out.rank << " ... " << flush;
        krnl_left_tp(A_vec.data(), C_vec.data(), input.rank, A_vec.size());
      } else if (op.kind == OpKind::TensProdRight) {
        cout << "Running unary test (TPR) " << i << " with size " << input.rank << " -> "
             << real_out.rank << " ... " << flush;
        krnl_right_tp(A_vec.data(), C_vec.data(), input.rank, A_vec.size());
      } else {
        cout << "ERROR: Unsupported unary operation kind" << endl;
        return 1;
      }

      for (size_t i = 0; i < C_vec.size(); i++) {
        out_r[i] = C_vec[i].r;
        out_i[i] = C_vec[i].i;
        out_m[i] = C_vec[i].m;
      }

      // Compare the output
      CooTens predicted_out{out_r, out_i, out_m, input.rank * 2};

      if (predicted_out.size() != real_out.size()) {
        cout << "FAILED" << endl;
        cout << "Mismatch in sizes" << endl;
        cout << "Predicted output size: " << predicted_out.size() << endl;
        cout << "Real output size: " << real_out.size() << endl;
        cout << "Input: " << endl;
        input.print();
        cout << "Predicted output:" << endl;
        predicted_out.print();
        cout << "Real output:" << endl;
        real_out.print();
        return 1;
      }

      for (size_t i = 0; i < predicted_out.size(); i++) {
        if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
              predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
              predicted_out.data_m[i] == real_out.data_m[i])) {
          cout << "FAILED" << endl;
          cout << "Mismatch in data" << endl;
          cout << "Predicted output:"
               << "(" << predicted_out.data_r[i] << " + " << predicted_out.data_i[i]
               << "i) at (" << X(predicted_out.data_m[i]) << ", "
               << Y(predicted_out.data_m[i]) << ")" << endl;
          cout << "Real output:"
               << "(" << real_out.data_r[i] << " + " << real_out.data_i[i] << "i) at ("
               << X(real_out.data_m[i]) << ", " << Y(real_out.data_m[i]) << ")" << endl;
          cout << "Full Real output:" << endl;
          real_out.print();
          cout << "Full Predicted output:" << endl;
          predicted_out.print();
          op.print();
          return 1;
        }
      }

      cout << "PASSED" << endl;
    } else {
      cout << "ERROR: Binary tensor products operations are not supported" << endl;
      return 1;
    }
  }

  return 0;
}
