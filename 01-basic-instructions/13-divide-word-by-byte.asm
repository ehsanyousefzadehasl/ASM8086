.model small

.stack 32

.data
    N1      DW      1111h
    N2      DB      5h

.code
MAIN:
        mov     ax, @data
        mov     ds, ax

        mov     ax, N1

        sub     dx, dx

        mov     bl, N2

        div     bx ; ax <- divider, dl <- remainder

END MAIN