.text

main: lui $8, 0x1001 #aloca um ponteiro para o reg 8 e desloca o valor em 16 bits para que ele fique na area alta
addi $9,$0,0
addi $10,$0, 10

teste1: beq $9, $10, fimLer
	addi $2, $0, 5
	syscall
	sw $2, 0($8) #botando Quarda um valor em uma area de memoria
	addi $8, $8, 4
	addi $9, $9, 1
	
	j teste1
	
fimLer: addi $8, $8, -4
addi $9,$0,0

teste2: beq $9, $10, fimEscreva
	lw $4, 0($8) #tirando o valor naquela area de memoria e colocando em um registrador temporario
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	
	addi $2, $0, 11
	syscall
	addi $8, $8, -4
	addi $9, $9, 1
	j teste2

fimEscreva:
	addi $2, $0, 10
	syscall
	
	
