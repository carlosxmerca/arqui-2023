        org     100h

        section .text

; multiplicación tamaño byte
        mov     AL, 5d
        mov     BL, 3d
        mul     BL              ; AX: 000F

; multiplicación tamaño word
        mov     AX, 250h
        mov     BX, 230h        ; Multiplicacion = 50F00h
        mul     BX              ; AX: 0F00, DX: 0005

        int     20h
