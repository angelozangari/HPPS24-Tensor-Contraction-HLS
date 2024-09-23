// Host code

#include <fstream>
#include <stdlib.h>

#include "tensor-expansion/krnl_tens_exp.h"
#include "tests/golden_reader.h"
#include <types.h>

using namespace std;
using namespace Tensor::Expansion;

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto ops = &reader.operations;

#ifdef TEST_ALL
  for (size_t i = 0; i < ops->size(); i++) {
#else
  for (size_t i = 95; i < 96; i++) {
#endif
    OP &op = ops->at(i);

    CooTens left{op.left};
    CooTens right{op.right};
    CooTens real_out{op.out};

    // Call the kernel
    std::vector<float> out_r(left.size() * right.size());
    std::vector<float> out_i(left.size() * right.size());
    std::vector<coo_meta_t> out_m(left.size() * right.size());

    vector<Chunked::complex_t> A_vec(left.data_r.size());
    vector<Chunked::complex_t> B_vec(right.data_r.size());
    vector<Chunked::complex_t> C_vec(left.size() * right.size());

    for (size_t i = 0; i < left.data_r.size(); i++) {
      A_vec[i].r = left.data_r[i];
      A_vec[i].i = left.data_i[i];
      A_vec[i].m = left.data_m[i];
    }
    for (size_t i = 0; i < right.data_r.size(); i++) {
      B_vec[i].r = right.data_r[i];
      B_vec[i].i = right.data_i[i];
      B_vec[i].m = right.data_m[i];
    }

    cout << "Running test " << i << " with sizes " << left.rank << " x " << right.rank
         << " -> " << real_out.rank << " ... " << flush;
    tensor_expansion(A_vec.data(), B_vec.data(), C_vec.data(), left.rank, right.rank);

    for (size_t i = 0; i < C_vec.size(); i++) {
      out_r[i] = C_vec[i].r;
      out_i[i] = C_vec[i].i;
      out_m[i] = C_vec[i].m;
    }

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
