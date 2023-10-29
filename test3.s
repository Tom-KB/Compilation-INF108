	.text
	j	main
f:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac1:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,suite1
	li	$a0, 1
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite1:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac2:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,else2
	li	$a0, 1
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	j	suite2
else2:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite2:
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac3:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,else3
	li	$a0, 1
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	j	suite3
else3:
suite3:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac3
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac4:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,suite4
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac4
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite4:
	lw	$a0,4($sp)
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac5:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,else5
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	j	suite5
else5:
	li	$a0, 1
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
suite5:
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
fac6:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,else6
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	jal	fac6
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	j	suite6
else6:
suite6:
	li	$a0, 1
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
main:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 10
	jal	f
	li	$a0, 5
	jal	fac1
	jal	f
	li	$a0, 5
	jal	fac2
	jal	f
	li	$a0, 5
	jal	fac3
	jal	f
	li	$a0, 5
	jal	fac4
	jal	f
	li	$a0, 5
	jal	fac5
	jal	f
	li	$a0, 5
	jal	fac6
	jal	f
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
