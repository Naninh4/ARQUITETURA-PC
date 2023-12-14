.text
	main: li $2, 5 
	syscall
	add $8, $0, $2
	mul $4, $8, $8
	
	la $2, 1
	syscall
	
	