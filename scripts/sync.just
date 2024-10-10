alias ug := up-git
alias ur := up-rsync
alias ua := up-artifacts
alias dl := down-logs
alias db := down-build
alias dc := down-csv

git_branch := "chunked-te"
remote_path := env('HLS_WORKDIR_REMOTE_PATH')
nags-vm := env('HLS_NAGS21_HOST')
lynx-vm := env('HLS_LYNX_HOST')
lynx_deploy := env('HLS_LYNX_DEPLOY_DIR')

[private]
_default:
    @just --choose

up-git:
    #!/usr/bin/env bash
    ssh {{nags-vm}} /bin/bash << 'ENDSSH'
    bash
    # change directory to project
    cd {{remote_path}}
    # update source files
    git fetch
    git switch {{git_branch}}
    git pull
    ENDSSH

up-rsync:
    #!/usr/bin/env bash
    rsync -avz --progress --exclude='.git' --exclude='build' ../src {{nags-vm}}:{{remote_path}}/
    rsync -avz --progress --exclude='.git' --exclude='build' ../vitis/host {{nags-vm}}:{{remote_path}}/vitis/
    rsync -avz --progress --exclude='.git' --exclude='build' ../vitis/golden-vectors.dat {{nags-vm}}:{{remote_path}}/vitis/
    rsync -avz --progress --exclude='.git' --exclude='build' ../vitis/makefile_us_alveo.mk {{nags-vm}}:{{remote_path}}/vitis/

up-artifacts:
    #!/usr/bin/env bash
    rsync -avz ../build/artifacts/ --progress {{lynx-vm}}:{{lynx_deploy}}/

down-logs:
    #!/usr/bin/env bash
    mkdir -p ../logs
    rsync -avz --progress {{nags-vm}}:{{remote_path}}/vitis/*.log ../logs/ 

down-build:
    #!/usr/bin/env bash
    mkdir -p ../build
    rsync -avz --progress {{nags-vm}}:{{remote_path}}/vitis/build_dir* ../build/
    rsync -avz --progress {{nags-vm}}:{{remote_path}}/vitis/qcs_test_xrt ../build/
    rsync -avz --progress {{nags-vm}}:{{remote_path}}/vitis/*.qcf ../build/
    rsync -avz --progress {{nags-vm}}:{{remote_path}}/vitis/*.dat ../build/

down-csv:
    #!/usr/bin/env bash
    mkdir -p ../results
    rsync -avz --progress {{lynx-vm}}:{{lynx_deploy}}/*.csv ../results/
