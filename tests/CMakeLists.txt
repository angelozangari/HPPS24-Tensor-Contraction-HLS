# test tensor expansion
add_executable(test-tensor-expansion tests/test_golden_reader.cpp tests/golden_reader.cpp)
target_include_directories(test-tensor-expansion PUBLIC include)
target_link_libraries(test-tensor-expansion PRIVATE qcslib)
