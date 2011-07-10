#!/bin/bash

nasm -f bin -o boot.bin boot.asm
nasm -f bin -o kernel.bin kernel.asm
cat boot.bin kernel.bin > kernel.img

#qemu -s -S -fda kernel.img
if [ -n "$1" ]
then
	bochs -q -f bochsrc.bxrc
else
	bochs_no_debug -q -f bochsrc.bxrc
fi
