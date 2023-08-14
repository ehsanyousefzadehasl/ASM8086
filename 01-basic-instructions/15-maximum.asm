.model small

.stack 32

.data
    A       DB      5h, 18h, 12h
    MAX     DB      ?

.code
MAIN:
        mov     ax, @data
        mov     ds, ax

        mov     cx, 3
        mov     bx, OFFSET A
        sub     al, al

AGAIN:
        CMP     al, [bx]
        ; CMP is a comparing instruction based on subtracting operands
        ; if Operand1 == Operand2 => Z = 1
        ; if Operand1 > Operand2  => C = 0
        ; if Operand1 < Operand2  => C = 1

        jnc      NEXT ; ja
        mov     al, [bx]

NEXT:
        inc     bx
        loop    AGAIN
        
        
        mov     MAX, al