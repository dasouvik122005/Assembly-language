.data
msg: .asciiz "Multiplication Table of 1-10"
msg1: .asciiz "\n"
msg2: .asciiz "X"
msg3: .asciiz "="

.text
.globl main
main:
li $v0, 4
la $a0, msg
syscall

li $t0, 1
li $t1, 10

loop:

li $v0, 4
la $a0, msg1
syscall

li $t2, 1
li $t3, 11
inner_loop:
mul $t4,$t0,$t2

li $v0,1
move $a0,$t0
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0,1
move $a0,$t2
syscall

li $v0, 4
la $a0, msg3
syscall

li $v0,1
move $a0,$t4
syscall

li $v0, 4
la $a0, msg1
syscall

addi $t2,$t2,1
bne $t2,$t3,inner_loop
addi $t0,$t0,1
beq $t0,11,exit

j loop

exit: 
li $v0, 10
syscall