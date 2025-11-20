#!/bin/bash

qemu-system-riscv32 \
    -machine virt \
    -nographic \
    -bios none \
    -kernel context_switcher.elf \
    -S -gdb tcp::1234