.model small

.stack 32

.data
    n       DB      12bbh, 1af0h, 1dc2h, 23fah
    sum     DW      2 DUP(?)
    count   EQU     4

.code

MAIN:
        MOV     AX, @data
        MOV     DS, AX

        mov     cx, count ; if want to work with loops, cx is the register we are gonna use
        mov     si, offset n

        mov     ax, 00
        mov     bx, ax

BACK:
        add     ax, [si]
        adc     bx, 00 ; bx = 00 + bx + CF(carry flag)

        ; becasue we are working with words so,
        ; we have to increment si two times
        inc     si
        inc     si

        dec     CX ; counter = counter - 1
        jnz     BACK ; jump not zero

        mov     sum, AX
        mov     sum + 2, BX

        END MAIN