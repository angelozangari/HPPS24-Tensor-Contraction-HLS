#include "krnl_left_tp.h"

using namespace std;
using namespace hls;

void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size) {
  // clang-format off
  #pragma HLS INTERFACE m_axi port=A bundle=gmem0 depth=4096 latency=30 num_read_outstanding=128 max_read_burst_length=128
  #pragma HLS INTERFACE m_axi port=C bundle=gmem0 depth=8192 latency=30 num_write_outstanding=128 max_write_burst_length=128
  #pragma HLS INTERFACE s_axilite port=A_R bundle=control
  #pragma HLS INTERFACE s_axilite port=size bundle=control
  #pragma HLS INTERFACE s_axilite port=return bundle=control
  #pragma HLS STABLE variable=A
  #pragma HLS STABLE variable=C
  // clang-format on

  using namespace Tensor;
  using namespace Tensor::Product::Left;

  stream<ap_uint<1>> stop_signal_stream;
  stream<LoadJob> load_jobs_stream;
  stream<ComputeJob> compute_jobs_stream;
  stream<StoreJob> store_jobs_stream;
  // clang-format off
#pragma HLS STREAM variable=stop_signal_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=load_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=compute_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=store_jobs_stream depth=STREAM_SIZE
  // clang-format on

  // initialize stage variables
  LoadJob last_load_job = {};
  dim_t writing_ix = 0;
  ap_uint<1> compute_is_in_first_pass = 1;
  edge_t computing_row_ix = 0;

  // stop signal to stop the outer loop
  ap_uint<1> stop_signal = 0;

  while (!stop_signal_stream.read_nb(stop_signal) || stop_signal == 0) {
    // clang-format off
  #pragma HLS PIPELINE II=8 style=frp
  #pragma HLS DATAFLOW
    // clang-format on

    chunk_load(A, size, load_jobs_stream, compute_jobs_stream, last_load_job);
    chunk_compute(compute_jobs_stream, store_jobs_stream, load_jobs_stream,
                  compute_is_in_first_pass, computing_row_ix);
    chunk_store(store_jobs_stream, C, stop_signal_stream, writing_ix);
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

  LoadJob job;

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

  dim_t l;
  value_t v;
  chunk_t chunk;

  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    l = job.start + i;
    // if the request is out of bounds, we load an invalid value
    if (l < size) {
      v = value_t(A[l]);
    } else {
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

  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    value_t &v = job.chunk[i];
    complex_t &a = v.value;

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
      v.valid = 0;
    }
  }

  // if the compute pass is the same of the previous job then pass it to the next stage
  if (prev_job.row_index == computing_row_ix) {
    store_job = {job.chunk};
  } else { // else write an invalid job
    store_job = {};
  }

  store_jobs.write(store_job);

  // if during the first pass we met the end_of_row override the chunk_load with
  // a new job request
  if (need_override) {
    load_jobs.write(second_pass_job);
    computing_row_ix++;
  }
}

void chunk_store(stream<StoreJob> &store_jobs, complex_t *C,
                 stream<ap_uint<1>> &stop_signal_stream, dim_t &writing_ix) {
  // clang-format off
  #pragma HLS INLINE off
  // clang-format on

  StoreJob store_job = store_jobs.read();
  chunk_t &chunk = store_job.chunk;

  for (size_t i = 0; i < CHUNK_SIZE; i++) {
    if (store_job.is_valid) {
      value_t tmp = chunk[i];
      // write the value if valid else spin
      if (tmp.valid)
        C[writing_ix++] = tmp.value;
      // if the start of the chunk was invalid, stop the outer loop
      else if (i == 0) {
        stop_signal_stream.write_nb(1);
      }
    }
  }
}

} // namespace Left
} // namespace Product
} // namespace Tensor
