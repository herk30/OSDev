nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 boot.bin
i686-elf-as boot.asm -o boot.o
