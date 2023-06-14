        org 100h

        section .text

        call    IniciarModoTexto
        call    MoverCursor
        call    EscribirPalabra

        call    MoverCursor2
        call    EscribirPalabra2

        call    MoverCursor3
        call    EscribirPalabra3
        call    EsperarTecla

        int 20h
 
; Imprimir en consola :p
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
        mov     DL, 10 
        mov     BH, 0h 
        int     10h
        ret

MoverCursor2:       
        mov     AH, 02h 
        mov     DH, 15 
        mov     DL, 25 
        mov     BH, 0h 
        int     10h
        ret

MoverCursor3:       
        mov     AH, 02h 
        mov     DH, 19 
        mov     DL, 30 
        mov     BH, 0h 
        int     10h
        ret

EscribirPalabra:        ;int 21h / 09h
        mov     AH, 09h
        mov     DX, hola
        int     21h
        ret

EscribirPalabra2:
        mov     AH, 09h
        mov     DX, quetal
        int     21h
        ret

EscribirPalabra3:
        mov     AH, 09h
        mov     DX, madrid
        int     21h
        ret

EsperarTecla:           ;int 16h / 00h
;Argumentos de entrada:
;AH: 	00h					
        mov     AH, 00h 
        int     16h

;Argumentos de sálida:
;AH: 	BIOS scan code.
;AL: 	carácter ASCII leído.
        ret

section .data
        hola db 'Hola, mundo$'
        quetal db 'Como esta$' 
        madrid db 'Hala Madrid$' 
