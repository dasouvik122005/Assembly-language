.text
.globl main
main:
li $t1, 0
li $t2, 1
and $t3, $t1, $t2
or $t4, $t1,$t2
li $v0, 10
syscall

