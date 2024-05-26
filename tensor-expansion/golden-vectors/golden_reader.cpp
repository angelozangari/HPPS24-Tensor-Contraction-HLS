#include "golden_reader.h"
#include <cstdint>

using namespace std;

// Helper function to check if the system is little-endian
bool isLittleEndian() {
  int num = 1;
  return *reinterpret_cast<std::uint8_t *>(&num) == 1;
}

/**
 * @brief Read a little-endian value from a stream
 * This should be OS-agnostic
 */
template <typename T> T readFromStream(std::istream &inp) {
  T val;
  inp.read(reinterpret_cast<char *>(&val), sizeof(T));

  if (!isLittleEndian()) {
    char *data = reinterpret_cast<char *>(&val);
    std::reverse(data, data + sizeof(T));
  }

  return val;
}

Tensor::Tensor(istream &inp) {
  // read size_t bytes and encode as size_t
  size_t size = readFromStream<size_t>(inp);

  rank = sqrt(size) / 2;
  for (size_t i = 0; i < size; i++) {
    double real = readFromStream<double>(inp);
    double imag = readFromStream<double>(inp);
    data.push_back(std::complex<double>(real, imag));
  }
}

void Tensor::print() const {
  for (int i = 0; i < rank * 2; i++) {
    for (int j = 0; j < rank * 2; j++) {
      printf("(%f + %fi) ", data[i * rank * 2 + j].real(),
             data[i * rank * 2 + j].imag());
    }
    printf("\n");
  }
}

TE::TE(istream &inp) : left(inp), right(inp), out(inp) {}

GoldenReader::GoldenReader(const string &filename) {
  inp = make_unique<ifstream>(filename, ios::binary);
}

void GoldenReader::consume() {
  while (inp->peek() != EOF) {
    expansions.emplace_back(*inp);
  }
}
