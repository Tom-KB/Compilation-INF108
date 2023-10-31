	.text
	j	main
func_f:
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
func_fac1:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac1
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
func_fac2:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac2
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
func_fac3:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac3
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
func_fac4:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac4
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
func_fac5:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac5
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
func_fac6:
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
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac6
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
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 10
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac3
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac4
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 5
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_fac6
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
