#! /bin/sh

. ./local.sh

$NASM $NASM_FLAGS -f $FORMAT math.s
$CC -o ma ma.c math.o
