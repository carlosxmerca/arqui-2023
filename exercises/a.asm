        org     100h

        section .text

; suma usando registros
        mov     CX, 120d
        mov     DX, 20d
        mov     AX, CX  ; dir por registro
        mov     BX, DX  ; dir por registro

        add     AX, BX

; almacenar en celda de memoria
        mov     word[200h], AX

        int     20h