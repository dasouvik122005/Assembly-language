.data
msg: .asciiz "Printing numbers from 0 to 9:\n"

.text
.globl main
main:
li $v0, 4
la $a0, msg
syscall

li $t0, 0
li $t1, 10
loop:

li $v0,1
move $a0,$t0
syscall

addi $t0, $t0, 1
bge $t0, $t1, exit
j loop

li $v0,1

exit:
li $v0, 10
syscall



                       