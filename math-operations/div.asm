        org     100h

        section .text

; división tamaño byte
        mov     AX, 13d
        mov     BL, 5d
        div     BL              ; AX: 0302

; división tamaño word
        mov     DX, 0h
        mov     AX, 13d
        mov     BX, 5d
        div     BX              ; AX: 0002, DX: 0003

        int     20h
