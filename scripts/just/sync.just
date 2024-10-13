alias ug := up-git
alias ur := up-rsync
alias ua := up-artifacts
alias dl := down-logs
alias db := down-build
alias dc := down-csv

ROOT_DIR := "../.."
USER := env('HLS_USER')
GIT_BRANCH := "chunked-te"
REMOTE_PATH := env('HLS_WORKDIR_REMOTE_PATH')
NAGS-VM := USER + "@nags21.local.necst.it"
LYNX-VM := USER + "@lynx.local.necst.it"
LYNX_DEPLOY := env('HLS_LYNX_DEPLOY_DIR')

[private]
_default:
    @just --choose

update-filelists:
    fd -tf -E 'tests/' '' ../../src/ > ./sync-filelists/up-rsync.txt
    fd -tf '' ../../scripts/vitis/ >> ./sync-filelists/up-rsync.txt

up-git:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    bash
    # change directory to project
    cd {{REMOTE_PATH}}
    # update source files
    git fetch
    git switch {{GIT_BRANCH}}
    git pull
    ENDSSH

[confirm]
purge-nags:
    #!/usr/bin/env bash
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    set -euxo pipefail
    # change directory to project
    cd {{REMOTE_PATH}}
    # remove all files
    rm -rf *
    ENDSSH

up-rsync:
    rsync -avz --progress --files-from ./sync-filelists/up-rsync.txt {{ROOT_DIR}} {{NAGS-VM}}:{{REMOTE_PATH}}/

up-artifacts:
    #!/usr/bin/env bash
    rsync -avz --delete {{ROOT_DIR}}/build/artifacts/ --progress {{LYNX-VM}}:{{LYNX_DEPLOY}}/

down-logs:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/logs
    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/vitis/*.log {{ROOT_DIR}}/logs/ 

down-build:
    #!/usr/bin/env bash
    mkdir -p ../build
    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/vitis/build_dir* {{ROOT_DIR}}/build/
    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/vitis/qcs_test_xrt {{ROOT_DIR}}/build/
    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/vitis/*.qcf {{ROOT_DIR}}/build/
    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/vitis/*.dat {{ROOT_DIR}}/build/

down-csv:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/results
    rsync -avz --progress {{LYNX-VM}}:{{LYNX_DEPLOY}}/*.csv {{ROOT_DIR}}/results/
