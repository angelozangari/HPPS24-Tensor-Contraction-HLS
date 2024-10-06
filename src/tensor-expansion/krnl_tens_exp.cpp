#include "krnl_tens_exp.h"

void tensor_expansion(Tensor::Expansion::Chunked::complex_t *A,
                      Tensor::Expansion::Chunked::complex_t *B,
                      Tensor::Expansion::Chunked::complex_t *C, rank_t A_R, rank_t B_R) {
  // clang-format off
#pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=4
#pragma HLS INTERFACE m_axi port=B bundle=gmem1 depth=4
#pragma HLS INTERFACE m_axi port=C bundle=gmem2 depth=16
#pragma HLS INTERFACE s_axilite port=A_R bundle=control
#pragma HLS INTERFACE s_axilite port=B_R bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
  // clang-format on

  Tensor::Expansion::Chunked::tensor_expansion_chunked(A, B, C, A_R, B_R);
}

namespace Tensor {
namespace Expansion {

namespace Chunked {

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
  // clang-format off
#pragma HLS STREAM variable=B_cached depth=16
  // clang-format on
  const dim_t BD = 1 << B_R;

  // update early on the compute info
  compute_info.b_partial = !(B_read_info.row_consumed &&
                             B_read_info.elements_read == B_read_info.offset_in_row);
  compute_info.a_partial = !(A_read_info.row_consumed &&
                             A_read_info.elements_read == A_read_info.offset_in_row);

  // load B in a cache to rewind if needed
  for (int i = 0; i < B_read_info.elements_read; i++) {
    B_cached.write(B_row.read());
  }

  // iterate and compute the row
  for (int i = 0; i < A_read_info.elements_read; i++) {
    a = A_row.read();
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
      if (!compute_info.b_partial && i < A_read_info.elements_read - 1) {
        B_cached.write(b);
      }

      // write the result and update the write info
      C_row.write(c);
      C_write_info.elements_to_write++;
    }

    // return early if B read was partial in order to trigger a read_next
    if (compute_info.b_partial) {
      compute_info.b_partial = 1;
      return;
    }
  }

