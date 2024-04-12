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
x: .asciiz "x"
endl: .asciiz "\n"

.text

#void print_mat(structMat* mat) {
print_mat:
#  int nFil = mat->nFil;
#  int nCol = mat->nCol;
#  float* elem = mat->elementos;

#  std::cout << "\n\nLa matriz tiene dimension " << nFil << 'x' << nCol << '\n';
li $v0, 4
la $a0, str_matTiene
syscall

li $v0, 1
lw $a0, nFil($a1)
syscall

li $v0, 4
la $a0, x
syscall

li $v0, 1
lw $a0, nCol($a1)
syscall

li $v0, 4
la $a0, endl
syscall

li $t0, 0 # int f

# for(int f = 0; f < nFil; f++) {
li $t0,0 # f = 0

for_print_mat_fil:

beq $t0,$t1,fin_print_mat

# for(int c = 0; c < nCol; c++) {
li $t2,0 # c = 0

for_print_mat_col:
#c < nCol
bge $t2, $t3, anadir_linea
# std::cout << elem[f*nCol + c] << ' ';
mul $t4, $t0, $t3 # $t4 -> f*nCol
add $t4, $t4, $t2 # $t4 -> [f*nCol + c]
mul $t4, $t4, $t5 # $t4 -> elem[f*nCol + c]
addi $t2, $t2, 1

lwc1 $f12, 0($t4)
li $v0, 2
syscall

li $v0, 4
la $a0, endl
syscall

b for_print_mat_col

anadir_linea:
#  std::cout << '\n';
li $v0,4
la $a0, endl
syscall
addi $t0, $t0, 1
b for_print_mat_fil

# std::cout << '\n';
fin_print_mat:
li $v0,4
la $a0, endl
syscall
jr $ra


change_elto:
lw $t0, nCol($a1)
#   int numCol = mat->nCol;
mul $t1, $a2, $t0
add $t1, $t1, $a3
#   mat->elementos[indF * numCol + indC] = valor;
lw $t2, elementos($a1)
sll $t3, $t1, 2
add $t2, $t2, $t3
lwc1 $f2, 0($t2)

jr $ra
# }

# void swap(float* e1, float* e2) {
#   float temp1 = *e1;
#   float temp2 = *e2;
#   *e1 = temp2;
#   *e2 = temp1;
# }
swap:
lw $f1, 4($sp)
lw $f2, 8($sp)

move $f0, $f1
move $f2, $f3

sw $f0, 4($sp)
sw $



tie:



main:

#int main() {
#  std::cout << "\nComienza programa manejo matrices con funciones\n";
li $v0, 4
la $a0, str_titulo
syscall


#  structMat* matTrabajo = &mat1;
lw $a1, mat1

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
if_fila_incorrecto:
lw $t3, 0($a1)
bltz $t2, if_fila_incorrecto_si
bge $t2, $t3, if_fila_incorrecto_si
b if_column_incorrecto

#        std::cerr << "Error: dimension incorrecta.  Numero de fila incorrecto\n";
#        continue;  // volvemos al principio del bucle
#      }
if_fila_incorrecto_si:

li $v0, 4
la $a0, str_errorFil
syscall

b while

#      std::cout << "Indice de columna: ";
#      int indCol;
#      std::cin >> indCol;
#      if ((indCol < 0) || (indCol >= matTrabajo->nCol)){
if_column_incorrecto:

li $v0, 4
la $a0, str_indCol
syscall

li $v0, 5
syscall
move $t3, $v0

lw $t3, 4($a1)
bltz $t4, if_column_incorrecto_si
bge $t4, $t3, if_column_incorrecto_si

b opcion_tres

#        std::cerr << "Error: dimension incorrecta.  Numero de columna incorrecto\n";
#        continue;  // volvemos al principio del bucle
#      }
if_column_incorrecto_si:
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
move $t4, $v0

#        change_elto(matTrabajo, indFil, indCol, valor);
#      }


#      if(opcion == 4) {
opcion_cuatro:
#        intercambia(matTrabajo, indFil, indCol);
#      }

#
#      continue;
#    }
b while

#
#    // Opción 7 ////////////////////////////////////////////////////////////
#    if(opcion == 7) {
opcion_siete:
bne $t0, 7, opcion_incorrecta

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
opcion_incorrecta:
#    std::cout << "Error: opcion incorrecta\n";
li $v0, 4
la $a0, str_errorOpc
syscall

b while
#  }

fin:
#  std::cout << "\nTermina el programa\n";
li $v0, 4
la $a0, str_termina
syscall

li $v0, 10
syscall
#}