.model small

.stack 32

.data
    N1      DB      01010101b
    N2      DB      10101010b
    N3      DB      11111111b
    N4      DB      00000000b

.code
MAIN:
        MOV     AX, @data
        MOV     DS, AX

        MOV     AL, N1
        AND     AL, N2

        MOV     AH, N3
        ADD     AH, N4
        
        MOV     AL, N1
        MOV     AH, N2
        XOR     AL, N3
        XOR     AH, N4

        SHR     AL, 1
        SHL     AH, 2

        ROR     AL, 2

        MOV     CL, 2
        ROR     AH, CL
        ROL     AL, CL

        CLC ; clearing carry flag bit
        MOV     AL, 11111111b
        RCR     AL, 1

        CLC
        MOV     BL, 11111111b
        RCL     BL, 1

        ; CMP is a comparing instruction based on subtracting operands
        ; if Operand1 == Operand2 => Z = 1
        ; if Operand1 > Operand2  => C = 0
        ; if Operand1 < Operand2  => C = 1
        MOV     AX, 1234h
        MOV     BX, 1234h
        CMP     AX, BX
        END     MAIN