#pragma once

#include "../types.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

enum class OpKind { MatMul, TensExp };

OpKind parse_op_kind(std::istream &inp);

class Tens {
public:
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
  CooTens(Tens &tens);
  CooTens(std::vector<float> tens_r, std::vector<float> tens_i,
          std::vector<coo_meta_t> tens_m, int rank);
  CooTens(float *tens_r, float *tens_i, coo_meta_t *tens_m, size_t size, int rank);

  void print() const;
  size_t size() const { return data_r.size(); }

  std::vector<float> data_r;
  std::vector<float> data_i;
  std::vector<coo_meta_t> data_m;
  int rank;
};

class OP {
public:
  explicit OP(std::istream &inp);
  void print() const;

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
