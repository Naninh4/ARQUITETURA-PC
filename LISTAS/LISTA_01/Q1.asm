.text
    main:
        # Solicita que o usuário insira um valor
        li   $v0, 5 # comando de ler um inteiro  e colocar no registrador $v0 vulgo $2
        syscall
	add $8, $0, $2 #
	li $2, 5
	syscall
    soma: add $9, $8,$2
	  add $4, $0, $9
	
	  li $2, 1
	  syscall
	
