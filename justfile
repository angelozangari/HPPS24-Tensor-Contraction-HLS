alias b := build-ninja
alias c := clean

build-make:
    cmake -S . -B build
    cmake --build build

build-ninja:
    cmake -S . -B build -G Ninja
    cmake --build build

test-tensor-expansion: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd tests
    ../build/test-tensor-expansion

clean:
    rm -rf ./build
