#!/bin/bash

set -ex

# build, run tests, build package, install package
wget https://raw.githubusercontent.com/ocaml/ocaml-ci-scripts/master/.travis-opam.sh


. .travis-opam.sh
