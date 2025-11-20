#!/bin/bash

qemu-system-riscv32 \
    -machine virt \
    -nographic \
    -bios none \
    -device loader,file=context_switcher.elf,addr=0x80000000 \
    -S -gdb tcp::1234