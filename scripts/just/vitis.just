alias bho := build-host
alias bse := build-software-emulation
alias bhe := build-hardware-emulation
alias bha := build-hardware
alias rse := run-software-emulation
alias rhe := run-hardware-emulation
alias rha := run-hardware
alias tbse := tail-build-software-emulation
alias trse := tail-run-software-emulation
alias tbhe := tail-build-hardware-emulation
alias trhe := tail-run-hardware-emulation
alias tbha := tail-build-hardware

USER := env('HLS_USER')
REMOTE_PATH := env('HLS_WORKDIR_REMOTE_PATH')
VITIS_SETTINGS_PATH := env('HLS_VITIS_SETTINGS_PATH')
XRT_SETUP_PATH := env('HLS_XRT_SETUP_PATH')
NAGS-VM := USER + "@nags21.local.necst.it"
LYNX-VM := USER + "@lynx.local.necst.it"
LYNX_DEPLOY_DIR := env('HLS_LYNX_DEPLOY_DIR')

[private]
_default:
    @just -f {{source_file()}} --choose

cmd CMD MODE:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    # change directory to project
    cd {{REMOTE_PATH}}
    # create build directory and copy makefiles
    mkdir -p ./build/vitis/logs/
    cp ./scripts/vitis/* ./build/vitis/
    # source the correct settings files
    . {{VITIS_SETTINGS_PATH}}
    . {{XRT_SETUP_PATH}}
    # run CMD with MODE
    cd ./build/vitis
    make {{CMD}} TARGET={{MODE}} > ./logs/{{CMD}}_{{MODE}}.log 2>&1 &
    ENDSSH

tail-log CMD MODE:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    tail -f {{REMOTE_PATH}}/build/vitis/logs/{{CMD}}_{{MODE}}.log
    ENDSSH

# build host
build-host:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    # change directory to project
    cd {{REMOTE_PATH}}
    # source the correct settings files
    . {{VITIS_SETTINGS_PATH}}
    . {{XRT_SETUP_PATH}}
    cd ./build/vitis
    make host
    ENDSSH

# build software emulation
build-software-emulation:
    just -f {{source_file()}} cmd build sw_emu

# build hardware emulation
build-hardware-emulation:
    just -f {{source_file()}} cmd build hw_emu

# build hardware
build-hardware:
    just -f {{source_file()}} cmd build hw

# run software emulation
run-software-emulation:
    just -f {{source_file()}} cmd run sw_emu

# run hardware emulation
run-hardware-emulation:
    just -f {{source_file()}} cmd run hw_emu

# run hardware
run-hardware:
    #!/usr/bin/env bash
    ssh {{LYNX-VM}} /bin/bash << 'ENDSSH'
    cd {{LYNX_DEPLOY_DIR}}
    . {{XRT_SETUP_PATH}}
    for f in *.dat; do
        ./qcs_test_xrt krnl_qcs.xclbin $f
    done
    ENDSSH

# tail software emulation building log
tail-build-software-emulation:
    just -f {{source_file()}} tail-log build sw_emu

# tail software emulation running log
tail-run-software-emulation:
    just -f {{source_file()}} tail-log run sw_emu

# tail hardware emulation building log
tail-build-hardware-emulation:
    just -f {{source_file()}} tail-log build hw_emu

# tail hardware emulation running log
tail-run-hardware-emulation:
    just -f {{source_file()}} tail-log run hw_emu

# tail hardware building log
tail-build-hardware:
    just -f {{source_file()}} tail-log build hw

# kill all running processes on nags
nags-killall:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    pkill -u {{USER}}
    ENDSSH
    echo "Killed all cosim processes"

# kill all running processes on lynx
lynx-killall:
    #!/usr/bin/env bash
    ssh {{LYNX-VM}} /bin/bash << 'ENDSSH'
    pkill -u {{USER}}
    ENDSSH
    echo "Killed all lynx processes"
