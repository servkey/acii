.MODEL SMALL
.CODE
Programa:
	MOV AX, @DATA
        MOV DS, AX

        MOV AX,2
        MOV BL,3
        MUL BL

        MOV AX, 7
        MOV BL, 3
        DIV BX

        cmp ax,2
        je SALIR

        mov ax,0
        SALIR:
	MOV AX,4C00H
        INT 21H

.DATA
	Texto DB 'Saludos!!, clase de Arquitectura de Computadoras II', 0Dh, 0Ah, '$'
	TextoSalto DB 0Dh, 0Ah, '$'
.STACK
END Programa
