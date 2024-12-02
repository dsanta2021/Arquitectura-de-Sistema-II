#-- Programa que calcule la función: f = (a + b + c) - [(d - a) + (e + 3) - 30].
#-- Comprueba el resultado para los valores de las variables: a=2, b=4, c=6, d=8, e=10

# Los registros que serán como las variables son:
# x1=a, x2=b, x3=c, x4=d, x5=e, x6=f

	.text
	
	#-- Inicialización de las variables.
	addi x1, x0, 2
	addi x2, x0, 4
	addi x3, x0, 6
	addi x4, x0, 8
	addi x5, x0, 10
	addi x6, x0, 0
	
	# 1º calculamos la parte: (d -a) -> x7 = x4 - x1
	sub x7, x4, x1
	
	# 2º calculamos: (e + 3) -> x8 = x5 + 3
	addi x8, x5, 3
	
	# 3º calculamos: (e + 3) - 30 -> x8 = x5 + 3 - 30 = x8 - 30
	addi x8, x8, -30
	
	# 4º calculamos lo que hay en el corchete: [(d - a) + (e + 3) - 30] -> x9 = x7 + x8
	add x9, x7, x8
	
	# 5º calculamos: (a + b) -> x6 = x1 + x2
	add x6, x1, x2
	
	# 6º calculamos: (a + b + c ) -> x6 = x1 + x2 + x3 = x6 + x3
	add x6, x6, x3
	
	# 7º calculamos f -> x6 = x6 - x9
	sub x6, x6, x9
	
	# Terminar
	li a7, 10
	ecall
	
# -- Solución: Se obtiene que f = x6 = 23
	
	