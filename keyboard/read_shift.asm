        org     100h

        section .text

; usar DEBUG
; Leer una interrupcion de teclado de SHIFT

        mov AX, 0h

        bucle:
                mov AH, 02h
                int 16h

                cmp AL, 01h     ; En mi compu se sale con SHIFT derecho
                jnz bucle

        int     20h