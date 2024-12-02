#-- Programa para calcular la suma de los números enteros pares.
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador.
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 2   #-- x5 = x5 + 2
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle
	
# -- Preguntas:
	# 2: ¿Cuántas instrucciones en código máquina tiene?
		# 5.
	# 3: ¿Cuántos bytes de memoria ocupa el programa?
		# 5 instruciiones y cada una con 4 bytes --> 20 bytes en total.
	# 6: Simula el programa y obtén el valor de la suma de los 25 primeros números pares. 
	# Coloca un Breakpoint en la instrucción de salto b para que pare en cada iteración. 
	# Dale al botón de play hasta llegar al valor pedido.
		# 650