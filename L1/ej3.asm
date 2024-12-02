# Programa para hacer tres contadores: uno para cada registro x3, x4 y x5

.text

	#Contador x3: suma 1 empezando en 0
	#Contador x4: suma 3 empezando en 0
	#Contador x5: suma 5 empezando en 0
	
	#-- Inicializar el registro x3 a 0
	addi x3, x0, 0
	
	#-- Inicializar el registro x4 a 0
	addi x4, x0, 0
	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
	bucle:
		#-- Incrementar el registro x5 en dos unidades
		addi x3, x3, 1  #-- x3 = x3 + 1
		
		#-- Incrementar el registro x5 en dos unidades
		addi x4, x4, 3  #-- x4 = x4 + 3
		
		#-- Incrementar el registro x5 en dos unidades
		addi x5, x5, 5  #-- x5 = x5 + 5
	
		#-- Repetir indefinidamente		
		b bucle