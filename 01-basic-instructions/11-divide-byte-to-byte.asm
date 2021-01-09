.model small

.stack 32

.data
    N1      DB      23
    N2      DB      5

.code
MAIN:
        mov     ax, @data
        mov     ds, ax

        mov     al, N1

        sub     ah, ah

        div     N2 ; ah <- divider, al <- remainder

END MAIN