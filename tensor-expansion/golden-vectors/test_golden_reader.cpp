// Host code

#include <fstream>
#include <stdlib.h>

#include "golden_reader.h"

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
  ifstream inp("golden-vectors.dat", ios::binary);

  vector<TE> tes;

  while (inp.peek() != EOF) {
    tes.emplace_back(inp);
  }

  cout << "Number of tensor expansions: " << tes.size() << endl;
  for (const auto &te : tes) {
    print_te_sizes(te);
  }
}
