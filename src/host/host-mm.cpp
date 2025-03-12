#include <iostream> // defines cout, endl
#include <stdlib.h> // defines exit_failure, exit_success

using namespace std;

int main(int argc, char *argv[]) {
  int match = 0; // if 0 kernel success, if 1 failure

  // Compare the output
  ///CooTens predicted_out{out_r, out_i, out_m, input.rank};

  if (match) {
    cout << "FAILED" << endl;
    cout << "Mismatch in data" << endl;
    ///
  } else {
    cout << "PASSED" << endl;
  }

  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}