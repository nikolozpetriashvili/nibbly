.intel_syntax noprefix
.global _start
.text
_start:

    xor rax, rax
    push rax
    mov rbx, 0x67616c662f
    push rbx

    mov rdi, rsp
    xor rsi, rsi
    xor rdx, rdx
    mov rax, 2
    syscall

    mov rdi, rax
    mov rax, 0
    mov rsi, rsp
    mov rdx, 10
    syscall

    mov rdi, 1
    mov rax, 1
    mov rsi, rsp
    mov rdx, 10
    syscall

    mov rdi, 0
    mov rax, 60
    syscall
    