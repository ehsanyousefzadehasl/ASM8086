A       DB      37h
B       DB      10h      DUB(?)

org 100h

MOV     AX, WORD PTR    A
AND     AX, 0f0fh

XCHG    AH, AL

MOV     CL, 4
SAL     AH, CL

OR      AL, AH

MOV     B, AL