# Programa para inicializar el registro 6 a 0,restarle 1 y terminar

	.text
	
	#-- Inicializar el registro x6 a 0
	addi x6, x0, 0
	
	#-- Restarle uno al registro x6
	addi x6, x6, -1
	
	#-- Finalizar
	li a7, 10
	ecall