.text
	 main: addi $8, $0, 100 # star1
	 addi $9, $0, 100
	 addi $10, $0, 1000
	 
	 for: beq $8, $10, fim
	 for2: beq $9, $10, incre
	 		mul $13, $8, $9
	 		
	 	 	add $12, $0, $13 # armazenando numero original
	 		addi $14, $0, 0
	 		 
	 		while: beq $12, $0, verificar
	 		mul $14, $14, 10
	 		div $15, $12, 10
	 		mfhi $11
	 		add $14, $14, $11
	 		mflo $11
	 		add $12, $0, $11
	 		j while
	 		
	 		verificar: beq $14, $13, maior
	 		bne $14, $13, decre
	 		decre: addi $9, $9, 1
	 		j for2
	 		
	 		maior: sub $15, $14, $4
	 			srl $15, $15, 31
	 		
	 			beq $15, $0, troca
	 			j decre
	 			troca: add $4, $0, $14
	 			addi $9, $9, 1
	 			j for2
	 
	 		
	 incre: addi $8, $8, 1
	 add $9, $0, 100
	 j for
	 
	 fim: addi $2, $0, 1
	 syscall
	 
	 addi $2, $0, 10
	 syscall
	 
	 
