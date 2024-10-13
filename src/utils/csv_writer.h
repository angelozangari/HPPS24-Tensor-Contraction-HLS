#pragma once

#include <fstream>
// #include <iostream>
#include <chrono>
#include <string>
#include <vector>

class CsvWriter {
public:
  CsvWriter(const std::string &filename, bool append = false);

  ~CsvWriter();

  void write(const std::vector<std::string> &row);
  bool already_written_header = false;

private:
  std::string filename;
  std::ofstream file;
};

struct TeExecution {
  std::chrono::nanoseconds kernel_time;
  std::chrono::nanoseconds transfer_time;
  size_t left_nz_size;
  size_t right_nz_size;
  size_t left_rank;
  size_t right_rank;
};

struct MmExecution {
  std::chrono::nanoseconds kernel_time;
  std::chrono::nanoseconds transfer_time;
  size_t left_nz_size;
  size_t right_nz_size;
  size_t rank;
};

struct E2eExecution {
  std::string qcf_test_filename;
  std::chrono::nanoseconds cpu_time;
  std::chrono::nanoseconds te_time;
  std::chrono::nanoseconds mm_time;
  std::chrono::nanoseconds transfer_time;
  std::chrono::nanoseconds e2e_time;
  std::vector<TeExecution> te_executions;
  std::vector<MmExecution> mm_executions;
};

class StatsRecorder {
public:
  StatsRecorder() = default;
  void record(std::string qcf_test_filename, std::chrono::nanoseconds cpu_time,
              std::chrono::nanoseconds e2e_time, std::vector<TeExecution> te_executions,
              std::vector<MmExecution> mm_executions);
  void write();

private:
  std::vector<E2eExecution> executions;
};
