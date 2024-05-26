#pragma once

#include <complex>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

class Tensor {
public:
  explicit Tensor(std::istream &inp);
  void print() const;
  size_t size() const { return data.size(); }

private:
  std::vector<std::complex<double>> data;
  int rank;
};

class TE {
public:
  explicit TE(std::istream &inp);

  Tensor left, right, out;
};

// class GoldenReader {
// public:
//   GoldenReader(const std::string &filename);
//   bool readNext(std::vector<float> *golden);
//   void reset();
// };
