#!/bin/bash

riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 context_switcher.s -o context_switcher.o
riscv64-unknown-elf-ld -m elf32lriscv context_switcher.o -T linker.ld -o context_switcher.elf