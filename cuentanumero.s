#Marcos Barbuzano Socorro
#Principio de computadores



#include <iostream>
#int main() {
#  std::cout << "\nPrograma que cuenta el numero de veces que aparece un digito en numero entero positivo.\n";

#  while (true) {
#    int numero;
#    std::cout << "\nIntroduzca un numero entero positivo (negativo para finalizar el programa): ";
#    std::cin >> numero;
#    if (numero < 0)
#      break;

#    int digito;
#    do {
#      std::cout << "Introduzca un digito (0-9): ";
#      std::cin >> digito;
#    } while ((digito < 0) || (digito > 9));
#    int cuenta = 0;
#    do {
#      int resto = numero % 10;
#      numero /= 10;
#      if ( resto == digito )
#        cuenta++;
#    } while ( numero != 0 );
#    std::cout << "El numero de veces que aparece el digito en el numero es: "
#        << cuenta << '\n';
#  }
#  std::cout << "\nFin del programa.\n";
#}

	.data
titulo: .asciiz "\nPrograma que cuenta el numero de veces que aparece un digito en numero entero positivo.\n"
introduce1: .asciiz "\nIntroduzca un numero entero positivo (negativo para finalizar el programa): "
introduce2: .asciiz "Introduzca un digito (0-9): "
numeroap: .asciiz "El numero de veces que aparece el digito en el numero es: "
fin: .asciiz "\nFin del programa.\n"


	.text
	
main:
#TABLA DE REGISTRO
# numero --- $s0
# digito --- $s1
# cuenta --- $s2
# resto --- $t1
#  std::cout << "\nPrograma que cuenta el numero de veces que aparece un digito en numero entero positivo.\n";
li $v0, 4
la $a0, titulo
syscall

#  while (true) {
bucle:

#    int numero;
#    std::cout << "\nIntroduzca un numero entero positivo (negativo para finalizar el programa): ";
li $v0, 4
la $a0, introduce1
syscall
#    std::cin >> numero;
li $v0, 5
syscall
move $s0, $v0

#    if (numero < 0)
#      break;
bltz $s0, fin_bucle

#int digito;
#    do {
#      std::cout << "Introduzca un digito (0-9): ";
#      std::cin >> digito;
#    } while ((digito < 0) || (digito > 9));
do_digito:

bltz $s1, do_digito
bgt $s1, 9, do_digito

li$v0, 4
la $a0, introduce2

li $v0, 5
syscall
move $s1, $v0

#    } while ((digito < 0) || (digito > 9));
#    int cuenta = 0;
#    do {
#      int resto = numero % 10;
#      numero /= 10;
#      if ( resto == digito )
#        cuenta++;
#    } while ( numero != 0 );
li $s2, 0
do_cuenta:
li $t0, 10
div $s0, $t0
mfhi $t1 #resto
mflo $s0
bne $t1, $s1, no_sumo
addi $s2, 1
no_sumo:
bnez $s2, do_cuenta

#    std::cout << "El numero de veces que aparece el digito en el numero es: "
#        << cuenta << '\n';
li $v0, 4
la $a0, numeroap
syscall

li $v0, 1
move $a0, $s2
syscall


b bucle

fin_bucle:
#  std::cout << "\nFin del programa.\n";
li $v0, 4
la $a0, fin
syscall

li $v0, 10
syscall
