// Host code

#include <fstream>
#include <stdlib.h>

#include "../golden_reader.h"
#include "tensor-expansion/krnl_tens_exp.h"

using namespace std;
using namespace Complex;

void print_te_matrices(const TE &te) {
  cout << "Left tensor:" << endl;
  te.left.print();
  cout << "Right tensor:" << endl;
  te.right.print();
  cout << "Output tensor:" << endl;
  te.out.print();
}

void print_te_sizes(const TE &te) {
  cout << te.left.size() << " x " << te.right.size() << " -> " << te.out.size()
       << endl;
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
    cout << "Running test " << i << " with sizes " << left.size() << " x "
         << right.size() << " -> " << real_out.size() << " ... " << flush;
    tensor_expansion(left.data.data(), right.data.data(), out.data(),
                     left.size(), right.size(), left.rank, right.rank);

    // Compare the output
    CooTens predicted_out{out, left.rank * 2};

    if (predicted_out.data.size() != real_out.data.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      print_te_sizes(te);
      return 1;
    }

    for (size_t i = 0; i < predicted_out.data.size(); i++) {
      if (predicted_out.data[i].data.real != real_out.data[i].data.real ||
          predicted_out.data[i].data.imag != real_out.data[i].data.imag) {
        cout << "FAILED" << endl;
        cout << "Mismatch in data" << endl;
        print_te_matrices(te);
        return 1;
      }
    }

    cout << "PASSED" << endl;
  }

  return 0;
}
