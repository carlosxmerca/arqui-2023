        org     100h

        section .text

; Colorear de azul el pixel 120, 80

        mov AH, 00h
        mov AL, 12h
        int 10h         ; Este bloque inicia el modo video con resolucion 640x480

        mov CX, 120h     ; fila donde se pondra el punto
        mov DX, 80h      ; columna donde se pondra el punto

        mov AH, 0Ch     ; Peticion para escribir un punto
        mov AL, 01h     ; Indica que el pixel a encender sera de color azul -> 0001b
        mov BH, 03h     ; Pagina donde se mostrara el pixel

        int 10h         ; Llamar la interrupcion para encender el pixel en cuestion

        int     20h