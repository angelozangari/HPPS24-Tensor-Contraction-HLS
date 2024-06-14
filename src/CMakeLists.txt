add_library(qcslib STATIC
    src/types.cpp
    src/tensors.cpp

    # Kernels
    src/tensor-expansion/krnl_tens_exp.cpp
    # src/matrix-multiplication/krnl_mat_mul.cpp

    # Tests
    src/tests/golden_reader.cpp
)
target_include_directories(qcslib PUBLIC include src)

# test executable
add_executable(test-tensor-expansion src/tests/tensor-expansion/test_golden_reader.cpp)
target_include_directories(test-tensor-expansion PUBLIC include)
target_link_libraries(test-tensor-expansion PUBLIC qcslib)
