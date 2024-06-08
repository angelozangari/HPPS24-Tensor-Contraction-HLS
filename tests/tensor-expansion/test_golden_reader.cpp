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

  for (TE &te : *exp) {
    te.left.to_coo_t();

    // Call the kernel
    // tensor_expansion(left, right, res, te.left.rank);
  }

  return 0;
}
