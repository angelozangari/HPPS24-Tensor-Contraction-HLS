#include "golden_reader.h"
#include <algorithm>
#include <cstdint>

using namespace std;

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
  if (kind == 0x00) {
    return OpKind::TensExp;
  } else {
    return OpKind::MatMul;
  }
}

bool parse_reversed(istream &inp) {
  uint8_t rev = read_from_stream<uint8_t>(inp);
  return rev == 0xff;
}

Tens::Tens(istream &inp, bool reversed) : reversed(reversed) {
  // read size_t bytes and encode as size_t
  size_t size = read_from_stream<size_t>(inp);

  rank = ceil(log2(sqrt(size)));
  for (size_t i = 0; i < size; i++) {
    double real = read_from_stream<double>(inp);
    double imag = read_from_stream<double>(inp);
    data_r.push_back((float)real);
    data_i.push_back((float)imag);
  }
}

void Tens::print() const {
  for (int i = 0; i < 1 << rank; i++) {
    for (int j = 0; j < 1 << rank; j++) {
      if (reversed) {
        printf("(%f + %fi) ", data_r[j * (1 << rank) + i], data_i[j * (1 << rank) + i]);
      } else {
        printf("(%f + %fi) ", data_r[i * (1 << rank) + j], data_i[i * (1 << rank) + j]);
      }
    }
    printf("\n");
  }
}

CooTens::CooTens(Tens &tens) : rank(tens.rank) {
  float ur, ui;
  coo_meta_t um;

  // add non-zero elements to the COO tensor
  for (size_t i = 0; i < tens.size(); i++) {
    if (tens.data_r[i] == 0 && tens.data_i[i] == 0) {
      continue;
    }
    ur = tens.data_r[i];
    ui = tens.data_i[i];
    if (tens.reversed) {
      X(um) = i % (1 << tens.rank);
      Y(um) = i / (1 << tens.rank);
    } else {
      X(um) = i / (1 << tens.rank);
      Y(um) = i % (1 << tens.rank);
    }
    LAST_IN_ROW(um) = false;
    LAST_IN_TENSOR(um) = false;
    data_r.push_back(ur);
    data_i.push_back(ui);
    data_m.push_back(um);
  }

  // set the last element of the row to true
  for (size_t i = 0; i < size(); i++) {
    if (i + 1 < size()) {
      if ((!tens.reversed && X(data_m[i]) != X(data_m[i + 1])) ||
          (tens.reversed && Y(data_m[i]) != Y(data_m[i + 1]))) {
        LAST_IN_ROW(data_m[i]) = true;
      }
    } else if (i + 1 == size()) {
      // set the last element of the column to true
      LAST_IN_ROW(data_m.back()) = true;
      LAST_IN_TENSOR(data_m.back()) = true;
    }
  }

  if (tens.reversed) {
    format = MatrixFormat::ColMajor;
  } else {
    format = MatrixFormat::RowMajor;
  }
}

CooTens::CooTens(vector<float> tens_r, vector<float> tens_i, vector<coo_meta_t> tens_m,
                 int rank, MatrixFormat format)
    : data_r(tens_r), data_i(tens_i), data_m(tens_m), rank(rank), format(format) {}

CooTens::CooTens(float *tens_r, float *tens_i, coo_meta_t *tens_m, size_t size, int rank,
                 MatrixFormat format)
    : rank(rank), format(format) {
  for (size_t i = 0; i < size; i++) {
    data_r.push_back(tens_r[i]);
    data_i.push_back(tens_i[i]);
    data_m.push_back(tens_m[i]);
  }
}

void CooTens::print() const {
  printf("%s\n", format == MatrixFormat::RowMajor ? "Row-major: " : "Col-major: ");
  for (size_t i = 0; i < size(); i++) {
    printf("(%f + %fi) at (%lu, %lu) - (%d, %d)\n", data_r[i], data_i[i],
           X(data_m[i]).to_long(), Y(data_m[i]).to_long(), (int)LAST_IN_ROW(data_m[i]),
           (int)LAST_IN_TENSOR(data_m[i]));
  }
}

OP::OP(istream &inp) {
  kind = parse_op_kind(inp);
  reversed = parse_reversed(inp);
  left = Tens{inp, reversed};
  right = Tens{inp, reversed || (kind == OpKind::MatMul)};
  out = Tens{inp, reversed};
}

void OP::print() const {
  cout << "Left tensor:" << endl;
  left.print();
  cout << "Right tensor:" << endl;
  right.print();
  cout << "Output tensor:" << endl;
  out.print();
}

GoldenReader::GoldenReader(const string &filename) {
  inp = make_unique<ifstream>(filename, ios::binary);
}

void GoldenReader::consume() {
  while (inp->peek() != EOF) {
    operations.emplace_back(*inp);
  }
}
