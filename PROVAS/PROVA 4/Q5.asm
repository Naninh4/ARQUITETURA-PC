.text
main: addi $15, $0, 0 # picos = 0

      addi $2, $0, 5
      syscall
      addi $8, $2, -2 # qtd dados no laco
      addi $2, $0, 5
      syscall
      addi $9, $2, 0
      addi $24, $2, 0
      addi $2, $0, 5
      syscall
      addi $10, $2, 0
      addi $25, $2, 0      
     
for:  beq $8, $0, fimlaco
      addi $2, $0, 5
      syscall
      add $11, $0, $2
     
      #pico positivo : $9 < $10 > $11
      #                $10>$9 e $10>$11
     
      slt $12, $9, $10 # se ($9<$10)$12<=1 senao $12<=0
      slt $13, $11, $10 # se ($11<$10)$13<=1 senao $13<=0
      and $14, $12, $13
      
      beq $14, $0, naopico
      addi $15, $15, 1  # picos = picos + 1
      
naopico: 
      or $16, $12, $13      
      bne $16, $0, pass
      addi $15, $15, 1  # picos = picos + 1   
      pass: add $9, $10, $0
      add $10, $11, $0
     
      addi $8, $8, -1
      j for
fimlaco:  
      or $16, $12, $13      
      bne $16, $0, pass2 
      addi $15, $15, 1  # picos = picos + 1 
      
      pass2: add $11, $24, $0
      slt $12, $9, $10 # se ($9<$10)$12<=1 senao $12<=0
      slt $13, $11, $10 # se ($11<$10)$13<=1 senao $13<=0
      and $14, $12, $13
      beq $14, $0, naopico2
      addi $15, $15, 1  # picos = picos + 1
naopico2:

      or $16, $12, $13      
      bne $16, $0, pass3  
      addi $15, $15, 1  # picos = picos + 1 
      pass3:       
      add $4, $15, $0
      addi $2, $0, 1
      syscall
     
      addi $2, $0, 10
      syscall