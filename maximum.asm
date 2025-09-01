.data
msg: .asciiz "Enter 1st number: "
msg1: .asciiz "Enter 2nd number: "
msg2: .asciiz "Enter 3rd number: "
msg3: .asciiz "maximum number is: "

.text
.globl main
main:
li $v0, 4
la $a0, msg
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
move $t2, $v0

move $t3, $t0

bgt $t1, $t3, if

else:
bgt $t2, $t3, if1
j print_result

if:
move $t3, $t1
j else

if1:
move $t3, $t2

print_result:
li $v0, 4
la $a0, msg3
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall
