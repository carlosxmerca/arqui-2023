        org     100h

        section .text

; cuatro sumas sucesivas
        mov     CX, 4d
        mov     AH, 0d
        mov     BH, 70d

        bucle:
            add AH, BH
            loop bucle

; validar si hay acarreo
        mov AL, 0
        mov BL, 0

        adc BL, 0
        add AL, 0
        
        cmp BL, AL
        ja resta

        int     20h

; function je -> iguales
; function ja -> A > B
resta:
    mov DH, AH
    sub DH, BH 

    cmp DH, BH
    ja mover
    mov AH, 5d ; esta mierda no se ejecuta
    ret

mover:
    mov BP, 210h
    mov [BP], DH
    ret