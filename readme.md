## Arquitectura de computadoras 2023

### Compilación y debug
```
nasm -f bin <name>.asm -o <name>.com
dosbox .
debug.exe <name>.com
```

### Banderas en Debug
Banderas of df if sf zf af pf cf 
#### Todas SET (1) 
```
OV DN EI NG ZR AC PE CY 
```
#### Todas CLEARED (0) 
```
NV UP DI PL NZ NA PO NC 
```
- Overflow of = **OV** (OVerflow) **NV** (No oVerflow) 
- Direction df = **DN** (decrement) **UP** (increment) 
- Interrupt if = **EI** (enabled) **DI** (disabled) 
- Sign sf = **NG** (Negative) PL (Positive) 
- Zero zf = **ZR** (Zero) NZ (Not Zero) 
- Aux Carry af = **AC** (auxiliary carry) **NA** (No Ac) 
- Parity pf = **PE** (even) **PO** (odd) 
- Carry cf = **CY** (Carry) **NC** (No Carry)