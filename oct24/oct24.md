[comment]: # (THEME = black)
[comment]: # (CODE_THEME = base16/zenburn)
# Oct 24 OSIS notes

james ryan, ant nosaryev, evan rosenfeld

fall 2025

[comment]: # (|||)

# Supervisor Binary Interface

Ox64 SDK includes [OpenSBI](https://github.com/riscv-software-src/opensbi) project.

This gives us an interface to do common tasks (print debug characters, reboot,
set timers)

[comment]: # (|||)

# Dilemma: DO we do everything ourselves?

We wanted to -- *slight* detour into arm

[comment]: # (|||)

# Bare metal programming guide

Thanks to Fred Kim for showing us this

[Bare Metal Programming Guide](https://github.com/cpq/bare-metal-programming-guide/tree/main)

[comment]: # (|||)

`This guide is written for developers who wish to start programming microcontrollers using a GCC compiler and a datasheet, without using any framework`

[comment]: # (|||)

[Example "kernel"](https://github.com/cpq/bare-metal-programming-guide/tree/main/steps/step-0-minimal)

[comment]: # (|||)

[Here's the entry linker script for our board](https://github.com/openbouffalo/OBLFR/blob/92bde04ef7487e4b4d333ae5a54b018a085fc0aa/bsp/common/bl808/bl808_flash_d0.ld)

[]

