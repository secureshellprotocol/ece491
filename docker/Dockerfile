FROM debian:stable AS builder

ARG SYSROOT="/riscv"
ARG QEMU_STATIC="/usr/bin/qemu-riscv32-static"
ARG THE_QEMU_VERSION="10.1.2"

# install build essentials
RUN apt-get update && \
    apt-get install -y \
        python3 \
        build-essential \
        git \
        wget \
        qemu-system-misc \
        qemu-user-static \
        binfmt-support 
CMD ["/bin/bash"]
