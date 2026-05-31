### Program: Take a character input and display it

| Section         | Code           | Explanation                                        |
| --------------- | -------------- | -------------------------------------------------- |
| Memory Model    | `.MODEL SMALL` | Small memory model (1 code and 1 data segment) |
| Stack           | `.STACK 100H`  | Reserves 256 bytes stack space                     |
| Data Segment    | `.DATA`        | Data section (no variables used)                   |
| Code Segment    | `.CODE`        | Code section starts                                |
| Procedure Start | `MAIN PROC`    | Program entry point                                |

---
```
SMALL MODEL MEMORY:

CS → CODE SEGMENT (max 64KB)
DS → DATA SEGMENT (max 64KB)
SS → STACK SEGMENT (max 64KB)
```
---

## Input Part

| Code          | Explanation                                   |
| ------------- | --------------------------------------------- |
| `MOV AH, 01H` | DOS function for character input              |
| `INT 21H`     | Reads character from keyboard                 |
| `AL ← input`  | Input character is stored in AL automatically |

---

## Output Part

| Code          | Explanation                         |
| ------------- | ----------------------------------- |
| `MOV AH, 02H` | DOS function for character output   |
| `MOV DL, AL`  | Moves input character from AL to DL |
| `INT 21H`     | Displays character on screen        |

---

## Program Exit

| Code          | Explanation                    |
| ------------- | ------------------------------ |
| `MOV AH, 4CH` | DOS terminate program function |
| `INT 21H`     | Returns control to DOS         |
| `MAIN ENDP`   | Ends procedure                 |
| `END MAIN`    | Ends program execution         |

---
## Flow

| Step | Internal Change               |
| ---- | ----------------------------- |
| 1    | Program loads, CS:IP set      |
| 2    | AH = 01H                      |
| 3    | INT 21H → control goes to DOS |
| 4    | Key pressed → AL = input      |
| 5    | Return from interrupt         |
| 6    | AH = 02H                      |
| 7    | AL → DL copied                |
| 8    | INT 21H → output displayed    |
| 9    | AH = 4CH → program exit       |

The program reads a single character using INT 21H (01H), displays it using INT 21H (02H), and then exits using INT 21H (4CH).

##  DOS Interrupt Functions

| AH Value | Function | Purpose                         |
| -------- | -------- | ------------------------------- |
| 01H      | Input    | Reads a character from keyboard |
| 02H      | Output   | Displays a character on screen  |
| 4CH      | Exit     | Terminates program              |

---
