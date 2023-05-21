; ADC

	org	100h

	section .text
	
	; Almacenar carnet
	MOV     AL, 0d
    MOV     [200h], AL 
    MOV     [201h], AL 
    MOV     [202h], AL 
    MOV     AL, 5d
    MOV     [203h], AL
    MOV     AL, 8d
    MOV     [204h], AL
    MOV     AL, 8d
    MOV     [205h], AL
    MOV     AL, 2d
    MOV     [206h], AL
    MOV     AL, 0d
    MOV     [207h], AL  

    ; Basic loop structure
    MOV     BP, 0h
    mov cx, 7    ; 7 iterations
    loop1:
        MOV AL, [BP+200h]
        ADD BP, 1h  ; can also be: INC BP
        ADD [210h], AL
        loop loop1  ; loop instruction decrements cx and jumps to label if not 0

	int 	20h