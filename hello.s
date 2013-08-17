; hello.asm - a "hello, world" program using NASM

BITS 64
section .text

global myasm

myasm:
  MOV RAX, 0x1234567890123456
  MOV EAX, 0x12345678
  ; RAX -> 0000000012345678
  MOV AX, 0x1234
  ; RAX -> 0000000012341234
  MOV AL, 0x12
  ; RAX -> 0000000012341212

  mov rax, rdi
  mov dil, al
  mov edi, eax
  RET
