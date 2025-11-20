#!/bin/bash
gdb-multiarch test.elf \
    -ex "set architecture riscv:rv32" \
    -ex "target remote :1234"