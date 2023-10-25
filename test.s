	.text
	j	main
main:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	li	$a0, 5
	sw	$a0,0($sp)
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,else0
	li	$a0, 3
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	bne	$a0,$zero,suite0
else0:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite0:
	li	$a0, 2
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,4
	li	$v0, 10
	syscall
	.data
