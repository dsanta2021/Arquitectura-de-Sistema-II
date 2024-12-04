#-- Progrma que haga lo mismo que el anterior, pero solo usando el registro x5.

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
	
	# Inicialización de los registros.
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)
	
	#-- Terminar
	li a7, 10
	ecall
	
	
#-- Preguntas:
	# 1: ¿Cuántos bytes ocupa el programa?
		# Como tiene 8 instrucciones, el programa ocupa 8*4= 32 bytes.
	# 2: ¿Cuál de los dos métodos usarías para acceder a las variables si queremos que el programa ocupe el menor espacio posible en la memoria?
		# Usaría este método ya que se usan menos bytes para almacenar el programa.