; mov destination, source
; destination <- source

org 100h
mov ax, 45h
mov cx, ax
mov dx, 1fabh
;mov bl, 1fffh ; error: because we cannot put a 16-bit data into a 8-bit register
;mov cl, ax   ; error: because we cannot put the data in a 16-bit register in a 8-bit register
;mov ds, 235h: because we cannot put an immediate value in a segment register
; For this purpose, we have to use another general register like what you can see in the two following instructions
; Or we have to do it indirectly
; Note: we cannot assign anythning directly or indirectly to the cs (code segment register)
mov ax, 235h
mov ds, ax

ret




