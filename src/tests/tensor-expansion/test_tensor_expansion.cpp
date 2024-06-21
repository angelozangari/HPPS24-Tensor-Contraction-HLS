// Host code

#include <fstream>
#include <stdlib.h>

#include "tensor-expansion/krnl_tens_exp.h"
#include "tests/golden_reader.h"

using namespace std;

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto ops = &reader.operations;

  for (size_t i = 0; i < ops->size(); i++) {
    OP &op = ops->at(i);

    CooTens left{op.left};
    CooTens right{op.right};
    CooTens real_out{op.out};

    // Call the kernel
    std::vector<float> out_r(left.size() * right.size());
    std::vector<float> out_i(left.size() * right.size());
    std::vector<coo_meta_t> out_m(left.size() * right.size());
    cout << "Running test " << i << " with sizes " << left.rank << " x "
         << right.rank << " -> " << real_out.rank << " ... " << flush;
    tensor_expansion(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                     right.data_r.data(), right.data_i.data(),
                     right.data_m.data(), out_r.data(), out_i.data(),
                     out_m.data(), left.size(), right.size(), left.rank,
                     right.rank);

    // Compare the output
    CooTens predicted_out{out_r, out_i, out_m, left.rank * 2};

    if (predicted_out.size() != real_out.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      cout << "Predicted output size: " << predicted_out.size() << endl;
      cout << "Real output size: " << real_out.size() << endl;
      return 1;
    }

    for (size_t i = 0; i < predicted_out.size(); i++) {
      if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
            predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
            predicted_out.data_m[i] == real_out.data_m[i])) {
        cout << "FAILED" << endl;
        cout << "Mismatch in data" << endl;
        // print_op_matrices(op);
        cout << "Predicted output:" << "(" << predicted_out.data_r[i] << " + "
             << predicted_out.data_i[i] << "i) at ("
             << X(predicted_out.data_m[i]) << ", " << Y(predicted_out.data_m[i])
             << ")" << endl;
        cout << "Real output:" << "(" << real_out.data_r[i] << " + "
             << real_out.data_i[i] << "i) at (" << X(real_out.data_m[i]) << ", "
             << Y(real_out.data_m[i]) << ")" << endl;
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
