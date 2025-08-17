.text
.globl main
main:
li $t0,16
li $t1,2
div $t2,$t0,$t1
li $t3,8
li $t4,3
mul $t5,$t3,$t4
add $t7,$t2,$t5
li $t6,4
div $t8,$t7,$t6
li $v0,10
syscall


