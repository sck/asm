; hello.asm - a "hello, world" program using NASM

BITS 64
section .text

global loop_add_imm8
loop_add_imm8:
; [ x86_64 Intel(R) Atom(TM) CPU 330 @ 1.60GHz GenuineIntel GNU/Linux ]
;
;       2537.126989 task-clock                #    1.000 CPUs utilized
;                 4 context-switches          #    0.002 K/sec
;                 1 cpu-migrations            #    0.000 K/sec
;               121 page-faults               #    0.048 K/sec
;        4049163940 cycles                    #    1.596 GHz
;   <not supported> stalled-cycles-frontend
;   <not supported> stalled-cycles-backend
;        3001224482 instructions              #    0.74  insns per cycle
;        1000222104 branches                  #  394.234 M/sec
;             32271 branch-misses             #    0.00% of all branches
;
;       2.537970941 seconds time elapsed
;
;
; [ x86_64 Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz GenuineIntel GNU/Linux ]
;
;        499.670092 task-clock                #    0.998 CPUs utilized
;                 1 context-switches          #    0.002 K/sec
;                 0 cpu-migrations            #    0.000 K/sec
;               123 page-faults               #    0.246 K/sec
;     1,001,276,619 cycles                    #    2.004 GHz
;           970,442 stalled-cycles-frontend   #    0.10% frontend cycles idle
;           837,862 stalled-cycles-backend    #    0.08% backend  cycles idle
;     3,000,556,377 instructions              #    3.00  insns per cycle
;                                             #    0.00  stalled cycles per insn
;     1,000,110,055 branches                  # 2001.541 M/sec
;             4,271 branch-misses             #    0.00% of all branches
;
;       0.500850556 seconds time elapsed
;
; [ x86_64 2.3 GHz Intel Core i7 Mac OS X ]
; 
; 0.33s user 0.00s system 96% cpu 0.337 total
;
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

global loop_dec_to_zero
loop_dec_to_zero:
;  [ x86_64 Intel(R) Atom(TM) CPU 330 @ 1.60GHz GenuineIntel GNU/Linux ]
; 
;        1260.060729 task-clock                #    0.999 CPUs utilized
;                  6 context-switches          #    0.005 K/sec
;                  3 cpu-migrations            #    0.002 K/sec
;                120 page-faults               #    0.095 K/sec
;         2010973581 cycles                    #    1.596 GHz
;    <not supported> stalled-cycles-frontend
;    <not supported> stalled-cycles-backend
;         2000871150 instructions              #    0.99  insns per cycle
;         1000160986 branches                  #  793.740 M/sec
;              22194 branch-misses             #    0.00% of all branches
; 
;        1.260936488 seconds time elapsed
; 
;  [ x86_64 Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz GenuineIntel GNU/Linux ]
; 
;         500.247197 task-clock                #    0.998 CPUs utilized
;                  2 context-switches          #    0.004 K/sec
;                  0 cpu-migrations            #    0.000 K/sec
;                123 page-faults               #    0.246 K/sec
;      1,002,433,203 cycles                    #    2.004 GHz
;        502,123,382 stalled-cycles-frontend   #   50.09% frontend cycles idle
;          1,984,710 stalled-cycles-backend    #    0.20% backend  cycles idle
;      2,000,565,544 instructions              #    2.00  insns per cycle
;                                              #    0.25  stalled cycles per insn
;      1,000,112,091 branches                  # 1999.236 M/sec
;              4,120 branch-misses             #    0.00% of all branches
; 
;        0.501445446 seconds time elapsed
;
; [ x86_64 2.3 GHz Intel Core i7 Mac OS X ]
; 
; 0.33s user 0.00s system 99% cpu 0.328 total
;
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


global loop_inc
loop_inc:
;  [ x86_64 Intel(R) Atom(TM) CPU 330 @ 1.60GHz GenuineIntel GNU/Linux ]
; 
;        2161.567993 task-clock                #    1.000 CPUs utilized
;                  4 context-switches          #    0.002 K/sec
;                  2 cpu-migrations            #    0.001 K/sec
;                121 page-faults               #    0.056 K/sec
;         3449792828 cycles                    #    1.596 GHz
;    <not supported> stalled-cycles-frontend
;    <not supported> stalled-cycles-backend
;         3443536316 instructions              #    1.00  insns per cycle
;         1147683100 branches                  #  530.949 M/sec
;              17541 branch-misses             #    0.00% of all branches
; 
;        2.162363670 seconds time elapsed
; 
;  [ x86_64 Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz GenuineIntel GNU/Linux ]
; 
;         573.201018 task-clock                #    0.998 CPUs utilized
;                  2 context-switches          #    0.003 K/sec
;                  0 cpu-migrations            #    0.000 K/sec
;                123 page-faults               #    0.215 K/sec
;      1,148,611,401 cycles                    #    2.004 GHz
;            810,804 stalled-cycles-frontend   #    0.07% frontend cycles idle
;            673,455 stalled-cycles-backend    #    0.06% backend  cycles idle
;      3,443,035,419 instructions              #    3.00  insns per cycle
;                                              #    0.00  stalled cycles per insn
;      1,147,598,634 branches                  # 2002.088 M/sec
;              3,781 branch-misses             #    0.00% of all branches
; 
;        0.574517649 seconds time elapsed
;
; [ x86_64 2.3 GHz Intel Core i7 Mac OS X ]
; 
; 0.37s user 0.00s system 99% cpu 0.369 total
; 
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

