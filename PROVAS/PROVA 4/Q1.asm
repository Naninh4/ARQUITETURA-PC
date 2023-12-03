.text
	main: addi $2, $0, 5
	syscall # Recebendo A
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall # Recebendo B
	add $9, $0, $2
	
	for: beq $8, $9, fim
		addi $14, $0, 1
		beq $8, $14, pass
		
		addi $14, $0, 2
		beq $8, $14, Eprimo
		
		addi $10, $0, 2 # qtd de divisores
		
		add $11, $0, 2 # star for
		
		forr: beq $11, $8, defPrimo
		bne $11, $8, contardivisores
		
		
		
		contardivisores: divu $8, $11
		mfhi $12
		
		beq, $12, $0, cont
		addi $11, $11, 1
		j forr
		
		cont: addi $10, $10, 1
		add $11, $11, 1
		j forr
		
		
		defPrimo: addi $12, $0, 2
		beq $10, $12, Eprimo
		
		addi $8, $8, 1
		j for
		Eprimo: addi $4, $4, 1
		addi $8, $8, 1
		j for
		
		pass: addi $8, $8, 1
		j for
	
	fim: addi $2, $0, 1
	syscall
	addi $2, $0, 10
	
	