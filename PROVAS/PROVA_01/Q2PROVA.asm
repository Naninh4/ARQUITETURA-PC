.text
	 main: addi $2, $0, 5
	 syscall
	 add $8, $0,$2
	 addi $2,$0,5
	 syscall
	 add $9, $0, $2
	 
	 div $4, $8, $9
	 addi $2, $0, 1
	 syscall
	 
	 addi $4, $0, ','
	 addi $2, $0, 11
	 syscall
	 
	 mfhi $10
	 mul $10, $10, 10
	 
	 div $4, $10, $9 
	 addi $2, $0, 1
	 syscall
	
	 
	