.text
.globl main
main:
lw $t0,sub1
lw $t1,sub2
lw $t2,sub3
lw $t3,sub4
lw $t7,num
add $t4,$t0,$t1
add $t5,$t4,$t2
add $t6,$t5,$t3
div $t8,$t6,$t7
lw $v0,end
syscall
.data
sub1: .word 65
sub2: .word 70
sub3: .word 85
sub4: .word 90
num: .word 4
end: .word 10
