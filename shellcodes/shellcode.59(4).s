.intel_syntax noprefix
.global _start
.text
_start:
        push 0x66
        mov rdi, rsp
        xor esi, esi
        cdq
        mov al, 59
        syscall