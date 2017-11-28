# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
    echo "pre-build steps"
    if [ -n "$IS_OSX" ]; then
        echo "osx stuff"
    else
        # Install a system package required by our library
        yum list installed
    fi
    wget http://dist.schmorp.de/libev/Attic/libev-4.24.tar.gz
    tar -xzf libev-4.24.tar.gz
    cd libev-4.24/
    ./configure
    make
    make install
    if [ -n "$IS_OSX" ]; then
        echo "osx stuff"
    else
        # Install a system package required by our library
        yum list installed
    fi
    cd ..
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    #python --version
    #python -c 'import sys; import yourpackage; sys.exit(yourpackage.test())'
    echo "running tests"
}