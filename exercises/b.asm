        org     100h

        section .text

; suma usando registros
        mov     CL, 12d
        mov     DL, 8d
        mov     AL, CL  ; dir por registro
        mov     BL, DL  ; dir por registro

        add     AL, BL

; almacenar en celda de memoria
        mov     byte[200h], AL

        int     20h