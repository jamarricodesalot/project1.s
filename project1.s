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

   loop:
            lb $a0, 0($t2)
            beq $a0, $t1, exit
            
            #checkpoints
            
            checkif09:
                li $t3. '0'
                blt $a0, $t3, invalidchar
                li $t3, '9'
                ble $a0, $t3, sum1
           
            checkifAT:
                li $t3. 'A'
                blt $a0, $t3, invalidchar
                li $t3, 'T'
                ble $a0, $t3, sum1
                    
                    
            checkifAt:
                li $t3. '0'
                blt $a0, $t3, invalidchar
                li $t3, '9'
                ble $a0, $t3, sum1
                
sum09: 
    addi $t4, $a0, -48
    add $t0, $t0, $t4
    addi $t2, $t2, 1
    j loop

sumAU:
    addi $t4, $a0, -55
    add $t0, $t0, $t4
    addi $t2, $t2, 1
    j loop
