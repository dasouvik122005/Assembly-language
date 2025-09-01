.data
msg: .asciiz"Enter a number: "
msg1: .asciiz"This is even number. "
msg2: .asciiz"This is odd number. "

.text
.globl main
main:
li $v0,4
la $a0,msg
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,2
li $t4,0
div $t2,$t0,$t1
mfhi $t3
beq $t3,$t4,if

li $v0,4
la $a0,msg2
syscall
j exit

if:
li $v0,4
la $a0,msg1
syscall

exit:
li $v0,10
syscall


                       