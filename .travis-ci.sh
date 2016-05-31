#!/bin/bash

set -ex


# optional dependencies for running tests
sudo apt-get install protobuf-compiler


# build, run tests, build package, install package
wget https://raw.githubusercontent.com/ocaml/ocaml-ci-scripts/master/.travis-opam.sh


# opam lint is way too demanding and varies from version to version
export OPAM_LINT=false

. .travis-opam.sh
