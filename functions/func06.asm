    org     100h

    section .text

    call    IniciarModoTexto
    
    call    imprimir_linea_1
    ;call    imprimir_linea_2

    call    imprimir_linea_2_1
    call    imprimir_linea_2_2
    call    imprimir_linea_2_3
    call    imprimir_linea_1

    int 20h

imprimir_linea_1:
    mov AH, 06h
    mov AL, 5h     ; numero de filas
    mov BH, 20h     ; color a mostrar
    mov CX, 00h     ; desde
    mov DX, 184Fh   ; hasta

    int 10h
    ret

imprimir_linea_2:
    mov AH, 06h
    mov AL, 02h     ; numero de filas
    mov BH, 50h     ; color a mostrar
    mov CX, 00h     ; desde
    mov DX, 184Fh   ; hasta

    int 10h
    ret

imprimir_linea_2_1:
    mov AH, 06h
    mov AL, 04h
    mov BH, 20h
    mov CX, 00h
    mov DX, 1816h

    int 10h
    ret

imprimir_linea_2_2:
    mov AH, 06h
    mov AL, 04h
    mov BH, 10h
    mov CX, 17h
    mov DX, 1837h

    int 10h
    ret

imprimir_linea_2_3:
    mov AH, 06h
    mov AL, 04h
    mov BH, 20h
    mov CX, 38h
    mov DX, 184Fh

    int 10h
    ret

IniciarModoTexto:       ;int 10h / 00h
;Argumentos de entrada:
;AH:	00h
;AL: 	00h → Modo texto. 40 columnas por 25 filas. 16 colores. 8 páginas.
;	03h → Modo texto. 80 columnas por 25 filas. 16 colores. 8 páginas.
;       13h → Modo gráfico. 40 columnas por 25 filas. 256 colores. 320p x 200p.
        mov     AH, 0h
        mov     AL, 03h
        int     10h
        ret
