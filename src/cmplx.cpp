#include "cmplx.h"

cmplx_t cmplx_add(cmplx_t a, cmplx_t b) {
#pragma HLS INLINE off
  cmplx_t c;
  c.real = a.real + b.real;
  c.imag = a.imag + b.imag;
  return c;
}

cmplx_t cmplx_mul(cmplx_t a, cmplx_t b) {
#pragma HLS INLINE off
  cmplx_t c;
  c.real = a.real * b.real - a.imag * b.imag;
  c.imag = a.real * b.imag + a.imag * b.real;
  return c;
}
