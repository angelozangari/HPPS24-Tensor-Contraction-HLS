mod vitis

alias b := build-ninja
alias c := clean
alias rb := report-build
alias rc := report-clean

_default:
  just --choose

v ARGS="":
    just vitis {{ARGS}}

sync-artifacts:
    #!/usr/bin/env bash
    rsync -avz build/artifacts/ --progress lynx-vm:~/Playground/

pack-artifacts:
    #!/usr/bin/env bash
    mkdir -p build/artifacts
    cp build/build_dir.hw.xilinx_u55c_gen3x16_xdma_3_202210_1/krnl_qcs.xclbin build/artifacts/krnl_qcs.xclbin
    cp build/golden-vectors.dat build/artifacts/golden-vectors.dat
    cp build/qcs_test_xrt build/artifacts/qcs_test_xrt

# run-hw:
#     ssh lynx-vm /bin/bash << 'ENDSSH'
#     cd Playground
#     . {{vitis_settings_path}}
#     . {{xrt_setup_path}}
#     ./qcs_test_xrt krnl_qcs.xclbin golden-vectors.dat
#     ENDSSH

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

report-build:
    #!/usr/bin/env bash
    cd report
    make

report-clean:
    #!/usr/bin/env bash
    cd report
    make clean
