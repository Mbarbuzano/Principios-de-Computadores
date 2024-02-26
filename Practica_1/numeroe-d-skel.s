# PR1. PRINCIPIO DE COMPUTADORES.
# Autor: Marcos Barbuzano Socorro alu0101629469@ull.edu.es
# Fecha ultima modificacion: 26/2/24

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
	li.d  $f30,1.0 # auxiliar

	li		$v0,4
	la		$a0,titulo
	syscall

do_while:

	li		$v0,4
	la		$a0,pet
	syscall

	li		$v0,5
	syscall
	move	$f20,$v0

	c.lt.d 	$f20,0.0001
	bclt		if_error

if_error:

	li		$v0,4
	la		$a0,caderr
	syscall

do_while_fin:

	li		$v0,10
	syscall