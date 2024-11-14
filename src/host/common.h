#pragma once

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1

#include "utils/csv_writer.h"
#include "utils/golden_reader.h"
#include <CL/cl2.hpp>

#define OCL_CHECK(error, call)                                                           \
  call;                                                                                  \
  if (error != CL_SUCCESS) {                                                             \
    printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__,     \
           error);                                                                       \
    exit(EXIT_FAILURE);                                                                  \
  }

CooTens enqueue_tensor_product(const CooTens &tensor, cl::Kernel &krnl,
                               cl::CommandQueue &q, cl::Context &context,
                               TeExecution *te_exe, bool is_left);

CooTens enqueue_matrix_multiplication(const CooTens &left, const CooTens &right,
                                      cl::Kernel &krnl, cl::CommandQueue &q,
                                      cl::Context &context, MmExecution *mm_exe);
