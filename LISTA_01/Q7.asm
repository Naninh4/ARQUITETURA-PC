.text
	main: addi $2, $0, 5
	syscall
	add $8, $0, 10
	
	div $2, $8
	mfhi $15 # coloca cada digito em um registrador e printa os 3
	mflo $9
	
	div $9, $8
	mfhi $14
	mflo $9
	
	div $9, $8
	mfhi $13
	mflo $9
	
	div $9, $8
	mfhi $12
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall