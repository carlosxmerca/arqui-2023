    org     100h

    section .text

; Leer interrupciones hasta detectar "S"

    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 53h
        jnz read_char

    int 20h