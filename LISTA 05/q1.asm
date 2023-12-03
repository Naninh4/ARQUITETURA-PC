.data

.word 1 
.word 0 
.word 5 
.word -2 
.word -5 
.word 7

.text

main: lui $8, 0x1001
	lw $9, 0($8)
	add $10, $10,$9
	
	addi $8, $8,4
	lw $9, 0($8)
	add $10, $10,$9
	
	addi $8, $8,16
	lw $9, 0($8)
	add $10, $10,$9
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $8, $8,-4
	
	addi $11, $11, 100
	
	sw $11, 0($8)
	
	addi $12, $12, 6
	
	addi $8, $8,-16
	
teste: beq $0, $12, fimLaco
	lw $4, 0($8)
	addi $2, $0, 1
	syscall

	addi $4, $0, ' '
	addi $2, $0, 11
	syscall

	addi $12, $12, -1
	addi $8, $8,4
	j teste
fimLaco: addi $2, $0, 10
	syscall