.data
msg1: .asciiz "Printing numbers from 0 to 10:\n"
msg2: .asciiz "\nThe sum of these numbers: "

.text
.globl main
main:
li $v0, 4
la $a0, msg1
syscall

li $t0, 0
li $t1, 11
li $t2, 0
loop:
li $v0, 1
move $a0, $t0
syscall

li $v0, 11
li $a0, 32
syscall

add $t2, $t2, $t0

addi $t0, $t0, 1

blt $t0, $t1, loop

li $v0, 4
la $a0, msg2
syscall

li $v0, 1
move $a0, $t2
syscall
exit:
li $v0, 10
syscall