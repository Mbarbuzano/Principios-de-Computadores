# Principio de Computadores. Preparación para el Microexamen
# Operaciones con funciones y direccionamiento indirecto
# Autor: Marcos Barbuzano Socorro
# Fecha última modificación: si
#include <iostream>

# const int n1 = 10;
# double v1[n1] = {10.5, 9.5, 7.25, 6.25, 5.75, 4.5, 4.25, 3.5, -1.5, -2.0};
# const int n2 = 5;
# double v2[n2] = {5.5, 4.5, 4.25, 2.5, 2.5 };
# const int n3 = 4;
# double v3[n3] = {7.0, 5.0, 2.0, 1.0};

sizeD = 8
LF = 10
SPACE = 32

    .data
n1:     .word 10
v1:     .double 10.5, 9.5, 7.25, 6.25, 5.75, 4.5, 4.25, 3.5, -1.5, -2.0
n2:     .word 5
v2:     .double 5.5, 4.5, 4.25, 2.5, 2.5
n3:     .word 4
v3:     .double 7.0, 5.0, 2.0, 1.0
cad1:   .asciiz "\nVector con dimension "
cad2:   .asciiz "\nIntentando mezcla con dos vectores ...\n"
cad3:   .asciiz "\nFIN DEL PROGRAMA\n"
endl:   .asciiz "\n"

    .text

# void printvec(double *v, const int n) {
printvec:
addi $sp, $sp, -12
sw $ra, 0($sp)
sw $s0, 4($sp)
sw $s1, 8($sp)
#     for (int i = 0; i < n; i++)
lw $s2, 0 #i

bucle_print:
bgt $s2, $s1, bucle_print_fin
#         std::cout << v[i] << " ";
lw $t0, 0
mul $t0, $s2, sizeD
lwc1 $f0, 0($t0)

li $v0, 3
syscall

#     std::cout << "\n";
li $v0, 4
la $a0, SPACE
syscall
    
#     return;#     std::cout << "\n";
# }

addi $s2, $s2, 1
b bucle_print

bucle_print_fin:
li $v0, 4
la $a0, endl
syscall

lw $s1, 8($sp)
lw $s0, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 12
jr $ra


# int ordenado(double *v, const int n) {
ordenado:
addi $sp, $sp, -12
sw $ra, 0($sp)
sw $s0, 4($sp)
sw $s1, 8($sp)
#     int resultado = 1;
lw $t0, 1 #resultado
#     int i = 0;
lw $t1, 0 #contador
#     while (i < n-1) {
#         if (v[i+1] >= v[i]) {
#             resultado = 0;
#             break;
#         }
#         i++;
#     }
#     return(resultado);
# }

# void merge(double *v1, const int n1,double *v2, const int n2) {
#     int  o1 = ordenado(v1,n1);
#     if (o1 == 0) return;
#     int o2 = ordenado(v2,n2);
#     if (o2 == 0) return;
#     int i = 0; // índice para recorrer el v1
#     int j = 0; // índice para recorrer el v2
#     while ( ( i < n1) && (j < n2) ) {
#         if (v1[i] >= v2[j]) {
#             std::cout << v1[i] << " ";
#             i++;
#         }
#         else {
#             std::cout << v2[j] << " ";
#             j++;
#         }
#     }
#     while ( i < n1) {
#         std::cout << v1[i] << " ";
#         i++;
#     }
#     while ( j < n2) {
#         std::cout << v2[j] << " ";
#         j++;
#     }
#     std::cout << "\n";
#     return;
# }

# int main(void) {
#     std::cout << "\nVector con dimension " << n1 << std::endl;
#     printvec(v1,n1);
  
#     std::cout << "\nVector con dimension " << n2 << std::endl;
#     printvec(v2,n2);
  
#     std::cout << "\nVector con dimension " << n3 << std::endl;
#     printvec(v3,n3);
  
#     std::cout << "\nIntentando mezcla con dos vectores ...\n";
#     merge(v1,n1,v2,n2);
#     std::cout << "\nIntentando mezcla con dos vectores ...\n";
#     merge(v1,n1,v3,n3);

#     std::cout << "\nFIN DEL PROGRAMA\n";
#     return(0);
# }

