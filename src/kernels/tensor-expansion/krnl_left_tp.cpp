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

  ap_uint<1> stop_signal = 0;
  stream<LoadJob> load_jobs_stream;
  stream<ComputeJob> compute_jobs_stream;
  stream<StoreJob> store_jobs_stream;
  // clang-format off
#pragma HLS STREAM variable=load_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=compute_jobs_stream depth=STREAM_SIZE
#pragma HLS STREAM variable=writing_stream depth=STREAM_SIZE
  // clang-format on

  while (!stop_signal) {
    // clang-format off
  #pragma HLS PIPELINE II=8 style=frp
  #pragma HLS DATAFLOW
    // clang-format on

    chunk_load(A, size, load_jobs_stream, compute_jobs_stream);
    chunk_compute(compute_jobs_stream, store_jobs_stream, load_jobs_stream);
    chunk_store(store_jobs_stream, C, stop_signal);
  }
}

namespace Tensor {
namespace Product {
namespace Left {

static unique_ptr<LoadJob> LAST_LOAD_JOB = nullptr;
static dim_t WRITING_IX = 0;
static ap_uint<1> COMPUTE_IS_IN_FIRST_PASS = 1;
static edge_t COMPUTING_ROW_IX = 0;

void chunk_load(complex_t *A, size_t size, stream<LoadJob> &load_jobs,
                stream<ComputeJob> &compute_jobs) {
  // clang-format off
#pragma HLS INLINE off
  // clang-format on

  LoadJob job;

  // first, get the request, either from the stream or advancing on the last one
  // the load_jobs is used to update the loader for the second pass on the same row

  if (load_jobs.read_nb(job)) {
    // if we have a request, override the load flow and use it
  } else if (LAST_LOAD_JOB != NULL) {
    // else, if we have a last request, we advance on it
    job = LAST_LOAD_JOB->advance_for_first_pass();
  } else {
    // else, we create a default request (starting from 0)
    job = LoadJob();
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
  LAST_LOAD_JOB = make_unique<LoadJob>(job);

  // send the chunk to the next stage
  compute_jobs.write(ComputeJob(job, chunk));
}

void chunk_compute(stream<ComputeJob> &compute_jobs, stream<StoreJob> &store_jobs,
                   stream<LoadJob> &load_jobs) {
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
      if (COMPUTE_IS_IN_FIRST_PASS) {
        X(a.m) = X(a.m) << 1;
        Y(a.m) = Y(a.m) << 1;
        LAST_IN_TENSOR(a.m) = false;
      } else {
        X(a.m) = (X(a.m) << 1) + 1;
        Y(a.m) = (Y(a.m) << 1) + 1;
      }

      if (LAST_IN_ROW(a.m)) {
        if (COMPUTE_IS_IN_FIRST_PASS) {
          first_pass_ended = 1;
          // cout << "i: " << i << endl;
          second_pass_job = prev_job.reset_for_second_pass(prev_job.start + i + 1);
          // cout << "second_pass_job: " << second_pass_job.start << endl;
          need_override = 1;
        }
        // update the mode of the compute
        COMPUTE_IS_IN_FIRST_PASS = ~COMPUTE_IS_IN_FIRST_PASS;
      }
    } else {
      // end of row was prematurely reached, invalidate all subsequent values
      // or the value was invalidated in previous blocks
      v.valid = 0;
    }
  }

  // if the compute pass is the same of the previous job then pass it to the next stage
  if (prev_job.row_index == COMPUTING_ROW_IX) {
    store_job = {job.chunk};
  } else { // else write an invalid job
    store_job = {};
  }

  store_jobs.write(store_job);

  // if during the first pass we met the end_of_row override the chunk_load with
  // a new job request
  if (need_override) {
    load_jobs.write(second_pass_job);
    COMPUTING_ROW_IX++;
  }
}

void chunk_store(stream<StoreJob> &store_jobs, complex_t *C, ap_uint<1> &stop_signal) {
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
        C[WRITING_IX++] = tmp.value;
      // if the start of the chunk was invalid, stop the outer loop
      else if (i == 0) {
        stop_signal = 1;
      }
    }
  }
}

} // namespace Left
} // namespace Product
} // namespace Tensor
