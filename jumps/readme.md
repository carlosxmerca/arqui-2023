## Jumps

### JE
```
cmp eax, ebx ; compara los registros eax y ebx
je etiqueta ; salta a etiqueta si son iguales (je = jump if equal)
...
etiqueta:
; instrucciones después del salto
```

### JA
```
cmp eax, ebx  ; Compara los registros eax y ebx
ja etiqueta  ; Salta a etiqueta si eax es mayor que ebx sin signo (ja = jump if above)
```

###  JNA
```
cmp eax, ebx  ; Compara los registros eax y ebx
jna etiqueta  ; Salta a etiqueta si eax no es mayor que ebx sin signo (jna = jump if not above)
```