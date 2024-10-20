
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
    li s0, 0
    li t1, 0
    
loop:
    beq t1, a1, done 
    slli t2, t1, 2
    add t3, a0, t2
    lw t4, 0(t3)
    beq t4, a2, update_s0
    j next
    
update_s0:
    add s0, zero, t3

next:
    addi t1, t1, 1
    j loop

#-----------------------------
done:
    addi a7, zero, 10 
    ecall
