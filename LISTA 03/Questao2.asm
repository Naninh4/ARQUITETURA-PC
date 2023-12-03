# Faça um programa que solicite ao usuário um número para ser a referência e outro
# para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
# mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text 
	main: addi $2, $0, 5
	syscall
	add $8, $0, $2

	addi $2, $0, 5
	syscall
	
	add $9, $0, $2
	
	for: beq $10, $9, fim
	
	addi $10, $10, 1
	
	mul $4, $10, $8
	
	addi $2, $0, 1
	syscall
	
	add $4, $0, ' '
	
	addi $2, $0, 11
	syscall
	
	j for
	
	fim: addi $2, $0, 10
	syscall