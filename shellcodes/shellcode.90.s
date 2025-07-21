.intel_syntax noprefix
.global _start
.text
_start:
    push 0x66
    mov rdi, rsp
    push 4
    pop rsi
    push 90
    pop rax
    syscall