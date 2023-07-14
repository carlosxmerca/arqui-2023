    org     100h

    section .text

; Crea un rectangulo solido

    mov AH, 00
    mov AL, 12h
    int 10h

    mov CX, 00h     ; columna donde se pondra el punto 
    mov DX, 00h     ; fila donde se pondra el punto
    cols_back:
        rows_back:
            mov AH, 0Ch
            mov AL, 0Fh  ; blanco
            int 10h

            add DX, 1h  ; densidad
            cmp DX, 258h
            jle rows_back
        
        mov DX, 00h
        add CX, 1h      ; densidad
        cmp CX, 285h
        jle cols_back

    mov CX, 70h     ; columna donde se pondra el punto 
    mov DX, 70h     ; fila donde se pondra el punto
    cols:
        rows:
            mov AH, 0Ch
            ; mov AL, 0Fh  ; blanco
            mov AL, 0Ch    ; rojo 
            int 10h

            add DX, 1h  ; densidad
            cmp DX, 0F0h
            jle rows
        
        mov DX, 70h
        add CX, 1h      ; densidad
        cmp CX, 200h
        jle cols
        
    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz read_char

    int 20h