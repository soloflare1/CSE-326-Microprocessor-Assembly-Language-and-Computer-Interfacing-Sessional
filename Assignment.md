## 1. Add two 8-bit numbers

```asm
MOV AL, 05H
MOV BL, 03H
ADD AL, BL
HLT
```

---

## 2. Subtract two numbers

```asm
MOV AL, 08H
MOV BL, 03H
SUB AL, BL
HLT
```

---

## 3. Multiply two numbers

```asm
MOV AL, 04H
MOV BL, 05H
MUL BL
HLT
```

---

## 4. Divide two numbers

```asm
MOV AX, 0010H
MOV BL, 04H
DIV BL
HLT
```

---

## 5. Largest of two numbers

```asm
MOV AL, 09H
MOV BL, 05H
CMP AL, BL
JAE L1
MOV AL, BL
L1: HLT
```

---

## 6. Smallest of two numbers

```asm
MOV AL, 09H
MOV BL, 05H
CMP AL, BL
JBE L1
MOV AL, BL
L1: HLT
```

---

## 7. Add array of numbers

```asm
MOV CX, 05H
MOV SI, 0000H
MOV AL, 00H
L1: ADD AL, [SI]
INC SI
LOOP L1
HLT
```

---

## 8. Count even numbers

```asm
MOV CX, 05H
MOV SI, 0000H
MOV BL, 00H
L1: MOV AL, [SI]
AND AL, 01H
JNZ L2
INC BL
L2: INC SI
LOOP L1
HLT
```

---

## 9. Factorial

```asm
MOV CX, 05H
MOV AX, 0001H
L1: MUL CX
LOOP L1
HLT
```

---

## 10. Reverse string

```asm
MOV CX, 05H
MOV SI, 0000H
MOV DI, 0004H
L1: MOV AL, [SI]
MOV BL, [DI]
MOV [SI], BL
MOV [DI], AL
INC SI
DEC DI
LOOP L1
HLT
```

---

## 11. Sum of digits

```asm
MOV AX, 1234H
MOV BX, 00H
L1: MOV DX, 0000H
MOV CX, 0AH
DIV CX
ADD BX, DX
CMP AX, 0000H
JNE L1
HLT
```

---

## 12. Even or Odd

```asm
MOV AL, 07H
AND AL, 01H
JZ EVEN
HLT
EVEN: HLT
```

---

## 13. Bubble Sort

```asm
MOV CX, 04H
OUTER:
MOV SI, 0000H
MOV DX, CX
INNER:
MOV AL, [SI]
CMP AL, [SI+1]
JBE SKIP
XCHG AL, [SI+1]
MOV [SI], AL
SKIP:
INC SI
DEC DX
JNZ INNER
LOOP OUTER
HLT
```

---

## 14. Copy array

```asm
MOV CX, 05H
MOV SI, 0000H
MOV DI, 0100H
L1: MOV AL, [SI]
MOV [DI], AL
INC SI
INC DI
LOOP L1
HLT
```

---

## 15. Largest in array

```asm
MOV CX, 05H
MOV SI, 0000H
MOV AL, [SI]
L1: CMP AL, [SI]
JAE L2
MOV AL, [SI]
L2: INC SI
LOOP L1
HLT
```

---

## 16. GCD

```asm
MOV AX, 24H
MOV BX, 18H
L1: CMP AX, BX
JE DONE
JA A_BIG
SUB BX, AX
JMP L1
A_BIG:
SUB AX, BX
JMP L1
DONE:
HLT
```

---

## 17. LCM

```asm
MOV AX, 06H
MOV BX, 08H
MOV CX, AX
MUL BX
MOV DX, AX
MOV AX, CX
MOV BX, 08H
L1: CMP AX, BX
JE L2
JA L3
SUB BX, AX
JMP L1
L3:
SUB AX, BX
JMP L1
L2:
MOV BX, AX
MOV AX, DX
DIV BX
HLT
```

---

## 18. Prime check

```asm
MOV AL, 07H
MOV BL, 02H
L1: CMP BL, AL
JAE PRIME
MOV AH, 00H
DIV BL
CMP AH, 00H
JE NOT_PRIME
INC BL
JMP L1
PRIME: HLT
NOT_PRIME: HLT
```

---

## 19. Fibonacci

```asm
MOV CX, 05H
MOV AL, 00H
MOV BL, 01H
L1:
MOV DL, AL
ADD AL, BL
MOV BL, DL
LOOP L1
HLT
```

---

## 20. Count 1s

```asm
MOV AL, 0FH
MOV CX, 08H
MOV BL, 00H
L1:
SHL AL, 1
JNC SKIP
INC BL
SKIP:
LOOP L1
HLT
```

---

## 21. Palindrome

```asm
MOV SI, 0000H
MOV DI, 0004H
MOV CX, 02H
L1:
MOV AL, [SI]
CMP AL, [DI]
JNE NOT_PAL
INC SI
DEC DI
LOOP L1
PAL: HLT
NOT_PAL: HLT
```

---

## 22. Stack

```asm
MOV AX, 1234H
PUSH AX
MOV AX, 0000H
POP AX
HLT
```

---

## 23. Decimal to Binary

```asm
MOV AX, 09H
MOV CX, 08H
L1:
SHL AX, 1
LOOP L1
HLT
```


✔ Word/PDF submission file
✔ or viva notes for each program 👍
