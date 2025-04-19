#pragma once

#include <cstdint>

#include "ap_int.h"
#include "hls_stream.h"
#include "hls_task.h"
#include "kernels/types.h"
#include <array>

extern "C" {
/**
 * @brief Compute the tensor product of a tensor A and an Identity gate (of rank 1).
 * @details This operation increases the rank of the tensor by 1, adding a new dimension
 * by expanding the tensor from below (in a quantum circuit view).
 * @param A pointer to the tensor in DDR
 * @param C pointer to the output tensor in DDR
 * @param A_R rank of the tensor A
 */
void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size);
}

namespace Tensor {
namespace Product {
namespace Left {

// constexpr uint16_t CACHE_SIZE = 8;
constexpr uint16_t CHUNK_SIZE = 8;
constexpr uint16_t STREAM_SIZE = 64;

struct value_t {
  complex_t value;  // value of the tensor
  ap_uint<1> valid; // bit used to signal if the value can be used in the following block
                    // or must be discarded

  value_t(complex_t v) : value(v), valid(1) {}
  value_t() : valid(0) {}
};

typedef std::array<value_t, CHUNK_SIZE> chunk_t;
class LoadJob {
public:
  LoadJob() : start(0), row_start_at(0), row_index(0) {}
  LoadJob(dim_t s, dim_t r, edge_t row_ix)
      : start(s), row_start_at(r), row_index(row_ix) {}

  LoadJob advance_for_first_pass() {
    return LoadJob(this->start + CHUNK_SIZE, this->row_start_at, this->row_index);
  }

  LoadJob reset_for_second_pass(dim_t new_row_start_at) {
    return LoadJob(this->row_start_at, new_row_start_at, this->row_index + 1);
  }

  dim_t start;        // index of the first element to load
  dim_t row_start_at; // index of the first element of the row (to rewind it back)
  edge_t row_index;   // index of the row in the tensor (used to invalidate the chunk to
                      // flush after the first pass)
};

class ComputeJob {
public:
  ComputeJob() : load_job(), chunk() {}
  ComputeJob(LoadJob l, chunk_t c) : load_job(l), chunk(c) {}

  LoadJob load_job; // job that was used to load the chunk
  chunk_t chunk;    // chunk of data to compute
};

class StoreJob {
public:
  StoreJob() : chunk(), is_valid(0) {}
  StoreJob(chunk_t chunk) : chunk(chunk), is_valid(1) {}

  chunk_t chunk;       // chunk of data to write
  ap_uint<1> is_valid; // bit indicating if the job is valid
};

void chunk_load(complex_t *A, std::size_t size, hls::stream<LoadJob> &load_jobs,
                hls::stream<ComputeJob> &compute_jobs);

void chunk_compute(hls::stream<ComputeJob> &compute_jobs,
                   hls::stream<StoreJob> &store_jobs, hls::stream<LoadJob> &load_jobs);

void chunk_store(hls::stream<StoreJob> &store_jobs, complex_t *C,
                 ap_uint<1> &stop_signal);

} // namespace Left
} // namespace Product
} // namespace Tensor
