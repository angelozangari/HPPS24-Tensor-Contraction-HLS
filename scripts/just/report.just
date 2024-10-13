alias b := build
alias c := clean

ROOT_DIR := "../.."

build:
    #!/usr/bin/env bash
    cd {{ROOT_DIR}}/report
    make

clean:
    #!/usr/bin/env bash
    cd {{ROOT_DIR}}/report
    make clean
