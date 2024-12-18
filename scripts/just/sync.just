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
    rsync -avzc --progress --files-from ./sync-filelists/up-rsync.txt {{ROOT_DIR}} {{NAGS-VM}}:{{REMOTE_PATH}}/

up-artifacts:
    #!/usr/bin/env bash
    rsync -avz --delete {{ROOT_DIR}}/build/artifacts/ --progress {{LYNX-VM}}:{{LYNX_DEPLOY}}/

down-logs:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/logs
    ssh {{NAGS-VM}} /bin/bash << 'ENDSSH'
    set -euxo pipefail
    cd {{REMOTE_PATH}}
    find ./build/vitis | grep -i "summary" | cut -d / -f 4- | awk -F/ '{print; while(/\//) {sub("/[^/]*$", ""); print}}' | sort | uniq > tmp_list.txt
    find ./build/vitis | grep -i "log" | cut -d / -f 4- | awk -F/ '{print; while(/\//) {sub("/[^/]*$", ""); print}}' | sort | uniq >> tmp_list.txt
    cat tmp_list.txt | sort | uniq > logs_list.txt
    ENDSSH

    rsync -avz --progress {{NAGS-VM}}:{{REMOTE_PATH}}/logs_list.txt {{ROOT_DIR}}/scripts/just/sync-filelists/
    rsync -avz --include-from={{ROOT_DIR}}/scripts/just/sync-filelists/logs_list.txt --exclude='*' {{NAGS-VM}}:{{REMOTE_PATH}}/build/vitis/* {{ROOT_DIR}}/logs

down-build:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/build/vitis
    rsync -arvz --progress --filter='merge ./sync-filelists/filter-build.txt' {{NAGS-VM}}:{{REMOTE_PATH}}/build/vitis/ {{ROOT_DIR}}/build/vitis/

down-csv:
    #!/usr/bin/env bash
    mkdir -p {{ROOT_DIR}}/results
    rsync -avz --progress {{LYNX-VM}}:{{LYNX_DEPLOY}}/*.csv {{ROOT_DIR}}/results/
