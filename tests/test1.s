	.text
	addi	$sp,$sp,0
	j	main
f:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 3
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	li	$a0, 1
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	li	$a0, 2
	sw	$a0,0($sp)
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	jal	f
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,8
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
