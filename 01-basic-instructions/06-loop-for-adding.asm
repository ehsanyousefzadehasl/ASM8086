.model small

.stack 32

.data
    n       DB      12h, 10h, 12h, 23h
    sum     DW      ?
    count   EQU     4

.code

MAIN:
        MOV     AX, @data
        MOV     DS, AX

        mov     cx, count ; if want to work with loops, cx is the register we are gonna use
        mov     si, offset n

        mov     ax, 00

BACK:
        add     al, [si] ; al = al + 6dh
        adc     ah, 00 ; ah = 00 + ah + CF(carry flag)
        inc     si ; si = si + 1
        dec     CX ; counter = counter - 1
        jnz     BACK ; jump not zero

        ; jz        js      jc      jo      ja      jb      jge     jg      jl
        ; jnz       jns     jnc     jno     jna     jnb

        mov     sum, AX

        END MAIN