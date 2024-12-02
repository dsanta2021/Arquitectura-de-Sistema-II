#--- Ejecuta este código paso a paso. ¿Qué es lo que hace?

	.text
	
	addi x5, x0, 5
	addi x6, x0, 6
	addi x7, x0, 0
a:
	beq x5,x0,fin
	add x7, x7, x6
	addi x5, x5, -1
	b a
fin:
	li a7, 10
	ecall
	
	
#--- Respuesta: son dos contadores. Por un lado tenemos un contador decreciente 
# de x5 desde 5 hasta cero (que es lo que hace que termine la ejecucuión).
# Por otro lado, tenemos un contador creciente en el registro x7 que va aumentando 
# lo que vale el registro x6, en este caso 6.