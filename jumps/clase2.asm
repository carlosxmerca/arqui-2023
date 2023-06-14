        org     100h

        section .text

; Cargar datos
        mov     AX, 1d
        mov     BX, 10d
        mov     DX, BX      ; dir registro


        mov     [200h], AX
        mov     BP, 200h 
        mov     BX, [BP]    ; dir indirecto

        mov     AX, 0d
        call    suma        ; sumar DX y BX

        bucle:
            cmp   AX, 20d
            ja fin_bucle

            call sumarcinco ; sumar 5 a AX
            jmp   bucle

        int     20h

; functions
suma:
    add AX, DX
    add AX, BX 
    ret

sumarcinco:
    add AX, 5d
    ret

fin_bucle:
    ret