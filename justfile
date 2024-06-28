alias b := build-ninja
alias c := clean
alias rb := report-build
alias rcb := report-clear-build
alias rca := report-clear-all

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

test-combined: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd src/tests/combined
    ../../../build/test-combined

test-qft: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd src/tests/qft
    ../../../build/test-qft

clean:
    rm -rf ./build

report-build:
    #!/usr/bin/env bash
    cd report
    make

report-clear-build:
    #!/usr/bin/env bash
    cd report
    make remove-build

report-clear-all:
    #!/usr/bin/env bash
    cd report
    make remove-all