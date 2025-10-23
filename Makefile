CC=toolchain_gcc_t-head_linux/bin/riscv64-unknown-elf-gcc
FLAGS=-march=rv32i -mabi=ilp32 -std=c11 -O2 -g3 \
	  -Wall -Wextra \
	  -fno-stack-protector \
	  -ffreestanding \
	  -nostdlib 

kernel.elf: kernel.c
	$(CC) $(FLAGS) -Wl,-Tkernel.ld -Wl,-Map=kernel.map -o kernel.elf kernel.c
