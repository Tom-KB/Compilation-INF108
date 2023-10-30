	.text
	j	main
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	addi	$sp,$sp,-4
	li	$a0, 12
	sw	$a0,4($sp)
	li	$a0, 6
	sw	$a0,0($sp)
	li	$a0, 6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 12
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 12
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 35
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 7
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 43
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 43
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	sub	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,8
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
