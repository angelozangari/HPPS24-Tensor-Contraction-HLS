#pragma once

#include "../types.h"
#include "golden_reader.h"
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

namespace QCF {

using id_t = uint32_t;
using nz_len_t = uint32_t;
using x_t = uint32_t;
using y_t = uint32_t;
using real_t = double;
using imag_t = double;

enum class OpKind : uint8_t {
  TE_MM = 0x00,
  TE_MA = 0x01,
  TE_AM = 0x02,
  TE_AA = 0x03,
  MM_MM = 0x04,
  MM_MA = 0x05,
  MM_AM = 0x06,
  MM_AA = 0x07,
};

class Operand {
public:
  union OperandUnion {
    uint32_t id;
    CooTens tens;

    // Constructors
    OperandUnion() { new (&id) int(); } // Default to int
    ~OperandUnion() {}
  };

  bool isTens;
  OperandUnion u;

  // Constructors
  Operand() : isTens(false) {}
  Operand(uint32_t id) : isTens(false) { u.id = id; }
  Operand(const CooTens &tens) : isTens(true) { new (&u.tens) CooTens(tens); }

  // Copy Constructor
  Operand(const Operand &other) {
    if (this != &other) {
      isTens = other.isTens;
      if (isTens) {
        new (&u.tens) CooTens(other.u.tens);
      } else {
        new (&u.id) uint32_t(other.u.id);
      }
    }
  }

  // Assignment Operator
  Operand &operator=(const Operand &other) {
    if (this != &other) {
      if (isTens) {
        u.tens.~CooTens();
      }
      isTens = other.isTens;
      if (isTens) {
        new (&u.tens) CooTens(other.u.tens);
      } else {
        new (&u.id) uint32_t(other.u.id);
      }
    }
    return *this;
  }

  // Destructor
  ~Operand() {
    if (isTens) {
      u.tens.~CooTens();
    }
  }

  void print() const {
    if (isTens) {
      u.tens.print();
    } else {
      std::cout << "I(" << u.id << ")" << std::endl;
    }
  }
};

OpKind parse_op_kind(std::istream &inp);

class Operation {
public:
  explicit Operation(std::istream &inp);
  void print() const;

  id_t id;
  OpKind kind;
  Operand left, right;
};

class QcfReader {
public:
  QcfReader(const std::string &filename);
  void consume();
  std::vector<Operation> operations;

private:
  std::unique_ptr<std::ifstream> inp;
};

} // namespace QCF
