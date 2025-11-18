✅ FULL MIPS ASSEMBLY CHEAT SHEET (SPIM/MARS)

(All essential syscalls, prints, inputs, arithmetic, loops, branches, functions, memory ops — everything in one file)

############################################################
# MIPS COMPLETE REFERENCE FILE (SPIM / MARS COMPATIBLE)
# Includes:
# - All syscalls (print, read, char, exit, sbrk)
# - Print integer/string/char/space/newline
# - Input read
# - Arithmetic / modulo / division
# - Loops & branches
# - Functions + stack frame
# - Load/store
# - Templates for common tasks
############################################################

.data
buffer: .space 128
sampleStr: .asciiz "Sample String\n"

############################################################
#                   SYSTEM CALLS
############################################################

# Print integer
# $v0 = 1, $a0 = integer
print_int:
    li $v0, 1
    syscall
    jr $ra

# Print float ($f12)
print_float:
    li $v0, 2
    syscall
    jr $ra

# Print double ($f12)
print_double:
    li $v0, 3
    syscall
    jr $ra

# Print string ($a0 = address)
print_string:
    li $v0, 4
    syscall
    jr $ra

# Read integer → result in $v0
read_int:
    li $v0, 5
    syscall
    jr $ra

# Read float → $f0
read_float:
    li $v0, 6
    syscall
    jr $ra

# Read double
read_double:
    li $v0, 7
    syscall
    jr $ra

# Read string ($a0=buffer, $a1=len)
read_string:
    li $v0, 8
    syscall
    jr $ra

# Allocate memory (sbrk)
# $a0 = bytes → address returned in $v0
alloc:
    li $v0, 9
    syscall
    jr $ra

# Exit program
exit_program:
    li $v0, 10
    syscall

# Print character ($a0 = ASCII)
print_char:
    li $v0, 11
    syscall
    jr $ra

# Read character → $v0
read_char:
    li $v0, 12
    syscall
    jr $ra

############################################################
#               COMMON CHAR OUTPUTS
############################################################

print_space:
    li $v0, 11
    li $a0, 32
    syscall
    jr $ra

print_newline:
    li $v0, 11
    li $a0, 10
    syscall
    jr $ra

############################################################
#                   ARITHMETIC
############################################################

# t3 = t0 % 2  (rem or div/mfhi)
mod2:
    rem $t3, $t0, 2
    jr $ra

mod_general:
    div $t0, $t1       # divides t0 / t1
    mfhi $t3           # remainder
    jr $ra

############################################################
#                     LOOPS
############################################################

# for(i = 0; i < N; i++)
loop_template:
    li $t0, 0
    li $t1, 10
loop_start:
    # loop body here
    addi $t0, $t0, 1
    blt $t0, $t1, loop_start
    jr $ra

# while(t0 != t1)
while_template:
    beq $t0, $t1, while_end
    # body
    j while_template
while_end:
    jr $ra

############################################################
#                   BRANCHES
############################################################

branch_examples:
    beq  $t0, $t1, equal_label
    bne  $t0, $t1, notequal_label
    blt  $t0, $t1, less_label
    bgt  $t0, $t1, greater_label
    ble  $t0, $t1, le_label
    bge  $t0, $t1, ge_label
    jr $ra

############################################################
#           FUNCTION / STACK FRAME TEMPLATE
############################################################

# CALL:  jal funcName
# RETURN VALUE: $v0
# ARGS: $a0-$a3
func_example:
    addi $sp, $sp, -16
    sw $ra, 12($sp)
    sw $s0, 8($sp)

    # function body
    move $v0, $a0

    lw $s0, 8($sp)
    lw $ra, 12($sp)
    addi $sp, $sp, 16
    jr $ra

############################################################
#           LOAD / STORE / ADDRESSING
############################################################

memory_ops:
    la  $t0, buffer      # load address
    lw  $t1, 0($t0)      # load word
    sw  $t2, 4($t0)      # store word
    lb  $t3, 0($t0)      # load byte
    sb  $t4, 1($t0)      # store byte
    jr $ra

############################################################
#     TEMPLATE: PRINT INTEGER + SPACE (common pattern)
############################################################

print_int_space:
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 11
    li $a0, 32
    syscall
    jr $ra

############################################################
#     TEMPLATE: PRINT INTEGER + NEWLINE
############################################################

print_int_nl:
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 11
    li $a0, 10
    syscall
    jr $ra

############################################################
#     EXAMPLE PROGRAM: PRINT 0–20 WITH EVEN COUNT
############################################################

.text
.globl main
main:
    li $v0, 4
    la $a0, sampleStr
    syscall

    li $t0, 0
    li $t1, 21
    li $t2, 0

loop_numbers:
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 11
    li $a0, 32
    syscall

    rem $t3, $t0, 2
    beq $t3, $zero, count_even

next_num:
    addi $t0, $t0, 1
    blt $t0, $t1, loop_numbers
    j end_program

count_even:
    addi $t2, $t2, 1
    j next_num

end_program:
    li $v0, 4
    la $a0, sampleStr
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall

