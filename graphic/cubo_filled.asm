    org     100h

    section .text

; Crea un rectangulo de puntos usando un doble bucle

    mov AH, 00
    mov AL, 12h
    int 10h

    mov CX, 50h     ; columna donde se pondra el punto 
    mov DX, 70h     ; fila donde se pondra el punto
    cols:
        rows:
            mov AH, 0Ch
            ; mov AL, 0Fh  ; blanco
            mov AL, 0Ch    ; rojo 
            int 10h

            add DX, 5h  ; densidad
            cmp DX, 120h
            jle rows
        
        mov DX, 70h
        add CX, 5h      ; densidad
        cmp CX, 200h
        jle cols
        
    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz read_char

    int 20h