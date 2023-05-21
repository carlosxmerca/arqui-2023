        org 100h

        section .text

        XOR SI, SI ; Limpiar SI
        XOR DI, DI ; Limpiar DI
        MOV word CX, 5d ; colocar 5d en CX (este es el tamaño de la variable)
        ;CX VA LIGADO CON LOOP, LOOP se encarga de restar -1 a CX en cada iteración
iterar:
        MOV byte AL, [msj+DI] ; En la primera iteración DI tiene 0, se agarra la primera letra
        MOV byte [200h+SI], AL ; En la primera iteración SI tiene 0, se coloca en 200h+0
        INC SI ; Se incrementa SI en 1, similar a SI++ para lenguajes de alto nivel
        INC DI ; Se incrementa DI en 1, similar a DI++ para lenguajes de alto nivel
        LOOP iterar ; Se manda a llamar la etiqueta iterar
exit:
        int 20h

        section .data

        msj DB "Hola" ; string msj = "Hola"