# Faça um programa para ler um número inteiro. Se o número for positivo, imprima o
# dobro do número, se for negativo, imprima o quadrado do número.
.text
	main: addi $2, $0, 5
	syscall 
	add $8, $0, $2
	srl $9, $8, 31
	
	beq $0, $9, positivo
	mul $10, $8, $8
	add $4, $0, $10
	j fim
	positivo: sll $4, $8, 1
	fim: addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall