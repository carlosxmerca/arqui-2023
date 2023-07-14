        org     100h

        section .text

; Inicar modo video con res estandard

        mov AH, 00h
        mov AL, 12h
        int 10h         ; Este bloque inicia el modo video con resolucion 640x480 o estandard

        int     20h