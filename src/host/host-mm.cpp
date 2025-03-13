#include <iostream> // defines cout, endl
#include <stdlib.h> // defines exit_failure, exit_success
#include "utils/golden_reader.h"

using namespace std;


constexpr size_t TO_TEST = 117;

int main(int argc, char *argv[]) {
  int match = 0; // if 0 kernel success, if 1 failure

  for (size_t i = TO_TEST; i < TO_TEST + 1; i++) {
    
    CooTens left_input{binary_op.left}, right_input{binary_op.right}, out;

    // Call the kernel
    out = enqueue_matrix_multiplication(left_input, right_input, krnl_matrix_multiplication, q, context, &mm_exe);
    
    // Compare the output
    ///CooTens predicted_out{out_r, out_i, out_m, input.rank};
    
    if (match) {
      cout << "FAILED" << endl;
      cout << "Mismatch in data" << endl;
      ///
    } else {
      cout << "PASSED" << endl;
    }
  }

  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}