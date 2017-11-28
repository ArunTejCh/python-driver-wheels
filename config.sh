# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
    echo "pre-build steps"
    if [ -n "$IS_OSX" ]; then
        echo "osx stuff"
        brew update
        brew install libev
    else
        # Install a system package required by our library
        echo "yoyo"
    fi
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    #python --version
    #python -c 'import sys; import yourpackage; sys.exit(yourpackage.test())'
    echo "running tests"
}