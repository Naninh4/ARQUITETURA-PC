.text
    main:
        addi $2, $0, 5       # Carrega o valor 5 em $2
        syscall        # Realiza uma chamada do sistema (Leitura do valor)

        add $8, $0, $2 # Copia o valor de $2 para $8

        li $2, 5       # Carrega o valor 5 em $2 novamente
        syscall        # Realiza outra chamada do sistema (Leitura do Valor)

        add $8, $8, $2 # Adiciona $2 a $8

        srl $4, $8, 1
	
        addi $2, $0, 1       # Carrega o valor 2 em $2
        syscall        # Realiza uma terceira chamada do sistema (impressão do valor)

        # Termina o programa
        addi $2, $0, 10      # Código de saída do programa
        syscall
