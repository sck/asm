#! /bin/sh

. ./local.sh

$NASM -f macho64 loop.s
$CC -o l l.c loop.o
