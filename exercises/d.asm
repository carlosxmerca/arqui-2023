        org     100h

        section .text

; suma usando registros
        mov     byte[0200h], 5d
        mov     byte[0210h], 10d

        mov     BP, 0200h
        mov     SI, 0210h
        mov     AL, [BP]  ; dir indirecto
        mov     BL, [SI]  ; dir indirecto

        adc     AL, BL

; almacenar en celda de memoria
        mov     byte[220h], AL

        int     20h