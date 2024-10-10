alias rb := report-build
alias rc := report-clean

report-build:
    #!/usr/bin/env bash
    cd report
    make

report-clean:
    #!/usr/bin/env bash
    cd report
    make clean
