.text

main: lui $8, 0x1001 #aloca um ponteiro para o reg 8 e desloca o valor em 16 bits para que ele fique na area alta
addi $9,$0,0
addi $10,$0, 10

teste1: beq $9, $10, fimLer
	addi $2, $0, 5
	syscall
	sw $2, 0($8) #botando Quarda um valor em uma area de memoria
	addi $8, $8, 4
	addi $9, $9, 1
	
	j teste1
fimLer:
lui $8, 0x1001 
addi $9,$0,10

lui $13, 0x1001 
add $11, $0, 10

mul $11, $11, 4
add $10 $13 $11 # array com valores unicos

add $4, $0, $10 # ponteiro para o inicio do array de cima
teste2: beq $0, $9, FimProcure
	addi $12, $0, 10
	lw $11, 0($8)
	addi $15, $0, 0
teste3:	beq $12, $0, VerificarCont
	   lw $14, 0($13)
	   beq $11 $14 cont
	   
	   
	continue:
	   addi $13 $13 4
	   addi $12 $12 -1
	   j teste3
		
	VerificarCont: add $14, $0, 2
		slt $16, $14, $15
		
		bne $0, $16, guardarvalor
		addi $2, $0, 2
		beq $15, $2, guardarvalor
		j naoguarde

	guardarvalor: addi $12, $0, 5
		lui $10, 0x1001 
		addi $10, $10, 40
		teste4: beq $12, $0, guardar
			lw $14, 0($10)
			beq $14, $11, naoguarde
			addi $12, $12, -1
			addi $10, $10, 4
			j teste4
			
	naoguarde: addi $8, $8, 4
	addi $9, $9, -1
	addi $13, $13, -40
	j teste2
	
	guardar: sw $11, 0($4)
	addi $4, $4, 4

	lui $10, 0x1001
	addi $10, $10 40
	 
	addi $8, $8, 4
	addi $9, $9, -1
	addi $13, $13, -40
	j teste2
FimProcure: 
addi $9, $0, 5
lui $10, 0x1001
addi $10, $10 40
teste5: beq $9, $0, fimEscreva
	lw $4, 0($10) #tirando o valor naquela area de memoria e colocando em um registrador temporario
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	
	addi $2, $0, 11
	syscall
	addi $10, $10, 4
	addi $9, $9, -1
	j teste5
fimEscreva: addi $2, $0, 10
	syscall
cont: addi $15 $15 1
j continue