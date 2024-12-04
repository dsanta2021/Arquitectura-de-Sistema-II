#-- Programa que calcula la siguiente expresión: f = (a + b + c) - (d - 3).
#-- Las variables a,b,c,d y f están en la memoria, inicializadas con los valores -5, 2, 30, 5 y 0 respectivamente. 
#-- El resultado final se deposita en la variable f.

#- Segmento de datos
	.data
	
	# Variables
a:	.word -5
b:	.word 2
c:	.word 30
d:	.word 5
f:	.word 0

#- Segmento de código
	.text
	
	# Obtener la dirección de a
	la x1, a
	
	# Inicialización de los registros.
	lw x2, 0(x1)	# x2 = a
	lw x3, 4(x1)	# x3 = b
	lw x4, 8(x1)	# x4 = c
	lw x5, 12(x1)	# x5 = d
	
	# 1º: calculamos a + b
	add x8, x2, x3
	
	# 2º: calculamos (a + b) + c
	add x8, x8, x4
	
	# 3º: calculamos d - 3
	addi x9, x5, -3
	
	# 4º: calculamos f
	sub x10, x8, x9
	
	# Almacenar el resultado en x10
	sw x10, 16(x1)
	
	# Terminar
	li a7, 10
	ecall
	
	
#-- Preguntas:
	# 2: Ensámblalo y comprueba que el valor calculado en la variable f es correcto.
		# Teóricamente el valor de f es 25
		# El valor del registro x10 = f es 25
	# 3: ¿Cuántos bytes ocupa el programa?
		# El programa tiene 13 instrucciones. Por tanto, como cada instrucción ocupa 4 bytes, el programa ocupa 52 bytes.
	# 4: ¿En qué dirección de memoria está almacenada la variable f?
		# En la dirección 10010010
	