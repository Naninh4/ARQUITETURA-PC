.text
	main: addi $2, $0, 5 
	syscall
	
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2
	sub $10, $8, $9
	srl $10, $10, 31
	addi $11, $0, 1
	add $4, $0, $8
	
	beq $10, $11, maior
	j fim
	
	maior: add $4, $0,$9 
	
	fim: addi $2, $0, 1 
	syscall 