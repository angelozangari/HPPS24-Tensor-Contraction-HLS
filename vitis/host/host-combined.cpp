#define OCL_CHECK(error, call)                                                           \
  call;                                                                                  \
  if (error != CL_SUCCESS) {                                                             \
    printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__,     \
           error);                                                                       \
    exit(EXIT_FAILURE);                                                                  \
  }

#include "host-combined.h"
#include "tests/csv_writer.h"
#include "tests/golden_reader.h"
#include "tests/qcf_reader.h"
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <unordered_map>
#include <vector>

using namespace std;
using namespace std::chrono;
using namespace Tensor::Expansion::Chunked;

static const std::string error_message = "Error: Result mismatch:\n"
                                         "i = %d CPU result = %d Device result = %d\n";

CooTens enqueue_tensor_expansion(const CooTens &left, const CooTens &right,
                                 cl::Kernel &krnl, cl::CommandQueue &q,
                                 cl::Context &context, TeExecution *te_exe) {
  cl_int err;

  // initialize parameters
  size_t left_bytes = left.size() * sizeof(complex_t);
  size_t right_bytes = right.size() * sizeof(complex_t);
  size_t out_bytes = left.size() * right.size() * sizeof(complex_t);

  te_exe->left_nz_size = left.size();
  te_exe->right_nz_size = right.size();
  te_exe->left_rank = left.rank;
  te_exe->right_rank = right.rank;

  auto t1 = high_resolution_clock::now();

  // These commands will allocate memory on the Device. The cl::Buffer objects
  // can be used to reference the memory locations on the device.
  OCL_CHECK(err,
            cl::Buffer buffer_left(context, CL_MEM_READ_ONLY, left_bytes, NULL, &err));
  OCL_CHECK(err,
            cl::Buffer buffer_right(context, CL_MEM_READ_ONLY, right_bytes, NULL, &err));
  OCL_CHECK(err,
            cl::Buffer buffer_out(context, CL_MEM_WRITE_ONLY, out_bytes, NULL, &err));

  // set the kernel Arguments
  int narg = 0;
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_left));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_right));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_out));
  OCL_CHECK(err, err = krnl.setArg(narg++, (rank_t)left.rank));
  OCL_CHECK(err, err = krnl.setArg(narg++, (rank_t)right.rank));

  // We then need to map our OpenCL buffers to get the pointers
  complex_t *ptr_left, *ptr_right, *ptr_out;
  OCL_CHECK(err,
            ptr_left = (complex_t *)q.enqueueMapBuffer(buffer_left, CL_TRUE, CL_MAP_WRITE,
                                                       0, left_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_right =
                     (complex_t *)q.enqueueMapBuffer(buffer_right, CL_TRUE, CL_MAP_WRITE,
                                                     0, right_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_out = (complex_t *)q.enqueueMapBuffer(
                     buffer_out, CL_TRUE, CL_MAP_READ, 0, out_bytes, NULL, NULL, &err));

  // Initialize the vectors used in the test
  for (int i = 0; i < left.size(); i++) {
    ptr_left[i] = left.get(i);
  }
  for (int i = 0; i < right.size(); i++) {
    ptr_right[i] = right.get(i);
  }

  // Data will be migrated to kernel space
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_left, buffer_right},
                                                  0 /* 0 means from host*/));

  auto t2 = high_resolution_clock::now();
  te_exe->transfer_time = duration_cast<nanoseconds>(t2 - t1);

  // Launch the Kernel
  t1 = high_resolution_clock::now();
  OCL_CHECK(err, err = q.enqueueTask(krnl));
  t2 = high_resolution_clock::now();
  te_exe->kernel_time = duration_cast<nanoseconds>(t2 - t1);

  t1 = high_resolution_clock::now();
  // The result of the previous kernel execution will need to be retrieved in
  // order to view the results. This call will transfer the data from FPGA to
  // source_results vector
  OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_out}, CL_MIGRATE_MEM_OBJECT_HOST));

  OCL_CHECK(err, q.finish());

  size_t out_size = left.size() * right.size();
  complex_t out[out_size];

  for (int i = 0; i < out_size; i++) {
    out[i] = ptr_out[i];
  }

  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_left, ptr_left));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_right, ptr_right));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_out, ptr_out));
  OCL_CHECK(err, err = q.finish());

  t2 = high_resolution_clock::now();
  te_exe->transfer_time += duration_cast<nanoseconds>(t2 - t1);

  return CooTens{out, out_size, left.rank + right.rank, left.format};
}

