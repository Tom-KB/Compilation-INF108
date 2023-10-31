	.text
	j	main
fib:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	slti	$a0,$a0,1
	beq	$a0,$zero,suite1
	lw	$a0,4($sp)
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite1:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	fib
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	fib
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
syr:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,suite2
	li	$a0, 0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite2:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	beq	$a0,$zero,suite3
	li	$a0, 3
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	syr
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite3:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	syr
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
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	li	$a0, 10
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	fib
	sw	$a0,0($sp)
	lw	$a0,0($sp)
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	syr
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
