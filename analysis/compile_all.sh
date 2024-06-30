#!/bin/bash

for file in *.qasm; do
    ./qcs-compile $file ${file%.qasm}
done
