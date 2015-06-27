OCAMLMAKEFILE := ../../make/OCamlMakefile


RESULT = test

SOURCES = test.ml


export OCAMLPATH := ../..:$(OCAMLPATH)
PACKS = core core_kernel piqirun.pb
export THREADS=yes


all: bc
	./test



include $(OCAMLMAKEFILE)
