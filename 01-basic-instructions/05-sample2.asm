; we have several choices for .model
; small: data <= 64KB, code <= 64KB
; medium: data <= 64KB, code > 64KB
; compact: data > 64KB, code <= 64KB
; large: data > 64KB, code > 64KB
; huge: data > 64KB, code > 64KB
;
.model small


.stack 32

.data
    N1  DB      1H
    N2  DB      2H
    N3  DB      3H
    SUM DB      ?

.code
MAIN:
        MOV     AX, @data
        MOV     DS, AX

        MOV     AL, N1
        ADD     AL, N2
        ADD     AL, N3
        MOV     SUM, AL

        END     MAIN