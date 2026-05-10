Why we write H in 02H, 0CH, 1234H?

In 8086 assembly, H means hexadecimal (base 16) number.


---

1. Meaning of H

Notation	Meaning

02H	Hexadecimal 02
0CH	Hexadecimal 0C
1234H	Hexadecimal 1234


So H = Hexadecimal


---

2. Why not just write 02 or 0C?

Because in assembly, numbers can be in different bases:

Base	Example

Decimal	10
Binary	1010B
Hexadecimal	0AH or 0AH → 0AH = 10 decimal


So CPU must know the base.


---

3. Why Hexadecimal is used?

Because 8086 works naturally in binary (0 and 1), but binary is long.

So we use hex:

Binary	Hex

0000	0
1111	F
0001 0010	12H

 Easy to read and write


---

4. Example

MOV AH, 0CH

Means:

AH = 12 (decimal)

Because:

0CH = 12 decimal


---

5. Other suffix rules in assembly

Type	Symbol

Hex	H
Binary	B
Decimal	(no letter usually)



---

Examples

MOV AL, 1010B   ; binary = 10 decimal
MOV AL, 10       ; decimal = 10
MOV AL, 0AH       ; hex = 10 decimal


---

6. Important Rule

If a hex number starts with a letter:

0AH, 0CH, 0FH

We add 0 before it, otherwise it looks like a label.


---


We write H because:

> It tells the assembler that the number is in hexadecimal (base 16).


