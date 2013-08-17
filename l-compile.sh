#! /bin/sh

. ./local.sh

$NASM $NASM_FLAGS -f $FORMAT loop.s
$CC -o l l.c loop.o
