### When are FLAGS, CS, and IP pushed onto the stack?
**Whenever an interrupt occurs, the 8086 CPU automatically pushes FLAGS, CS, and IP onto the stack. This saves the current program state so that execution can return later using the `IRET` instruction.**


`FLAGS`, `CS`, and `IP` are automatically pushed onto the stack whenever an **interrupt** occurs.

### 1. Software Interrupt

```asm
INT 21H
INT 10H
INT 13H
```

When an `INT` instruction executes, the CPU automatically:

```text
PUSH FLAGS
PUSH CS
PUSH IP
```

and then transfers control to the Interrupt Service Routine (ISR).

---

### 2. Hardware Interrupt

Examples:

```text
INTR
NMI
```

When a hardware interrupt occurs, the CPU also:

```text
PUSH FLAGS
PUSH CS
PUSH IP
```

before jumping to the interrupt handler.

---

### 3. Exception / Internal Interrupt

Example:

```asm
DIV BL
```

If a divide-by-zero error occurs, the CPU generates Interrupt 0 and automatically saves:

```text
PUSH FLAGS
PUSH CS
PUSH IP
```

---

### Not Done For Normal Instructions

```asm
MOV AX,BX
ADD AX,BX
SUB AX,BX
INC AX
```

These instructions do **not** push `FLAGS`, `CS`, or `IP` onto the stack.

---

