main:
	li $t0, 57 
	li $t1, 32 
	li $t2, 174
	
	add $t4, $t2, $t1
	sub $t5, $t4, $t0
	sub $t6, $t2, $t1
	xor $t3, $t5, $t6

	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall
