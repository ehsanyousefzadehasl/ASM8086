; stack ss(starting address):sp(offset) like cs(starting address):ip(offset)
; instructions for working with stack: push/ pop

;Note: We can just push registers that are 16-bit
;  we cannot push al or bl
org 100h
    mov ax, 0f1a5h
    push ax
    
    mov bx, 0aabch
    push bx
    
    pop dx
    
    mov al, 0ffh
    ;push al    ; error
ret