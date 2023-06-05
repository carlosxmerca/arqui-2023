        org     100h

        section .text

; Carlos Eduardo Mercado Gutiérrez 00058820
        mov     BH, 35h     ; registro BH por medio de un direccionamiento inmediato el dato 35 en hexadecimal
        mov     AL, 25d
        mov     BL, AL      ; registro BL que llegue el dato 25 en decimal usando direccionamiento por registro
        add     BH, BL      ; operación suma sin tomar en cuenta el acarreo
        mov     [210h], BH  ; El resultado de la operación anterior se debe de mover hacía la dirección 210h
        
        mov     SI, 210h    ; Usando direccionamiento indirecto mover el dato de la dirección 210h al registro AL 
        mov     AL, [SI]

        mov     BL, 8d      ; cargar en el registro BL el dato 8d
        mul     BL          ; realizar una multiplicación sin signo (AL x BL)
        
        mov     [200h], AX  ; mover el resultado de la multiplicación hacía la dirección de memoria 200h


        int     20h