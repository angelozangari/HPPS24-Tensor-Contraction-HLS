// Host code

#include <fstream>
#include <stdlib.h>

#include "matrix-multiplication/krnl_mat_mul.h"
#include "tensor-expansion/krnl_tens_exp.h"
#include "tests/golden_reader.h"
#include "tests/qcf_reader.h"
#include <unordered_map>

using namespace std;

CooTens compute_te(CooTens &left, CooTens &right) {
  std::vector<float> out_r(left.size() * right.size());
  std::vector<float> out_i(left.size() * right.size());
  std::vector<coo_meta_t> out_m(left.size() * right.size());

  tensor_expansion(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                   right.data_r.data(), right.data_i.data(), right.data_m.data(),
                   out_r.data(), out_i.data(), out_m.data(), left.size(), right.size(),
                   left.rank, right.rank);

  return CooTens{out_r, out_i, out_m, left.rank + right.rank, left.format};
}

CooTens compute_matmul(CooTens &left, CooTens &right) {
  dim_t N = 1 << left.rank;
  size_t max_out_size = N * N;
  dim_t real_size;

  float tmp_r[max_out_size];
  float tmp_i[max_out_size];
  coo_meta_t tmp_m[max_out_size];

  flag_t left_row_format = left.format == MatrixFormat::RowMajor ? 1 : 0;

  // Call the kernel
  matrix_multiplication(left.data_r.data(), left.data_i.data(), left.data_m.data(),
                        right.data_r.data(), right.data_i.data(), right.data_m.data(),
                        tmp_r, tmp_i, tmp_m, left.size(), right.size(), &real_size,
                        left_row_format);

  return CooTens{tmp_r, tmp_i, tmp_m, real_size, left.rank, left.format};
}

int main() {
  CooTens left, right, out;

  QCF::QcfReader reader("qft.qcf");
  reader.consume();
  auto ops = &reader.operations;

  cout << "Number of operations: " << ops->size() << endl;

  unordered_map<uint32_t, CooTens> op_map;

  for (auto &op : *ops) {
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

    switch (op.kind) {
    case QCF::OpKind::TE_MA:
    case QCF::OpKind::TE_AM:
    case QCF::OpKind::TE_MM:
    case QCF::OpKind::TE_AA:
      out = compute_te(left, right);
      break;
    case QCF::OpKind::MM_MA:
    case QCF::OpKind::MM_AM:
    case QCF::OpKind::MM_MM:
    case QCF::OpKind::MM_AA:
      out = compute_matmul(left, right);
      break;
    default:
      break;
    }

    op_map.insert({op.id, out});
    cout << "Op " << op.id << " done" << endl;
    cout << "Left size: " << left.size() << " Rank: " << left.rank << endl;
    left.print();
    cout << "Right size: " << right.size() << " Rank: " << right.rank << endl;
    right.print();
    cout << "Out size: " << out.size() << " Rank: " << out.rank << endl;
    out.print();
    cout << "--------------------------------" << endl;
  }

  cout << "Done All" << endl;
  out.print();

  // if (predicted_out.size() != real_out.size()) {
  //   std::cout << "FAILED" << endl;
  //   std::cout << "Mismatch in sizes" << endl;
  //   std::cout << "Predicted output size: " << predicted_out.size() << endl;
  //   std::cout << "Real output size: " << real_out.size() << endl;
  //   return 1;
  // }

  // for (size_t i = 0; i < predicted_out.size(); i++) {
  //   if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
  //         predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
  //         predicted_out.data_m[i] == real_out.data_m[i])) {
  //     std::cout << "FAILED" << endl;
  //     std::cout << "Mismatch in data" << endl;
  //     // print_op_matrices(op);
  //     std::cout << "Predicted output:"
  //               << "(" << predicted_out.data_r[i] << " + " << predicted_out.data_i[i]
  //               << "i) at (" << X(predicted_out.data_m[i]) << ", "
  //               << Y(predicted_out.data_m[i]) << ")" << endl;
  //       std::cout << "Real output:"
  //                 << "(" << real_out.data_r[i] << " + " << real_out.data_i[i] << "i)
  //                 at
  //                 ("
  //                 << X(real_out.data_m[i]) << ", " << Y(real_out.data_m[i]) << ")" <<
  //                 endl;
  //       std::cout << "Full Real output:" << endl;
  //       real_out.print();
  //       std::cout << "Full Predicted output:" << endl;
  //       predicted_out.print();
  //       return 1;
  //   }
  // }

  // std::cout << "PASSED" << endl;

  return 0;
}
