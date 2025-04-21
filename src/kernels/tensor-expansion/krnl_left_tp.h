#pragma once

#include "ap_int.h"
#include "hls_stream.h"
#include "hls_task.h"
#include "kernels/types.h"
#include <array>
#include <cstdint>

extern "C" {
/**
 * @brief Compute the tensor product of a tensor A and an Identity gate (of rank 1).
 * @details This operation increases the rank of the tensor by 1, adding a new dimension
 * by expanding the tensor from below (in a quantum circuit view).
 * @param A pointer to the tensor in DDR
 * @param C pointer to the output tensor in DDR
 * @param A_R rank of the tensor A
 * @param size size of the tensor A (number of elements)
 */
void krnl_left_tp(Tensor::complex_t *A, Tensor::complex_t *C, rank_t A_R, dim_t size);
}

namespace Tensor {
namespace Product {
namespace Left {

// constexpr uint16_t CACHE_SIZE = 8;
constexpr uint16_t CHUNK_SIZE = 8;
constexpr uint16_t STREAM_SIZE = 64;

/**
 * @brief Structure representing a value in the chunk, with validity flag.
 */
struct value_t {
  complex_t value;  ///< Value of the tensor.
  ap_uint<1> valid; ///< Bit used to signal if the value can be used in the following
                    ///< block or must be discarded.

  /**
   * @brief Construct a valid value_t from a complex_t value.
   * @param v The complex value.
   */
  value_t(complex_t v) : value(v), valid(1) {}
  /**
   * @brief Construct an invalid value_t.
   */
  value_t() : valid(0) {}
};

/**
 * @brief Alias for a chunk of values.
 */
typedef std::array<value_t, CHUNK_SIZE> chunk_t;

/**
 * @brief Class representing a job for loading a chunk of data.
 */
class LoadJob {
public:
  /**
   * @brief Default constructor.
   */
  LoadJob() : start(0), row_start_at(0), row_index(0), is_first(1) {}
  /**
   * @brief Parameterized constructor.
   * @param s Start index.
   * @param r Row start index.
   * @param row_ix Row index.
   */
  LoadJob(dim_t s, dim_t r, edge_t row_ix)
      : start(s), row_start_at(r), row_index(row_ix), is_first(0) {}

  /**
   * @brief Advance the job for the first pass.
   * @return Advanced LoadJob.
   */
  LoadJob advance_for_first_pass() {
    return LoadJob(this->start + CHUNK_SIZE, this->row_start_at, this->row_index);
  }

  /**
   * @brief Reset the job for the second pass.
   * @param new_row_start_at New row start index.
   * @return Reset LoadJob.
   */
  LoadJob reset_for_second_pass(dim_t new_row_start_at) {
    return LoadJob(this->row_start_at, new_row_start_at, this->row_index + 1);
  }

  dim_t start;        ///< Index of the first element to load.
  dim_t row_start_at; ///< Index of the first element of the row (to rewind it back).
  edge_t row_index;   ///< Index of the row in the tensor (used to invalidate the chunk to
                      ///< flush after the first pass).
  ap_uint<1> is_first; ///< Bit indicating if this is the first LoadJob (used to start the
                       ///< computation).
};

/**
 * @brief Class representing a job for computing a chunk of data.
 */
class ComputeJob {
public:
  /**
   * @brief Default constructor.
   */
  ComputeJob() : load_job(), chunk() {}
  /**
   * @brief Parameterized constructor.
   * @param l LoadJob used for this chunk.
   * @param c Chunk of data.
   */
  ComputeJob(LoadJob l, chunk_t c) : load_job(l), chunk(c) {}

  LoadJob load_job; ///< Job that was used to load the chunk.
  chunk_t chunk;    ///< Chunk of data to compute.
};

/**
 * @brief Class representing a job for storing a chunk of data.
 */
class StoreJob {
public:
  /**
   * @brief Default constructor.
   */
  StoreJob() : chunk(), is_valid(0) {}
  /**
   * @brief Parameterized constructor.
   * @param chunk Chunk of data to store.
   */
  StoreJob(chunk_t chunk) : chunk(chunk), is_valid(1) {}

  chunk_t chunk;       ///< Chunk of data to write.
  ap_uint<1> is_valid; ///< Bit indicating if the job is valid.
};

/**
 * @brief Loads a chunk of data from the input tensor.
 *
 * @param A Pointer to input tensor.
 * @param size Size of the tensor.
 * @param load_jobs Stream of load jobs.
 * @param compute_jobs Stream to send compute jobs.
 * @param last_load_job Pointer to the last load job.
 */
void chunk_load(complex_t *A, std::size_t size, hls::stream<LoadJob> &load_jobs,
                hls::stream<ComputeJob> &compute_jobs, LoadJob &last_load_job);

/**
 * @brief Computes the tensor product for a chunk of data.
 *
 * @param compute_jobs Stream of compute jobs.
 * @param store_jobs Stream to send store jobs.
 * @param load_jobs Stream to send load jobs.
 * @param compute_is_in_first_pass Reference to flag for first/second pass.
 * @param computing_row_ix Reference to current row index being computed.
 */
void chunk_compute(hls::stream<ComputeJob> &compute_jobs,
                   hls::stream<StoreJob> &store_jobs, hls::stream<LoadJob> &load_jobs,
                   ap_uint<1> &compute_is_in_first_pass, edge_t &computing_row_ix);

/**
 * @brief Stores a chunk of computed data to the output tensor.
 *
 * @param store_jobs Stream of store jobs.
 * @param C Pointer to output tensor.
 * @param stop_signal_stream Stream to signal stopping.
 * @param writing_ix Reference to current write index.
 */
void chunk_store(hls::stream<StoreJob> &store_jobs, complex_t *C, dim_t &writing_ix);

} // namespace Left
} // namespace Product
} // namespace Tensor
