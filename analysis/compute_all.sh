#!/bin/bash

for file in *.qasm; do
    ./qcs-compute $file
done
