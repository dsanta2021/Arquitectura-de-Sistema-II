#-- Programa modificación del anterior. Los valores de las variables ahora se caragan en los registros x10,x11,x12 y x13.
#-- Las variables inicializadas a 1,2,3 y 4.

#-- Segmento de datos
	.data
	
	#-- Variables
a:	.word 1
b:	.word 2
c:	.word 3
d:	.word 4

#-- Segmento de código
	.text
	
	# Carga de las direcciones en los registros.
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	# Inicialización de los registros.
	lw x10, 0(x5)
	lw x11, 0(x6)
	lw x12, 0(x7)
	lw x13, 0(x8)
	
	#-- Terminar
	li a7, 10
	ecall
	
	
#-- Preguntas:
	# 1: ¿Cuántos bytes ocupa el programa?
		# Como tiene 14 instrucciones, el programa ocupa 14*4= 56 bytes.