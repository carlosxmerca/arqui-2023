    org     100h

    section .text

; Espera cualquier letra y se sale

    mov AL, 0h

    read_char:
        mov AH, 00h
        int 16h
        cmp AL, 0h 
        jl read_char

    int 20h