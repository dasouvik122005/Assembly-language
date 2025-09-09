.data
msg1: .asciiz "Printing numbers from 0 to 20:\n"
msg2: .asciiz "\nThe total no. of even numbers is: "

.text
.globl main
main:
li $v0, 4
la $a0, msg1
syscall

li $t0, 0
li $t1, 21
li $t2, 0

loop:
li $v0, 1
move $a0, $t0
syscall

li $v0, 11
li $a0, 32
syscall

rem $t3, $t0, 2
beq $t3, $zero, increment_even

next_num:
addi $t0, $t0, 1
blt $t0, $t1, loop
j print_result

increment_even:
addi $t2, $t2, 1
j next_num

print_result:
li $v0, 4
la $a0, msg2
syscall

li $v0, 1
move $a0, $t2
syscall

exit:
li $v0, 10
syscall
