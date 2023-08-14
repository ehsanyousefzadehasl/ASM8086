; add destination, source
; destination = destination + source 
 
org 100h

mov ax,1312h
mov bx,1513h

add ax, bx

mov al, 35h
add al, 12h

; the execution of following instructions will result in setting carry flag (CF = 1)
mov ax, 0ffffh
add ax, 1h
ret




