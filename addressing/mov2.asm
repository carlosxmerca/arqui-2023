; MODOS DE DIRECCIONAMIENTO DE MEMORIA EN ENSAMBLADOR

	org	100h

	section .text
	
	; Directo o absoluto:
	mov 	AL, 25h		; dato inmediato a registro
	mov 	[200h], AL	; contenido de registro a celda de memoria

	; Indirecto por registro:
	; Esta operación solo funciona con registros BX o BP (registro base general o registro base puntero)
	mov 	BX, 200h	; dirección de memoria 200h a registro
	mov 	CX, [BX]	; contenido de celda de memoria 200h a registro

	; Indirecto base más índice:
	; Esta operación solo funciona con registros base BX o BP y con registros índice SI o DI
	mov 	BP, 100h	; dirección de memoria 200h a registro
	mov 	SI, 100h	; dato inmediato a índice
	mov 	DX, [BP+SI]	; contenido de celda de memoria 200h a registro

	; Relativo por registro:
	; Esta operación solo funciona con registros con registros índice SI o DI
	mov 	DI, 100h	; dato inmediato a índice
	mov 	AH, [DI+100h]	; contenido de celda de memoria 200h a registro

	; Relativo base más índice:
	mov 	byte[400h], 25h
	mov 	AX, [BX+SI+100h]
	mov		AX, 15h
	mov 	[BP+DI+200h], AX

	int 	20h