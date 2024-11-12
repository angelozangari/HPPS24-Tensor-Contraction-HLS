#pragma once

#include "kernels/types.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

/**
 * @enum OpKind
 * @brief Enumeration for different operation kinds
 */
enum class OpKind { MatMul, TensProdLeft, TensProdRight };

/**
 * @enum MatrixFormat
 * @brief Enumeration for matrix formats
 */
enum class MatrixFormat { RowMajor, ColMajor };

/**
 * @brief Function to parse operation kind from input stream
 * @param inp Input stream
 * @return Parsed operation kind
 */
OpKind parse_op_kind(std::istream &inp);

/**
 * @brief Function to parse reversed flag from input stream
 * @param inp Input stream
 * @return Parsed reversed flag
 */
bool parse_reversed(std::istream &inp);

/**
 * @class Tens
 * @brief Class representing a tensor
 */
class Tens {
public:
  Tens() = default;
  explicit Tens(std::istream &inp, bool reversed = false);

  /**
   * @brief Print tensor data
   */
  void print() const;

  /**
   * @brief Get the size of the tensor
   * @return Size of the tensor
   */
  size_t size() const { return data_r.size(); }

  bool reversed;
  std::vector<float> data_r;
  std::vector<float> data_i;
  int rank;
};

/**
 * @class CooTens
 * @brief Class representing a COO (Coordinate) tensor
 */
class CooTens {
public:
  CooTens() = default;
  CooTens(Tens &tens);
  CooTens(std::vector<float> tens_r, std::vector<float> tens_i,
          std::vector<coo_meta_t> tens_m, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);
  CooTens(Tensor::complex_t *tens, size_t size, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);
  CooTens(float *tens_r, float *tens_i, coo_meta_t *tens_m, size_t size, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);

  /**
   * @brief Print COO tensor data
   */
  void print() const;

  /**
   * @brief Get the size of the COO tensor
   * @return Size of the COO tensor
   */
  size_t size() const { return data_r.size(); }

  /**
   * @brief Get a specific element from the COO tensor
   * @param i Index of the element
   * @return The element at the specified index
   */
  Tensor::complex_t get(size_t i) const { return {data_r[i], data_i[i], data_m[i]}; }

  MatrixFormat format;
  std::vector<float> data_r;
  std::vector<float> data_i;
  std::vector<coo_meta_t> data_m;
  int rank;
};

/**
 * @class OP
 * @brief Base class for operations
 */
class OP {
public:
  /**
   * @brief Factory method to create an operation from input stream
   * @param inp Input stream
   * @return Unique pointer to the created operation
   */
  static std::unique_ptr<OP> create(std::istream &inp);
  virtual void print() const;
  virtual bool is_unary() const = 0; // Pure virtual function
  virtual ~OP() = default;           // Add virtual destructor

  bool reversed;
  OpKind kind;
  Tens out;

protected:
  explicit OP(std::istream &inp, OpKind kind); // Protected constructor
};

/**
 * @class UnaryOP
 * @brief Class representing a unary operation
 */
class UnaryOP : public OP {
public:
  explicit UnaryOP(std::istream &inp, OpKind kind);
  void print() const override;
  bool is_unary() const override { return true; } // Override is_unary
  ~UnaryOP() override = default; // Define virtual destructor in class declaration

  Tens input;
};

/**
 * @class BinaryOP
 * @brief Class representing a binary operation
 */
class BinaryOP : public OP {
public:
  explicit BinaryOP(std::istream &inp, OpKind kind);
  void print() const override;
  bool is_unary() const override { return false; } // Override is_unary
  ~BinaryOP() override = default; // Define virtual destructor in class declaration

  Tens left, right;
};

/**
 * @class GoldenReader
 * @brief Class to read and parse operations from a file
 */
class GoldenReader {
public:
  GoldenReader(const std::string &filename);
  void consume();
  std::vector<std::unique_ptr<OP>> operations; // Store unique_ptr<OP>

private:
  std::unique_ptr<std::ifstream> inp;
};
