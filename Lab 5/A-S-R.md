
1. What is Assembly Language?

Assembly language is a low-level programming language used to communicate directly with the CPU using instructions like:

MOV

ADD

SUB

MUL

DIV


It uses registers and memory addresses.


---

2. Registers in 8086

Registers are small fast storage inside CPU.

General Purpose Registers:

Register	Use

AX	Accumulator
BX	Base register (used for memory addressing)
CX	Counter (loops)
DX	Data register


Each is 16-bit and can be split:

AX → AH (high), AL (low)



---

3. Memory (mem)

Memory is RAM storage.

Example:

[1000H]

Means:

> value stored at address 1000H



Like:

arr[0]
arr[1]


---

4. MOV Instruction

MOV AX, 1234H

Meaning:

> Copy value into register/memory



✔ Does NOT change flags


---

5. ADD Instruction

ADD destination, source

Meaning:

destination = destination + source

Examples:

ADD AX, BX
ADD AX, 10H
ADD [1000H], AL

✔ Flags are updated


---

6. SUB Instruction

SUB destination, source

Meaning:

destination = destination - source

Examples:

SUB AX, BX
SUB AH, 08H
SUB [1000H], 05H

✔ Flags are updated


---

7. Operand Rules (VERY IMPORTANT)

Type	Allowed?

Register + Register	✔
Register + Immediate	✔
Register + Memory	✔
Memory + Register	✔
Memory + Immediate	✔
Memory + Memory	❌



---

❌ Why Memory + Memory not allowed?

ADD [1000H], [2000H] ❌

CPU cannot do it directly because:

Only one memory access allowed per instruction

Must use register as middle step


✔ Correct way:

MOV AX, [1000H]
ADD AX, [2000H]
MOV [1000H], AX


---

8. Immediate Value

Immediate means constant value:

Examples:

08H
5
1234H


---

9. Pointer Concept ([BX])

MOV BX, 1000H
MOV AL, [BX]

Meaning:

> AL = value at address stored in BX



Like C:

*p


---

10. Flags in 8086

Flags show result status after operations.

Status Flags:

Flag	Meaning

CF	Carry/Borrow
ZF	Zero result
SF	Sign (negative/positive)
OF	Overflow
PF	Parity
AF	Auxiliary carry



---

11. Which instructions change flags?

✔ Change flags:

ADD

SUB

CMP

AND

OR

XOR


❌ Do NOT change flags:

MOV

PUSH

POP



---

12. Example Problem

MOV AH, 0CH
MOV BL, 08H
SUB AH, BL

Result:

AH = 04H

Flags:

CF = 0

ZF = 0

SF = 0



---

13. CMP Instruction

CMP AX, BX

Meaning:

> AX - BX (but result not stored)



Only flags change.


---

14. Simple Memory Idea

Concept	Meaning

AX	variable
[1000H]	array element
BX	pointer
[BX]	value at pointer



---

15. Easy Final Summary

MOV → copy data (no flags change)

ADD/SUB → arithmetic (flags change)

Memory + Memory → ❌ not allowed

Register + anything → ✔ allowed

BX + [BX] → pointer concept



---

⭐ One-line memory trick

> “CPU always needs a register to do work with memory.”


