MBALIGN  equ  1 << 0           
MEMINFO  equ  1 << 1           
MBFLAGS  equ  MBALIGN | MEMINFO 
MAGIC    equ  0x1BADB002       
CHECKSUM equ -(MAGIC + MBFLAGS)   
section .multiboot
align 4
	dd MAGIC
	dd MBFLAGS
	dd CHECKSUM
 
 
section .bss
align 16
    stack_bottom:
        resb 16384 
    stack_top:
        section .text
    global _start:
 
    cli
        .hang:	hlt
	    jmp .hang
.end:

section .multiboot

[org 0x7c00]
mov ah, 0x0e


mov bx, Varlabel


printString:
    mov al, [bx]
    cmp al,0
    je end
    int 0x10
    inc bx 
    jmp printString
end:
jmp $

Varlabel:
    db 65,0

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
