;Aula 05, operações logticas e aritimeticas
section .text
    global _start

_start:
    mov ax, 0x7fff
    mov bx, 0xffff

   ; mov eax, 10
    ;mov ebx, 20
    mov ecx, 30
    mov edx, -2

p1:
    ;add ebx, eax
    add edx, eax

p2:
    sub ecx, eax
    ;sub eax, ecx

overflow:
    add ax, 1 ; -32768     ;int

carry:
    add bx, 1 ; 0 e carry 1 no 17º bit


fim:
    mov rax, 60
    mov rdi, 0
    syscall