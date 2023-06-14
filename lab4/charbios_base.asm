        org 100h

        section .text

        call    IniciarModoTexto
        call    MoverCursor
        call    EscribirCaracter
        call    EsperarTecla

        int 20h

;FUNCIONES

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

MoverCursor:            ;int 10h / 02h
;Argumentos de entrada:
;AH: 	02h
;DH: 	fila
;DL: 	columna
;BH: 	número de página (0 hasta 7).
        mov     AH, 02h 
        mov     DH, 10 
        mov     DL, 20 
        mov     BH, 0h 
        int     10h
        ret

EscribirCaracter:       ;int 10h / 09h
;Argumentos de entrada:
;AH: 	09h
;AL: 	código ASCII del carácter.
;BH: 	número de página (0 hasta 7).
;BL: 	atributo del carácter.
;CX: 	número de veces que se mostrara el carácter.
        mov     AH, 09h 
        mov     AL, "A" 
        mov     BH, 0h 
        mov     BL, 14h
        mov     CX, 1h 
        int     10h
        ret

EsperarTecla:           ;int 16h / 00h
;Argumentos de entrada:
;AH: 	00h.					
        mov     AH, 00h 
        int     16h
;Argumentos de sálida:
;AH: 	BIOS scan code.
;AL: 	carácter ASCII leído.
        ret