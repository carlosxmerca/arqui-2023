        org     100h

        section .text

; Corto 2
; Segunda parte
        mov AX, 0d

        ; test escenario 1
        mov BH, 12d
        mov BL, 3d
        ; test escenario 2
        ; mov BH, 8d
        ; mov BL, 1d

        mov [210h], BH
        mov [220h], BL

        mov DH, [210h]
        mov DL, [220h]  ; mover valores de manera inmediata

        mov BL, 10d
        mov BH, 22d
        add AL, DH
        add AL, DL      ; sumar ambos numeros

        cmp AL, 10d
        ja  convertir_lib_kg    ; si inicalmente es mayor que 10 conv de lib a kg

        cmp AL, 10d
        jle escenario_2         ; si es menor que 10 sumar 2 y conversion de kg a lib

        int     20h

; functions
fin_bucle:
    call convertir_kg_lib
    ret

sumar_dos:
    add AL, 2d
    ret

convertir_kg_lib:
    mul BH        ; al multiplicar la respuesta esta en AX
    div BL        ; al dividir la respuesta esta en AL - AH

    mov [200h], AL
    mov [201h], AH ; almacenar conversion
    ret

convertir_lib_kg:
    mul BL        ; al multiplicar la respuesta esta en AX
    div BH        ; al dividir la respuesta esta en AL - AH

    mov [200h], AL
    mov [201h], AH ; almacenar conversion
    ret

escenario_2:
    bucle:          ; sumar 2 hasta que sea mayor que 20
        cmp AL, 20d
        ja  fin_bucle

        call sumar_dos
        jmp bucle
    ret