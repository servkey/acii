.MODEL SMALL
.CODE
Programa:
	MOV AX, @DATA
        MOV DS, AX


        MOV AH, 9
        MOV DX, OFFSET TEXTO
        ;LEA DX, TEXTO
        INT 21H

	MOV AX,4C00H
        INT 21H

.DATA
	Texto DB 'Saludos!!, clase de Arquitectura de Computadoras II', 0Dh, 0Ah, '$'
	TextoSalto DB 0Dh, 0Ah, '$'
.STACK
END Programa
