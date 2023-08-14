.model small

.stack 32

.data
    N1      DB      1h
    N2      DW      1313h
    R       DW      2   DUP(?)

.code

MAIN:
        MOV     AX, @data
        MOV     DS, AX

        MOV     AX, 00
        
        MOV     AL, N1  ; just changing AX to AL to do byte to word multiplication
        MUL     N2      ; DX : AX = AX * N2

        MOV     R, AX
        MOV     R + 2, DX

        END MAIN