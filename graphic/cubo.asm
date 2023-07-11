    org     100h

    section .text

    mov AH, 00
    mov AL, 12h
    int 10h

    mov CX, 50h     ; columna donde se pondra el punto 
    row_1:
        mov AH, 0Ch
        mov AL, 0Fh    
        mov DX, 70h     ; fila donde se pondra el punto
        int 10h
        
        add CX, 3h
        cmp CX, 200h
        jle row_1;

    mov CX, 50h     ; columna donde se pondra el punto 
    row_2:
        mov AH, 0Ch
        mov AL, 0Fh    
        mov DX, 120h     ; fila donde se pondra el punto
        int 10h
        
        add CX, 3h
        cmp CX, 200h
        jle row_2;

    mov CX, 50h     ; columna donde se pondra el punto 
    mov DX, 70h     ; fila donde se pondra el punto
    call print_col

    mov CX, 200h     ; columna donde se pondra el punto 
    mov DX, 70h     ; fila donde se pondra el punto
    call print_col
        
    s1:
        mov AH, 00h
        int 16h
        cmp AL, 41h
        jnz s1

    int 20h

print_col:
    col: 
        mov AH, 0Ch
        mov AL, 0Fh    
        int 10h
        
        add DX, 3h
        cmp DX, 120h
        jle col
    ret