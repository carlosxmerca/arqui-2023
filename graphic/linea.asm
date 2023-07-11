    org     100h

    section .text

    mov AH, 00
    mov AL, 12h
    int 10h

    mov CX, 10h     ; columna donde se pondra el punto 
    linea:
        mov AH, 0Ch
        mov AL, 0Fh    
        mov DX, 70h     ; fila donde se pondra el punto
        int 10h
        
        add CX, 3h
        cmp CX, 270h
        jle linea;

    s1:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz s1

    int 20h

