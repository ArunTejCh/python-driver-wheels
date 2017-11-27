#@IgnoreInspection BashAddShebang
# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function before_install {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    #:
    echo "pre-build steps"
    if [ -n "$IS_OSX" ]; then
        echo "osx stuff"
        #brew update
        #brew install libev
    else
        # Install a system package required by our library
        echo "manylinux1 stuff"
        wget http://repository.it4i.cz/mirrors/repoforge/redhat/el5/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el5.rf.x86_64.rpm
        rpm -i rpmforge*
        yum install -y libev libev-devel
    fi
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    #python --version
    #python -c 'import sys; import yourpackage; sys.exit(yourpackage.test())'
    echo "running tests"
}