.text


main: addi $2, $0, 5
syscall
add $8, $0, $2

for: beq $9, $8, fim

	addi $2, $0, 5
	syscall
	
	add $13, $0, $2
	
	srl $11, $13, 31
	
	addi $2, $0, 5
	syscall
	
	add $14, $0 $2
	
	srl $12, $14, 31 

	beq $13, $0, DV
	beq $14, $0, DV
	
	beq $11, $0, xpositivo
	bne $11, $0, xnegativo

	DV: addi $4, $0, 'D'
	addi $2, $0, 11
	syscall

	addi $4, $0, 'V'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall


	j incre

	xnegativo: bne $12, $0, SO
	beq $12, $0, NO

	NO: addi $4, $0, 'N'
	addi $2, $0, 11
	syscall

	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j incre


	SO: addi $4, $0, 'S'
	addi $2, $0, 11
	syscall

	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	j incre

	xpositivo:  beq $12, $0, NE
	bne $12, $0, SE

	SE: addi $4, $0, 'S'
	addi $2, $0, 11
	syscall

	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	j incre

	NE: addi $4, $0, 'N'
	addi $2, $0, 11
	syscall

	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	j incre

	incre: addi $9, $9, 1
	j for

	fim: addi $2, $0, 10
	syscall
