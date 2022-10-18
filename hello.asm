# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	prompt: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:
	# TODO: Write your code here
	li $v0 4
	la $a0 prompt
	syscall

	li $v0 5
	syscall
	move $t0 $v0
	
	li $t1 0x0001
	and $t2 $t1 $t0

	li $t3 0

	beq $t2 $t3 even
	j odd 

odd:
	li $t4 2
	mult $t4 $t0
	j after
even:	
	li $t4 3
	mult $t4 $t0
	j after
after:
	mflo $t5
	li $v0 1
	move $a0 $t5
	syscall
	
	j exit

exit:
	# Exit SPIM: Write your code here!
	li $v0 10
	syscall