CooTens enqueue_matrix_multiplication(const CooTens &left, const CooTens &right,
                                      cl::Kernel &krnl, cl::CommandQueue &q,
                                      cl::Context &context, MmExecution *mm_exe) {
  cl_int err;

  // initialize parameters
  size_t left_float_bytes = left.size() * sizeof(float);
  size_t left_coo_meta_bytes = left.size() * sizeof(coo_meta_t);
  size_t right_float_bytes = right.size() * sizeof(float);
  size_t right_coo_meta_bytes = right.size() * sizeof(coo_meta_t);
  size_t max_out_dim = 1 << left.rank;
  size_t max_out_size = max_out_dim * max_out_dim;
  dim_t real_size;
  size_t out_float_bytes = max_out_size * sizeof(float); //
  size_t out_coo_meta_bytes = max_out_size * sizeof(coo_meta_t);
  flag_t left_row_format = left.format == MatrixFormat::RowMajor ? 1 : 0;

  mm_exe->left_nz_size = left.size();
  mm_exe->right_nz_size = right.size();
  mm_exe->rank = left.rank;

  auto t1 = high_resolution_clock::now();

  // These commands will allocate memory on the Device. The cl::Buffer objects
  // can be used to reference the memory locations on the device.
  OCL_CHECK(err, cl::Buffer buffer_left_r(context, CL_MEM_READ_ONLY, left_float_bytes,
                                          NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_left_i(context, CL_MEM_READ_ONLY, left_float_bytes,
                                          NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_left_m(context, CL_MEM_READ_ONLY, left_coo_meta_bytes,
                                          NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_right_r(context, CL_MEM_READ_ONLY, right_float_bytes,
                                           NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_right_i(context, CL_MEM_READ_ONLY, right_float_bytes,
                                           NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_right_m(context, CL_MEM_READ_ONLY,
                                           right_coo_meta_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_out_r(context, CL_MEM_WRITE_ONLY, out_float_bytes,
                                         NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_out_i(context, CL_MEM_WRITE_ONLY, out_float_bytes,
                                         NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_out_m(context, CL_MEM_WRITE_ONLY, out_coo_meta_bytes,
                                         NULL, &err));

  // set the kernel Arguments
  int narg = 0;
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_left_r));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_left_i));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_left_m));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_right_r));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_right_i));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_right_m));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_out_r));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_out_i));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_out_m));
  OCL_CHECK(err, err = krnl.setArg(narg++, (dim_t)left.size()));
  OCL_CHECK(err, err = krnl.setArg(narg++, (dim_t)right.size()));
  OCL_CHECK(err, err = krnl.setArg(narg++, real_size));
  OCL_CHECK(err, err = krnl.setArg(narg++, (flag_t)left_row_format));

  // We then need to map our OpenCL buffers to get the pointers
  float *ptr_left_r, *ptr_left_i, *ptr_right_r, *ptr_right_i, *ptr_out_r, *ptr_out_i;
  coo_meta_t *ptr_left_m, *ptr_right_m, *ptr_out_m;
  OCL_CHECK(err, ptr_left_r =
                     (float *)q.enqueueMapBuffer(buffer_left_r, CL_TRUE, CL_MAP_WRITE, 0,
                                                 left_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_left_i =
                     (float *)q.enqueueMapBuffer(buffer_left_i, CL_TRUE, CL_MAP_WRITE, 0,
                                                 left_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_left_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_left_m, CL_TRUE, CL_MAP_WRITE, 0, left_coo_meta_bytes, NULL,
                     NULL, &err));
  OCL_CHECK(err, ptr_right_r =
                     (float *)q.enqueueMapBuffer(buffer_right_r, CL_TRUE, CL_MAP_WRITE, 0,
                                                 right_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_right_i =
                     (float *)q.enqueueMapBuffer(buffer_right_i, CL_TRUE, CL_MAP_WRITE, 0,
                                                 right_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_right_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_right_m, CL_TRUE, CL_MAP_WRITE, 0, right_coo_meta_bytes, NULL,
                     NULL, &err));
  OCL_CHECK(err,
            ptr_out_r = (float *)q.enqueueMapBuffer(buffer_out_r, CL_TRUE, CL_MAP_READ, 0,
                                                    out_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err,
            ptr_out_i = (float *)q.enqueueMapBuffer(buffer_out_i, CL_TRUE, CL_MAP_READ, 0,
                                                    out_float_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_out_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_out_m, CL_TRUE, CL_MAP_READ, 0, out_coo_meta_bytes, NULL,
                     NULL, &err));

  // Initialize the vectors used in the test
  for (int i = 0; i < left.size(); i++) {
    ptr_left_r[i] = left.data_r[i];
    ptr_left_i[i] = left.data_i[i];
    ptr_left_m[i] = left.data_m[i];
  }
  for (int i = 0; i < right.size(); i++) {
    ptr_right_r[i] = right.data_r[i];
    ptr_right_i[i] = right.data_i[i];
    ptr_right_m[i] = right.data_m[i];
  }

  // Data will be migrated to kernel space
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_left_r, buffer_left_i,
                                                   buffer_left_m, buffer_right_r,
                                                   buffer_right_i, buffer_right_m},
                                                  0 /* 0 means from host*/));

  auto t2 = high_resolution_clock::now();
  mm_exe->transfer_time = duration_cast<nanoseconds>(t2 - t1);

  // Launch the Kernel
  t1 = high_resolution_clock::now();
  OCL_CHECK(err, err = q.enqueueTask(krnl));
  t2 = high_resolution_clock::now();
  mm_exe->kernel_time = duration_cast<nanoseconds>(t2 - t1);

  t1 = high_resolution_clock::now();
  // The result of the previous kernel execution will need to be retrieved in
  // order to view the results. This call will transfer the data from FPGA to
  // source_results vector
  OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_out_r, buffer_out_i, buffer_out_m},
                                            CL_MIGRATE_MEM_OBJECT_HOST));

  OCL_CHECK(err, q.finish());

  size_t out_size = max_out_size;
  float out_r[out_size];
  float out_i[out_size];
  coo_meta_t out_m[out_size];

  for (int i = 0; i < out_size; i++) {
    out_r[i] = ptr_out_r[i];
    out_i[i] = ptr_out_i[i];
    out_m[i] = ptr_out_m[i];
    if (LAST_IN_TENSOR(out_m[i])) {
      out_size = i + 1;
      break;
    }
  }

  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_left_r, ptr_left_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_left_i, ptr_left_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_left_m, ptr_left_m));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_right_r, ptr_right_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_right_i, ptr_right_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_right_m, ptr_right_m));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_out_r, ptr_out_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_out_i, ptr_out_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_out_m, ptr_out_m));
  OCL_CHECK(err, err = q.finish());

  t2 = high_resolution_clock::now();
  mm_exe->transfer_time += duration_cast<nanoseconds>(t2 - t1);

  return CooTens{out_r, out_i, out_m, out_size, left.rank, left.format};
}

