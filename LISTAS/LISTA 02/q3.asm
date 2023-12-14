# Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
# bem como a diferença entre eles (a diferença é sempre um valor positivo)

.text
	main: addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	sub $10, $8, $9
	srl $11, $10, 31
	beq $0, $11, Pmaior
	#segundo maior
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	sub $10, $9, $8
	
	add $4, $0, ' - '
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	j fim
	
	Pmaior: add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $4, $0, ' - '
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j fim

	fim: addi $2, $0, 10
	syscall





