add_library(qcslib STATIC
    # Complex
    src/complex/cmplx.cpp

    # Tensor
    src/tensor/io.cpp

    # Golden
    src/golden/golden_reader.cpp

    # Kernels
    src/tensor-expansion/krnl_tens_exp.cpp
    src/matrix-multiplication/krnl_mat_mul.cpp
)
target_include_directories(qcslib PUBLIC include src)
