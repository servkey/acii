.MODEL SMALL
.CODE
Programa:
	MOV AX, @DATA
	MOV DS, AX

	MOV DX, Offset Texto
	MOV AH, 9
	INT 21H


	SUB AX, 1
	SUB AX, AX
	MOV AX,4C00H
	INT 21H
.DATA
	Texto DB 'Saludos!!, clase de Arquitectura de Computadoras II', 0Dh, 0Ah, '$'
	TextoSalto DB 0Dh, 0Ah, '$'
.STACK
END Programa