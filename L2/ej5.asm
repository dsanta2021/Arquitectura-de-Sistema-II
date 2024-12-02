.text
	
	addi x5, x0, 3  
	addi x6, x0, 5  
	addi x7, x0, 7  
	addi x8, x0, 9  
	
	
	sub x9, x7, x8   # x9 = (c - d)
	add x6, x6, x6   # x6 = b => (b + b)
	add x6, x6, x6   # x6 = (b + b) => (b + b) + (b + b) = 4b
	sub x9, x6, x9   # x9 = 4b - (c - d)
	add x5, x5, x5   # x5 = a => a + a = 2a
	add x5, x5, x9   # x5 = 2a => 2a + 4b - (c - d)
	addi x10, x5, 15 # x10 = f = 2a + 4b - (c - d) + 15
	
	#-- Terminar
	li a7, 10
	ecall 
	
#-- Preguntas:
	# 1: Obtén la expresión general que calcula el siguiente programa en ensamblador.
		# Si decimos que a=x5, b=x6, c=x7, d=x8 y f=x10
		# f = 2a + 4b - (c - d) + 15
	# 2: ¿Para qué valores se prueba?
		# Se pruban para los valores: a=3, b=5, c=7 y d=9
	# 3: ¿Cuánto vale el resultado?
		# Teóricamente f = 43
		# El resultado según el programa es x10 = f = 43
	# 4: ¿Cuál es el valor del byte de la posición de memoria 0x00400015
		# 03
	# 5: ¿Cuántos bytes de memoria ocupa este programa?
		# El progrma tiene 13 instrucciones. Cada una de ellas ocupa 4 bytes, por lo que el programa ocupa 13*4=52 bytes.