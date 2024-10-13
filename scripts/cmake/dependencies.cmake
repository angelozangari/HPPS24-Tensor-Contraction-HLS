set(CMAKE_BUILD_TYPE Debug)

add_library(qcslib STATIC
    # Kernels
    src/kernels/tensor-expansion/krnl_tens_exp.cpp
    src/kernels/matrix-multiplication/krnl_mat_mul.cpp

    # Tests
    src/utils/golden_reader.cpp
    src/utils/qcf_reader.cpp
    src/utils/csv_writer.cpp
)
target_include_directories(qcslib PUBLIC include src)
