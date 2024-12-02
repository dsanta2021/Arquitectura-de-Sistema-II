#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 1   #-- x5 = x5 + 1
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle
	
#-- Preguntas:
	# 1: ¿Cuántas instrucciones en código máquina tiene?
		# Tiene 5 instrucciones.
	# 2: ¿Cuántos bytes de memoria ocupa el programa?
		# 20 bytes.
	# 3: Completa esta tabla, indicando la instrucción en código máquina y su dirección (alineada).
		# Son las dos primeras columnas que se ven después de ensamblar.
	# 4: Completa la tabla indicando qué byte del programa está almacenado en qué dirección.
		# Dirección	Byte
		# 0x00400000	 93
		# 0x00400001	 02
		# 0x00400002	 00
		# 0x00400003	 00
		# 0x00400004	 13
		# 0x00400005	 03
		# 0x00400006	 00
		# 0x00400007	 00
		# 0x00400008	 93
		# 0x00400009	 82
		# 0x0040000A	 12
		# 0x0040000B	 00
		# 0x0040000C	 33
		# 0x0040000D	 03
		# 0x0040000E	 53
		# 0x0040000F 	 00
		# 0x00400010	 6f
		# 0x00400011	 f0
		# 0x00400012	 9f
		# 0x00400013	 ff
	# 5: Simula el programa y obtén el valor de la suma de los 25 primeros números enteros. 
	# Coloca un Breakpoint en la instrucción de salto b para que pare en cada iteración. 
	# Dale al botón de play hasta llegar al valor pedido.
		# El valor es de 325.