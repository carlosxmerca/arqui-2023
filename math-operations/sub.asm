        org     100h
        
        section .text

; resta con registros
        mov     AL, 8h
        mov     BL, 6h
        sub     AL, BL

; resta resultado negativo
        mov     AL, 6h
        mov     BL, 8h
        sub     AL, BL
        ; guardar numero negativo en memoria
        mov     [200h], AL
        ; summar 4 a FEh para observar que la máquina lo reconoce como -2
        add     byte [200h], 4h

        int     20h
