    org     100h

    section .text

; Crea un rectangulo de puntos usando un doble bucle

    mov AH, 00
    mov AL, 12h
    int 10h

    mov CX, 50h         ; columna donde se pondra el punto
    mov DX, 70h         ; fila donde se pondra el punto
    mov [0200h], DX     ; almacenar fila de inicio
    mov BP, 00h         ; contador x defecto

    cols:
        rows:
            mov SI, [0200h]
            cmp SI, 120h
            jge read_char

            mov AH, 0Ch
            ; mov AL, 0Fh  ; blanco
            mov AL, 0Ch    ; rojo 
            int 10h

            add DX, 1h  ; densidad
            cmp DX, 120h
            jle rows
        
        mov DX, [0200h]
        cmp BP, 12h
        jge bajar_escalon

        inc BP
        add CX, 1h      ; densidad
        cmp CX, 240h
        jle cols
        
    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz read_char

    int 20h

bajar_escalon:
    mov DX, [0200h]
    add DX, 20h
    mov [0200h], DX
    mov BP, 0h
    jmp cols

