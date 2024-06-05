// Host code

#include <fstream>
#include <stdlib.h>

#include "golden/golden_reader.h"

using namespace std;

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

  cout << "Number of tensor expansions: " << exp->size() << endl;
  for (const auto &te : *exp) {
    print_te_sizes(te);
  }
}
