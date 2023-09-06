section .data
    v1: dw 30000
    v2: dw 0
    v3: dd 2000000
  
section .text
    global _start
  
_start:
    mov ecx, [v3] ; reg de 4 bytes
    mov [v1], ecx ; 

fim:
    mov rax, 60
    mov rdi, 0
    syscall