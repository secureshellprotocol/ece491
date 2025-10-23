#!/bin/bash
set -xue
QEMU=qemu-system-riscv64
$QEMU -machine virt -bios default -nographic -serial mon:stdio --no-reboot \
    -kernel kernel.elf

