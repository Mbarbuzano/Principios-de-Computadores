#// Solución PR3 curso 23-24
#// Manejo de matrices con funciones
#// Autor: Marcos Barbuzano Socorro
#// Correo: alu0101629469@ull.edu.es
#// Fecha: **/3/24
#typedef struct {
#  int nFil;
nFil = 0	# El desplazamiento al campo dentro de la estructura
#  int nCol;
nCol = 4	# El desplazamiento al campo dentro de la estructura
#  float elementos[];
elementos = 8	# El desplazamiento al campo dentro de la estructura
#} structMat;
#

sizeF = 4	# Numero de bytes de un float
LF = 10		# Caracter salto de línea
	.data
#structMat mat1 {
#  6,
#  6,
#  {
#    11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
#    21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
#    31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
#    41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
#    51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
#    61.61, 62.62, 63.63, 64.64, 65.65, 66.66
#  }
#};
mat1:	.word	6
	.word	6
	.float	11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
	.float	21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
	.float	31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
	.float	41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
	.float	51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
	.float	61.61, 62.62, 63.63, 64.64, 65.65, 66.66

#structMat mat2 {
#  7,
#  10,
#  {
#    -36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
#    -86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
#     4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
#    67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
#    30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
#    84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
#    -41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181
#  }
#};
mat2:	.word	7
	.word	10
	.float	-36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
	.float	-86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
	.float	4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
	.float	67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
	.float	30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
	.float	84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
	.float	-41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181

# structMat mat3 {
#   1,
#   8,
#   {
#     -36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61
#   }
# };
mat3:	.word	1
	.word	8
	.float	-36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61

# structMat mat4 {
#   16,
#   1,
#   { -90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3 ,
#     -96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83 }
# };
mat4:	.word	16
	.word	1
	.float	-90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3
	.float	-96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83

# structMat mat5 {
#   1,
#   1,
#   { 78.98 }
# };
mat5:	.word	1
	.word	1
	.float	78.98

# structMat mat6 {
#   0,
#   0,
#   { 0 }
# };
mat6:	.word	0
	.word	0
	.float	0.0

#float infinito = INFINITY;
infinito:	.word	0x7F800000

# Cadenas de caracteres
str_titulo:	.asciiz	"\nComienza programa manejo matrices con funciones\n"
str_menu:	.ascii	"(0) Terminar el programa\n"
		.ascii	"(1) Cambiar la matriz de trabajo\n"
		.ascii	"(3) Cambiar el valor de un elemento\n"
		.ascii	"(4) Intercambiar un elemento con su opuesto\n"
		.ascii	"(7) Encontrar el minimo\n"
		.asciiz	"\nIntroduce opción elegida: "
str_errorOpc:	.asciiz	"Error: opcion incorrecta\n"
str_termina:	.asciiz	"\nTermina el programa\n"
str_elijeMat:	.asciiz	"\nElije la matriz de trabajo (1..6): "
str_numMatMal:	.asciiz	"Numero de matriz de trabajo incorrecto\n"
str_errorFil:	.asciiz	"Error: dimension incorrecta.  Numero de fila incorrecto\n"
str_errorCol:	.asciiz	"Error: dimension incorrecta.  Numero de columna incorrecto\n"
str_indFila:	.asciiz	"\nIndice de fila: "
str_indCol:	.asciiz	"Indice de columna: "
str_nuevoValor:	.asciiz	"Nuevo valor para el elemento: "
str_valMin:	.asciiz	"\nEl valor minimo esta en ("
str_conValor:	.asciiz	") con valor "

str_matTiene:	.asciiz	"\n\nLa matriz tiene dimension "

.text

main:

#int main() {
#  std::cout << "\nComienza programa manejo matrices con funciones\n";
li $v0, 4
la $a0, str_titulo
syscall


#  structMat* matTrabajo = &mat1;

#  while(true) {
while:
#    print_mat(matTrabajo);
jal print_mat
#    std::cout <<
#    "(0) Terminar el programa\n"
#    "(1) Cambiar la matriz de trabajo\n"
#    "(3) Cambiar el valor de un elemento\n"
#    "(4) Intercambiar un elemento con su opuesto\n"
#    "(7) Encontrar el minimo\n"
#    "\nIntroduce opción elegida: ";
li $v0, 4
la $a0, str_menu
syscall
#
#    int opcion;
#    std::cin >> opcion;
li $v0, 5
syscall
move $t0, $v0
#
#
#    if(opcion == 0) {
#      break;
#    }
opcion_cero:
beqz $t0, fin
#
#    // Opción 1 ////////////////////////////////////////////////////////////
opcion_uno:
bne $t0, 1, opcion_tres_cuatro
#    if(opcion == 1) {
#      std::cout << "\nElije la matriz de trabajo (1..6): ";
li $v0, 4
la $a0, str_elijeMat
syscall

