#! /bin/sh

. ./local.sh

$NASM -f macho64 hello.s
$CC -o m m.c hello.o
