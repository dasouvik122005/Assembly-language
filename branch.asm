        .text                   # Section containing code
        .globl main            # Declare 'main' as a global symbol so the linker can find it

main:   
        li $t0, 10             # Load immediate value 10 into register $t0
        li $t1, 20             # Load immediate value 20 into register $t1
        add $t2, $t0, $t1      # Add $t0 and $t1, store result (30) in $t2
        j exit                 # Jump to 'exit' label, skipping the next instruction
        sub $t3, $t0, $t1      # (Skipped) Subtract $t1 from $t0, result would be -10

exit:   
        li $v0, 10             # Load syscall code 10 into $v0 (exit)
        syscall                # Make system call to exit the program
