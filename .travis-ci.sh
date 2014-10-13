#!/bin/sh

set -ex


# build dependencies
sudo add-apt-repository --yes ppa:avsm/ocaml42+opam11
sudo apt-get update -qq
sudo apt-get install -y ocaml camlp4-extra opam

# optional dependencies for running tests
sudo apt-get install protobuf-compiler


export OPAMYES=1
rm -rf ~/.opam

opam init
opam remote add piqi git://github.com/piqi/piqi-opam-repo.git
opam install piqilib


eval `opam config env`
make
make -C tests
