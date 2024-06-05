#pragma once

// complex number type
typedef struct {
  float real;
  float imag;
} cmplx_t;

/**
 * @brief Add two complex numbers
 */
cmplx_t cmplx_add(cmplx_t a, cmplx_t b);

/**
 * @brief Multiply two complex numbers
 */
cmplx_t cmplx_mul(cmplx_t a, cmplx_t b);
