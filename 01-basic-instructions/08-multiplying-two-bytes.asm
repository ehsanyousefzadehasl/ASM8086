.model small

.stack 32

.data
    N1      DB      1FH
    N2      DB      3AH
    R       DW      ?

.code

MAIN:
        mov     AX, @data
        mov     DS, AX

        mov     AX, 00

        mov     AL, N1
        mul     N2      ; AX = AL * N2

        mov     R, AX

        END     MAIN     