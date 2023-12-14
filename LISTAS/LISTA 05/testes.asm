.data
.word 1 # int a=1
.word 5
.word 8
.word 0

.text
main:
lui $8, 0x1001

lw $9, 0($8)
lw $10, 4($8)
lw $11, 8($8)

add $13, $10,$9
add $13, $13, $11

sw $13, 0xc($8)