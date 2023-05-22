## Loops

```
; Basic loop structure
MOV BP, 0h
mov cx, 7       ; 7 iterations
loop1:
    MOV AL, [BP+200h]
    ADD BP, 1h  ; can also be: INC BP
    ADD [210h], AL
    loop loop1  ; loop instruction decrements cx and jumps to label if not 0
```