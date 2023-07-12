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

    mov CX, 97h     ; columna donde se pondra el punto 
    mov DX, 90h     ; fila donde se pondra el punto
    cols_inner:
        rows_inner:
            mov AH, 0Ch
            mov AL, 0Fh  ; blanco
            ;mov AL, 0Ch    ; rojo 
            int 10h

            add DX, 8h  ; densidad
            cmp DX, 100h
            jle rows_inner
        
        mov DX, 90h
        add CX, 1h      ; densidad
        cmp CX, 195h
        jle cols_inner
        
    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz read_char

    int 20h