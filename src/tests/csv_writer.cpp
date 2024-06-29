#include "csv_writer.h"
#include <iostream>

using namespace std;
using namespace std::chrono;

CsvWriter::CsvWriter(const string &filename, bool append) : filename(filename) {
  if (append) {
    {
      ifstream reader(filename);

      //   check if file has first row by checking if it is empty
      reader.seekg(0, ios::end);
      if (reader.tellg() == 0) {
        already_written_header = false;
      } else {
        already_written_header = true;
      }
    }

    file.open(filename, ios::app);
  } else {
    file.open(filename, ios::out);
  }
}

CsvWriter::~CsvWriter() { file.close(); }

void CsvWriter::write(const vector<string> &row) {
  for (size_t i = 0; i < row.size(); i++) {
    file << row[i];
    if (i < row.size() - 1) {
      file << ",";
    }
  }
  file << endl;
}

void StatsRecorder::record(string qcf_test_filename, nanoseconds cpu_time,
                           nanoseconds e2e_time, vector<TeExecution> te_executions,
                           vector<MmExecution> mm_executions) {
  E2eExecution execution;
  execution.qcf_test_filename = qcf_test_filename;
  execution.cpu_time = cpu_time;
  execution.e2e_time = e2e_time;
  execution.te_executions = te_executions;
  execution.mm_executions = mm_executions;

  execution.transfer_time = nanoseconds(0);
  // sum all te times
  execution.te_time = nanoseconds(0);
  for (auto &te : te_executions) {
    execution.te_time += te.kernel_time + te.transfer_time;
    execution.transfer_time += te.transfer_time;
  }

  // sum all mm times
  execution.mm_time = nanoseconds(0);
  for (auto &mm : mm_executions) {
    execution.mm_time += mm.kernel_time + mm.transfer_time;
    execution.transfer_time += mm.transfer_time;
  }

  executions.push_back(execution);
}

void StatsRecorder::write() {
  // write e2e stats
  CsvWriter writer("e2e_stats.csv", true);
  if (!writer.already_written_header) {
    writer.write({"qcf_test_filename", "cpu_time", "te_time", "mm_time", "transfer_time",
                  "e2e_time"});
  }

  for (auto &execution : executions) {
    writer.write({execution.qcf_test_filename, to_string(execution.cpu_time.count()),
                  to_string(execution.te_time.count()),
                  to_string(execution.mm_time.count()),
                  to_string(execution.transfer_time.count()),
                  to_string(execution.e2e_time.count())});

    // for every e2e write te stats
    CsvWriter te_writer("te_stats_" + execution.qcf_test_filename + ".csv");
    te_writer.write({"kernel_time", "transfer_time", "left_nz_size", "right_nz_size",
                     "left_rank", "right_rank"});
    for (auto &te : execution.te_executions) {
      te_writer.write({to_string(te.kernel_time.count()),
                       to_string(te.transfer_time.count()), to_string(te.left_nz_size),
                       to_string(te.right_nz_size), to_string(te.left_rank),
                       to_string(te.right_rank)});
    }

    // for every e2e write mm stats
    CsvWriter mm_writer("mm_stats_" + execution.qcf_test_filename + ".csv");
    mm_writer.write(
        {"kernel_time", "transfer_time", "left_nz_size", "right_nz_size", "rank"});
    for (auto &mm : execution.mm_executions) {
      mm_writer.write({to_string(mm.kernel_time.count()),
                       to_string(mm.transfer_time.count()), to_string(mm.left_nz_size),
                       to_string(mm.right_nz_size), to_string(mm.rank)});
    }
  }
}
