// Host code

#include <fstream>
#include <stdlib.h>

#include "matrix-multiplication/krnl_mat_mul.h"
#include "tests/golden_reader.h"

using namespace std;
using namespace Complex;

bool operator==(const coo_t &lhs, const coo_t &rhs) {
  return abs(lhs.data.real - rhs.data.real) < 1e-6 &&
         abs(lhs.data.imag - rhs.data.imag) < 1e-6 && lhs.x == rhs.x &&
         lhs.y == rhs.y && lhs.last_in_row == rhs.last_in_row &&
         lhs.last_in_tensor == rhs.last_in_tensor;
}

int main() {
  GoldenReader reader("golden-vectors.dat");
  reader.consume(true); // SET TO TRUE TO REVERSE THE RIGHT TENSOR
  auto ops = &reader.operations;

  for (size_t i = 0; i < ops->size(); i++) {
    OP &op = ops->at(i);

    CooTens left{op.left};
    CooTens right{op.right};
    CooTens real_out{op.out};

    dim_t N = 1 << left.rank;
    size_t max_out_size = N*N;
    dim_t real_size;

    coo_t tmp[max_out_size];

    // Call the kernel
    matrix_multiplication(left.data.data(), right.data.data(), tmp, left.rank,
                          left.size(), right.size(), &real_size);

    // Compare the output
    CooTens predicted_out{tmp, real_size, left.rank};

    if (real_size != real_out.data.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      cout << "Predicted output size: " << real_size << endl;
      cout << "Real output size: " << real_out.data.size() << endl;
      return 1;
    }

    for (size_t i = 0; i < real_size; i++) {
      if (!(predicted_out.data[i] == real_out.data[i])) {
        cout << "FAILED" << endl;
        cout << "Mismatch in data" << endl;
        // op.print();
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
        op.print();
        return 1;
      }
    }

    cout << "PASSED" << endl;
  }

  return 0;
}
