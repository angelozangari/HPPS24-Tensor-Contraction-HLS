// Host code

#include <fstream>
#include <stdlib.h>

#include "matrix-multiplication/krnl_mat_mul.h"
#include "tensor-expansion/krnl_tens_exp.h"
#include "tests/golden_reader.h"

using namespace std;

CooTens compute_te(CooTens &left, CooTens &right) {
  std::vector<float> out_r(left.size() * right.size());
  std::vector<float> out_i(left.size() * right.size());
  std::vector<coo_meta_t> out_m(left.size() * right.size());

  tensor_expansion(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                   right.data_r.data(), right.data_i.data(), right.data_m.data(),
                   out_r.data(), out_i.data(), out_m.data(), left.size(), right.size(),
                   left.rank, right.rank);

  return CooTens{out_r, out_i, out_m, left.rank * 2};
}

CooTens compute_matmul(CooTens &left, CooTens &right) {
  dim_t N = 1 << left.rank;
  size_t max_out_size = N * N;
  dim_t real_size;

  float tmp_r[max_out_size];
  float tmp_i[max_out_size];
  coo_meta_t tmp_m[max_out_size];

  // Call the kernel
  matrix_multiplication(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                        right.data_r.data(), right.data_i.data(), right.data_m.data(),
                        tmp_r, tmp_i, tmp_m, left.size(), right.size(), &real_size);

  return CooTens{tmp_r, tmp_i, tmp_m, real_size, left.rank};
}

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto ops = &reader.operations;

  OP left_te = ops->at(0);
  OP right_te = ops->at(1);
  OP out_matmul = ops->at(2);

  CooTens left{left_te.left};
  CooTens right{left_te.right};
  auto out_left_te = compute_te(left, right);

  left = {right_te.left};
  right = {right_te.right};
  auto out_right_te = compute_te(left, right);

  left = {out_left_te};
  right = {out_right_te};
  auto computed_matmul = compute_matmul(left, right);

  // Compare the output
  auto real_out = CooTens{out_matmul.out};
  auto predicted_out = computed_matmul;

  // if (predicted_out.size() != real_out.size()) {
  //   std::cout << "FAILED" << endl;
  //   std::cout << "Mismatch in sizes" << endl;
  //   std::cout << "Predicted output size: " << predicted_out.size() << endl;
  //   std::cout << "Real output size: " << real_out.size() << endl;
  //   return 1;
  // }

  for (size_t i = 0; i < predicted_out.size(); i++) {
    if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
          predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
          predicted_out.data_m[i] == real_out.data_m[i])) {
      std::cout << "FAILED" << endl;
      std::cout << "Mismatch in data" << endl;
      // print_op_matrices(op);
      std::cout << "Predicted output:"
                << "(" << predicted_out.data_r[i] << " + " << predicted_out.data_i[i]
                << "i) at (" << X(predicted_out.data_m[i]) << ", "
                << Y(predicted_out.data_m[i]) << ")" << endl;
      std::cout << "Real output:"
                << "(" << real_out.data_r[i] << " + " << real_out.data_i[i] << "i) at ("
                << X(real_out.data_m[i]) << ", " << Y(real_out.data_m[i]) << ")" << endl;
      std::cout << "Full Real output:" << endl;
      real_out.print();
      std::cout << "Full Predicted output:" << endl;
      predicted_out.print();
      return 1;
    }
  }

  std::cout << "PASSED" << endl;

  return 0;
}
