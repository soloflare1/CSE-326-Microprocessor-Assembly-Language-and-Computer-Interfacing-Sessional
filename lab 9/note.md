### `MOVSB` and `MOVSW` (8086 Assembly)

These are **string instructions** used to **copy data from one memory location to another**.

---

## 1. `MOVSB` — Move String Byte

Moves **1 byte** from source to destination.

### Syntax:

```asm
MOVSB
```

### Operation:

```text
[ES:DI] ← [DS:SI]
SI = SI + 1
DI = DI + 1
```

* Source → `DS:SI`
* Destination → `ES:DI`
* Transfers → **1 Byte**

### Example:

Before:

```text
DS:SI → A = 45H
ES:DI → empty
```

Execute:

```asm
MOVSB
```

After:

```text
ES:DI = 45H
SI = SI + 1
DI = DI + 1
```

---

## 2. `MOVSW` — Move String Word

Moves **1 word (2 bytes)** from source to destination.

### Syntax:

```asm
MOVSW
```

### Operation:

```text
[ES:DI] ← [DS:SI]
SI = SI + 2
DI = DI + 2
```

* Source → `DS:SI`
* Destination → `ES:DI`
* Transfers → **2 Bytes**

### Example:

Before:

```text
DS:SI → 1234H
```

Execute:

```asm
MOVSW
```

After:

```text
ES:DI → 1234H
SI = SI + 2
DI = DI + 2
```

---

## Difference

| Instruction | Full Form        | Data Moved | SI Increment | DI Increment |
| ----------- | ---------------- | ---------: | -----------: | -----------: |
| MOVSB       | Move String Byte |     1 Byte |           +1 |           +1 |
| MOVSW       | Move String Word |    2 Bytes |           +2 |           +2 |

**B = Byte = 8 bits**
**W = Word = 16 bits**
