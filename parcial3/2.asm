        org     100h

        section .text

; Interrupciones de mouse

        mov AX, 0
        int 33h    ; inicializar el driver del mouse

        mov AX, 1
        int 33h    ; mostrar el cursor del mouse

        mov AX, 3
        int 33h    ; leer la posición del mouse

        int     20h