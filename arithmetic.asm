# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here
	li $v0 5
	syscall
	move $t0 $v0

	li $v0 5
	syscall
	move $t1 $v0

	sub $t2 $t0 $t1
	
	sll $t3 $t2 4

	li $t4 8
	add $t5 $t3 $t4

	li $v0 1
	move $a0 $t5
	syscall
	j exit 

exit:
	# Exit SPIM: Write your code here!
	li $v0 10
	syscall
