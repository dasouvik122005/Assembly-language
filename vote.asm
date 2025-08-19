.data
msg:  .asciiz "Enter your age: "         # Prompt message
msg1: .asciiz "Wait for some years\n"    # Message if age < 18
msg2: .asciiz "You can vote\n"           # Message if age >= 18

.text
.globl main
main:

    li $v0, 4              # syscall 4: print string
    la $a0, msg            # load address of prompt message
    syscall                # display "Enter your age: "

    li $v0, 5              # syscall 5: read integer
    syscall                # read user input
    move $t0, $v0          # store input age in $t0

    li $t1, 18             # set $t1 = 18

    bge $t0, $t1, can_vote # if age >= 18, jump to can_vote

    # Age is less than 18
    li $v0, 4              # syscall 4: print string
    la $a0, msg1           # load address of "Wait..." message
    syscall
    j exit                 # jump to exit

can_vote:
    # Age is 18 or more
    li $v0, 4              # syscall 4: print string
    la $a0, msg2           # load address of "You can vote" message
    syscall

exit:
    li $v0, 10             # syscall 10: exit
    syscall

