        org     100h

        section .text

; división tamaño byte
        mov     AX, 15d
        mov     BL, 4d
        div     BL

; división tamaño word
        mov     DX, 0h
        mov     AX, 15d
        mov     BX, 4d
        div     BX

        int     20h