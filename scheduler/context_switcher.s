    .section .text
    .globl _start

KERNEL_MEM = 0x80001000 # all mem with this address or higher is kernel memory: 0x80001000 through 0x88000000

_start:
init: # set registers to recognizable values, this will be kernel 'state' 
    li a1, 1
    li a2, -2
    li a3, 3
    li a4, -4
    li a5, 5
    li t1, 0xf0000000
    li t2, 0x0fffffff

breakpoint1:
    nop

save_context:
    la s11, KERNEL_MEM # now save the kernels state
    sw ra,  0(s11)
    sw sp,  4(s11)
    sw a0,  8(s11)
    sw a1,  12(s11)
    sw a2,  16(s11)
    sw a3,  20(s11)
    sw a4,  24(s11)
    sw a5,  28(s11)
    sw a6,  32(s11)
    sw a7,  36(s11)
    sw t0,  40(s11)
    sw t1,  44(s11)
    sw t2,  48(s11)
    sw t3,  52(s11)
    sw t4,  56(s11)
    sw t5,  60(s11)
    sw t6,  64(s11)

    j new_context # exec

new_context: # new program will load other recognizable values into our registers
    li a0,  1
    li a1,  2
    li a2,  3
    li a3,  4
    li a4,  5
    li a5,  6
    li a6,  7
    li a7,  8
    li t0,  10
    li t1,  11
    li t2,  12
    li t3,  13
    li t4,  14
    li t5,  15
    li t6,  16

breakpoint2:
    nop

j restore_context # return / exit

restore_context:
    la s11, KERNEL_MEM # now save the kernels state
    lw ra,  0(s11)
    lw sp,  4(s11)
    lw a0,  8(s11)
    lw a1,  12(s11)
    lw a2,  16(s11)
    lw a3,  20(s11)
    lw a4,  24(s11)
    lw a5,  28(s11)
    lw a6,  32(s11)
    lw a7,  36(s11)
    lw t0,  40(s11)
    lw t1,  44(s11)
    lw t2,  48(s11)
    lw t3,  52(s11)
    lw t4,  56(s11)
    lw t5,  60(s11)
    lw t6,  64(s11)

breakpoint3:
    j end

end:
    j end
