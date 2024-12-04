	.data
	
a:
b:
	.word 1,2,3,4
c:
	.word 10
	.word 20
d:	.word 30
e:

	.text
	
	li a7, 10
	ecall 
	
#-- Preguntas:
	# 1: ¿Cuántas palabras hay almacenadas en el segmento de datos?
		# 7, contadas desde la directiva .word se ve.
	# 2: ¿Cuántos bytes ocupa el segmento de datos?
		# 7*4=28 bytes
	# 3:¿Cuántos bytes ocupa el programa?
		# Hay 2 instrucciones. Por tanto, el programa ocupa 8 bytes
	# 4: Escribe en una tabla las direcciones de las etiquetas:
		# Etiqueta	Dirección
		#    a		0x10010000
		#    b		0x10010000
		#    c		0x10010010
		#    d		0x10010018
		#    e		0x1001001c
	# 5: ¿Qué palabra hay almacenada en la dirección 0x10010014?
		# 20 en decimal.
	# 6: Rellena esta tabla, indicando qué bytes están almacenados en cada dirección
		# Dirección      Byte
		#0x10010000	  01
		#0x10010001	  00
		#0x10010002	  00
		#0x10010003	  00
		#0x10010004	  02
		#0x10010005	  00
		#0x10010006	  00
		#0x10010007	  00
	 	# ---------	-----
		#0x10010018	  30  --> El valor de la variable d
		#0x10010019	  00
		#0x1001001A	  00
		#0x1001001B	  00
	# 7: Vuelca el segmento de datos a un fichero en formato hexadecimal.
	