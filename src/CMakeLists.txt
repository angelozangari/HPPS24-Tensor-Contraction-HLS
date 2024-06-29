add_library(qcslib STATIC
    # Kernels
    src/tensor-expansion/krnl_tens_exp.cpp
    src/matrix-multiplication/krnl_mat_mul.cpp

    # Tests
    src/tests/golden_reader.cpp
    src/tests/qcf_reader.cpp
    src/tests/csv_writer.cpp
)
target_include_directories(qcslib PUBLIC include src)

# test executable
# expansion
add_executable(test-tensor-expansion src/tests/tensor-expansion/test_tensor_expansion.cpp)
target_compile_definitions(test-tensor-expansion PRIVATE TEST_ALL)
target_include_directories(test-tensor-expansion PUBLIC include)
target_link_libraries(test-tensor-expansion PUBLIC qcslib)

# matmul
add_executable(test-matrix-multiplication src/tests/matrix-multiplication/test_matrix_multiplication.cpp)
target_compile_definitions(test-matrix-multiplication PRIVATE TEST_ALL)
target_include_directories(test-matrix-multiplication PUBLIC include)
target_link_libraries(test-matrix-multiplication PUBLIC qcslib)

# combined
add_executable(test-combined src/tests/combined/test_combined.cpp)
target_compile_definitions(test-combined PRIVATE TEST_ALL)
target_include_directories(test-combined PUBLIC include)
target_link_libraries(test-combined PUBLIC qcslib)

# QFT qcf test
add_executable(test-qft src/tests/qft/test_qft_qcf.cpp)
target_compile_definitions(test-qft PRIVATE TEST_ALL)
target_include_directories(test-qft PUBLIC include)
target_link_libraries(test-qft PUBLIC qcslib)
