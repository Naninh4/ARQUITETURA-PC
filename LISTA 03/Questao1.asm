# Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3,
# considerando valores maiores que 0
.text 
	main: add $8, $8, 10
	
	for: beq $9, $8, fim
	
	addi $9, $9, 1
	
	mul $4, $9, 3
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	
	addi $2, $0, 11
	syscall
	
	j for
	
	fim: addi $2, $0, 10
	syscall