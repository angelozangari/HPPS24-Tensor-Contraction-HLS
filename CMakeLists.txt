cmake_minimum_required(VERSION 3.12)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

project(QCS-HLS LANGUAGES CXX)

include(scripts/cmake/dependencies.cmake)

##########################################################################
##########################      ENTRYPOINTS     ##########################
##########################################################################

# expansion
# add_executable(test-tensor-product src/tests/tensor-expansion/test_tensor_product.cpp)
# target_compile_definitions(test-tensor-product PRIVATE)
# target_include_directories(test-tensor-product PUBLIC include)
# target_link_libraries(test-tensor-product PUBLIC qcslib)

# print contents of .dat file
add_executable(print-golden src/tests/matrix-multiplication/print_golden.cpp)
target_include_directories(print-golden PUBLIC include)
# we link only the utils library (HLS kernels not needed so we avoid compiling them)
target_link_libraries(print-golden PUBLIC qcsutils)

# copy golden-vectors.dat in same place as built binary for runtime
add_custom_command(TARGET print-golden POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
          ${CMAKE_CURRENT_SOURCE_DIR}/src/tests/matrix-multiplication/golden-vectors.dat
          $<TARGET_FILE_DIR:print-golden>/golden-vectors.dat
  COMMENT "Copying golden-vectors.dat for print-golden"
)

# matmul
add_executable(test-matrix-multiplication src/tests/matrix-multiplication/test_matrix_multiplication.cpp)
target_compile_definitions(test-matrix-multiplication PRIVATE TEST_ALL)
target_include_directories(test-matrix-multiplication PUBLIC include)
# link against utils + csim kernels (no HLS dependencies)
target_link_libraries(test-matrix-multiplication PUBLIC qcsutils)

# copy golden file next to test binary for easily run from build/
add_custom_command(TARGET test-matrix-multiplication POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
          ${CMAKE_CURRENT_SOURCE_DIR}/src/tests/matrix-multiplication/golden-vectors.dat
          $<TARGET_FILE_DIR:test-matrix-multiplication>/golden-vectors.dat
  COMMENT "Copying golden-vectors.dat for test-matrix-multiplication"
)

# combined
# add_executable(test-combined src/tests/combined/test_combined.cpp)
# target_compile_definitions(test-combined PRIVATE TEST_ALL)
# target_include_directories(test-combined PUBLIC include)
# target_link_libraries(test-combined PUBLIC qcslib)

# # QFT qcf test
# add_executable(test-qft src/tests/qft/test_qft_qcf.cpp)
# target_compile_definitions(test-qft PRIVATE TEST_ALL)
# target_include_directories(test-qft PUBLIC include)
# target_link_libraries(test-qft PUBLIC qcslib)
