.text
 	 main: addi $8, $0, 1234
 	 add $12, $0, $8
 	 while: beq $12, $0, verificar
	 		mul $14, $14, 10
	 		div $15, $12, 10
	 		mfhi $11
	 		add $14, $14, $11
	 		mflo $11
	 		add $12, $0, $11
	 		j while
	 		
	 	verificar: add $4, $0, $14
	 	addi $2, $0, 1
	 	syscall