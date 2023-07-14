    org     100h

    section .text

; Crea un Triangulo

    mov AH, 00
    mov AL, 12h
    int 10h

                        ; Vertice en el pixel 90 -> 5Ah
    mov CX, 5Ah         ; columna donde se pondra el punto 
    mov DX, 5Ah         ; fila donde se pondra el punto
    mov [0200h], DX     ; almacenara la ultima fila
    cols:
        rows:
            mov AH, 0Ch
            mov AL, 4h    ; rojo 
            int 10h

            add DX, 1h  ; densidad
            cmp DX, 0F0h
            jle rows
        
        mov DX, [0200h]
        add DX, 1h
        mov [0200h], DX

        add CX, 1h      ; densidad
        cmp CX, 0F0h
        jle cols
        
    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz read_char

    int 20h