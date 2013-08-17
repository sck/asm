#! /bin/sh

. ./local.sh

$NASM -f macho64 hello.s
gcc -o m m.c hello.o
