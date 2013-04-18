.MODEL SMALL ;Modelo de memoria
.DATA
Texto DB ' ',0Dh,0Ah, '$'
.STACK
.CODE
mul:
MOV AX,@DATA
MOV DS,AX

; salto linea
MOV DX,offset Texto
MOV AH,9
INT 21H

;lectura de caracter
MOV AH,1
INT 21h
MOV CL,AL

;salto linea
MOV DX,offset Texto
MOV AH,9
INT 21H

;lectura de caracter
MOV AH,1
INT 21h

SUB AL,48
SUB CL,48

MOV AH,1
MOV DX,0

MUL CL

MOV BL,10
DIV BL

ADD AL,48
ADD AH,48

MOV BX,AX

;imprime cadena de caracteres
MOV DX,offset Texto
MOV AH,9
INT 21H

;lectura de caracter
MOV AH,2
MOV DL,BL
INT 21h

MOV AH,2
MOV DL,BH
INT 21h



MOV AX,4C00h;Funcion para finalizar el programa
INT 21H
END mul
