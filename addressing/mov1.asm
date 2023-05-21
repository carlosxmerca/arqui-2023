 ; EJEMPLO DE INSTRUCCIÓN MOV       
	
	org 	100h	; direcciones relativas comienzan desde la número 100 en hexadecimal

	section	.text	; inicia sección de código principal

	; mover dato inmediato a registro
	mov	AX, 8A4Fh	
	mov	BH, 5Dh
	mov	CL, "A"

	; mover contenido de registro a celda de memoria
	mov	[200h], AX
	mov	[210h], BH
	mov	[220h], CL

	; mover dato innmediato a celda de memoria
	mov	byte [230h], 11d
	mov	byte [240h], "B"

	int	20h	; interrupción para finalizar el programa