add_library(qcslib STATIC
    src/types.cpp

    # Kernels
    src/tensor-expansion/krnl_tens_exp.cpp
    src/matrix-multiplication/krnl_mat_mul.cpp
)
target_include_directories(qcslib PUBLIC include src)
