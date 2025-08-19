.text
.globl main
main:
    li $t0,16          # Load immediate: $t0 = 16
    li $t1,2           # Load immediate: $t1 = 2
    div $t2,$t0,$t1    # Divide $t0 by $t1 → $t2 = 16 / 2 = 8
    li $t3,8           # Load immediate: $t3 = 8
    li $t4,3           # Load immediate: $t4 = 3
    mul $t5,$t3,$t4    # Multiply $t3 * $t4 → $t5 = 8 * 3 = 24
    add $t7,$t2,$t5    # Add $t2 + $t5 → $t7 = 8 + 24 = 32
    li $t6,4           # Load immediate: $t6 = 4
    div $t8,$t7,$t6    # Divide $t7 by $t6 → $t8 = 32 / 4 = 8
    li $v0,10          # Exit syscall code (10)
    syscall            # Terminate program
