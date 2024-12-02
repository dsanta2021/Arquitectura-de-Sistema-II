#-- Programa que calculala la sucesión de Fibonacci: 0,1,1,2,3,5,8,13,21...
#-- Dejar el resultado de cada iteración en el registro x7

	.text
		
	# Inicilización de los registros x5, x6 y x7:
	addi x5, x0, 0
	addi x6, x0, 1
	addi x7, x0, 0
	
	# Bucle para la sucesión
bucle:
	# -- Calculo del siguiente termino de la sucesión.
	add x7, x5, x6
	
	# -- Actulización de x5 y x6
	add x5, x6, x0
	add x6, x7, x0
	
	b bucle
	
# Preguntas:
	# 1: Simula el programa poniendo un Breakpoint para que se pare en cada iteración del bucle. 
	# Obten el valor del término f(10) de fibonacci.
		# 55
	# 2: ¿Cuántas instrucciones en código máquina tiene?
		# 7
	# 3: ¿Cuántos bytes de memoria ocupa el programa?
		# Al tener 7 instrucciones (cada una de 4 bytes), en memoria el programa ocupa 28 bytes