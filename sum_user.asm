.data
msg1: .asciiz "Enter the last number: "
msg2: .asciiz "\nThe sum is: "

.text
.globl main
main:
    			
    li $v0, 4        # Ask user for input
    la $a0, msg1
    syscall

    li $v0, 5        # read integer
    syscall
    move $t1, $v0    # last number

    # Initialize
    li $t0, 0        # counter i
    li $t2, 0        # sum

loop:
    
    li $v0, 1        # Print number
    move $a0, $t0
    syscall

    # Add to sum
    add $t2, $t2, $t0

    # Increment i
    addi $t0, $t0, 1

    
    ble $t0, $t1, loop

    # Print sum
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # Exit
    li $v0, 10
    syscall
