        org     100h

        section .text

; multiplicación tamaño byte
        mov     AL, 250d
        mov     BL, 250d
        mul     BL    

; multiplicación tamaño word
        mov     AX, 250h
        mov     BX, 250h
        mul     BX

        int     20h