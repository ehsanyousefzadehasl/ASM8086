

A       DB      '9562481273'   
B       DB      10      DUB(?)

ORG     0010H

MOV     CX, 5
MOV     BX, OFFSET  A
MOV     DI, OFFSET  B

L:
    MOV     AX, [BX]
    AND     AX, 0f0fh
    MOV     [DI], AX
    ADD     BX, 2
    ADD     DI, 2
    LOOP    L