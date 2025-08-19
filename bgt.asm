        .text                   # Section containing executable code
        .globl main            # Declare 'main' as a global symbol

main:   
        li $t0, 5              # Load immediate value 5 into register $t0
        li $t1, 6              # Load immediate value 6 into register $t1
        bgt $t0, $t1, if       # Branch to 'if' if $t0 > $t1 (5 > 6 → false, so skip)
        sub $t2, $t0, $t1      # Subtract $t1 from $t0, store result in $t2 (5 - 6 = -1)
        j exit                 # Jump to 'exit' label, skipping the 'if' block

if:     
        add $t2, $t0, $t1      # (Only executed if $t0 > $t1) Add $t0 and $t1, store in $t2

exit:   
        li $v0, 10             # Load syscall code 10 (exit) into $v0
        syscall                # Exit the program
