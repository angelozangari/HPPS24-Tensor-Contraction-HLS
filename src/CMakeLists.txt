add_library(qcslib STATIC
    # Kernels
    src/tensor-expansion/krnl_tens_exp.cpp
    src/matrix-multiplication/krnl_mat_mul.cpp

    # Tests
    src/tests/golden_reader.cpp
)
target_include_directories(qcslib PUBLIC include src)

# test executable
# expansion
add_executable(test-tensor-expansion src/tests/tensor-expansion/test_tensor_expansion.cpp)
target_include_directories(test-tensor-expansion PUBLIC include)
target_link_libraries(test-tensor-expansion PUBLIC qcslib)

# matmul
add_executable(test-matrix-multiplication src/tests/matrix-multiplication/test_matrix_multiplication.cpp)
target_include_directories(test-matrix-multiplication PUBLIC include)
target_link_libraries(test-matrix-multiplication PUBLIC qcslib)
