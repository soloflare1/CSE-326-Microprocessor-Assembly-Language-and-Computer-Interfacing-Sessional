(* 
CMP → sets flags
↓
JXX → checks condition
↓
TRUE  → branch to L1
FALSE → continue next instruction 
*)

(* 5. Find largest of two numbers *)
MOV AL, 09H   ; AL = 09H  
MOV BL, 05H   ; BL = 05H  

CMP AL, BL    ; compare AL and BL  
              ; AL - BL = positive (AL > BL)  
              ; CF = 0 (no borrow)  
              ; ZF = 0 (not equal)  

JAE L1        ; jump if AL >= BL (CF = 0)  
              ; here condition is TRUE, so jump happens  

MOV AL, BL    ; not executed because jump is taken  

L1: HLT       ; stop program execution




(* 6. Find smallest of two numbers *)
MOV AL, 09H   ; AL = 09H  
MOV BL, 05H   ; BL = 05H  

CMP AL, BL    ; compare AL and BL  
              ; AL - BL = 04H (positive, AL > BL)  
              ; flags updated:  
              ; CF = 0 (no borrow, AL > BL)  
              ; ZF = 0 (not equal)  

JBE L1        ; jump if AL <= BL (CF = 1 OR ZF = 1)  
              ; here condition is FALSE, so no jump  

MOV AL, BL    ; executed because jump is not taken, AL = 05H  

L1: HLT       ; stop program execution





