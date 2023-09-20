# Anotações Assembly

### Comandos Assembly
MOV - movimento de dados 
mov nomeRegistradorDestinatário, nomeRegistradorRemetente/endereçoMemória
    **Exemplo**
> mov eax, [n1]

MOVSX - Mover n bytes para p bytes, sendo n < p com extensão de sinal
**Exemplo**
> MOVSX reg16, r/m8 -> 1b para 2b, mantendo sinal 

MOVZX - Mover n bytes para p bytes, sendo n < p sem extensão de sinal
**Exemplo**
> MOVSX reg16, r/m8 -> 1b para 2b, mantendo sinal 

LEA - semelhante a um ponteiro, usa o endereço
**Exemplo**
> lea eax, [n1]

- Reserva de memoria:
    Tem que ser feito na sessão .bss
    **Implementação:**
res + (letra que corresponde o tamanho do dado) + quantas reservas
**Exemplo**
    * n1: resb 1 = reservar 1 byte(b = 1)
    * n2: resd 2 = reservar 8 bytes(d = 4)

- Tamanhos de dados
     * db - declarar 1 byte
     * dw - declarar 2 Bytes
     * dd - declarar 4 bytes
     * dq - declarar 8 bytes
  
**Instruções Aritméticas e Lógicas**
### Codigo
- Logica
    * OR
    * AND
    * XOR
    * NOT
    * NEG
- Aritmética
    * ADD
    * SUB
    * INC
    * DEC
    * MUL e IMUL
    * DIV e IDIV
- Deslocamento
    * SHL
    * SHR
    * SAL
    * SAR

#### ADD
- ADD destino, fonte
    * Destino = destino + fonte
```assembly
    ADD reg, r/m
    ADD mem, reg
    ADD r/m, imm 
```

#### SUB
- SUB destino, fonte
    * Destino = destino - fonte
    * Irá gerar flags(flag OF)
```assembly
    SUB reg, r/m
    SUB mem, reg
    SUB r/m, imm 
```
#### INC e DEC
- INC/DEC destino
    * Destino = destino--(DEC)
    * Destino = destino++(INC)

#### XOR, OR e AND
- AND/OR/XOR destino, fonte
    * Destino = operação bit a bit

```assembly
    AND/OR/XOR reg, r/m/i
    AND/OR/XOR mem, r/i
```

#### NOT e NEG
- NOT/NEG destino
    * NOT -> Operação NOT bit a bit(Não carrega flags).
    * NEG -> Operação de negação em complemento de 2.

```assembly
    NOT/NEG r/m
```


#### Registrador Flags
- Overflow
    * OF = 1 -> Operação gerou overflow
    * Importante nas operações sinalizadas
- Carry
    * CF = 1 -> operação aritmética gerou bit carry
    * SF = Signed Flag -> liga quando negativo
    * PF = Parity Flag -> liga quando o bit menos significativo é par (0).
    * ZF = Zero Flag -> Palavra em 0.


    

### Comandos gdb
     x - explorar
     b - breakpoint
     r - run
     /x - mostrar em hexa
     /t - mostrar em binario
     /d - mostrar decimal
     /u - mostrar decimal sem sinal
     /xg - mostrar 8bytes
     /c - mostra caracter
     /xw - mostrar 4bytes
     p - mostrar registrador
     $rax - acessar o registrador Rax(8 bytes)
     c - continuar pro próximo breakpoint
     $eax - acessar o reg EAX(4Bytes)
     $ax - acessar o reg EAX(2Bytes)
     $al - acessar o reg EAX(1Nibble)
     info registers rax rbx rcx r8 - comando pra mostrar os registradores
     i r rax rcx rbx - mesmo comando mas simplificado
     i r eflags - mostrar os registradores das flags
     &nomeVar - mostra o endereçod a variavel

### Hierarquia de registradores
* rax - 8 bytes
* eax - 4 bytes
* ax - 2 bytes
* ah - 1 byte(Mais significativo do ax)
* al - 1 byte(Menos significativo do ax)

