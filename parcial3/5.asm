        org     100h

        section .text

; usar DEBUG
; Leer una interrupcion de teclado

        mov AH, 10h
        int 16h

        mov [0200h], AL     ; codigo ASCII
        mov [0210h], AH     ; codigo de rastreo

        int     20h