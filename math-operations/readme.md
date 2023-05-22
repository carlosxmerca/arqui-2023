## Math operations
El microprocesador 8086 trabaja las cuatro operaciones aritméticas básicas, con signo o sin signo, de forma binaria. Estas operaciones son: suma binaria, resta binaria, producto binario y cociente binario.

### INSTRUCCION DE SUMA ADD
Esta instrucción permite sumar dos datos binarios contenidos en registros o localidades de memoria. Igual que en la instrucción MOV, **al menos uno de los operandos debe ser un registro.**

```
MOV AL, 05d
MOV BL, 03d
ADD AL, BL
```

### INSTRUCCION DE SUMA CON ACARREO ADC
Esta instrucción permite sumar dos datos y además, suma el dato  contenido en la bandera carry. Esta función se vuelve útil cuando se  necesita encadenar sumas de números binarios grandes imposibles de  operar directamente.

Para realizar esta suma se debe primero borrar el acarreo (utilizando CLC), para asegurarse de no sumar ningún dato que estuviere guardado anteriormente.

```
ADC AX, BX
```

### RESTA DE NÚMEROS BINARIOS
El **complemento a uno** de un binario es aquel número que resulta de  invertir todos los bits de un número (cambiar 1 por 0 y viceversa). El complemento a uno también representa el negativo del número original.

El **complemento a dos** de un número binario se obtiene de sumar un 1 al complemento a uno.

Para **restar dos números binarios**, primero se obtiene el complemento a  dos del sustraendo y después, se suma al minuendo **sin tener en cuenta el primer dígito de la izquierda**.

### INSTRUCCION DE RESTA SUB
Esta instrucción resta el contenido del operando destino menos el
operando fuente y coloca el resultado en el registro destino.

Esta instrucción resta el contenido de AL menos el BL y coloca el resultado de dicha operación (diferencia) en AL.
```
SUB AL, BL
```

### INSTRUCCION RESTA CON PRESTAMO SBB
Esta instrucción resta el destino la fuente y le resta el contenido de la bandera carry. De la misma forma que en la instrucción resta, el resultado de la operación se coloca en el destino.

```
SBB DESTINO, FUENTE
```

### INSTRUCCION MULTIPLICACION MUL
La instrucción MUL realiza multiplicación binaria sin signo entre un operando y el registro acumulador (AX o AL). Si el operando es un byte (8 bits), se multiplica con AL (el acumulador) y **el producto se guarda en AX**.

Si el operando es una palabra (16 bits), el multiplicando es el registro AX. El producto se coloca en los registros **AX** y **DX**. En AX los dos bytes menos significativos y en el segundo, los dos bytes más significativos

```
Resultado usando (16 bits): DX AX
```

Para identificar si el resultado es más grande que una palabra, se consultan las bañeras **CF** y **OF** (Acarreo y desbordamiento). Si han sido habilitadas (1), entonces el número "no cabe" en un registro (por tener más de 16 bits) y se afecta el registro **DX**.

```
MUL BL
```
En la instrucción anterior, se multiplica el contenido de BL por el del acumulador AL. El resultado se cargará en AX.

```
MUL CX
```
En la instrucción anterior multiplica el contenido de CX por el  contenido de AX. El resultado es puesto en el registro par DX:AX

### MULTIPLICACION CON SIGNO IMUL

La instrucción IMUL lleva a cabo una operación de multiplicación con signo entre el acumulador (AL o AX) y un operando (que puede ser el valor contenido en un registro).

```
IMUL BL
```

### INSTRUCCION DIVISION DIV
Esta instrucción se utiliza para dividir dos números, de los cuales, el *dividendo* se encuentra en el acumulador **AL** o **AX** (igual que en el producto) si el divisor es un byte (8 bits) o en el registro par **DX:AX** si el divisor es una palabra (16 bits)

Si el divisor es un dato de 8 bit (byte), el cociente se coloca en AL y el residuo en AH

Si el divisor es un dato de 16 bit (palabra), el cociente se coloca en AX y el residuo en DX.

```
DIV BX
```

### INSTRUCCION DIVISION CON SIGNO IDIV
Esta instrucción trabaja igual que la instrucción DIV. La diferencia radica en que IDIV considera el signo de los operandos y da el signo del resultado.

```
IDIV BL
```
