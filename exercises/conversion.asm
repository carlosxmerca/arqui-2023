        org     100h

        section .text

; Convertir F a C
; Cargar datos
        ; E200 -> ingresar data
        mov     AL, 0d
        mov     BH, 5d
        mov     BL, 9d
        mov     AL, [200h] 

        ; validar que el numero sea positivo
        cmp AL, 0
        ja conversion

        int     20h

; functions
conversion:
    sub AL, 32
    mul BH
    div BL

    mov [210h], AL
    mov [211h], AH

    ret
