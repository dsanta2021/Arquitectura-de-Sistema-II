#--- Ejecuta este código paso a paso. ¿Qué es lo que hace?

	.text
	
	addi x3, x0, 10
a:
	addi x3,x3,-1
	bgt x3,x0, a
	
	li a7, 10
	ecall
	
# Respuesta: lo que hace este progrma es implementar un contador hacia atrás de uno en uno
# desde el 10 hasta el 0.
	