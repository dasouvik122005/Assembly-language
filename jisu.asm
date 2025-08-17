.text
.globl main
main:
lw $t0,value
lw $t1,num
div $t3,$t0,$t1
mfhi $t4
mflo $t5
add $t6,$t4,$t5
li $t7,2
div $t8,$t6,$t7
li $v0,10
syscall
.data
value: .word 67
num: .word 12
