    org     100h

    section .text

    mov AH, 00
    mov AL, 12h
    int 10h

    mov AH, 0Ch
    mov AL, 0Fh
    mov CX, 50h     ; fila donde se pondra el punto
    mov DX, 70h     ; columna donde se pondra el punto
    int 10h

    s1:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz s1

    int 20h
