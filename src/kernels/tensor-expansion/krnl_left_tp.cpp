#include "krnl_left_tp.h"
#include "hls_print.h"

using namespace std;
using namespace hls;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
  #pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=16 latency=1 num_read_outstanding=128 max_read_burst_length=128
  #pragma HLS INTERFACE m_axi port=C bundle=gmem0 depth=32 latency=1 num_write_outstanding=128 max_write_burst_length=128
  #pragma HLS INTERFACE s_axilite port=A_R bundle=control
  #pragma HLS INTERFACE s_axilite port=size bundle=control
  #pragma HLS INTERFACE s_axilite port=return bundle=control
  // #pragma HLS STABLE variable=A
  // #pragma HLS STABLE variable=C
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  stream<LoadJob> load_jobs_stream;
  stream<ComputeJob> compute_jobs_stream;
  stream<StoreJob> store_jobs_stream;
  // clang-format off
#pragma HLS STREAM variable=load_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=compute_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=store_jobs_stream depth=STREAM_SIZE
  // clang-format on

  // initialize stage variables
  LoadJob last_load_job = LoadJob();
  dim_t writing_ix = 0;
  ap_uint<1> compute_is_in_first_pass = 1;
  edge_t computing_row_ix = 0;

  // stop signal to stop the outer loop
  ap_uint<1> stop_signal = 0;

OUTER_LOOP:
  for (size_t i = 0; i < 5; i++) {
    // clang-format off
#pragma HLS PIPELINE II=8
    // clang-format on

    chunk_load(A, size, load_jobs_stream, compute_jobs_stream, last_load_job);
    chunk_compute(compute_jobs_stream, store_jobs_stream, load_jobs_stream,
                  compute_is_in_first_pass, computing_row_ix);
    chunk_store(store_jobs_stream, C, writing_ix);
  }
}

namespace Tensor {
namespace Product {
namespace Left {

void chunk_load(complex_t *A, size_t size, stream<LoadJob> &load_jobs,
                stream<ComputeJob> &compute_jobs, LoadJob &last_load_job) {
  // clang-format off
#pragma HLS INLINE off
  // clang-format on

  LoadJob job = LoadJob();

  // first, get the request, either from the stream or advancing on the last one
  // the load_jobs is used to update the loader for the second pass on the same row

  if (load_jobs.read_nb(job)) {
    // if we have a request, override the load flow and use it
  } else if (!last_load_job.is_first) {
    // else, if we have a last request, we advance on it
    job = last_load_job.advance_for_first_pass();
  } else {
    // else, we create a default request (starting from 0)
    job = last_load_job;
    job.is_first = 0;
  }

  // second load the chunk detailed by the LoadParams request
  print("LOAD: Loading chunk from %d\n", job.start);
  print("LOAD: Loading row index %d\n", job.row_index);

  dim_t l = 0;
  value_t v = value_t();
  chunk_t chunk = chunk_t();

LOAD_LOOP:
  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    // clang-format off
// #pragma HLS ARRAY_PARTITION variable = chunk complete dim = 1
// #pragma HLS PIPELINE II=1
// #pragma HLS LOOP_TRIPCOUNT min=CHUNK_SIZE max=CHUNK_SIZE
    // clang-format on
    l = job.start + i;
    // if the request is out of bounds, we load an invalid value
    if (l < size) {
      v = value_t(A[l]);
      // print("LOAD: loading value at %d\n", l);
    } else {
      // print("LOAD: loading invalid value at %d\n", l);
      // load an invalid value
      v = value_t();
    }
    chunk[i] = v;
  }

  // save the request as last request
  last_load_job = job;

  // send the chunk to the next stage
  compute_jobs.write(ComputeJob(job, chunk));
}

void chunk_compute(stream<ComputeJob> &compute_jobs, stream<StoreJob> &store_jobs,
                   stream<LoadJob> &load_jobs, ap_uint<1> &compute_is_in_first_pass,
                   edge_t &computing_row_ix) {
  // clang-format off
#pragma HLS INLINE off
  // clang-format on

  LoadJob second_pass_job, prev_job;
  StoreJob store_job;
  ap_uint<1> need_override = 0;
  ap_uint<1> first_pass_ended = 0;

  // get the job from the stream
  ComputeJob job = compute_jobs.read();
  prev_job = job.load_job;

COMPUTE_LOOP:
  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    // clang-format off
// #pragma HLS PIPELINE II=1
// #pragma HLS LOOP_TRIPCOUNT min=CHUNK_SIZE max=CHUNK_SIZE
    // clang-format on
    value_t &v = job.chunk[i];
    complex_t &a = v.value;

    print("COMPUTE: computing value at %d\n", (int)(prev_job.start + i));
    print("COMPUTE: first_pass_ended: %d\n", (int)first_pass_ended);
    print("COMPUTE: v.valid: %d\n", (int)v.valid);

    if (!first_pass_ended && v.valid) {
      if (compute_is_in_first_pass) {
        X(a.m) = X(a.m) << 1;
        Y(a.m) = Y(a.m) << 1;
        LAST_IN_TENSOR(a.m) = false;
      } else {
        X(a.m) = (X(a.m) << 1) + 1;
        Y(a.m) = (Y(a.m) << 1) + 1;
      }

      if (LAST_IN_ROW(a.m)) {
        if (compute_is_in_first_pass) {
          first_pass_ended = 1;
          second_pass_job = prev_job.reset_for_second_pass(prev_job.start + i + 1);
          need_override = 1;
        }
        // update the mode of the compute
        compute_is_in_first_pass = ~compute_is_in_first_pass;
      }
    } else {
      // end of row was prematurely reached, invalidate all subsequent values
      // or the value was invalidated in previous blocks
      print("COMPUTE: invalidated value\n");
      v.valid = 0;
    }
  }

  // if the compute pass is the same of the previous job then pass it to the next stage
  print("COMPUTE: row index: %d\n", prev_job.row_index);
  print("COMPUTE: computing now: %d\n", (int)computing_row_ix);
  if (prev_job.row_index == computing_row_ix) {
    store_job = {job.chunk};
  } else { // else write an invalid job
    store_job = {};
  }

  store_jobs.write(store_job);

  // if during the first pass we met the end_of_row override the chunk_load with
  // a new job request
  if (need_override) {
    print("COMPUTE: override\n");
    load_jobs.write(second_pass_job);
    computing_row_ix++;
  }
}

void chunk_store(stream<StoreJob> &store_jobs, complex_t *C, dim_t &writing_ix) {
  // clang-format off
  #pragma HLS INLINE off
  // clang-format on

  StoreJob store_job = store_jobs.read();
  chunk_t &chunk = store_job.chunk;

STORE_LOOP:
  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    // clang-format off
// #pragma HLS PIPELINE II=1
// #pragma HLS LOOP_TRIPCOUNT min=CHUNK_SIZE max=CHUNK_SIZE
    // clang-format on
    if (store_job.is_valid) {
      value_t tmp = chunk[i];
      // write the value if valid else spin
      if (tmp.valid) {
        print("STORE: storing value - valid: 1\n");
        // cout << "storing value: " << tmp.value.r << " + " << tmp.value.i << "i at ("
        //      << X(tmp.value.m) << ", " << Y(tmp.value.m) << ")" << endl;
        C[writing_ix++] = tmp.value;
      } else {
        print("STORE: storing value - valid: 0\n");
      }
    }
  }
}

} // namespace Left
} // namespace Product
} // namespace Tensor