  // return early if A read was partial
  // (here for defensive programming)
  if (compute_info.a_partial) {
    compute_info.a_partial = 1;
    return;
  }
}

void tensor_expansion_chunked(complex_t *A, complex_t *B, complex_t *C, rank_t A_R,
                              rank_t B_R) {
  read_info_t A_ri = {}, B_ri = {};
  write_info_t C_wi = {};
  compute_info_t ci = {};

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
CHUNK_EXPANSION_LOOP:
  // iterate over all rows of the output tensor
  for (int i = 0; i < A_num_rows; i++) {
    load_next(A, A_row, A_ri);

    for (int j = 0; j < B_num_rows; j++) {
      // clang-format off
#pragma HLS PIPELINE II=1
      // clang-format on

      load_next(B, B_row, B_ri);

      compute_chunked(A_row, A_ri, B_row, B_ri, C_row, C_wi, B_R, ci);
      store_next(C_row, C, C_wi);

      // if a read was partial, load next and compute again, until both are exhausted
      while (ci.a_partial || ci.b_partial) {
        if (ci.b_partial) {
          // just load the next elements of B and keep A as it is
          load_next(B, B_row, B_ri);
        } else if (ci.a_partial) {
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

} // namespace Chunked

void load(float *Ar, float *Ai, coo_meta_t *Am, hls::stream<float> &Ar_stream,
          hls::stream<float> &Ai_stream, hls::stream<coo_meta_t> &Am_stream,
          dim_t A_size) {
LOAD_LOOP:
  for (int i = 0; i < A_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    Ar_stream.write(Ar[i]);
    Ai_stream.write(Ai[i]);
    Am_stream.write(Am[i]);
  }
}

void store(hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
           hls::stream<coo_meta_t> &Cm_stream, float *Cr, float *Ci, coo_meta_t *Cm,
           dim_t C_size) {
STORE_LOOP:
  for (int i = 0; i < C_size; i++) {
    // clang-format off
#pragma HLS PIPELINE II=1
    // clang-format on
    Cr[i] = Cr_stream.read();
    Ci[i] = Ci_stream.read();
    Cm[i] = Cm_stream.read();
  }
}

void compute(hls::stream<float> &Ar_stream, hls::stream<float> &Ai_stream,
             hls::stream<coo_meta_t> &Am_stream, hls::stream<float> &Br_stream,
             hls::stream<float> &Bi_stream, hls::stream<coo_meta_t> &Bm_stream,
             hls::stream<float> &Cr_stream, hls::stream<float> &Ci_stream,
             hls::stream<coo_meta_t> &Cm_stream, const rank_t B_R) {
  hls::stream<float> Ar_stream_buffer, Ai_stream_buffer, Br_stream_buffer,
      Bi_stream_buffer, Br_cycle_buffer, Bi_cycle_buffer;
  // clang-format off
#pragma HLS STREAM variable=Ar_stream_buffer depth=1024
#pragma HLS STREAM variable=Ai_stream_buffer depth=1024
#pragma HLS STREAM variable=Br_stream_buffer depth=1024
#pragma HLS STREAM variable=Bi_stream_buffer depth=1024
#pragma HLS STREAM variable=Br_cycle_buffer depth=1024
#pragma HLS STREAM variable=Bi_cycle_buffer depth=1024
  // clang-format on
  hls::stream<coo_meta_t> Am_stream_buffer, Bm_stream_buffer, Bm_cycle_buffer;
  // clang-format off
#pragma HLS STREAM variable=Am_stream_buffer depth=1024
#pragma HLS STREAM variable=Bm_stream_buffer depth=1024
#pragma HLS STREAM variable=Bm_cycle_buffer depth=1024
  // clang-format on
  float ar, ai, br, bi, cr, ci, tmp_r, tmp_i;
  coo_meta_t am, bm, cm, tmp_m;

  const dim_t BD = 1 << B_R;

LOOP_T:
  for (;;) {
    tmp_r = Br_stream.read();
    tmp_i = Bi_stream.read();
    tmp_m = Bm_stream.read();
    Br_cycle_buffer.write(tmp_r);
    Bi_cycle_buffer.write(tmp_i);
    Bm_cycle_buffer.write(tmp_m);
    if (LAST_IN_TENSOR(tmp_m)) {
      break;
    }
  }

LOOP_N: // iterate over all rows of A
  while (!Ar_stream.empty()) {

  LOOP_M: // store in a stream the first row of A
    for (;;) {
      tmp_r = Ar_stream.read();
      tmp_i = Ai_stream.read();
      tmp_m = Am_stream.read();
      Ar_stream_buffer.write(tmp_r);
      Ai_stream_buffer.write(tmp_i);
      Am_stream_buffer.write(tmp_m);
      if (LAST_IN_ROW(tmp_m)) {
        break;
      }
    }

  LOOP_L: // iter for all the rows of B
    for (;;) {

    LOOP_Q: // store in a stream the first row of B
      for (;;) {
        tmp_r = Br_cycle_buffer.read();
        tmp_i = Bi_cycle_buffer.read();
        tmp_m = Bm_cycle_buffer.read();
        Br_stream_buffer.write(tmp_r);
        Bi_stream_buffer.write(tmp_i);
        Bm_stream_buffer.write(tmp_m);
        if (LAST_IN_ROW(tmp_m)) {
          break;
        }
      }

    LOOP_I: // compute the entire line of C
      for (;;) {
        ar = Ar_stream_buffer.read();
        ai = Ai_stream_buffer.read();
        am = Am_stream_buffer.read();
      LOOP_J:
        for (;;) {
#pragma HLS PIPELINE II = 1
          br = Br_stream_buffer.read();
          bi = Bi_stream_buffer.read();
          bm = Bm_stream_buffer.read();
          cr = ar * br - ai * bi;
          ci = ar * bi + ai * br;
          X(cm) = X(am) * BD + X(bm);
          Y(cm) = Y(am) * BD + Y(bm);
          LAST_IN_ROW(cm) = LAST_IN_ROW(bm) & LAST_IN_ROW(am);
          LAST_IN_TENSOR(cm) = LAST_IN_TENSOR(bm) & LAST_IN_TENSOR(am);
          Cr_stream.write(cr);
          Ci_stream.write(ci);
          Cm_stream.write(cm);
          if (!LAST_IN_ROW(am)) {
            // reiterate the first row of B if As are not finished
            Br_stream_buffer.write(br);
            Bi_stream_buffer.write(bi);
            Bm_stream_buffer.write(bm);
          } else if (!Ar_stream.empty()) {
            // recharge the first row of B
            Br_cycle_buffer.write(br);
            Bi_cycle_buffer.write(bi);
            Bm_cycle_buffer.write(bm);
          }

          if (LAST_IN_ROW(bm)) {
            break;
          }
        }
        if (!LAST_IN_TENSOR(bm)) {
          Ar_stream_buffer.write(ar);
          Ai_stream_buffer.write(ai);
          Am_stream_buffer.write(am);
        }
        if (LAST_IN_ROW(am)) {
          break;
        }
      }

      if (LAST_IN_TENSOR(bm)) {
        break;
      }
    }
  }
}

} // namespace Expansion
} // namespace Tensor
