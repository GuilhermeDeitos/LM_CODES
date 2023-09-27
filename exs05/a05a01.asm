section .data
    maiuscula: db 'A'
    minuscula: db 'b'

section .bss
    lowercase: resb 1
    uppercase: resb 1

section .text
    global _start

_start:
    mov al, [maiuscula]
    mov bl, [minuscula]

convert:
    ADD al, 0x20
    SUB bl, 0x20

passarReservada:
    mov [lowercase], al
    mov [uppercase], bl

fim:
    mov rax, 60
    mov rdi, 0
    syscall