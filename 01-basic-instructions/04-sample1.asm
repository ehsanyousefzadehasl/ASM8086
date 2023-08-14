; STACK SEGMENT
S SEGMENT
    DB      32      DUP(?)
S ENDS

; DATA SEGMENT
D SEGMENT
    N1      DB      1H
    N2      DB      2H
    N3      DB      3H
    SUM     DB      ?
D ENDS

; CODE SEGMENT
C SEGMENT

MAIN    PROC    FAR
            ASSUME CS:C,    DS:D,   SS:S

            ; for DS, it should be done indirectly
            MOV     AX, D
            MOV     DS, AX

            MOV     AL, N1
            ADD     AL, N2
            ADD     Al, N3
            MOV     SUM, AL

MAIN    ENDP
        END     MAIN