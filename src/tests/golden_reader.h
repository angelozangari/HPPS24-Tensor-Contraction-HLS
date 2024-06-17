#pragma once

#include "../types.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

class Tens {
public:
  explicit Tens(std::istream &inp, bool reversed = false);

  void print() const;
  size_t size() const { return data.size(); }

  bool reversed;
  std::vector<Complex::cmplx_t> data;
  int rank;
};

class CooTens {
public:
  CooTens(Tens &tens);
  CooTens(std::vector<coo_t> tens, int rank);
  CooTens(coo_t *tens, size_t size, int rank);

  void print() const;
  size_t size() const { return data.size(); }

  std::vector<coo_t> data;
  int rank;
};

class OP {
public:
  explicit OP(std::istream &inp, bool right_reversed = false);
  void print() const;

  Tens left, right, out;
};

class GoldenReader {
public:
  GoldenReader(const std::string &filename);
  void consume(bool right_reversed = false);
  std::vector<OP> operations;

private:
  std::unique_ptr<std::ifstream> inp;
};
