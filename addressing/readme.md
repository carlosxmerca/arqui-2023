## Addressing

### MOV
Tanto la fuente como el destino pueden ser registros o celdas de memoria pero deben cumplir la condición de que al menos uno de ellos sea un registro.

```
MOV destino, fuente
```

### DIRECCIONAMIENTO INMEDIATO
Este modo de direccionamiento se usa cuando queremos definir valores constantes iniciales de variables.
```
MOV AL, 05d
MOV AX, 2345h
MOV AL, "A"         ; se carga el código ASCII de la letra A en el registro  AL

MOV BL, 00001111b   ; se carga el registro BL con un dato binario.
MOV CL, 0f2h        ; el operando nunca debe comenzar con una letra
```

### DIRECCIONAMIENTO POR REGISTRO
El registro fuente y el registro destino pueden ser cualesquiera, **excepto** el registro de segmento de código (CS).

```
MOV AL, BL
```
***Nota:*** Para realizar este movimiento, los registros deben tener el mismo tamaño.

### DIRECCIONAMIENTO ABSOLUTO
Este modo de direccionamiento permite transferir un dato de un registro a una memoria o de una memoria a un registro.
Para este modo de direccionamiento, la celda de memoria debe estar en el segmento de datos.
```
MOV AL, DS:[0200h]
```

Si por ejemplo, tenemos dos datos de 8 bits cada uno AA y DD, guardados en la localidad de memoria 0200 y 0201 respectivamente, podemos enviarlos al registro BX de 16 bits (que contiene los registros de 8 bits BH y BL) de la siguiente manera:
```
MOV BX, DS:[0200h]
```
El registro BX tendrá ahora el dato AADD, respetando la significancia de los bits.

### DIRECCIONAMIENTO INDIRECTO
Este modo, el dato será transferido se encuentra en una celda de memoria, cuya dirección se carga en un registro base o índice (BX, BP, SI y DI)

```
MOV BX, 0200h
MOV AL, DS[BX]
```
```
BX = 0200
0200 = DD
AL = DD
```

### DIRECCIONAMIENTO BASE + INDICE
En esta instrucción observamos que, al sumar el dato de registro base más el de registro índice, se obtiene la dirección en la que se encuentra el dato que queremos cargar en AL.
```
MOV AL, DS[BP+SI]
```

```
BP = 0200   SI = 0005
0205 = DD
AL = DD
```

### DIRECCIONAMIENTO RELATIVO CON REGISTRO
De forma indirecta, cargamos el valor contenido en la dirección (0150h), que resultará de sumar la dirección BX más 0050h, en el registro AL.

```
MOV BX, 0100h
MOV AL, DS:[BX+50h]
```

### DIRECCIONAMIENTO RELATIVO BASE + INDICE
El dato que se desea manipular se encuentra en una localidad de memoria que se encuentra al sumar el valor de un Registro Base más un Registro Índice más un valor constante.
```
MOV BX, 0100h
MOV SI, 25h

MOV AL, DS:[BX+SI+25h]
```