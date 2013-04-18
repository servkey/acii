.MODEL SMALL
.CODE
Programa:
	MOV AX, @DATA
        MOV DS, AX
        MOV CX, 2Dh
        SUB CX, 50

        ;---------------------------------------------------
        ;SUMA,RESTA

        ;MOV AH,01H
        ;INT 21H

        ;MOV BL,AL

        ;MOV AH,01
        ;INT 21H

        ;SUB AL,30H
        ;SUB BL,30H

        ;ADD AL,BL

        ;MOV AH,02H
        ;MOV DL,AL
        ;ADD DL,30H
        ;INT 21H

        

        ;MULTIPLICACION 2*3
        ;MOV AX, 2
        ;MOV BX, 3
        ;MUL BX


        ;DIVISION 9/2
        ;MOV BX, 2
        ;MOV AX, 9
        ;DIV BX

        ;---------------------------------

        XOR CX, CX
        XOR DX,DX
        CICLO:
                MOV AH,2
                MOV DL, 2AH
                INT 21H

                ADD CX, 1
        CMP CX, 10
        JNE CICLO

        ;JMP SALIR

        ;JE JNE JL JG JLE JGE JMP

        MOV AH, 1
        INT 21H


        SALIR:
        MOV AX,4C00H
        INT 21H                                               

.DATA
        ;Texto DB 'Saludos!!, clase de Arquitectura de Computadoras II', 0Dh, 0Ah, '$'
        ;TextoSalto DB 0Dh, 0Ah, '$'
.STACK
END Programa
