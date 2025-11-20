#!/bin/bash

gdb-multiarch context_switcher.elf \
  -ex "set architecture riscv:rv32" \
  -ex "target remote :1234" \
  -ex "break breakpoint1" \
  -ex "break breakpoint2" \
  -ex "break breakpoint3" \
  -ex 'define hook-stop' \
  -ex 'echo \n================ CPU REGISTERS ================\n' \
  -ex 'info registers' \
  -ex 'echo =============================================\n' \
  -ex 'end' \
  -ex "continue"