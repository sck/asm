; hello.asm - a "hello, world" program using NASM

BITS 64
section .text

global math
math:
  push rbp
  mov ebp, edi
  push rbx
  push rax

  call next_line
next_line:
  pop rax
  add rax, 8
  push rax
  ret

  mov rbx, 1
  mov r11, 2
  mov RCX, RAX
; 4D0FAFDC imul r11, r12: IMUL r16/32/64 r/m16/32/64 0F AF; ModRM DC: OP1: R12, OP2: R11
  imul r11, r12
; 4D01E3 add r11, r12: ADD r/m16/32/64 r16/32/64 01; ModRM E3: OP1: R11, OP2: R12
  add r11, r12
; 4D29E3:  SUB r/m16/32/64 r16/32/64 29    
  sub r11, r12

  imul r12, r11
  add r12, r11
  sub r12, r11

  add rsp, 8
  pop rbx 
  pop rbp
  ret

