        org     100h

        section .text

; Factorial de un numero
; Cargar datos
        mov     AX, 1d
        mov     CX, 4d      ; dir registro

        call    factorial

        int     20h

; functions
almacenar:
    mov [200h], AX
    ret

almacenar1:
    mov BX, 1
    mov [200h], BX
    ret

multiplicar:
    mul CX
    ret

bucle:
    multiplicar_n_veces:
        call multiplicar
        loop multiplicar_n_veces

        call almacenar
    ret

factorial:
    cmp cx, 0
    je almacenar1

    cmp cx, 0
    ja bucle

    ret       
