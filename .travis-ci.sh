#!/bin/bash

set -ex


# optional dependencies for running tests
sudo apt-get install protobuf-compiler


# build, run tests, build package, install package
wget https://raw.githubusercontent.com/ocaml/ocaml-travisci-skeleton/master/.travis-opam.sh

. .travis-opam.sh


# build and test using the current development version of piqilib
if [ -n "${PIQILIB_DEV-}" ]
then
    opam repo add piqi git://github.com/piqi/piqi-opam-repo.git

    opam install piqilib.master

    make distclean
    make
    make test
fi

