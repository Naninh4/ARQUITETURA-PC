# n = int(input())
# cont = 1
# lista = []
# for x in range(1,n+1):
#     for y in range(0,x):
#         lista.append(cont)
#         cont+=1
    
#     print(*lista)
#     lista = []

.text 
	main: addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $8, $8, 1
	addi $11, $11, 1
	for: beq $9, $8, fim
	
	for2: beq $10, $9, incre
		add $4, $0, $11
		addi $2, $0, 1
		syscall
		add $11, $11, 1
		
		add $4, $0, ' '
		addi $2, $0, 11
		syscall
	addi $10, $10, 1
	j for2
	
	incre: addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $9, $9, 1
	add $10, $0, $0
	j for
	
	fim: addi $2, $0, 10
	syscall