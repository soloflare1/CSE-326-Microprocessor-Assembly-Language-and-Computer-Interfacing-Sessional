# 1. Even / Odd (8086)

Input → `2000H`
Even → `AX = 11H`
Odd → `AX = 22H`
Output → `2001H`

```asm id="yv0o9i"
MOV AL, [2000H]
AND AL, 01H
JZ EVEN

MOV AX, 0022H
JMP STORE

EVEN:
MOV AX, 0011H

STORE:
MOV [2001H], AX
HLT
```

Meaning:

* `AND AL,01H` → check even/odd
* `JZ` → result 0 → Even
* Otherwise → Odd

---

# 2. ROL (Rotate Left)

Move bits **left → right** (circular)

Example:

```asm id="61u1vg"
MOV AX, 124FH
MOV CL, 03H
ROL AX, CL
```

Meaning:

* Rotate AX **3 times left**
* Left side bits go to right side

Diagram:

```
10110010
↓
01100101
```

---

# 3. ROR (Rotate Right)

Move bits **right → left** (circular)

```asm id="ldgr8q"
MOV AX, 124FH
MOV CL, 03H
ROR AX, CL
```

Meaning:

* Rotate AX **3 times right**
* Right side bits go to left side

Diagram:

```
10110010
↑
01011001
```

---

# 4. STC (Set Carry)

```asm id="s1vopd"
STC
```

Meaning:

```
CF = 1
```

---

# 5. RCL (Rotate through Carry Left)

```asm id="7gnngc"
MOV AX, 1234H
STC
MOV CL, 01H
RCL AX, CL
```

Meaning:

* Carry participates
* Rotate **left**
* Carry enters right side
* Leftmost bit goes to Carry

Flow:

```
CF ← AX ← CF
```

---

# 6. RCR (Rotate through Carry Right)

Rotate using Carry

```asm id="a6a6zs"
RCR AX, 01
```

Flow:

```
CF → AX → CF
```

Meaning:

* Carry joins rotation
* Rotate right


* `ROL` → Left
* `ROR` → Right
* `RCL` → Left + Carry
* `RCR` → Right + Carry
* `STC` → Carry = 1
