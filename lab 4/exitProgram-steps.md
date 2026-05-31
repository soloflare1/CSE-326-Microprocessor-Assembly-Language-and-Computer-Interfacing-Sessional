### Program

```asm
.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AH, 4CH
    INT 21H
MAIN ENDP

END MAIN
```

---

# Single-Step Execution

Assume:

| Register | Initial Value |
| -------- | ------------- |
| AH       | XXH           |
| IP       | 0000H         |
| CS       | 2000H         |
| Flags    | Unchanged     |

---

## Step 1: Execute `MOV AH, 4CH`

### Instruction

```asm
MOV AH, 4CH
```

### Operation

```
AH ← 4CH
```

### Register Changes

| Register | Before | After |
| -------- | ------ | ----- |
| AH       | XXH    | 4CH   |

### IP Change

Instruction size = 2 bytes

```
IP ← IP + 2
```

---

## Step 2: Execute `INT 21H`

### Instruction

```asm
INT 21H
```

### Operation

Interrupt Type = 21H

Since:

```
AH = 4CH
```

DOS Function 4CH is selected.

Function 4CH = Terminate Program and Return Control to DOS.

### Internal Actions

1. Push FLAGS onto stack
2. Push CS onto stack
3. Push IP onto stack
4. Load ISR address from Interrupt Vector Table
5. DOS executes Function 4CH
6. Program terminates

### IP Change

Control transfers to DOS interrupt service routine.

---

# Register Transfer Language (RTL)

### MOV AH,4CH

```
AH ← 4CH
IP ← IP + 2
```

### INT 21H
in 8086 **Stack  grow -> downward**

 `PUSH` -> `SP`  decreases
let,

```text
SP = FFFEH
```

### FLAGS Push

```text
SP = FFFEH - 2 = FFFCH
[SS:FFFC] = FLAGS
```

### CS Push

```text
SP = FFFCH - 2 = FFFAH
[SS:FFFA] = CS
```

### IP Push

```text
SP = FFFAH - 2 = FFF8H
[SS:FFF8] = IP
```


```
SP ← SP - 2
[SS:SP] ← FLAGS

SP ← SP - 2
[SS:SP] ← CS

SP ← SP - 2
[SS:SP] ← IP

CS:IP ← Interrupt Vector(21H)

DOS Terminates Program
```

```text
FFFCH > FFFAH > FFF8H
```

So:

```text
Higher Address
   FFFC → FLAGS
   FFFA → CS
   FFF8 → IP
Lower Address
```

In 8086, the stack grows downward. When a `PUSH` occurs:

```text
SP = SP - 2
```

Therefore, new data is stored at a **lower address**, and the stack moves from higher addresses to lower addresses.

---

# Final State

| Register | Value           |
| -------- | --------------- |
| AH       | 4CH             |
| IP       | DOS ISR Address |
| Program  | Terminated      |

---


* `MOV AH, 4CH` loads DOS function number 4CH into AH.
* `INT 21H` calls DOS interrupt 21H.
* DOS function 4CH terminates the program and returns control to DOS.
* Flags are not affected by `MOV`.
* `INT 21H` saves FLAGS, CS, and IP on the stack before transferring control to DOS.
