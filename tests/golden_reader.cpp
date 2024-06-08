#include "golden_reader.h"
#include <algorithm>
#include <cstdint>

using namespace std;
using namespace Complex;

// Helper function to check if the system is little-endian
bool is_little_endian() {
  int num = 1;
  return *reinterpret_cast<std::uint8_t *>(&num) == 1;
}

/**
 * @brief Read a little-endian value from a stream
 * This should be OS-agnostic
 */
template <typename T> T read_from_stream(std::istream &inp) {
  T val;
  inp.read(reinterpret_cast<char *>(&val), sizeof(T));

  if (!is_little_endian()) {
    char *data = reinterpret_cast<char *>(&val);
    std::reverse(data, data + sizeof(T));
  }

  return val;
}

Tens::Tens(istream &inp) {
  // read size_t bytes and encode as size_t
  size_t size = read_from_stream<size_t>(inp);

  rank = sqrt(size) / 2;
  for (size_t i = 0; i < size; i++) {
    double real = read_from_stream<double>(inp);
    double imag = read_from_stream<double>(inp);
    data.push_back(cmplx_t{(float)real, (float)imag});
  }
}

void Tens::print() const {
  for (int i = 0; i < rank * 2; i++) {
    for (int j = 0; j < rank * 2; j++) {
      printf("(%f + %fi) ", data[i * rank * 2 + j].real,
             data[i * rank * 2 + j].imag);
    }
    printf("\n");
  }
}

vector<coo_t> Tens::to_coo_t() {
  coo_t u;
  vector<coo_t> coo;

  for (size_t i = 0; i < data.size(); i++) {
    u.data = data[i];
    u.x = i / (rank * 2);
    u.y = i % (rank * 2);
    u.last_in_row = (i % (rank * 2) == rank * 2 - 1);
    coo.push_back(u);
  }

  return coo;
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
