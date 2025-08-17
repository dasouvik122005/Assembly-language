.data
msg: .asciiz "Enter a number:"
.text
.globl main
main:
li $v0,4
la $a0,msg
syscall
li $v0,5
syscall
move $t0,$v0
li $v0,10
syscall