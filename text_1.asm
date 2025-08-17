.text
.globl main
main:
li $t1,20
li $t2,10
add $t3,$t1,$t2
sub $t4,$t1,$t2
mul $t5,$t1,$t2
div $t6,$t1,$t2
li $v0,10
syscall
