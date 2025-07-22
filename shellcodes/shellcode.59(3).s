.intel_syntax noprefix
.global _start
.text
_start:
        push 0x66
        mov rdi, rsp
        and esi, 0
        xor edx, edx
        mov al, 59
        syscall