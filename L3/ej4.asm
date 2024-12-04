#-- Programa que defina las variables: a,b,c,y d inicializadas a 0.
#-- Cargar en los registros x5,x6,x7 y x8 las direcciones de las variables. Usando la.

	#-- Segmento de datos
	.data
	
	#-- Variables
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0

	#-- Segmento de código
	.text
	
	# Carga de las direcciones en los registros.
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	#-- Terminar
	li a7, 10
	ecall
	
#-- Preguntas:
	# 1: ¿Cuántos bytes ocupa el programa?
		# Como tiene 10 instrucciones, el programa ocupa 10*4= 40 bytes.