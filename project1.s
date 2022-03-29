#02941041
# N = 30
# M = 20
# beta = 't'
# delta = 'T'
    .data
        input: .space11
        string: .asciiz "\n"
    .text
main:
    #reads input from user
    li $v0, 8
    la $a0, input
    li $a1, 11
    syscall
    
    li $t0, 0
    li $t1, 10
    la $t2, input
li $v0, 4
la $a0, string
syscall
    
