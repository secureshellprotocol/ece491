    .section .text
    .globl _start

_start:
    li t0, 5        # t0 = 5
    li t1, 7        # t1 = 7
    add t2, t0, t1  # t2 = 12

loop:
    j loop          # infinite loop
