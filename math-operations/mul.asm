        org     100h

        section .text

; multiplicación tamaño byte
        mov     AL, 5d
        mov     BL, 5d
        mul     BL    

; multiplicación tamaño word
        mov     AX, 250h
        mov     BX, 250h
        mul     BX

        int     20h