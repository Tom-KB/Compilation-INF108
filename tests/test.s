	.text
	j	main
main:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 3
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 15
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 4
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	addi	$sp,$sp,4
	jr	$ra
	.data
