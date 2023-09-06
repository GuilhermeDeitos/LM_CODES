; Aula 03 - Registradores e MOV
; arquivo: a03e01.asm
; objetivo: acesso aos dados dos registradores e transferencias
; nasm -f elf64 a03e01.asm ; ld a03e01.o -o a03e01.x

; Aula 03 - Registradores e MOV
; arquivo: a03e03.asm
; objetivo: acesso aos dados dos registradores e transferencias
; nasm -f elf64 a03e03.asm ; ld a03e03.o -o a03e03.x

section .data
    v1: dq 0x1111111122334455
    v2: dq 0x0000000000000000
    v3: dq 0x0000000000000000
  
section .text
    global _start
  
_start:

pt1:
    mov al , [v1]
    mov ebx, [v1]
    mov rcx, [v1]

pt2:
    mov [v2], al
    mov [v2], ebx
    mov [v2], rcx

pt3:
    mov al , 0x10
    mov ebx, 0x20202020
    mov rcx, 0x3030303030303030

pt4:
    mov byte  [v3], 0x10
    mov word  [v3], 0x1515
    mov dword [v3], 0x20202020

fim:
    mov rax, 60
    mov rdi, 0
    syscall

    ; MOV - movimento de dados 
    ; mov nomeRegistradorDestinatário, nomeRegistradorRemetente/endereçoMemória
    ; dw - declarar 2 Bytes
    ; dd - declarar 4 bytes
    ; dq - declarar 8 bytes

    ; No gdb
    ; x - explorar
    ; b - breakpoint
    ; r - run
    ; /x - mostrar em hexa
    ; /d - mostrar decimal
    ; /xg - mostrar 8bytes
    ; /c - mostra caracter
    ; /xw - mostrar 4bytes
    ; p - mostrar registrador
    ; $rax - acessar o registrador Rax(8 bytes)
    ; c - continuar pro próximo breakpoint
    ; $eax - acessar o reg EAX(4Bytes)
    ; $ax - acessar o reg EAX(2Bytes)
    ; $al - acessar o reg EAX(1Nibble)
    ; info registers rax rbx rcx r8 - comando pra mostrar os registradores
    ;i r rax rcx rbx - mesmo comando mas simplificado
    ; &nomeVar - mostra o endereçod a variavel

    