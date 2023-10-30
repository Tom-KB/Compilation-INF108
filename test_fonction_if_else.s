	.text
	j	main
f:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,else1
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 4
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,suite2
	lw	$a0,4($sp)
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
suite2:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	j	suite1
else1:
	lw	$a0,4($sp)
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
suite1:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
g:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,else3
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,else4
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,else5
	li	$a0, 1
	sub	$a0,$zero,$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,16
	jr	$ra
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	j	suite5
else5:
	lw	$a0,12($sp)
	sub	$a0,$zero,$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,16
	jr	$ra
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite5:
	j	suite4
else4:
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,16
	jr	$ra
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite4:
	j	suite3
else3:
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,16
	jr	$ra
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite3:
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$ra,0($sp)
	addi	$sp,$sp,16
	jr	$ra
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	f
	li	$a0, 6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	f
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 7
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	g
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	g
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	g
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	g
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
