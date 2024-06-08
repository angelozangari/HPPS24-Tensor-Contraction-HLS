#pragma once

#include "qcslib/types.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

class Tens {
public:
  explicit Tens(std::istream &inp);
  void print() const;
  size_t size() const { return data.size(); }
  std::vector<coo_t> to_coo_t();

  std::vector<Complex::cmplx_t> data;
  int rank;
};

class TE {
public:
  explicit TE(std::istream &inp);

  Tens left, right, out;
};

class GoldenReader {
public:
  GoldenReader(const std::string &filename);
  void consume();
  std::vector<TE> expansions;

private:
  std::unique_ptr<std::ifstream> inp;
};
