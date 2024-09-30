#pragma once

#include "../types.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

enum class OpKind { MatMul, TensExp };
enum class MatrixFormat { RowMajor, ColMajor };

OpKind parse_op_kind(std::istream &inp);
bool parse_reversed(std::istream &inp);

class Tens {
public:
  Tens() = default;
  explicit Tens(std::istream &inp, bool reversed = false);

  void print() const;
  size_t size() const { return data_r.size(); }

  bool reversed;
  std::vector<float> data_r;
  std::vector<float> data_i;
  int rank;
};

class CooTens {
public:
  CooTens() = default;
  CooTens(Tens &tens);
  CooTens(std::vector<float> tens_r, std::vector<float> tens_i,
          std::vector<coo_meta_t> tens_m, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);
  CooTens(Tensor::Expansion::Chunked::complex_t *tens, size_t size, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);
  CooTens(float *tens_r, float *tens_i, coo_meta_t *tens_m, size_t size, int rank,
          MatrixFormat format = MatrixFormat::RowMajor);

  void print() const;
  size_t size() const { return data_r.size(); }
  Tensor::Expansion::Chunked::complex_t get(size_t i) const {
    return {data_r[i], data_i[i], data_m[i]};
  }

  MatrixFormat format;
  std::vector<float> data_r;
  std::vector<float> data_i;
  std::vector<coo_meta_t> data_m;
  int rank;
};

class OP {
public:
  explicit OP(std::istream &inp);
  void print() const;

  bool reversed;
  OpKind kind;
  Tens left, right, out;
};

class GoldenReader {
public:
  GoldenReader(const std::string &filename);
  void consume();
  std::vector<OP> operations;

private:
  std::unique_ptr<std::ifstream> inp;
};
