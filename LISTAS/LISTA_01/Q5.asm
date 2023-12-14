.text
    main:
        addi $2, $0, 5   # Carrega o valor 5 em $2
        syscall         # Realiza uma chamada do sistema (impressão do valor em $2)
	
	add $11, $0, 10
        div $2, $11       # Divide o valor em $2 por 10
        mfhi $9          # Move o resto para $9
        add $10, $0, $9  # Copia o resto para $10

        mflo $8          # Move o quociente para $8
        div $8, $11       # Divide o quociente em $8 por 10
        mflo $8          # Move o novo quociente para $8
        mfhi $9          # Move o novo resto para $9

        add $10, $10, $9 # Adiciona o novo resto a $10
        add $10, $10, $8 # Adiciona o novo quociente a $10

        add $4, $0, $10  # Move o resultado final para $4

        addi $2, $0, 1   # Carrega o código da syscall para impressão de inteiros em $2
        syscall          # Realiza uma chamada do sistema (imprime $4)

        # Encerrando o programa
        addi $2, $0, 10  # Carrega o código de encerramento do programa em $2
        syscall
