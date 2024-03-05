.data
msg: .asciiz "Introduzca un número para comprobar la Conjetura de Collatz o 0 para salir: "
space: .asciiz " "
newline: .asciiz "\n"
numero1: .word 1
numero2: .word 2
numero3: .word 3

.text

main:

#      while(true)
while: 
# std::cout << "Introduzca un número para comprobar la Conjetura de Collatz o 0 para salir: ";
    li $v0, 4
    la $a0, msg
    syscall

#       std::cin >> numero;
    li $v0, 5
    syscall
    move $s1,$v0

#        if (numero == 0) break;
if:
    beqz $s1,if_fin

lw $s2, numero1

#        while (numero > 1) {
while_numero:
    blt $s1,$s2,if_fin
    
#           std::cout << numero << " ";
    li $v0, 1
    move $a0,$s1
    syscall
    
    li $v0,4
    la $a0, space
    syscall

#            if (numero % 2 == 0) {
#                numero = numero / 2;
if_par: 

lw $t1, numero2
    div  $s1,$s1,$t1
    mfhi $s6
    beqz $s6,while_numero
    b while_numero

#            } else {
#                numero = 3 * numero + 1;
else: 

lw $s5, numero3
    mul $s1,$s1,$s5
lw $s2, numero1
    add $s1,$s1,$s2
    b while_numero

#        std::cout << numero << std::endl; // Imprimir el valor final (1).
if_fin:

    li $v0, 1
    move $a0,$s1
    syscall
    
    li $v0, 4
    la $a0,newline
    syscall

    li $v0, 10
    syscall