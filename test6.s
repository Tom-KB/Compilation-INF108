	.text
	j	main
main:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	beq	$a0,$zero,suite1
	li	$a0, 0
	beq	$a0,$zero,suite2
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite2:
suite1:
	li	$a0, 0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
