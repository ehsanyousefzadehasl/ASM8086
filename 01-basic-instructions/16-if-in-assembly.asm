; if ch >= 'A' and ch <= 'Z'
; print(ch)

    CMP     AL, 'A'
    JNGE    EXIT1

    CMP     AL, 'Z'
    JNLE    EXIT1

; display character

EXIT1:

; ---------------------

; if ch == 'y' or ch == 'Y'
; print(ch)

        CMP     AL, 'y'
        JE      Then

        CMP     AL, 'Y'
        JE      Then

        JMP     EXIT2

Then:
    ;display

        JMP     END_IF

EXIT2:
        ; ...

END_IF:
        ; ...

; switch (n) case 1, case 3: print('A') break
; case 2, case4: print('B')

        CMP     AL, 1
        JE      L1

        CMP     AL, 3
        JE      L1

        CMP     AL, 2
        JE      L2

        CMP     AL, 4
        JE      L2

        JMP     END_CASE

L1:
        MOV     DL, 'A'
        JMP     DISPLAY

L2:
        MOV     DL, 'B'
        JMP     DISPLAY

DISPLAY:
        ; display

END_CASE:
        ; ...


; for i in range (10)
; print(*)

        MOV     CX, 10
        MOV     AH, 2
        MOV     DL, "*"

L:
        INT     21h
        Loop    L


; count = 0
; while ch != 'a'
; count = count + 1
; ch = input()

        MOV     DX, 0
W1:
        CMP     AL, 97
        JE      EXIT3

        INC     DX

        ; read
        
        MOV     AL, 97

        JMP     W1

EXIT3:
        ; ...


; while j >= k
; j = j - 1
; k = k + 1
j       DW      2h
k       DW      0h
W2:
        MOV     ax, j
        CMP     ax, k
        JNGE    EXIT4
        DEC     j
        INC     k
        JMP     W2
EXIT4:
        ; ...

; search
        a       DB      11, 3, 8, 7, 26

        XOR     SI, SI
        MOV     CX, 5

n:
        INC     SI
        CMP     a[SI - 1], 8
        loopne  n