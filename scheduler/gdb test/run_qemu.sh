qemu-system-riscv32 \
    -machine virt \
    -nographic \
    -bios none \
    -kernel test.elf \
    -S -gdb tcp::1234