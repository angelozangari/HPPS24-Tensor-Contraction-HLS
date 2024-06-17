alias b := build-ninja
alias c := clean

_default:
  just --choose

build-make:
    cmake -S . -B build
    cmake --build build

build-ninja:
    cmake -S . -B build -G Ninja
    cmake --build build

test-tensor-expansion: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd src/tests/tensor-expansion
    ../../../build/test-tensor-expansion

test-matrix-multiplication: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd src/tests/matrix-multiplication
    ../../../build/test-matrix-multiplication

clean:
    rm -rf ./build
