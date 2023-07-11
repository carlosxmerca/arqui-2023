    org     100h

    section .text

    mov AH, 00h     ; modo video
    mov AL, 12h     ; modo grafico 640x480 VGA
    int 10h

    int 20h