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

static const std::string error_message = "Error: Result mismatch:\n"
                                         "i = %d CPU result = %d Device result = %d\n";

CooTens enqueue_tensor_expansion(const CooTens &left, const CooTens &right,
                                 cl::Kernel krnl, cl::CommandQueue q,
                                 cl::Context context) {
  cl_int err;

  // initialize parameters
  size_t left_float_bytes = left.size() * sizeof(float);
  size_t left_coo_meta_bytes = left.size() * sizeof(coo_meta_t);
  size_t right_float_bytes = right.size() * sizeof(float);
  size_t right_coo_meta_bytes = right.size() * sizeof(coo_meta_t);
  size_t out_float_bytes = left.size() * right.size() * sizeof(float);
  size_t out_coo_meta_bytes = left.size() * right.size() * sizeof(coo_meta_t);

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
  OCL_CHECK(err, err = krnl.setArg(narg++, (rank_t)left.rank));
  OCL_CHECK(err, err = krnl.setArg(narg++, (rank_t)right.rank));

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

  // Launch the Kernel
  OCL_CHECK(err, err = q.enqueueTask(krnl));

  // The result of the previous kernel execution will need to be retrieved in
  // order to view the results. This call will transfer the data from FPGA to
  // source_results vector
  OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_out_r, buffer_out_i, buffer_out_m},
                                            CL_MIGRATE_MEM_OBJECT_HOST));

  OCL_CHECK(err, q.finish());

  size_t out_size = left.size() * right.size();
  float out_r[out_size];
  float out_i[out_size];
  coo_meta_t out_m[out_size];

  for (int i = 0; i < out_size; i++) {
    out_r[i] = ptr_out_r[i];
    out_i[i] = ptr_out_i[i];
    out_m[i] = ptr_out_m[i];
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

  return CooTens{out_r, out_i, out_m, out_size, left.rank + right.rank};
}

CooTens enqueue_matrix_multiplication(const CooTens &left, const CooTens &right,
                                      cl::Kernel krnl, cl::CommandQueue q,
                                      cl::Context context) {
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

  // Launch the Kernel
  OCL_CHECK(err, err = q.enqueueTask(krnl));

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

  return CooTens{out_r, out_i, out_m, out_size, left.rank + right.rank};
}

int main(int argc, char *argv[]) {
  // TARGET_DEVICE macro needs to be passed from gcc command line
  if (argc != 2) {
    std::cout << "Usage: " << argv[0] << " <xclbin>" << std::endl;
    return EXIT_FAILURE;
  }

  std::string xclbinFilename = argv[1];

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

  OP left_te = ops->at(0);
  OP right_te = ops->at(1);
  OP out_matmul = ops->at(2);

  CooTens left{left_te.left};
  CooTens right{left_te.right};
  CooTens out_left_te =
      enqueue_tensor_expansion(left, right, krnl_tensor_expansion, q, context);

  left = {right_te.left};
  right = {right_te.right};
  CooTens out_right_te =
      enqueue_tensor_expansion(left, right, krnl_tensor_expansion, q, context);

  left = {out_left_te};
  right = {out_right_te};
  CooTens computed_matmul =
      enqueue_matrix_multiplication(left, right, krnl_matrix_multiplication, q, context);

  // Verify the result
  CooTens predicted_out = computed_matmul;
  CooTens real_out{out_matmul.out};
  int match = 0;
  if (predicted_out.size() != real_out.size()) {
    std::cout << "FAILED" << std::endl;
    std::cout << "Mismatch in sizes" << std::endl;
    std::cout << "Predicted output size: " << predicted_out.size() << std::endl;
    std::cout << "Real output size: " << real_out.size() << std::endl;
    match = 1;
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
      match = 1;
    }
  }

  std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
  return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
