@echo off
echo Compilando c�digo ASM....
echo Programa: %1
arm-linux-androideabi-as -o %1.o %1.S
arm-linux-androideabi-ld -s -o %1 %1.o