#      int matT;
#      std::cin >> matT;
li $v0, 5
syscall
move $t1, $v0

#      if (matT == 1) {
#        matTrabajo = &mat1;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat1:
sw $a1, mat1
b while

#      if (matT == 2) {
#        matTrabajo = &mat2;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat2:
sw $a1, mat2
b while

#      if (matT == 3) {
#        matTrabajo = &mat3;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat3:
sw $a1, mat3
b while

#      if (matT == 4) {
#        matTrabajo = &mat4;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat4:
sw $a1, mat4
b while

#      if (matT == 5) {
#        matTrabajo = &mat5;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat5:
sw $a1, mat5
b while

#      if (matT == 6) {
#        matTrabajo = &mat6;
#        continue;  // volvemos al principio del bucle
#      }
if_1_mat6:
sw $a1, mat6
b while

#      std::cout << "Numero de matriz de trabajo incorrecto\n";
#      continue;  // volvemos al principio del bucle
#    }
if_1_incorrecto:
li $v0, 4
la $a0, str_numMatMal
syscall

b while

#    // Opción 3  y  4 //////////////////////////////////////////////////////////
opcion_tres_cuatro:
#    if(opcion == 3 || opcion == 4) {
beq $t0, 3, opcion_tres_cuatro_si
beq $t0, 4, opcion_tres_cuatro_si

b opcion_siete

opcion_tres_cuatro_si:
#      std::cout << "\nIndice de fila: ";
li $v0, 4
la $a0, str_indFila
syscall 

#      int indFil;
#      std::cin >> indFil;
li $v0, 5
syscall
move $t3, $v0

#      if ((indFil < 0) || (indFil >= matTrabajo->nFil)) {
if_fila_inc:
lw $t3, 0($a1)
bltz $t2, if_fila_inc_si
bge $t2, $t3, if_fila_inc_si
b if_column_inc

#        std::cerr << "Error: dimension incorrecta.  Numero de fila incorrecto\n";
#        continue;  // volvemos al principio del bucle
#      }
if_fila_inc_si:

li $v0, 4
la $a0, str_errorFil
syscall

b while

#      std::cout << "Indice de columna: ";
#      int indCol;
#      std::cin >> indCol;
#      if ((indCol < 0) || (indCol >= matTrabajo->nCol)){
if_column_inc:

li $v0, 4
la $a0, str_indCol
syscall

li $v0, 5
syscall
move $t3, $v0

lw $t3, 4($a1)
bltz $t4, if_column_inc_si
bge $t4, $t3, if_column_inc_si

b opcion_tres

#        std::cerr << "Error: dimension incorrecta.  Numero de columna incorrecto\n";
#        continue;  // volvemos al principio del bucle
#      }
if_column_inc_si:
li $v0, 4
la $a0, str_errorCol
syscall

b while

#
#      if (opcion == 3) {
opcion_tres:
beq $t0, 4, opcion_cuatro

#        std::cout << "Nuevo valor para el elemento: ";
li $v0, 4
la $a0, str_nuevoValor
syscall

#        float valor;
#        std::cin >> valor;
li $v0, 6
syscall
mov.s $t4, $v0

#        change_elto(matTrabajo, indFil, indCol, valor);
#      }
procedimiento de change_elto

#      if(opcion == 4) {
opcion_cuatro:
#        intercambia(matTrabajo, indFil, indCol);
#      }
procedimiento de intercambia
#
#      continue;
#    }
b while

#
#    // Opción 7 ////////////////////////////////////////////////////////////
#    if(opcion == 7) {
#      float valorMin;
#      int filaMin;
#      int columnaMin;
#      std::tie(valorMin, filaMin, columnaMin) = find_min(matTrabajo);
#      std::cout << "\nEl valor minimo esta en (" << filaMin << ','
#        << columnaMin <<") con valor " << valorMin;
#      continue;
#    }
#
#    // Opción Incorrecta ///////////////////////////////////////////////////////
#    std::cout << "Error: opcion incorrecta\n";
#  }
fin:
#  std::cout << "\nTermina el programa\n";
li $v0, 4
la $a0, str_termina
syscall

li $v0, 10
syscall
#}