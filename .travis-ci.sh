#!/bin/bash

set -ex


# optional dependencies for running tests
sudo apt-get install protobuf


# build, run tests, build package, install package
wget https://raw.githubusercontent.com/ocaml/ocaml-ci-scripts/master/.travis-opam.sh


. .travis-opam.sh
