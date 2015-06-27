include ../make/Makefile.dirs


PACKS+=core core_kernel
DIRS = \
       piqirun \
       addressbook \
       piqi \
       perf \
       packed \
       array \
       misc \
       misc1 \
       custom-types \
       piq-config \

ifneq ($(shell which protoc), )
DIRS += riak_pb
endif
