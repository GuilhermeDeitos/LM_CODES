; Aula 06 - Chamada de Sistemas
; arquivo: a06e01.asm
; objetivo: the evil papagali code!
; nasm -f elf64 a06e01.asm ; ld a06e01.o -o a06e01.x

; uhm, macros de constantes? yep! nasm S2
%define maxChars 10

section .data
    strBye : db "It isn't working", 0
    strByeL: equ $ - strBye      ; cuidado: strOlaL "non-existe!" (equ) 

section .text
 	global _start

_start:
    ;int sys_getpid()
    mov rax, 0x27  ; READ
    syscall

    ; int sys_kill(pid_t pid, int sig)
    mov edi, eax
    mov rax, 0x3E  ; KILL
    mov rsi, 9
    syscall

escrita:
    mov rax, 1
    mov rdi, 1
    lea rsi, [strBye]
    mov edx, strByeL
    syscall



fim:
    ; void _exit(int status);
    ; void _exit(int ebx   );
    mov rax, 60
    mov edi, 0
    syscall