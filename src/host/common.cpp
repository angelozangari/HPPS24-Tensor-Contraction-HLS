#pragma once

#include "common.h"
#include <chrono>

using namespace std;
using namespace std::chrono;
using namespace Tensor;

/**
 * @brief Enqueues the kernel for tensor product left
 */
CooTens enqueue_tensor_product(const CooTens &tensor, cl::Kernel &krnl,
                               cl::CommandQueue &q, cl::Context &context,
                               TeExecution *te_exe, bool is_left) {
  cl_int err;

  // initialize parameters
  size_t in_bytes = tensor.size() * sizeof(complex_t);
  size_t out_bytes = tensor.size() * 2 * sizeof(complex_t);

  if (is_left) {
    te_exe->left_nz_size = tensor.size();
    te_exe->right_nz_size = 2;
  } else {
    te_exe->left_nz_size = 2;
    te_exe->right_nz_size = tensor.size();
  }
  te_exe->left_rank = tensor.rank;
  te_exe->right_rank = 1;

  auto t1 = high_resolution_clock::now();

  // These commands will allocate memory on the Device. The cl::Buffer objects
  // can be used to reference the memory locations on the device.
  OCL_CHECK(err, cl::Buffer buffer_in(context, CL_MEM_READ_ONLY, in_bytes, NULL, &err));
  OCL_CHECK(err,
            cl::Buffer buffer_out(context, CL_MEM_WRITE_ONLY, out_bytes, NULL, &err));

  // set the kernel Arguments
  int narg = 0;
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_in));
  OCL_CHECK(err, err = krnl.setArg(narg++, buffer_out));
  OCL_CHECK(err, err = krnl.setArg(narg++, (rank_t)tensor.rank));

  // We then need to map our OpenCL buffers to get the pointers
  complex_t *ptr_in, *ptr_right, *ptr_out;
  OCL_CHECK(err, ptr_in = (complex_t *)q.enqueueMapBuffer(
                     buffer_in, CL_TRUE, CL_MAP_WRITE, 0, in_bytes, NULL, NULL, &err));
  OCL_CHECK(err, ptr_out = (complex_t *)q.enqueueMapBuffer(
                     buffer_out, CL_TRUE, CL_MAP_READ, 0, out_bytes, NULL, NULL, &err));

  // Initialize the vectors used in the test
  for (int i = 0; i < tensor.size(); i++) {
    ptr_in[i] = tensor.get(i);
  }

  // Data will be migrated to kernel space
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_in}, 0 /* 0 means from host*/));
  OCL_CHECK(err, q.finish());

  auto t2 = high_resolution_clock::now();
  te_exe->transfer_time = duration_cast<nanoseconds>(t2 - t1);

  // Launch the Kernel
  t1 = high_resolution_clock::now();
  OCL_CHECK(err, err = q.enqueueTask(krnl));

  OCL_CHECK(err, q.finish());
  t2 = high_resolution_clock::now();
  te_exe->kernel_time = duration_cast<nanoseconds>(t2 - t1);

  t1 = high_resolution_clock::now();
  // The result of the previous kernel execution will need to be retrieved in
  // order to view the results. This call will transfer the data from FPGA to
  // source_results vector
  OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_out}, CL_MIGRATE_MEM_OBJECT_HOST));
  OCL_CHECK(err, q.finish());

  size_t out_size = tensor.size() * 2;
  complex_t out[out_size];

  for (int i = 0; i < out_size; i++) {
    out[i] = ptr_out[i];
  }

  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_in, ptr_in));
  OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_out, ptr_out));
  OCL_CHECK(err, err = q.finish());

  t2 = high_resolution_clock::now();
  te_exe->transfer_time += duration_cast<nanoseconds>(t2 - t1);

  return CooTens{out, out_size, tensor.rank + 1, tensor.format};
}

/**
 * @brief Enqueues the kernel for matrix multiplication
 */
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
