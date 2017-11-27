#@IgnoreInspection BashAddShebang
# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function before_install {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    #:
    echo "pre-build steps"
    if [ -n "$IS_OSX" ]; then
        brew install libev
    fi
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    #python --version
    #python -c 'import sys; import yourpackage; sys.exit(yourpackage.test())'
    echo "running tests"
}