#pragma once

namespace Complex {

// complex number type
typedef struct {
  float real;
  float imag;
} cmplx_t;

/**
 * @brief Add two complex numbers
 */
cmplx_t add(cmplx_t a, cmplx_t b);

/**
 * @brief Multiply two complex numbers
 */
cmplx_t mul(cmplx_t a, cmplx_t b);

} // namespace Complex
