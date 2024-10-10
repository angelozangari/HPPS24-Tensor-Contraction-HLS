alias bs := build-software-emulation
alias bh := build-hardware-emulation
alias bw := build-hardware
alias rs := run-software-emulation
alias rh := run-hardware-emulation
alias rw := run-hardware
alias tbs := tail-build-software-emulation
alias trs := tail-run-software-emulation
alias tbh := tail-build-hardware-emulation
alias trh := tail-run-hardware-emulation
alias tbw := tail-build-hardware
alias trw := tail-run-hardware
alias sg := sync-git
alias sr := sync-rsync

git_branch := "chunked-te"
remote_path := "/home/users/federico.lolli/Desktop/hls"
vitis_settings_path := "/home/xilinx/software/Vitis/2023.1/settings64.sh"
xrt_setup_path := "/opt/xilinx/xrt/setup.sh"

_default:
    just rs trs

sync-git:
    #!/usr/bin/env bash
    ssh qcs-vm /bin/bash << 'ENDSSH'
    bash
    # change directory to project
    cd {{remote_path}}
    # update source files
    git fetch
    git switch {{git_branch}}
    git pull
    ENDSSH

sync-rsync:
    #!/usr/bin/env bash
    rsync -avz --progress --exclude='.git' --exclude='build' ../src qcs-vm:{{remote_path}}/
    rsync -avz --progress --exclude='.git' --exclude='build' ./host qcs-vm:{{remote_path}}/vitis/
    rsync -avz --progress --exclude='.git' --exclude='build' ./golden-vectors.dat qcs-vm:{{remote_path}}/vitis/
    rsync -avz --progress --exclude='.git' --exclude='build' ./makefile_us_alveo.mk qcs-vm:{{remote_path}}/vitis/

sync-logs:
    #!/usr/bin/env bash
    mkdir -p ../logs
    rsync -avz --progress qcs-vm:{{remote_path}}/vitis/*.log ../logs/ 

sync-build:
    #!/usr/bin/env bash
    mkdir -p ../build
    rsync -avz --progress qcs-vm:{{remote_path}}/vitis/build_dir* ../build/
    rsync -avz --progress qcs-vm:{{remote_path}}/vitis/qcs_test_xrt ../build/
    rsync -avz --progress qcs-vm:{{remote_path}}/vitis/*.qcf ../build/
    rsync -avz --progress qcs-vm:{{remote_path}}/vitis/*.dat ../build/

cmd CMD MODE:
    #!/usr/bin/env bash
    ssh qcs-vm /bin/bash << 'ENDSSH'
    # change directory to project
    cd {{remote_path}}
    # source the correct settings files
    . {{vitis_settings_path}}
    . {{xrt_setup_path}}
    # run CMD with MODE
    cd ./vitis
    make {{CMD}} TARGET={{MODE}} > ./{{CMD}}_{{MODE}}.log 2>&1 &
    ENDSSH

tail-log CMD MODE:
    #!/usr/bin/env bash
    ssh qcs-vm /bin/bash << 'ENDSSH'
    tail -f {{remote_path}}/vitis/{{CMD}}_{{MODE}}.log
    ENDSSH

# build software emulation
build-software-emulation:
    just cmd build sw_emu

# build hardware emulation
build-hardware-emulation:
    just cmd build hw_emu

# build hardware
build-hardware:
    just cmd build hw

# run software emulation
run-software-emulation:
    just cmd run sw_emu

# run hardware emulation
run-hardware-emulation:
    just cmd run hw_emu

# run hardware
run-hardware:
    just cmd run hw

# tail software emulation building log
tail-build-software-emulation:
    just tail-log build sw_emu

# tail software emulation running log
tail-run-software-emulation:
    just tail-log run sw_emu

# tail hardware emulation building log
tail-build-hardware-emulation:
    just tail-log build hw_emu

# tail hardware emulation running log
tail-run-hardware-emulation:
    just tail-log run hw_emu

# tail hardware building log
tail-build-hardware:
    just tail-log build hw

# tail hardware running log
tail-run-hardware:
    just tail-log run hw

# kill all running processes of cosim
kill-cosim:
    #!/usr/bin/env bash
    ssh qcs-vm /bin/bash << 'ENDSSH'
    pkill xsim
    ENDSSH
    echo "Killed all cosim processes"
