#include "golden_reader.h"
#include <algorithm>
#include <cstdint>

using namespace std;
using namespace Tensor;

/**
 * @brief Helper function to check if the system is little-endian
 * @return True if the system is little-endian, false otherwise
 */
bool is_little_endian() {
  int num = 1;
  return *reinterpret_cast<std::uint8_t *>(&num) == 1;
}

/**
 * @brief Read a little-endian value from a stream
 * This should be OS-agnostic
 * @tparam T Type of the value to read
 * @param inp Input stream
 * @return The read value
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

/**
 * @brief Check if the operation kind is a tensor product
 * @param kind Operation kind
 * @return True if the operation kind is a tensor product, false otherwise
 */
bool kind_is_prod(OpKind &&kind) {
  return kind == OpKind::TensProdLeft || kind == OpKind::TensProdRight;
}

/**
 * @brief Parse operation kind from input stream
 * @param inp Input stream
 * @return Parsed operation kind
 */
OpKind parse_op_kind(istream &inp) {
  uint8_t kind = read_from_stream<uint8_t>(inp);
  if (kind == 0x00) {
    return OpKind::TensProdLeft;
  } else if (kind == 0x01) {
    return OpKind::TensProdRight;
  } else {
    return OpKind::MatMul;
  }
}

/**
 * @brief Parse reversed flag from input stream
 * @param inp Input stream
 * @return Parsed reversed flag
 */
bool parse_reversed(istream &inp) {
  uint8_t rev = read_from_stream<uint8_t>(inp);
  return rev == 0xff;
}

/**
 * @brief Constructor for Tens class
 * @param inp Input stream
 * @param reversed Reversed flag
 */
Tens::Tens(istream &inp, bool reversed) : reversed(reversed) {
  // Read size_t bytes and encode as size_t
  size_t size = read_from_stream<size_t>(inp);

  rank = ceil(log2(sqrt(size)));
  for (size_t i = 0; i < size; i++) {
    double real = read_from_stream<double>(inp);
    double imag = read_from_stream<double>(inp);
    data_r.push_back((float)real);
    data_i.push_back((float)imag);
  }
}

/**
 * @brief Print tensor data
 */
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

/**
 * @brief Constructor for CooTens class from Tens object
 * @param tens Tens object
 */
CooTens::CooTens(Tens &tens) : rank(tens.rank) {
  float ur, ui;
  coo_meta_t um;

  // Add non-zero elements to the COO tensor
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

  // Set the last element of the row to true
  for (size_t i = 0; i < size(); i++) {
    if (i + 1 < size()) {
      if ((!tens.reversed && X(data_m[i]) != X(data_m[i + 1])) ||
          (tens.reversed && Y(data_m[i]) != Y(data_m[i + 1]))) {
        LAST_IN_ROW(data_m[i]) = true;
      }
    } else if (i + 1 == size()) {
      // Set the last element of the column to true
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

/**
 * @brief Constructor for CooTens class from vectors
 * @param tens_r Real part of the tensor
 * @param tens_i Imaginary part of the tensor
 * @param tens_m Metadata of the tensor
 * @param rank Rank of the tensor
 * @param format Matrix format
 */
CooTens::CooTens(vector<float> tens_r, vector<float> tens_i, vector<coo_meta_t> tens_m,
                 int rank, MatrixFormat format)
    : data_r(tens_r), data_i(tens_i), data_m(tens_m), rank(rank), format(format) {}

/**
 * @brief Constructor for CooTens class from raw pointers
 * @param tens_r Real part of the tensor
 * @param tens_i Imaginary part of the tensor
 * @param tens_m Metadata of the tensor
 * @param size Size of the tensor
 * @param rank Rank of the tensor
 * @param format Matrix format
 */
CooTens::CooTens(float *tens_r, float *tens_i, coo_meta_t *tens_m, size_t size, int rank,
                 MatrixFormat format)
    : rank(rank), format(format) {
  for (size_t i = 0; i < size; i++) {
    data_r.push_back(tens_r[i]);
    data_i.push_back(tens_i[i]);
    data_m.push_back(tens_m[i]);
  }
}

/**
 * @brief Constructor for CooTens class from complex_t array
 * @param tens Complex tensor array
 * @param size Size of the tensor
 * @param rank Rank of the tensor
 * @param format Matrix format
 */
CooTens::CooTens(complex_t *tens, size_t size, int rank, MatrixFormat format)
    : rank(rank), format(format) {
  for (size_t i = 0; i < size; i++) {
    data_r.push_back(tens[i].r);
    data_i.push_back(tens[i].i);
    data_m.push_back(tens[i].m);
  }
}

/**
 * @brief Print COO tensor data
 */
void CooTens::print() const {
  printf("%s\n", format == MatrixFormat::RowMajor ? "Row-major: " : "Col-major: ");
  for (size_t i = 0; i < size(); i++) {
    printf("(%f + %fi) at (%lu, %lu)", data_r[i], data_i[i], (unsigned long)X(data_m[i]),
           (unsigned long)Y(data_m[i]));
    if (LAST_IN_TENSOR(data_m[i]))
      printf(" - (LiT)");
    else if (LAST_IN_ROW(data_m[i]))
      printf(" - (LiR)");
    printf("\n");
  }
}

/**
 * @brief Constructor for UnaryOP class
 * @param inp Input stream
 */
UnaryOP::UnaryOP(istream &inp, OpKind kind) : OP(inp, kind), input(inp, reversed) {
  out = Tens{inp, reversed};
}

void UnaryOP::print() const {
  cout << "Unary operation:" << endl;
  input.print();
  cout << "Output tensor:" << endl;
  out.print();
}

/**
 * @brief Constructor for BinaryOP class
 * @param inp Input stream
 */
BinaryOP::BinaryOP(istream &inp, OpKind kind)
    : OP(inp, kind), left(inp, reversed), right(inp, reversed) {
  out = Tens{inp, reversed};
}

void BinaryOP::print() const {
  cout << "Binary operation:" << endl;
  left.print();
  right.print();
  cout << "Output tensor:" << endl;
  out.print();
}

/**
 * @brief Constructor for OP class
 * @param inp Input stream
 */
OP::OP(istream &inp, OpKind kind) : kind(kind), reversed(parse_reversed(inp)) {}

/**
 * @brief Factory method to create an operation from input stream
 * @param inp Input stream
 * @return Unique pointer to the created operation
 */
std::unique_ptr<OP> OP::create(istream &inp) {
  OpKind kind = parse_op_kind(inp);
  if (kind == OpKind::MatMul) {
    return std::make_unique<BinaryOP>(inp, kind);
  } else {
    return std::make_unique<UnaryOP>(inp, kind);
  }
}

/**
 * @brief Print operation details
 */
void OP::print() const {
  if (is_unary()) {
    cout << "Unary operation:" << endl;
    static_cast<const UnaryOP *>(this)->input.print();
  } else {
    cout << "Binary operation:" << endl;
    static_cast<const BinaryOP *>(this)->left.print();
    static_cast<const BinaryOP *>(this)->right.print();
  }
  cout << "Output tensor:" << endl;
  out.print();
}

/**
 * @brief Constructor for GoldenReader class
 * @param filename Name of the file to read
 */
GoldenReader::GoldenReader(const string &filename) {
  inp = make_unique<ifstream>(filename, ios::binary);
}

/**
 * @brief Consume and parse operations from the input file
 */
void GoldenReader::consume() {
  while (inp->peek() != EOF) {
    operations.push_back(OP::create(*inp));
  }
}
