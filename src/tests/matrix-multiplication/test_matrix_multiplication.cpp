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

    dim_t max_out_size = 2 << left.rank;
    dim_t real_size;

    cout << "\nmax_out_size: " << max_out_size << "\n\n"; 

    op.print();

    // Call the kernel
    // instead of size us nxn (dim*dim)
    std::vector<coo_t> out(max_out_size);
    cout << "Running test " << i << " with sizes " << left.rank << " x "
         << right.rank << " -> " << real_out.rank << " ... " << flush;
    matrix_multiplication(left.data.data(), right.data.data(), out.data(), left.rank,
                          left.size(), right.size(), 1);

    // Compare the output
    CooTens predicted_out{out, left.rank};

    // if (predicted_out.data.size() != real_out.data.size()) {
    //   cout << "FAILED" << endl;
    //   cout << "Mismatch in sizes" << endl;
    //   cout << "Predicted output size: " << predicted_out.data.size() << endl;
    //   cout << "Real output size: " << real_out.data.size() << endl;
    //   return 1;
    // }

    for (size_t i = 0; i < predicted_out.data.size(); i++) {
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

    if(predicted_out.data[i].last_in_tensor != 1) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      return 1;
    }

    cout << "PASSED" << endl;
  }

  return 0;
}
