#!/bin/bash

# Assemble for RV32 (not RV64)
riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 test.s -o test.o

# Link using 32-bit RISC-V emulation
riscv64-unknown-elf-ld -m elf32lriscv test.o -T linker.ld -o test.elf