// Host code

#include <fstream>
#include <stdlib.h>

#include "tensor-expansion/krnl_tens_exp.h"
#include "tests/golden_reader.h"

using namespace std;
using namespace Complex;

bool operator==(const coo_t &lhs, const coo_t &rhs) {
  return abs(lhs.data.real - rhs.data.real) < 1e-6 &&
         abs(lhs.data.imag - rhs.data.imag) < 1e-6 && lhs.x == rhs.x &&
         lhs.y == rhs.y && lhs.last_in_row == rhs.last_in_row &&
         lhs.last_in_tensor == rhs.last_in_tensor;
}

void print_te_matrices(const TE &te) {
  cout << "Left tensor:" << endl;
  te.left.print();
  cout << "Right tensor:" << endl;
  te.right.print();
  cout << "Output tensor:" << endl;
  te.out.print();
}

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto exp = &reader.expansions;

  for (size_t i = 0; i < exp->size(); i++) {
    TE &te = exp->at(i);

    CooTens left{te.left};
    CooTens right{te.right};
    CooTens real_out{te.out};

    // Call the kernel
    std::vector<coo_t> out(left.size() * right.size());
    cout << "Running test " << i << " with sizes " << left.rank << " x "
         << right.rank << " -> " << real_out.rank << " ... " << flush;
    tensor_expansion(left.data.data(), right.data.data(), out.data(),
                     left.size(), right.size(), left.rank, right.rank);

    // Compare the output
    CooTens predicted_out{out, left.rank * 2};

    if (predicted_out.data.size() != real_out.data.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      cout << "Predicted output size: " << predicted_out.data.size() << endl;
      cout << "Real output size: " << real_out.data.size() << endl;
      return 1;
    }

    for (size_t i = 0; i < predicted_out.data.size(); i++) {
      if (!(predicted_out.data[i] == real_out.data[i])) {
        cout << "FAILED" << endl;
        cout << "Mismatch in data" << endl;
        // print_te_matrices(te);
        cout << "Predicted output:" << "(" << predicted_out.data[i].data.real
             << " + " << predicted_out.data[i].data.imag << "i) at ("
             << predicted_out.data[i].x << ", " << predicted_out.data[i].y
             << ")" << endl;
        cout << "Real output:" << "(" << real_out.data[i].data.real << " + "
             << real_out.data[i].data.imag << "i) at (" << real_out.data[i].x
             << ", " << real_out.data[i].y << ")" << endl;
        cout << "Full Real output:" << endl;
        real_out.print();
        cout << "Full Predicted output:" << endl;
        predicted_out.print();
        print_te_matrices(te);
        return 1;
      }
    }

    cout << "PASSED" << endl;
  }

  return 0;
}
