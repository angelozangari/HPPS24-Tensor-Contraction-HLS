#include "utils/golden_reader.h"
#include <iostream>

int main() {
    GoldenReader reader("golden-vectors.dat");
    reader.consume();
    for (auto &op_ptr : reader.operations) {
        op_ptr->print();
    }
}