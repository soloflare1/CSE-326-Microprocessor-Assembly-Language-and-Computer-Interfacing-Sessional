##  Structure  of `.MODEL SMALL`

```
                8086 MEMORY MODEL (SMALL)

+--------------------------------------------------+
|                  CODE SEGMENT                    |
|                                                  |
|  CS → points here                                |
|  IP → offset inside this segment                 |
|                                                  |
|  .CODE                                           |
|  MAIN PROC                                       |
|  MOV AH,01H                                      |
|  INT 21H                                         |
|  ...                                             |
|                                                  |
+--------------------------------------------------+

+--------------------------------------------------+
|                  DATA SEGMENT                    |
|                                                  |
|  DS → points here                                |
|                                                  |
|  .DATA                                           |
|  msg DB "Hello$"                                 |
|  var DB ?                                        |
|                                                  |
+--------------------------------------------------+

+--------------------------------------------------+
|                  STACK SEGMENT                   |
|                                                  |
|  SS → points here                                |
|  SP → stack pointer                              |
|                                                  |
|  .STACK 100H (≈ 256 bytes)                      |
|                                                  |
|  Used for:                                       |
|  - return address                                |
|  - interrupt data                                |
|  - function calls                                |
|                                                  |
+--------------------------------------------------+
```

---

## `.MODEL SMALL` = program uses **3 separate segments**

* 1 Code Segment (CS)
* 1 Data Segment (DS)
* 1 Stack Segment (SS)


