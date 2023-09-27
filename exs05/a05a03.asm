section .data
    triangularNum : dd 0,1,3,6,10,15,21,28

section .bss
    somatorio : resd 1

section .text 
    global _start

_start:
    LEA eax, [triangularNum]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 4]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 8]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 12]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 16]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 20]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 24]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 28]
    mov ebx, [eax]
    add ecx, ebx 

    LEA eax, [triangularNum + 32]
    mov ebx, [eax]
    add ecx, ebx 


fim:
    mov rax, 60
    mov rdi, 0
    syscall 

