add_library(qcslib STATIC
    # Complex
    src/cmplx.cpp

    # Tensor
    src/io.cpp

    # Golden
    # src/golden_reader.cpp

    # Kernels
    src/krnl_tens_exp.cpp
    # src/matrix-multiplication/krnl_mat_mul.cpp
)
target_include_directories(qcslib PUBLIC include src)
