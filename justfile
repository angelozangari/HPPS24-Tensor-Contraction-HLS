mod vitis 'scripts/just/vitis.just'
mod sync 'scripts/just/sync.just'
mod report 'scripts/just/report.just'

set dotenv-load

alias b := build-ninja
alias c := clean


[private]
_default:
    @just --choose

pack-artifacts:
    #!/usr/bin/env bash
    mkdir -p build/artifacts
    cp build/build_dir.hw.xilinx_u55c_gen3x16_xdma_3_202210_1/krnl_qcs.xclbin build/artifacts/krnl_qcs.xclbin
    cp *.dat build/artifacts/
    cp build/qcs_test_xrt build/artifacts/qcs_test_xrt

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

debug-tensor-expansion: build-ninja
    #!/usr/bin/env bash
    set -euo pipefail
    cd src/tests/tensor-expansion
    gdb ../../../build/test-tensor-expansion

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
