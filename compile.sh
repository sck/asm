#! /bin/sh

. ./local.sh

$NASM $NASM_FLAGS -f $FORMAT hello.s
$CC -o m m.c hello.o
