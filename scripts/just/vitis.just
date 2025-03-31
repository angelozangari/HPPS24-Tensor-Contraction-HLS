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

HACC_USER := env('HACC_USER')
HACC_HOST := HACC_USER + "@hacc-build-01"
HACC_BUILD_PATH := env('HACC_WORKDIR_REMOTE_PATH')
HACC_VITIS_SETTINGS_CMD := '/opt/hdev/cli/enable/vitis -v 2023.1'
HACC_XRT_SETTINGS_CMD := '/opt/hdev/cli/enable/xrt -v 2023.1'

NECST_USER := env('NECST_USER')
NAGS_HOST := NECST_USER + "@nags21.local.necst.it"
LYNX_HOST := NECST_USER + "@lynx.local.necst.it"
NAGS_BUILD_PATH := env('NAGS_WORKDIR_REMOTE_PATH')
LYNX_DEPLOY_PATH := env('LYNX_DEPLOY_PATH')
NAGS_VITIS_SETTINGS_PATH := '/home/xilinx/software/Vitis_HLS/2023.1/settings64.sh'
NAGS_XRT_SETUP_PATH := '/opt/xilinx/xrt/setup.sh'

# Change the following to change build host
BUILD_USER := NECST_USER
BUILD_HOST := NAGS_HOST
BUILD_PATH := NAGS_BUILD_PATH
DEPLOY_USER := NECST_USER
DEPLOY_HOST := LYNX_HOST
DEPLOY_PATH := LYNX_DEPLOY_PATH
VITIS_SETTINGS_CMD := NAGS_VITIS_SETTINGS_PATH
XRT_SETTINGS_CMD := NAGS_XRT_SETUP_PATH


[private]
_default:
    @just -f {{source_file()}} --choose

cmd CMD MODE:
    #!/usr/bin/env bash
    ssh {{BUILD_HOST}} /usr/bin/bash << 'ENDSSH'
    export TERM="xterm-256color"
    export CLI_PATH="/opt/hdev/cli"
    # change directory to project
    cd {{BUILD_PATH}}
    # create build directory and copy makefiles
    mkdir -p ./build/vitis/logs/
    cp ./scripts/vitis/* ./build/vitis/
    # source the correct settings files
    source {{VITIS_SETTINGS_CMD}}
    source {{XRT_SETTINGS_CMD}}
    # run CMD with MODE
    cd ./build/vitis
    make {{CMD}} TARGET={{MODE}} > ./logs/{{CMD}}_{{MODE}}.log 2>&1 &
    ENDSSH

tail-log CMD MODE:
    #!/usr/bin/env bash
    ssh {{BUILD_HOST}} /usr/bin/bash << 'ENDSSH'
    tail -f {{BUILD_PATH}}/build/vitis/logs/{{CMD}}_{{MODE}}.log
    ENDSSH

# build host
build-host:
    #!/usr/bin/env bash
    ssh {{BUILD_HOST}} /usr/bin/bash << 'ENDSSH'
    export TERM="xterm-256color"
    export CLI_PATH="/opt/hdev/cli"
    # change directory to project
    cd {{BUILD_PATH}}
    # create build directory and copy makefiles
    mkdir -p ./build/vitis/logs/
    cp ./scripts/vitis/* ./build/vitis/
    # source the correct settings files
    source {{VITIS_SETTINGS_CMD}}
    source {{XRT_SETTINGS_CMD}}
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
    ssh {{DEPLOY_HOST}} /bin/bash << 'ENDSSH'
    cd {{DEPLOY_PATH}}
    source {{XRT_SETTINGS_CMD}}
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
killall-build:
    #!/usr/bin/env bash
    ssh {{BUILD_HOST}} /bin/bash << 'ENDSSH'
    pkill -u {{BUILD_USER}}
    ENDSSH
    echo "Killed all cosim processes"

# kill all running processes on lynx
killall-deploy:
    #!/usr/bin/env bash
    ssh {{DEPLOY_HOST}} /bin/bash << 'ENDSSH'
    pkill -u {{DEPLOY_USER}}
    ENDSSH
    echo "Killed all lynx processes"
