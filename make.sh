#!/bin/bash

nasm -f bin -o boot.bin boot.asm
nasm -f bin -o kernel.bin kernel.asm
cat boot.bin kernel.bin > kernel.img

#qemu -s -S -fda kernel.img
bochs -q -f bochsrc.bxrc
