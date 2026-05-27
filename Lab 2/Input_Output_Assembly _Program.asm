.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AH, 01H     ; input
    INT 21H

    MOV AH, 02H     ; output
    MOV DL, AL
    INT 21H

    MOV AH, 4CH     ; exit
    INT 21H
MAIN ENDP

END MAIN
