// Minimal host-only type definitions to avoid dependency on Xilinx HLS ap_int
#pragma once

#include <cstdint>

// Expose the same macros API used in code, but mapped to plain fields
struct coo_meta_t_host {
  std::uint64_t x; // up to 36 bits used
  std::uint64_t y; // up to 36 bits used
  std::uint8_t last_in_row;     // 0/1
  std::uint8_t last_in_tensor;  // 0/1
};

#define X(v) (v).x
#define Y(v) (v).y
#define LAST_IN_ROW(v) (v).last_in_row
#define LAST_IN_TENSOR(v) (v).last_in_tensor

using coo_meta_t = coo_meta_t_host;
using rank_t = std::uint32_t;
using dim_t = std::uint32_t;
using flag_t = std::uint8_t;

namespace Tensor {
struct complex_t {
  float r;
  float i;
  coo_meta_t m;
};
}

