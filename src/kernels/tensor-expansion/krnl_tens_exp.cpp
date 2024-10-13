#include "krnl_tens_exp.h"

void tensor_expansion(Tensor::Expansion::complex_t *A, Tensor::Expansion::complex_t *B,
                      Tensor::Expansion::complex_t *C, rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16
#pragma HLS INTERFACE m_axi port=B bundle=gmem1 depth=16
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=256
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=B_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  Tensor::Expansion::tensor_expansion_chunked(A, B, C, A_R, B_R);
}

namespace Tensor {
namespace Expansion {

void load_row(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info) {
  std::size_t is, ix;
  complex_t tmp;

  // get the start index
  is = read_info.row_index + read_info.offset_in_row;

LOAD_ROW_LOOP:
  // read the row
  for (uint16_t i = 0; i < CHUNK_SIZE; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on

    // update the index
    ix = is + i;

    // update the stream
    tmp = M[ix];
    M_stream.write(M[ix]);

    // update the read info and terminate early if the row is consumed
    if (LAST_IN_ROW(tmp.m)) {
      read_info.elements_read = i + 1;
      read_info.offset_in_row += i + 1;
      read_info.row_consumed = 1;
      return;
    }
  }

  // update the read info
  read_info.elements_read = CHUNK_SIZE;
  read_info.offset_in_row += CHUNK_SIZE;
  read_info.row_consumed = 0;
}

void load_next(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info) {
  if (read_info.row_consumed) {
    // reset read info and update offset of the new row
    read_info.row_index += read_info.offset_in_row;
    read_info.offset_in_row = 0;
    read_info.row_consumed = 0;

    // load the new row
    load_row(M, M_stream, read_info);
  } else {
    // load the next chunk of the current row
    load_row(M, M_stream, read_info);
  }
}

void load_prev(complex_t *M, hls::stream<complex_t> &M_stream, read_info_t &read_info) {
  // reset read info and update offset of the new row
  read_info.offset_in_row = 0;
  read_info.row_consumed = 0;

  // load the new row
  load_row(M, M_stream, read_info);
}

void store_next(hls::stream<complex_t> &M_stream, complex_t *M,
                write_info_t &write_info) {
  complex_t tmp;

  // write the elements
STORE_NEXT_LOOP:
  for (uint16_t i = 0; i < write_info.elements_to_write; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on

    // read the element
    tmp = M_stream.read();

    // write the element
    M[write_info.writing_tail + i] = tmp;
  }

  // update the write info and reset the elements to write
  write_info.writing_tail += write_info.elements_to_write;
  write_info.elements_to_write = 0;
}

void compute_chunked(hls::stream<complex_t> &A_row, read_info_t &A_read_info,
                     hls::stream<complex_t> &B_row, read_info_t &B_read_info,
                     hls::stream<complex_t> &C_row, write_info_t &C_write_info,
                     const rank_t B_R, compute_info_t &compute_info) {
  complex_t a, b, c;
  hls::stream<complex_t> B_cached;
  flag_t a_partial, b_partial;
  // clang-format off
#pragma HLS STREAM variable=B_cached depth=16
  // clang-format on
  const dim_t BD = 1 << B_R;

  // update partial flags early on
  a_partial = !(A_read_info.row_consumed &&
                (A_read_info.elements_read == A_read_info.offset_in_row));
  b_partial = !(B_read_info.row_consumed &&
                (B_read_info.elements_read == B_read_info.offset_in_row));
  compute_info.a_exhausted = A_read_info.row_consumed;
  compute_info.b_exhausted = B_read_info.row_consumed;

  // load B in a cache to rewind if needed
COMPUTE_CHUNKED_LOAD_B:
  for (int i = 0; i < B_read_info.elements_read; i++) {
    B_cached.write(B_row.read());
  }

  // iterate and compute the row
COMPUTE_CHUNKED_OUTER_LOOP:
  for (int i = 0; i < A_read_info.elements_read; i++) {
    a = A_row.read();
  COMPUTE_CHUNKED_INNER_LOOP:
    for (int j = 0; j < B_read_info.elements_read; j++) {
      // read from the cached and then push back
      b = B_cached.read();
      c.r = a.r * b.r - a.i * b.i;
      c.i = a.r * b.i + a.i * b.r;
      // update the metadata
      X(c.m) = X(a.m) * BD + X(b.m);
      Y(c.m) = Y(a.m) * BD + Y(b.m);
      LAST_IN_ROW(c.m) = LAST_IN_ROW(b.m) & LAST_IN_ROW(a.m);
      LAST_IN_TENSOR(c.m) = LAST_IN_TENSOR(b.m) & LAST_IN_TENSOR(a.m);

      // if B reading wasn't partial and A hasn't been exhausted yet, push back b
      // (this avoids filling B_cached and not using it)
      if (!b_partial && i < A_read_info.elements_read - 1) {
        B_cached.write(b);
      }

      // write the result and update the write info
      C_row.write(c);
      C_write_info.elements_to_write++;
    }

    // return early if B read was partial in order to trigger a read_next
    if (b_partial) {
      return;
    }
  }

  // return early if A read was partial
  // (here for defensive programming)
  if (a_partial) {
    return;
  }
}

void tensor_expansion_chunked(complex_t *A, complex_t *B, complex_t *C, rank_t A_R,
                              rank_t B_R) {
  read_info_t A_ri, B_ri;
  write_info_t C_wi;
  compute_info_t ci;

  hls::stream<complex_t> A_row, B_row, C_row;
  // clang-format off
#pragma HLS STREAM variable=A_row depth=16
#pragma HLS STREAM variable=B_row depth=16
#pragma HLS STREAM variable=C_row depth=16
  // clang-format on

  // compute the number of rows expected (as 2^(rank / 2)) (e.g. with a single qubit gate
  // we have 2^1 = 2 rows, with a 2 qubit gate we have 2^2 = 4 rows)
  std::size_t A_num_rows = 1 << A_R;
  std::size_t B_num_rows = 1 << B_R;

#pragma HLS DATAFLOW
  // iterate over all rows of the output tensor
TE_OUTER_LOOP:
  for (int i = 0; i < A_num_rows; i++) {
    load_next(A, A_row, A_ri);

  TE_INNER_LOOP:
    for (int j = 0; j < B_num_rows; j++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on

      load_next(B, B_row, B_ri);

      compute_chunked(A_row, A_ri, B_row, B_ri, C_row, C_wi, B_R, ci);
      store_next(C_row, C, C_wi);

      // if a read was partial, load next and compute again, until both are exhausted
    TE_WHILE_INNERMOST_LOOP:
      while (!ci.a_exhausted || !ci.b_exhausted) {
        if (!ci.b_exhausted) {
          // just load the next elements of B and keep A as it is
          load_next(B, B_row, B_ri);
        } else if (!ci.a_exhausted) {
          // then rewind B and load the next elements of A
          load_next(A, A_row, A_ri);
          load_prev(B, B_row, B_ri);
        }
        compute_chunked(A_row, A_ri, B_row, B_ri, C_row, C_wi, B_R, ci);
        store_next(C_row, C, C_wi);
      }

      // if we are not at the end of B, rewind the same row of A
      if (j < B_num_rows - 1) {
        // load previous row of A
        load_prev(A, A_row, A_ri);
      }
    }

    // if we are not at the end of A, rewind completely B
    if (i < A_num_rows - 1) {
      // rewind B from the start
      B_ri = {};
    }
  }
}

} // namespace Expansion
} // namespace Tensor
