# PR1. PRINCIPIO DE COMPUTADORES.
# Autor: Marcos Barbuzano Socorro alu0101629469@ull.edu.es
# Fecha ultima modificacion: 27/2/24

	.data

titulo:		.asciiz "\nPR1: Principio de computadores.\n"
pet:		  .asciiz "\nIntroduzca maximo error permitido: "
caderr:		.asciiz "\nError: el dato introducido debe cumplir 0.00001 <= dato < 1\n"
cade:		  .asciiz "\nNumero e: "
cadnt:		.asciiz "\nNumero de terminos: "
cadfin:		.asciiz "\nPR1: Fin del programa.\n"

	.text

main:

	li.d	$f20,0.0 # error
	li.d	$f22,1.0 # e
  li.d  $f24,1.0 # fact
	li.d  $f26,1.0 # numterminos
	li.d  $f28,1.0 # ultimo_termino
	li.d  $f30,0.00001 # auxiliar

	li		$v0,4
	la		$a0,titulo		# imprime el título por pantalla
	syscall

do_while: # bucle de evaluación del error

	li		$v0,4
	la		$a0,pet		# imprime la cadena "pet" por pantalla
	syscall

	li		$v0,7				# lee el número en punto flotante que se introduzca por teclado
	syscall
	mov.d	$f20,$f0  	# asigna el valor leído por pantalla al registro que corresponde a la variable error

	li.d    $f4,1.0   # declaración de variable temporal

	c.lt.d 	$f20,$f30 	  # evalúa si la variable error es menor o igual al auxiliar, 0.00001 en este caso
	bc1t		if_error  	  # en caso de que sea cierto, salta a la etiqueta "if_error"
	c.lt.d  $f4,$f20		  # evalúa si la variable error es mayor a 1, que es la variable temporal
	bc1f		do_while_fin	# en caso de que el caso anterior sea verdadero, el programa también salta a "if_error", pero si no, se cumple la orden siguiente, saltando la etiqueta anterior

  
if_error:

	li		$v0,4
	la		$a0,caderr	# impresión de la cadena de texto "caderr"
	syscall

	b	do_while  # salto al inicio del bucle para recibir un nuevo error

do_while_fin:

	li	$v0,4
	la	$a0,cadfin  # impresión de la cadena de texto "cadfin"
	syscall

while:

	li.d   $f4,1.0	       # declaración de una nueva variable temporal
	mul.d  $f24,$f24,$f26  # se multiplica la variable factorial por numterminos
	div.d  $f28,$f4,$f24	 # la variable ultimo_termino ahora es la división de 1 entre factorial
	add.d  $f22,$f22,$f28  # el numero e se suma con ultimo_termino
	add.d  $f26,$f26,$f4	 # numterminos se incrementa en 1 al final del bucle (mediante la variable temporal)

	c.lt.d  $f28,$f20      # se evalua si la variable error es menor que ultimo_termino
	bc1f		while          # en caso de que sea falto, se salta al inicio del bucle


while_fin:

	li  $v0,4
	la	$a0,cade  # impresión de la cadena "cade"
	syscall

	li  $v0,3
	mov.d	$f12,$f22  #impresión de la variable e
	syscall

	li	$v0,4
	la 	$a0,cadnt  # impresión de la cadena "cade"
	syscall

	li	$v0,3
	mov.d  $f12,$f26  # impresión del numero de terminos
	syscall

	li	$v0,4
	la 	$a0,cadfin  # impresión de la cadena "cadfin"
	syscall

	li	$v0,10  # fin del programa
	syscall