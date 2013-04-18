 ;###########################################
;####	  Descripción del  Programa	####
;####	Primer Programa		   	####
;####	Fecha:  <fecha de elaboración>	####
;####	Nombre: <nombre completo> 	####
;####	Arquitectura de Computadoras II ####
;###########################################
.MODEL SMALL
.CODE
Programa:
	;######################################################
	;Movimiento en el segmento de datos	  

	MOV AX, @DATA
	MOV DS, AX

  	;######################################################
	;A partir de aquí empiezas con tu programa! ####

	MOV CX,0
        MOV SI,0
		
	Ciclo:
                        MOV ah,01h      ;Lectura de caracter
                        INT 21h 	;Ejecutar caracter
                        CMP al,13
			JE Continuar
                        MOV Usuario[SI],al 
                        INC CX    ;Incrementar CX, SI
                        INC SI    
	CMP CX, 10
	JL Ciclo

        Continuar:
			MOV Usuario[SI],'$' ;Terminar la cadena


	MOV AH, 9
	MOV DX, OFFSET Salto
	INT 21h

	MOV AH, 9
	LEA DX, Usuario
	INT 21h

	;Salir	
	MOV AX,4C00H
	INT 21H

.DATA
	UDefault DB 'admin',0Dh, 0Ah, '$'
	Salto DB 0Dh, 0Ah, '$'
	Usuario DB 10 DUP(' '),'$'
.STACK
END Programa