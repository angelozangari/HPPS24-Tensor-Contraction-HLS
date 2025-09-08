set(CMAKE_BUILD_TYPE Debug)
add_compile_options(-Wno-unknown-warning-option)
add_compile_definitions(QCS_HLS_CSIM)

# Core utils library (no HLS kernel headers required)
add_library(qcsutils STATIC
    src/utils/golden_reader.cpp
    src/utils/qcf_reader.cpp
    src/utils/csv_writer.cpp
)
target_include_directories(qcsutils PUBLIC include src)

# Full kernels library (requires HLS headers); keep for FPGA targets/tests
add_library(qcslib STATIC EXCLUDE_FROM_ALL
    src/kernels/tensor-expansion/krnl_left_tp.cpp
    src/kernels/tensor-expansion/krnl_right_tp.cpp
    # src/kernels/matrix-multiplication/krnl_mat_mul.cpp
    src/utils/golden_reader.cpp
    src/utils/qcf_reader.cpp
    src/utils/csv_writer.cpp
)
target_include_directories(qcslib PUBLIC include src)
