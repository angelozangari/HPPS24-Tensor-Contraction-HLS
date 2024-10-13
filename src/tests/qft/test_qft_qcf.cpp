// Host code

#include <fstream>
#include <stdlib.h>

#include "kernels/matrix-multiplication/krnl_mat_mul.h"
#include "kernels/tensor-expansion/krnl_tens_exp.h"
#include "utils/csv_writer.h"
#include "utils/golden_reader.h"
#include "utils/qcf_reader.h"
#include <chrono>
#include <unordered_map>
#include <vector>

using namespace std;
using namespace std::chrono;
using namespace Tensor::Expansion;

CooTens compute_te(CooTens &left, CooTens &right, TeExecution *te_exe) {
  std::vector<float> out_r(left.size() * right.size());
  std::vector<float> out_i(left.size() * right.size());
  std::vector<coo_meta_t> out_m(left.size() * right.size());

  vector<Chunked::complex_t> A_vec(left.data_r.size());
  vector<Chunked::complex_t> B_vec(right.data_r.size());
  vector<Chunked::complex_t> C_vec(left.size() * right.size());

  for (size_t i = 0; i < left.data_r.size(); i++) {
    A_vec[i].r = left.data_r[i];
    A_vec[i].i = left.data_i[i];
    A_vec[i].m = left.data_m[i];
  }
  for (size_t i = 0; i < right.data_r.size(); i++) {
    B_vec[i].r = right.data_r[i];
    B_vec[i].i = right.data_i[i];
    B_vec[i].m = right.data_m[i];
  }

  auto t1 = high_resolution_clock::now();

  tensor_expansion(A_vec.data(), B_vec.data(), C_vec.data(), left.rank, right.rank);

  auto t2 = high_resolution_clock::now();
  te_exe->kernel_time = duration_cast<nanoseconds>(t2 - t1);
  te_exe->transfer_time = nanoseconds(0);
  te_exe->left_nz_size = left.size();
  te_exe->right_nz_size = right.size();
  te_exe->left_rank = left.rank;
  te_exe->right_rank = right.rank;

  for (size_t i = 0; i < C_vec.size(); i++) {
    out_r[i] = C_vec[i].r;
    out_i[i] = C_vec[i].i;
    out_m[i] = C_vec[i].m;
  }

  return CooTens{out_r, out_i, out_m, left.rank + right.rank, left.format};
}

CooTens compute_matmul(CooTens &left, CooTens &right, MmExecution *mm_exe) {
  dim_t N = 1 << left.rank;
  size_t max_out_size = N * N;
  dim_t real_size;

  float tmp_r[max_out_size];
  float tmp_i[max_out_size];
  coo_meta_t tmp_m[max_out_size];

  flag_t left_row_format = left.format == MatrixFormat::RowMajor ? 1 : 0;

  auto t1 = high_resolution_clock::now();

  // Call the kernel
  matrix_multiplication(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                        right.data_r.data(), right.data_i.data(), right.data_m.data(),
                        tmp_r, tmp_i, tmp_m, left.size(), right.size(), &real_size,
                        left_row_format);

  auto t2 = high_resolution_clock::now();
  mm_exe->kernel_time = duration_cast<nanoseconds>(t2 - t1);
  mm_exe->transfer_time = nanoseconds(0);
  mm_exe->left_nz_size = left.size();
  mm_exe->right_nz_size = right.size();
  mm_exe->rank = left.rank;

  return CooTens{tmp_r, tmp_i, tmp_m, real_size, left.rank, left.format};
}

int main() {
  CooTens left, right, out;
  StatsRecorder stats_recorder{};
  nanoseconds cpu_time, e2e_time;
  high_resolution_clock::time_point cpu_t1, cpu_t2;
  vector<TeExecution> te_exes;
  vector<MmExecution> mm_exes;

  QCF::QcfReader reader("qft.qcf");
  reader.consume();
  auto ops = &reader.operations;

  // std::cout << "Number of operations: " << ops->size() << endl;

  unordered_map<uint32_t, CooTens> op_map;

  auto e2e_t1 = high_resolution_clock::now();
  cpu_t1 = high_resolution_clock::now();

  for (auto &op : *ops) {
    cpu_t1 = high_resolution_clock::now();

    switch (op.kind) {
    case QCF::OpKind::TE_MA:
    case QCF::OpKind::MM_MA:
      left = {op.left.u.tens};
      right = op_map.at(op.right.u.id);
      break;
    case QCF::OpKind::TE_AM:
    case QCF::OpKind::MM_AM:
      left = op_map.at(op.left.u.id);
      right = {op.right.u.tens};
      break;
    case QCF::OpKind::TE_MM:
    case QCF::OpKind::MM_MM:
      left = {op.left.u.tens};
      right = {op.right.u.tens};
      break;
    case QCF::OpKind::TE_AA:
    case QCF::OpKind::MM_AA:
      left = op_map.at(op.left.u.id);
      right = op_map.at(op.right.u.id);
      break;
    default:
      break;
    }

    cpu_t2 = high_resolution_clock::now();
    cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);

    switch (op.kind) {
    case QCF::OpKind::TE_MA:
    case QCF::OpKind::TE_AM:
    case QCF::OpKind::TE_MM:
    case QCF::OpKind::TE_AA:
      TeExecution te_exe;
      out = compute_te(left, right, &te_exe);
      te_exes.push_back(te_exe);
      break;
    case QCF::OpKind::MM_MA:
    case QCF::OpKind::MM_AM:
    case QCF::OpKind::MM_MM:
    case QCF::OpKind::MM_AA:
      MmExecution mm_exe;
      out = compute_matmul(left, right, &mm_exe);
      mm_exes.push_back(mm_exe);
      break;
    default:
      break;
    }

    cpu_t1 = high_resolution_clock::now();

    op_map.insert({op.id, out});
    std::cout << "Op " << op.id << " done" << endl;
    std::cout << "Left size: " << left.size() << " Rank: " << left.rank << endl;
    left.print();
    std::cout << "Right size: " << right.size() << " Rank: " << right.rank << endl;
    right.print();
    std::cout << "Out size: " << out.size() << " Rank: " << out.rank << endl;
    out.print();
    std::cout << "--------------------------------" << endl;

    cpu_t2 = high_resolution_clock::now();
    cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);
  }

  std::cout << "Done All" << endl;

  auto e2e_t2 = high_resolution_clock::now();
  e2e_time = duration_cast<nanoseconds>(e2e_t2 - e2e_t1);

  out.print();

  // make sure that all elements in out matrix have norm 0.25
  for (size_t i = 0; i < out.size(); i++) {
    if (abs(out.data_r[i]) - 0.25 > 1e-6 || abs(out.data_i[i]) > 1e-6) {
      std::cout << "FAILED" << endl;
      std::cout << "Mismatch in data" << endl;
      std::cout << "Predicted output: (" << out.data_r[i] << " + " << out.data_i[i]
                << "i) at (" << X(out.data_m[i]) << ", " << Y(out.data_m[i]) << ")"
                << endl;
      std::cout << "Full Predicted output:" << endl;
      out.print();
      return 1;
    }
  }

  std::cout << "PASSED" << endl;

  // record stats and write to csv
  stats_recorder.record("qft.qcf", cpu_time, e2e_time, te_exes, mm_exes);
  stats_recorder.write();

  return 0;
}
