// Host code

#include <fstream>
#include <stdlib.h>

#include "kernels/matrix-multiplication/krnl_mat_mul.h"
#include "utils/golden_reader.h"

using namespace std;

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto ops = &reader.operations;

#ifdef TEST_ALL
  for (size_t i = 0; i < ops->size(); i++) {
#else
  for (size_t i = 10; i < 11; i++) {
#endif
    OP &op = ops->at(i);

    CooTens left{op.left};
    CooTens right{op.right};
    CooTens real_out{op.out};

    dim_t N = 1 << left.rank;
    size_t max_out_size = N * N;
    dim_t real_size;

    float tmp_r[max_out_size];
    float tmp_i[max_out_size];
    coo_meta_t tmp_m[max_out_size];

    // op.print();

    flag_t left_row_format = left.format == MatrixFormat::RowMajor ? 1 : 0;

    // Call the kernel
    matrix_multiplication(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                          right.data_r.data(), right.data_i.data(), right.data_m.data(),
                          tmp_r, tmp_i, tmp_m, left.size(), right.size(), &real_size,
                          left_row_format);

    // Compare the output
    CooTens predicted_out{tmp_r, tmp_i, tmp_m, real_size, left.rank};

    if (real_size != real_out.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      cout << "Predicted output size: " << real_size << endl;
      // predicted_out.print();
      cout << "Real output size: " << real_out.size() << endl;
      // real_out.print();
      return 1;
    }

    for (size_t i = 0; i < predicted_out.size(); i++) {
      if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
            predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
            predicted_out.data_m[i] == real_out.data_m[i])) {
        cout << "FAILED" << endl;
        cout << "Mismatch in data" << endl;
        // print_op_matrices(op);
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
  }

  return 0;
}
