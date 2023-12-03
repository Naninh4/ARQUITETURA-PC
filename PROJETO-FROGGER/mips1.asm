.data

.text
main:
lui $9, 0x1001
addi $8, $0, 512

addi $5, $0, 0x00ffffff
addi $2, $0, 42 # gera um valor alaetório para o dolar 4 dentro daa faixa fffff ai em cima

for1: beq $8, $0, fimtela

syscall

sw $4, 0($9)
addi $9, $9, 4
sw $4, 2048($9) # fazendo uma cópia da tela por baixo

addi $8, $8, -1
j for1
fimtela:

lui $9, 0x1001
addi $8, $0, 128
lui $12 0xffff
addi $10,$0, 0x00ffffff
addi $16, $0, 4
#ffff0004 #endereço da tecla digitada
for2: beq $8, $0, fim

sw $10, 0($9)

jal sleept
lw $13, 0($12) # verifica se digitou

beq $13, $0, continua # se não digitou a bolinha continua a andar
lw $14, 4($12)  # verifica a tecla que foi digitada
addi $15, $0, 'f' # verifica se ela é igual a f, se for o programa para, se não a bolinha continua
beq $14, $15, fim # se a tecla digitada igual a f o programa para
addi $15, $0, 't'
bne $14, $15, continua
mul $16, $16, -1

continua:lw $11, 2048($9)
      sw $11, 0($9)
     
      add $9, $9, $16
     
# addi $8, $8, -1
j for2

fim:
 addi $2, $0, 10
 syscall
 
 
 
sleept: addi $20, $0, 20000
forST: beq $20, $0, fimST
  nop
  addi $20, $20, -1
  j forST
 
fimST: jr $31

