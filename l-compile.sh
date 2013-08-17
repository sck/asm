#! /bin/sh

. ./local.sh

$NASM -f macho64 loop.s
clang-3.3 -o l l.c loop.o
