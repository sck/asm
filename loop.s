; hello.asm - a "hello, world" program using NASM

BITS 64
section .text

global _loop_add_imm8

_loop_add_imm8:
  push rbp
  mov ebp, edi
  push rbx
  xor ebx, ebx
  sub rsp, 8
  test edi, edi
  je .end
.loop.start:
  add ebx,1 
  cmp ebx, ebp
  jne .loop.start
.end:
  add rsp, 8
  pop rbx 
  pop rbp
  ret

global _loop_dec_to_zero

_loop_dec_to_zero:
  push rbp
  mov  rsp, rbp
  push rbx
  push rax
  mov ebx, edi
  test ebx, ebx
  jle .end
.loop.start:
  dec ebx
  jne .loop.start
.end:
  add rsp, 8
  pop rbx 
  pop rbp
  ret

global _loop_inc

_loop_inc:
  push rbp
  push rbx
  push rax
  mov ebx, edi
  test ebx, ebx
  jle .end
.loop.start:
  inc ebx
  cmp edi, ebx
  jl .loop.start
.end:
  add rsp, 8
  pop rbx 
  pop rbp
  ret

