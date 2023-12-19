#Faça uma função que receba uma data (dia, mês e ano em inteiro) e 
#retorne se a data
# é valida (retorne 1) 
#inválida (retorna 0).

.text
main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2 # dia
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2 # mes
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2 # ano
	
	jal validacoes 
	# validou tudo? então retorna 1 e finaliza o programa
	addi $4, $0, 1
	addi $2, $0, 1
	syscall # printa 1
	j fim
	
validacoes: # VALIDAÇÕES
	beq $10, $0, invalido # testa ano - zero
	beq $9, $0, invalido # testa mes - zero
	beq $8, $0, invalido # testa dia - zero
	
	srl $11, $10, 31
	bne $11, $0, invalido # testa ano - negativo
	
	srl $11, $19, 31
	bne $11, $0, invalido # testa mes - negativo
	
	srl $11, $18, 31
	bne $11, $0, invalido # testa dia - negativo
	
	addi $12, $0, 12 # quantidade meses
	sub $12, $12, $9 # 12 - dia do mes
	srl $13, $12, 31
	bne $13, $0, invalido # dia do mes negativo
	
fevereiro:
	addi $14, $0, 2
	bne $9, $14, naofevereiro
	# fevereiro 
	addi $15, $0, 4 # para dividir o ano
	div $10, $15 # ano/4
	mfhi $16
	beq $16, $0, bissexto
	#nao bissexto
	addi $17, $0, 28
	sub $18, $17, $8 # 28 - dia
	srl $18, $18, 31
	bne $18, $0, invalido
	jr $31

bissexto:addi $17, $0, 29
	sub $18, $17, $8 # 29 - dia
	srl $18, $18, 31
	bne $18, $0, invalido
	jr $31

naofevereiro:
	addi $17, $0, 8 # adiciona 8
	div $9, $17 # mes/8
	mflo $16 # quociente
	add $16, ,$16, $17 # mes + quo(mes/8) 
	addi $17, $0, 2 # adiciona 2
	div $16, $17 # (mes + quo(mes/8))/2
	mfhi $16  # resto
	bne $16, $0, trintaeum
	#30 dias
	addi $17, $0, 30
	sub $17, $17, $8 # 30 - dias
	srl $17, $17, 31 
	bne $17, $0, invalido
	
	jr $31

trintaeum:
	addi $17, $0, 31
	sub $17, $17, $8 # 31 - dias
	srl $17, $17, 31 
	bne $17, $0, invalido
	
	jr $31
	
invalido: 
	addi $4, $0, 0 # num para retornar invalido
	addi $2, $0, 1 # imprime numero 
	syscall 
	
	addi $2, $0, 10
	syscall # finaliza o programa
	
fim: addi $2, $0, 10
	syscall # finaliza o programa