#define OCL_CHECK(error, call)                                                           \
  call;                                                                                  \
  if (error != CL_SUCCESS) {                                                             \
    printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__,     \
           error);                                                                       \
    exit(EXIT_FAILURE);                                                                  \
  }

#include "tensor_expansion_test.h"
#include "tests/golden_reader.h"
#include <fstream>
#include <iostream>
#include <stdlib.h>

static const int DATA_SIZE = 4096;

static const std::string error_message = "Error: Result mismatch:\n"
                                         "i = %d CPU result = %d Device result = %d\n";

int main(int argc, char *argv[]) {
  // TARGET_DEVICE macro needs to be passed from gcc command line
  if (argc != 2) {
    std::cout << "Usage: " << argv[0] << " <xclbin>" << std::endl;
    return EXIT_FAILURE;
  }

  std::string xclbinFilename = argv[1];

  // Compute the size of array in bytes
  size_t size_in_bytes = DATA_SIZE * sizeof(int);

  // Creates a vector of DATA_SIZE elements with an initial value of 10 and 32
  // using customized allocator for getting buffer alignment to 4k boundary

  std::vector<cl::Device> devices;
  cl_int err;
  cl::Context context;
  cl::CommandQueue q;
  cl::Kernel krnl_tensor_expansion;
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
      valid_device = true;
      break; // we break because we found a valid device
    }
  }
  if (!valid_device) {
    std::cout << "Failed to program any device found, exit!\n";
    exit(EXIT_FAILURE);
  }

  // Read the golden vector
  GoldenReader reader("golden-vectors.dat");
  reader.consume();
  auto ops = &reader.operations;
  OP &op = ops->at(95); // FIXME: This is a hardcoded value
  CooTens left{op.left};
  CooTens right{op.right};
  CooTens real_out{op.out};
  // initialize parameters
  size_t out_c_size = left.size() * right.size();
  size_t in_a_rank = left.rank;
  size_t in_b_rank = right.rank;
  size_t in_a_size = left.size();
  size_t in_b_size = right.size();
  size_t in_a_float_size_in_bytes = in_a_size * sizeof(float);
  size_t in_a_coo_meta_size_in_bytes = in_a_size * sizeof(coo_meta_t);
  size_t in_b_float_size_in_bytes = in_b_size * sizeof(float);
  size_t in_b_coo_meta_size_in_bytes = in_a_size * sizeof(coo_meta_t);
  size_t out_c_float_size_in_bytes = out_c_size * sizeof(float);
  size_t out_c_coo_meta_size_in_bytes = out_c_size * sizeof(coo_meta_t);

  // These commands will allocate memory on the Device. The cl::Buffer objects
  // can be used to reference the memory locations on the device.
  OCL_CHECK(err, cl::Buffer buffer_a_r(context, CL_MEM_READ_ONLY,
                                       in_a_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_a_i(context, CL_MEM_READ_ONLY,
                                       in_a_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_a_m(context, CL_MEM_READ_ONLY,
                                       in_a_coo_meta_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_b_r(context, CL_MEM_READ_ONLY,
                                       in_b_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_b_i(context, CL_MEM_READ_ONLY,
                                       in_b_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_b_m(context, CL_MEM_READ_ONLY,
                                       in_b_coo_meta_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_c_r(context, CL_MEM_WRITE_ONLY,
                                       out_c_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_c_i(context, CL_MEM_WRITE_ONLY,
                                       out_c_float_size_in_bytes, NULL, &err));
  OCL_CHECK(err, cl::Buffer buffer_c_m(context, CL_MEM_WRITE_ONLY,
                                       out_c_coo_meta_size_in_bytes, NULL, &err));

  // set the kernel Arguments
  int narg = 0;
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_a_r));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_a_i));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_a_m));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_b_r));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_b_i));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_b_m));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_c_r));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_c_i));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, buffer_c_m));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, in_a_size));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, in_b_size));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, in_a_rank));
  OCL_CHECK(err, err = krnl_tensor_expansion.setArg(narg++, in_b_rank));

  // We then need to map our OpenCL buffers to get the pointers
  float *ptr_a_r, *ptr_a_i, *ptr_b_r, *ptr_b_i, *ptr_c_r, *ptr_c_i;
  coo_meta_t *ptr_a_m, *ptr_b_m, *ptr_c_m;
  OCL_CHECK(err, ptr_a_r = (float *)q.enqueueMapBuffer(buffer_a_r, CL_TRUE, CL_MAP_WRITE,
                                                       0, in_a_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_a_i = (float *)q.enqueueMapBuffer(buffer_a_i, CL_TRUE, CL_MAP_WRITE,
                                                       0, in_a_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_a_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_a_m, CL_TRUE, CL_MAP_WRITE, 0, in_a_coo_meta_size_in_bytes,
                     NULL, NULL, &err));
  OCL_CHECK(err, ptr_b_r = (float *)q.enqueueMapBuffer(buffer_b_r, CL_TRUE, CL_MAP_WRITE,
                                                       0, in_b_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_b_i = (float *)q.enqueueMapBuffer(buffer_b_i, CL_TRUE, CL_MAP_WRITE,
                                                       0, in_b_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_b_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_b_m, CL_TRUE, CL_MAP_WRITE, 0, in_b_coo_meta_size_in_bytes,
                     NULL, NULL, &err));
  OCL_CHECK(err, ptr_c_r = (float *)q.enqueueMapBuffer(buffer_c_r, CL_TRUE, CL_MAP_READ,
                                                       0, out_c_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_c_i = (float *)q.enqueueMapBuffer(buffer_c_i, CL_TRUE, CL_MAP_READ,
                                                       0, out_c_float_size_in_bytes, NULL,
                                                       NULL, &err));
  OCL_CHECK(err, ptr_c_m = (coo_meta_t *)q.enqueueMapBuffer(
                     buffer_c_m, CL_TRUE, CL_MAP_READ, 0, out_c_coo_meta_size_in_bytes,
                     NULL, NULL, &err));

  // Initialize the vectors used in the test
  for (int i = 0; i < in_a_size; i++) {
    ptr_a_r[i] = left.data_r[i];
    ptr_a_i[i] = left.data_i[i];
    ptr_a_m[i] = left.data_m[i];
  }
  for (int i = 0; i < in_b_size; i++) {
    ptr_b_r[i] = right.data_r[i];
    ptr_b_i[i] = right.data_i[i];
    ptr_b_m[i] = right.data_m[i];
  }

  // Data will be migrated to kernel space
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_a_r, buffer_a_i, buffer_a_m,
                                                   buffer_b_r, buffer_b_i, buffer_b_m},
                                                  0 /* 0 means from host*/));

  // Launch the Kernel
  OCL_CHECK(err, err = q.enqueueTask(krnl_tensor_expansion));

  // The result of the previous kernel execution will need to be retrieved in
  // order to view the results. This call will transfer the data from FPGA to
  // source_results vector
  OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_c_r, buffer_c_i, buffer_c_m},
                                            CL_MIGRATE_MEM_OBJECT_HOST));

  OCL_CHECK(err, q.finish());

  // Verify the result
  CooTens predicted_out{ptr_c_r, ptr_c_i, ptr_c_m, out_c_size, left.rank * 2};
  int match = 1;
  if (predicted_out.size() != real_out.size()) {
    std::cout << "FAILED" << std::endl;
    std::cout << "Mismatch in sizes" << std::endl;
    std::cout << "Predicted output size: " << predicted_out.size() << std::endl;
    std::cout << "Real output size: " << real_out.size() << std::endl;
    match = 0;
  }
  for (size_t i = 0; i < predicted_out.size(); i++) {
    if (!(predicted_out.data_r[i] - real_out.data_r[i] < 1e-6 &&
          predicted_out.data_i[i] - real_out.data_i[i] < 1e-6 &&
          predicted_out.data_m[i] == real_out.data_m[i])) {
      std::cout << "FAILED" << std::endl;
      std::cout << "Mismatch in data" << std::endl;
      // print_op_matrices(op);
      std::cout << "Predicted output:" << "(" << predicted_out.data_r[i] << " + "
                << predicted_out.data_i[i] << "i) at (" << X(predicted_out.data_m[i])
                << ", " << Y(predicted_out.data_m[i]) << ")" << std::endl;
      std::cout << "Real output:" << "(" << real_out.data_r[i] << " + "
                << real_out.data_i[i] << "i) at (" << X(real_out.data_m[i]) << ", "
                << Y(real_out.data_m[i]) << ")" << std::endl;
      std::cout << "Full Real output:" << std::endl;
      real_out.print();
      std::cout << "Full Predicted output:" << std::endl;
      predicted_out.print();
      op.print();
      match = 0;
    }
  }

  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_a_r, ptr_a_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_a_i, ptr_a_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_a_m, ptr_a_m));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_b_r, ptr_b_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_b_i, ptr_b_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_b_m, ptr_b_m));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_c_r, ptr_c_r));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_c_i, ptr_c_i));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_c_m, ptr_c_m));
  OCL_CHECK(err, err = q.finish());

  std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
