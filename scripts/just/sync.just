alias ug := up-git
alias ur := up-rsync
alias ua := up-artifacts
alias dl := down-logs
alias db := down-build
alias dc := down-csv

NECST_USER := env('NECST_USER')
NAGS_HOST := NECST_USER + "@nags21.local.necst.it"
NAGS_REMOTE_PATH := env('NAGS_WORKDIR_REMOTE_PATH')
LYNX_HOST := NECST_USER + "@lynx.local.necst.it"
LYNX_DEPLOY_PATH := env('LYNX_DEPLOY_PATH')

HACC_USER := env('HACC_USER')
HACC_HOST := HACC_USER + "@hacc-build-01"
HACC_REMOTE_PATH := env('HACC_WORKDIR_REMOTE_PATH')

GIT_BRANCH := "left-right-tp"
ROOT_DIR := "../.."
# Change the following to change build host
HOST := NAGS_HOST
DEPLOY_HOST := LYNX_HOST
REMOTE_PATH := NAGS_REMOTE_PATH
DEPLOY_PATH := LYNX_DEPLOY_PATH

[private]
_default:
    @just --choose

update-filelists:
    fd -tf '' ../../src/ > ./sync-filelists/up-rsync.txt
    fd -tf '' ../../scripts/vitis/ >> ./sync-filelists/up-rsync.txt

up-git:
    #!/usr/bin/env bash
    ssh {{HOST}} << 'ENDSSH'
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
    ssh {{HOST}} << 'ENDSSH'
    set -euxo pipefail
    # change directory to project
    cd {{REMOTE_PATH}}
    # remove all files
    rm -rf *
    ENDSSH

up-rsync:
    rsync -avzc --progress --files-from ./sync-filelists/up-rsync.txt {{ROOT_DIR}} {{HOST}}:{{REMOTE_PATH}}/

up-artifacts:
    #!/usr/bin/env bash
    rsync -avz --delete {{ROOT_DIR}}/build/artifacts/ --progress {{DEPLOY_HOST}}:{{DEPLOY_PATH}}/

down-logs:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/logs
    ssh {{HOST}} /bin/bash << 'ENDSSH'
    set -euxo pipefail
    cd {{REMOTE_PATH}}
    find ./build/vitis | grep -i "summary" | cut -d / -f 4- | awk -F/ '{print; while(/\//) {sub("/[^/]*$", ""); print}}' | sort | uniq > tmp_list.txt
    find ./build/vitis | grep -i "log" | cut -d / -f 4- | awk -F/ '{print; while(/\//) {sub("/[^/]*$", ""); print}}' | sort | uniq >> tmp_list.txt
    cat tmp_list.txt | sort | uniq > logs_list.txt
    ENDSSH

    rsync -avz --progress {{HOST}}:{{REMOTE_PATH}}/logs_list.txt {{ROOT_DIR}}/scripts/just/sync-filelists/
    rsync -avz --include-from={{ROOT_DIR}}/scripts/just/sync-filelists/logs_list.txt --exclude='*' {{HOST}}:{{REMOTE_PATH}}/build/vitis/* {{ROOT_DIR}}/logs

down-build:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/build/vitis
    rsync -arvz --progress --filter='merge ./sync-filelists/filter-build.txt' {{HOST}}:{{REMOTE_PATH}}/build/vitis/ {{ROOT_DIR}}/build/vitis/

down-csv:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/results
    rsync -avz --progress {{DEPLOY_HOST}}:{{DEPLOY_PATH}}/*.csv {{ROOT_DIR}}/results/
