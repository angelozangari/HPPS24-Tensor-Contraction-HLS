#include "krnl_mat_mul.h"

#include <map>
#include <utility>

using namespace std;

extern "C" void matrix_multiplication(
    float *left_r, float *left_i, coo_meta_t *left_m,
    float *right_r, float *right_i, coo_meta_t *right_m,
    float *out_r, float *out_i, coo_meta_t *out_m,
    dim_t left_nz, dim_t right_nz, dim_t *out_real_size,
    flag_t /*left_row_format*/) {

  // Build maps of A and B grouped by row to speed lookups
  // A_entries[row] -> vector of (k, ar, ai)
  // B_entries[k]   -> vector of (col, br, bi) taken from B^T row k, i.e. B column k
  map<uint32_t, vector<tuple<uint32_t, float, float>>> A_rows;
  map<uint32_t, vector<tuple<uint32_t, float, float>>> B_cols;

  for (dim_t i = 0; i < left_nz; ++i) {
    uint32_t row = (uint32_t)X(left_m[i]);
    uint32_t col = (uint32_t)Y(left_m[i]);
    A_rows[row].emplace_back(col, left_r[i], left_i[i]);
  }
  for (dim_t i = 0; i < right_nz; ++i) {
    uint32_t row = (uint32_t)X(right_m[i]);
    uint32_t col = (uint32_t)Y(right_m[i]);
    (void)row;
    // group by column to implement B^T access pattern
    B_cols[col].emplace_back(row, right_r[i], right_i[i]);
  }

  // Accumulate C in a sorted map keyed by (row,col)
  map<pair<uint32_t, uint32_t>, pair<float, float>> C;

  for (auto a_it = A_rows.begin(); a_it != A_rows.end(); ++a_it) {
    uint32_t irow = a_it->first;
    auto &avec = a_it->second;
    for (size_t ai = 0; ai < avec.size(); ++ai) {
      uint32_t k = (uint32_t)std::get<0>(avec[ai]);
      float ar = std::get<1>(avec[ai]);
      float ai_im = std::get<2>(avec[ai]);
      auto it = B_cols.find(k);
      if (it == B_cols.end()) continue;
      auto &bvec = it->second;
      for (size_t bi_ix = 0; bi_ix < bvec.size(); ++bi_ix) {
        uint32_t j = (uint32_t)std::get<0>(bvec[bi_ix]);
        float br = std::get<1>(bvec[bi_ix]);
        float bi = std::get<2>(bvec[bi_ix]);
        // complex multiply and accumulate: (ar + i ai) * (br + i bi)
        float cr = ar * br - ai_im * bi;
        float ci = ar * bi + ai_im * br;
        auto &acc = C[make_pair(irow, j)];
        acc.first += cr;
        acc.second += ci;
      }
    }
  }

  // Emit COO sorted by row then col, set flags
  dim_t idx = 0;
  uint32_t prev_row = UINT32_MAX;
  for (auto it = C.begin(); it != C.end(); ++it) {
    const pair<uint32_t, uint32_t> &rowcol = it->first;
    const pair<float, float> &val = it->second;
    uint32_t row = rowcol.first;
    uint32_t col = rowcol.second;
    float cr = val.first;
    float ci = val.second;

    // Skip exact zeros that may result from cancellations
    if (cr == 0.0f && ci == 0.0f) continue;

    out_r[idx] = cr;
    out_i[idx] = ci;
    X(out_m[idx]) = row;
    Y(out_m[idx]) = col;
    LAST_IN_ROW(out_m[idx]) = 0;
    LAST_IN_TENSOR(out_m[idx]) = 0;

    // If row changed and there is a previous element, mark last of previous row
    if (prev_row != UINT32_MAX && row != prev_row) {
      LAST_IN_ROW(out_m[idx - 1]) = 1;
    }
    prev_row = row;
    ++idx;
  }

  if (idx > 0) {
    LAST_IN_ROW(out_m[idx - 1]) = 1;      // last in its row
    LAST_IN_TENSOR(out_m[idx - 1]) = 1;   // last overall
  }

  *out_real_size = idx;
}