int main(int argc, char *argv[]) {
  // TARGET_DEVICE macro needs to be passed from gcc command line
  if (argc != 3) {
    std::cout << "Usage: " << argv[0] << " <xclbin>"
              << " <circuit.qcf>" << std::endl;
    return EXIT_FAILURE;
  }

  std::string xclbinFilename = argv[1];
  std::string qcfFilename = argv[2];

  // Creates a vector of DATA_SIZE elements with an initial value of 10 and 32
  // using customized allocator for getting buffer alignment to 4k boundary

  std::vector<cl::Device> devices;
  cl_int err;
  cl::Context context;
  cl::CommandQueue q;
  cl::Kernel krnl_tensor_expansion;
  cl::Kernel krnl_matrix_multiplication;
  cl::Program program;
  std::vector<cl::Platform> platforms;
  bool found_device = false;

  // traversing all Platforms To find Xilinx Platform and targeted
  // Device in Xilinx Platform
  cl::Platform::get(&platforms);
  for (size_t i = 0; (i < platforms.size()) & (found_device == false); i++) {
    cl::Platform platform = platforms[i];
    std::string platformName = platform.getInfo<CL_PLATFORM_NAME>();
    if (platformName == "Xilinx") {
      devices.clear();
      platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
      if (devices.size()) {
        found_device = true;
        break;
      }
    }
  }
  if (found_device == false) {
    std::cout << "Error: Unable to find Target Device " << std::endl;
    return EXIT_FAILURE;
  }

  std::cout << "INFO: Reading " << xclbinFilename << std::endl;
  FILE *fp;
  if ((fp = fopen(xclbinFilename.c_str(), "r")) == nullptr) {
    printf("ERROR: %s xclbin not available please build\n", xclbinFilename.c_str());
    exit(EXIT_FAILURE);
  }
  // Load xclbin
  std::cout << "Loading: '" << xclbinFilename << "'\n";
  std::ifstream bin_file(xclbinFilename, std::ifstream::binary);
  bin_file.seekg(0, bin_file.end);
  unsigned nb = bin_file.tellg();
  bin_file.seekg(0, bin_file.beg);
  char *buf = new char[nb];
  bin_file.read(buf, nb);

  // Creating Program from Binary File
  cl::Program::Binaries bins;
  bins.push_back({buf, nb});
  bool valid_device = false;
  for (unsigned int i = 0; i < devices.size(); i++) {
    auto device = devices[i];
    // Creating Context and Command Queue for selected Device
    OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
    OCL_CHECK(err,
              q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
    std::cout << "Trying to program device[" << i
              << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
    cl::Program program(context, {device}, bins, nullptr, &err);
    if (err != CL_SUCCESS) {
      std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
    } else {
      std::cout << "Device[" << i << "]: program successful!\n";
      OCL_CHECK(err,
                krnl_tensor_expansion = cl::Kernel(program, "tensor_expansion", &err));
      OCL_CHECK(err, krnl_matrix_multiplication =
                         cl::Kernel(program, "matrix_multiplication", &err));
      valid_device = true;
      break; // we break because we found a valid device
    }
  }
  if (!valid_device) {
    std::cout << "Failed to program any device found, exit!\n";
    exit(EXIT_FAILURE);
  }

  // Read the golden vector
  // CooTens left, right, out;
  // StatsRecorder stats_recorder{};
  // nanoseconds cpu_time, e2e_time;
  // high_resolution_clock::time_point cpu_t1, cpu_t2;
  // std::vector<TeExecution> te_exes;
  // std::vector<MmExecution> mm_exes;

  // QCF::QcfReader reader(qcfFilename);
  // reader.consume();
  // auto ops = &reader.operations;

  // std::unordered_map<uint32_t, CooTens> op_map;

  // auto e2e_t1 = high_resolution_clock::now();
  // cpu_t1 = high_resolution_clock::now();

  // for (auto &op : *ops) {
  //   switch (op.kind) {
  //   case QCF::OpKind::TE_MA:
  //   case QCF::OpKind::MM_MA:
  //     left = {op.left.u.tens};
  //     right = op_map.at(op.right.u.id);
  //     break;
  //   case QCF::OpKind::TE_AM:
  //   case QCF::OpKind::MM_AM:
  //     left = op_map.at(op.left.u.id);
  //     right = {op.right.u.tens};
  //     break;
  //   case QCF::OpKind::TE_MM:
  //   case QCF::OpKind::MM_MM:
  //     left = {op.left.u.tens};
  //     right = {op.right.u.tens};
  //     break;
  //   case QCF::OpKind::TE_AA:
  //   case QCF::OpKind::MM_AA:
  //     left = op_map.at(op.left.u.id);
  //     right = op_map.at(op.right.u.id);
  //     break;
  //   default:
  //     break;
  //   }

  //   cpu_t2 = high_resolution_clock::now();
  //   cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);

  //   switch (op.kind) {
  //   case QCF::OpKind::TE_MA:
  //   case QCF::OpKind::TE_AM:
  //   case QCF::OpKind::TE_MM:
  //   case QCF::OpKind::TE_AA:
  //     TeExecution te_exe;
  //     out = enqueue_tensor_expansion(left, right, krnl_tensor_expansion, q, context,
  //                                    &te_exe);
  //     te_exes.push_back(te_exe);
  //     break;
  //   case QCF::OpKind::MM_MA:
  //   case QCF::OpKind::MM_AM:
  //   case QCF::OpKind::MM_MM:
  //   case QCF::OpKind::MM_AA:
  //     MmExecution mm_exe;
  //     out = enqueue_matrix_multiplication(left, right, krnl_matrix_multiplication, q,
  //                                         context, &mm_exe);
  //     mm_exes.push_back(mm_exe);
  //     break;
  //   default:
  //     break;
  //   }

  //   cpu_t1 = high_resolution_clock::now();

  //   op_map.insert({op.id, out});

  //   cpu_t2 = high_resolution_clock::now();
  //   cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);
  // }

  // auto e2e_t2 = high_resolution_clock::now();
  // e2e_time = duration_cast<nanoseconds>(e2e_t2 - e2e_t1);

  // // Verify the result
  // int match = 0;
  // for (size_t i = 0; i < out.size(); i++) {
  //   if (abs(out.data_r[i]) - 0.25 > 1e-6 || abs(out.data_i[i]) > 1e-6) {
  //     std::cout << "FAILED" << std::endl;
  //     std::cout << "Mismatch in data" << std::endl;
  //     std::cout << "Predicted output: (" << out.data_r[i] << " + " << out.data_i[i]
  //               << "i) at (" << X(out.data_m[i]) << ", " << Y(out.data_m[i]) << ")"
  //               << std::endl;
  //     std::cout << "Full Predicted output:" << std::endl;
  //     out.print();
  //     match = 1;
  //   }
  // }

  // std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;

  // // record stats and write to csv
  // stats_recorder.record(qcfFilename, cpu_time, e2e_time, te_exes, mm_exes);
  // stats_recorder.write();

  GoldenReader reader(qcfFilename);
  reader.consume();
  auto ops = &reader.operations;

  int match = 0;
  // for (size_t i = 0; i < ops->size(); i++) {
  for (size_t i = 116; i < 117; i++) {
    OP &op = ops->at(i);

    CooTens left{op.left}, right{op.right}, real_out{op.out}, out;

    // Call the kernel
    std::vector<float> out_r(left.size() * right.size());
    std::vector<float> out_i(left.size() * right.size());
    std::vector<coo_meta_t> out_m(left.size() * right.size());

    cout << "Running test " << i << " with sizes " << left.rank << " x " << right.rank
         << " -> " << real_out.rank << " ... " << flush;
    TeExecution te_exe;
    out =
        enqueue_tensor_expansion(left, right, krnl_tensor_expansion, q, context, &te_exe);

    for (size_t i = 0; i < out.size(); i++) {
      out_r[i] = out.data_r[i];
      out_i[i] = out.data_i[i];
      out_m[i] = out.data_m[i];
    }

    // Compare the output
    CooTens predicted_out{out_r, out_i, out_m, left.rank * 2};

    if (predicted_out.size() != real_out.size()) {
      cout << "FAILED" << endl;
      cout << "Mismatch in sizes" << endl;
      cout << "Predicted output size: " << predicted_out.size() << endl;
      cout << "Real output size: " << real_out.size() << endl;
      match = 1;
    }

    for (size_t i = 0; i < predicted_out.size(); i++) {
      if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
            predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
            predicted_out.data_m[i] == real_out.data_m[i])) {
        match = 1;
      }
    }

    if (match) {
      cout << "FAILED" << endl;
      cout << "Mismatch in data" << endl;
      // print_op_matrices(op);
      cout << "Predicted output:"
           << "(" << predicted_out.data_r[i] << " + " << predicted_out.data_i[i]
           << "i) at (" << X(predicted_out.data_m[i]) << ", "
           << Y(predicted_out.data_m[i]) << ")" << endl;
      cout << "Real output:"
           << "(" << real_out.data_r[i] << " + " << real_out.data_i[i] << "i) at ("
           << X(real_out.data_m[i]) << ", " << Y(real_out.data_m[i]) << ")" << endl;
      cout << "Full Real output:" << endl;
      real_out.print();
      cout << "Full Predicted output:" << endl;
      predicted_out.print();
      op.print();
    } else {
      cout << "PASSED" << endl;
    }
  }

  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
