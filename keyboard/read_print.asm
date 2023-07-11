    org     100h

    section .text

; Leer interrupciones hasta detectar "S"
; Imprimir la data ingresada por el usuario

    call    IniciarModoTexto
    mov     DL, 7
    mov     [0200h], DL
    
    read_char:
        mov AH, 00h
        int 16h

        call    MoverCursor
        call    EscribirCaracter

        cmp AL, 53h
        jnz read_char

    int 20h

IniciarModoTexto:       ;int 10h / 00h
;Argumentos de entrada:
;AH:	00h
;AL: 	00h → Modo texto. 40 columnas por 25 filas. 16 colores. 8 páginas.
;	    03h → Modo texto. 80 columnas por 25 filas. 16 colores. 8 páginas.
;       13h → Modo gráfico. 40 columnas por 25 filas. 256 colores. 320p x 200p.
        mov     AH, 0h
        mov     AL, 03h
        int     10h
        ret

MoverCursor:            ;int 10h / 02h
;Argumentos de entrada:
;AH 	02h
;DH 	fila
;DL 	columna
;BH: 	número de página (0 hasta 7).
        mov     AH, 02h 
        mov     DH, 5 
        mov     DL, [0200h]
        mov     BH, 0h 
        int     10h

        INC     DL
        mov     [0200h], DL
        ret

EscribirCaracter:       ;int 10h / 09h
;Argumentos de entrada:
;AH 	09h
;AL 	código ASCII del carácter.
;BH 	número de página (0 hasta 7).
;BL 	atributo del carácter.
;CX 	número de veces que se mostrara el carácter.
        mov     AH, 09h 
        ; mov     AL, "A" 
        mov     BH, 0h 
        mov     BL, 02h
        mov     CX, 1h 
        int     10h
        ret