        org     100h

        section .text

; resta usando registros
        mov     AX, 12d ; dir inmediato
        mov     DX, 20d ; dir inmediato

        sub     AX, DX

; almacenar en celda de memoria
        mov     word[200h], AX

        int     20h