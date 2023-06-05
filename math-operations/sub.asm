        org     100h
        
        section .text

; resta con registros
        mov     AL, 8h
        mov     BL, 6h
        sub     AL, BL
        mov     [200h], AL

; resta resultado negativo
        mov     AL, 6h
        mov     BL, 8h
        sub     AL, BL
        sub     AL, 2h
        
        ; guardar numero negativo en memoria
        mov     [210h], AL      ; Using sub AX = FFFC, Using sbb AX = FFFB

        ; summar 4 a FCh para observar que la máquina lo reconoce como -4
        add    byte [210h], 4h  ; Using sub [210h] = 00, Using sbb [210h] = FF

        ; Direccionamiento absoluto hacia AX
        mov     CL, 25h
        mov     [201h], CL
        mov     AX, DS:[200h]   ; AX: 2502

        int     20h
