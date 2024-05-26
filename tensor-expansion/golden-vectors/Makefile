# Compiler
CXX = clang++

# Compiler flags
CXXFLAGS = -std=c++14 -Wall -Wextra -pedantic

# Target executable
TARGET = test_golden_reader

# Source files
SRCS = golden_reader.cpp test_golden_reader.cpp

# Header files
HDRS = golden_reader.h

# Object files (derived from source files)
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Linking the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Compiling source files into object files
%.o: %.cpp $(HDRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
