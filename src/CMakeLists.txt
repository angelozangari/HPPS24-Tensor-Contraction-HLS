add_library(qcslib STATIC
    # Complex
    src/complex/cmplx.cpp

    # Tensor Expansion
    src/tensor-expansion/golden-vectors/golden_reader.cpp
    src/tensor-expansion/krnl_tens_exp.cpp
    src/tensor-expansion/tens_exp.cpp
)
target_include_directories(qcslib PUBLIC include src)
