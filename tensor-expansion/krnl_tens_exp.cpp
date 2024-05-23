/*
 * insert out licence 
 */

// Pseudocode for tensor expansion kernel
// C = A x B, where x is tensor expansion symbol

#include "krnl_tens_exp.hpp"

void krnl_te(
    uint32_t* A,
    uint32_t* B,
    uint32_t* C,
    int row_B,
    int col_B,
    int size_A
) {
    for (int i = 0; i < size_A; i++) {
        for (int j = 0; j < row_B * col_B; j++) {
            #pragma HLS PIPELINE II=1
            // TODO: fix index logic
            C[i * row_B * col_B + j] = A[i] * B[j];
        }
    }
}
