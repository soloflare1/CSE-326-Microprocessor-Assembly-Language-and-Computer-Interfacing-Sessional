* Code
```
MOV AX, 1234H
```

Using HLT / single-step , show:

* Register changes
* IP changes
* Execution steps

---


### 1. Initial State (Assume)

| Register | Value     |
| -------- | --------- |
| AX       | XXXXH     |
| IP       | 0000H     |
| Flags    | No change |

---

## 2. Machine Code Form

Instruction:

```
MOV AX, 1234H
```

Machine code:

```
B8 34 12
```

Size = 3 bytes

So:

```
IP = IP + 3
```

---

## 3. Step-by-Step Execution

### Step 1: Fetch Opcode

| Action      | Detail            |
| ----------- | ----------------- |
| IP → Memory | 0000H             |
| Read        | B8H (MOV AX, imm) |
| IP update   | IP = 0001H        |

---

### Step 2: Fetch Immediate Data (Low Byte)

| Action      | Detail     |
| ----------- | ---------- |
| IP → Memory | 0001H      |
| Read        | 34H        |
| IP update   | IP = 0002H |

---

### Step 3: Fetch Immediate Data (High Byte)

| Action      | Detail     |
| ----------- | ---------- |
| IP → Memory | 0002H      |
| Read        | 12H        |
| IP update   | IP = 0003H |

---

### Step 4: Execute Instruction

| Action    | Detail     |
| --------- | ---------- |
| Operation | AX ← 1234H |
| Result    | AX = 1234H |

---

## 4. Register Transfer Language (RTL)

```
AX ← 1234H
IP ← IP + 3
```

---

## 5. Final State

| Register | Value     |
| -------- | --------- |
| AX       | 1234H     |
| IP       | 0003H     |
| Flags    | No change |

---

## 6. HLT / Single-step Idea

Each step executes one micro-operation:

* Fetch opcode
* Fetch low byte
* Fetch high byte
* Execute
