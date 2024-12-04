#-- Escribe un programa en ensamblador para inicializar los registros x5, x6, x7 y x8 con los valores 5, 6, 7 y 8 respectivamente. Utiliza li. 
#-- Además, estos valores se deben transferir a los registros x15, x16, x17 y x18 respectivamente: x15 = x5, x16 = x6, x17 = x7 y x18 = x8. Usa mv. 
#-- Por último, el programa termina.

	.text
	
	# Inicialización de los registros.
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8
	
	# Mover valores a los otros registros:
	mv x15, x5
	mv x16, x6
	mv x17, x7
	mv x18, x8
	
	# Terminar
	# ¡Cuidado! se modifica el registro x17
	li a7, 10
	ecall


#-- Preguntas:
	# 2: ¿Cuántas instrucciones tiene el programa?
		# 10
	# 3: ¿Cuántos bytes ocupa el programa?
		# 10*4 = 40 bytes
	# 4: Obtén el código máquina exportando a un fichero en formato hexadecimal.