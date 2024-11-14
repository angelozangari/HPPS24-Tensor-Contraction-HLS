#define OCL_CHECK(error, call)                                                           \
  call;                                                                                  \
  if (error != CL_SUCCESS) {                                                             \
    printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__,     \
           error);                                                                       \
    exit(EXIT_FAILURE);                                                                  \
  }

#include "common.h"
#include "utils/csv_writer.h"
#include "utils/golden_reader.h"
#include "utils/qcf_reader.h"
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <unordered_map>
#include <vector>

using namespace std;
using namespace std::chrono;
using namespace Tensor;

static const std::string error_message = "Error: Result mismatch:\n"
                                         "i = %d CPU result = %d Device result = %d\n";

int main(int argc, char *argv[]) {
  // TARGET_DEVICE macro needs to be passed from gcc command line
  if (argc != 3) {
    std::cout << "Usage: " << argv[0] << " <xclbin>"
              << " <golden-vectors.dat>" << std::endl;
    return EXIT_FAILURE;
  }

  std::string xclbinFilename = argv[1];
  std::string goldenVectorsFile = argv[2];

  std::vector<cl::Device> devices;
  cl_int err;
  cl::Context context;
  cl::CommandQueue q;
  cl::Kernel krnl_tensor_product_left;
  cl::Kernel krnl_tensor_product_right;
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
                krnl_tensor_product_left = cl::Kernel(program, "krnl_left_tp", &err));
      OCL_CHECK(err,
                krnl_tensor_product_right = cl::Kernel(program, "krnl_right_tp", &err));
      valid_device = true;
      break; // we break because we found a valid device
    }
  }
  if (!valid_device) {
    std::cout << "Failed to program any device found, exit!\n";
    exit(EXIT_FAILURE);
  }

  StatsRecorder stats_recorder{};
  nanoseconds cpu_time, e2e_time;
  high_resolution_clock::time_point cpu_t1, cpu_t2, e2e_t1, e2e_t2;
  vector<TeExecution> te_exes = {};
  GoldenReader reader(goldenVectorsFile);
  reader.consume();
  std::vector<std::unique_ptr<OP>> &ops = reader.operations;

  // make 20 runs of same test to extract average time
  int match = 0;
  for (size_t l = 0; l < 20; l++) {
    te_exes.clear();
    cpu_time = nanoseconds{0};
    e2e_time = nanoseconds{0};

    for (size_t i = 0; i < ops.size(); i++) {
      // size_t i = 116;
      OP &op = *ops[i];

      if (!op.is_unary()) {
        cout << "ERROR: Unsupported binary operation kind" << endl;
        return 1;
      }

      UnaryOP &unary_op = static_cast<UnaryOP &>(op);
      CooTens input{unary_op.input}, real_out{op.out}, out;

      // Call the kernel
      std::vector<float> out_r(input.size() * 2);
      std::vector<float> out_i(input.size() * 2);
      std::vector<coo_meta_t> out_m(input.size() * 2);

      e2e_t1 = high_resolution_clock::now();
      cpu_t1 = high_resolution_clock::now();

      if (unary_op.kind == OpKind::TensProdLeft) {
        cout << "Running test " << i << " with sizes " << input.rank << " x " << 1
             << " -> " << real_out.rank << " ... " << flush;
      } else {
        cout << "Running test " << i << " with sizes " << 1 << " x " << input.rank
             << " -> " << real_out.rank << " ... " << flush;
      }
      cpu_t2 = high_resolution_clock::now();
      cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);
      TeExecution te_exe;
      if (unary_op.kind == OpKind::TensProdLeft) {
        out = enqueue_tensor_product(input, krnl_tensor_product_left, q, context, &te_exe,
                                     true);
      } else {
        out = enqueue_tensor_product(input, krnl_tensor_product_right, q, context,
                                     &te_exe, false);
      }

      cpu_t1 = high_resolution_clock::now();

      for (size_t i = 0; i < out.size(); i++) {
        out_r[i] = out.data_r[i];
        out_i[i] = out.data_i[i];
        out_m[i] = out.data_m[i];
      }
      cpu_t2 = high_resolution_clock::now();
      cpu_time += duration_cast<nanoseconds>(cpu_t2 - cpu_t1);
      e2e_t2 = high_resolution_clock::now();
      e2e_time = duration_cast<nanoseconds>(e2e_t2 - e2e_t1);

      // Compare the output
      CooTens predicted_out{out_r, out_i, out_m, input.rank * 2};

      if (predicted_out.size() != real_out.size()) {
        cout << "FAILED" << endl;
        cout << "Mismatch in sizes" << endl;
        cout << "Predicted output size: " << predicted_out.size() << endl;
        cout << "Real output size: " << real_out.size() << endl;
        match = 1;
      }

      for (size_t i = 0; i < predicted_out.size(); i++) {
        if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-5 &&
              predicted_out.data_i[i] - real_out.data_i[i] < 1e-5 &&
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
        te_exes.push_back(te_exe);
      }
    }

    // format filename based on the test number
    auto filename = goldenVectorsFile.substr(0, goldenVectorsFile.find_last_of('.')) +
                    "-" + to_string(l);
    stats_recorder.record(filename, cpu_time, e2e_time, te_exes, {});
    stats_recorder.write();
  }

  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
