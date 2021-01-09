.model small

.stack 32

.data
    N1      DW      1212h
    N2      DW      1313h
    R       DW      2   DUP(?)

.code

MAIN:
        MOV     AX, @data
        MOV     DS, AX

        MOV     AX, 00
        
        MOV     AX, N1
        MUL     N2      ; DX : AX = AX * N2

        MOV     R, AX
        MOV     R + 2, DX

        END MAIN