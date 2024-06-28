#include "qcf_reader.h"
#include <algorithm>
#include <cstdint>

using namespace std;

namespace QCF {

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

OpKind parse_op_kind(istream &inp) {
  uint8_t kind = read_from_stream<uint8_t>(inp);
  return static_cast<OpKind>(kind);
}

CooTens parse_coo_tens(istream &inp) {
  nz_len_t size = read_from_stream<nz_len_t>(inp);
  real_t d_data_r[size];
  imag_t d_data_i[size];
  coo_meta_t data_m[size];

  for (size_t i = 0; i < size; i++) {
    X(data_m[i]) = read_from_stream<x_t>(inp);
    Y(data_m[i]) = read_from_stream<y_t>(inp);
    d_data_r[i] = read_from_stream<real_t>(inp);
    d_data_i[i] = read_from_stream<imag_t>(inp);
  }

  // convert from double to float
  float data_r[size];
  float data_i[size];
  for (size_t i = 0; i < size; i++) {
    data_r[i] = (float)d_data_r[i];
    data_i[i] = (float)d_data_i[i];
  }

  // check for last in row and last in tensor
  for (size_t i = 0; i < size - 1; i++) {
    if (X(data_m[i]) != X(data_m[i + 1])) {
      LAST_IN_ROW(data_m[i]) = true;
    } else {
      LAST_IN_ROW(data_m[i]) = false;
    }
    LAST_IN_TENSOR(data_m[i]) = false;
  }
  LAST_IN_ROW(data_m[size - 1]) = true;

  int rank = ceil(log2(sqrt(size)));

  return CooTens{data_r, data_i, data_m, size, rank};
}

Operand parse_operand(istream &inp, bool is_tens) {
  if (is_tens) {
    CooTens tens = parse_coo_tens(inp);
    return Operand{tens};
  } else {
    id_t id = read_from_stream<id_t>(inp);
    return Operand{id};
  }
}

Operation::Operation(istream &inp) {
  bool left_is_tens, right_is_tens;

  id = read_from_stream<id_t>(inp);
  kind = parse_op_kind(inp);

  switch (kind) {
  case OpKind::TE_MA:
  case OpKind::MM_MA:
    left_is_tens = true;
    right_is_tens = false;
    break;
  case OpKind::TE_AM:
  case OpKind::MM_AM:
    left_is_tens = false;
    right_is_tens = true;
    break;
  case OpKind::TE_MM:
  case OpKind::MM_MM:
    left_is_tens = true;
    right_is_tens = true;
    break;
  default:
    left_is_tens = false;
    right_is_tens = false;
    break;
  }

  left = parse_operand(inp, left_is_tens);
  right = parse_operand(inp, right_is_tens);
}

void Operation::print() const {
  cout << "Operation ID: " << id << endl;
  cout << "Operation Kind: " << static_cast<uint8_t>(kind) << endl;
  cout << "Left Operand: ";
  left.print();
  cout << "Right Operand: ";
  right.print();
}

QcfReader::QcfReader(const string &filename) {
  inp = make_unique<ifstream>(filename, ios::binary);
}

void QcfReader::consume() {
  while (inp->peek() != EOF) {
    operations.emplace_back(*inp);
  }
}

} // namespace QCF
