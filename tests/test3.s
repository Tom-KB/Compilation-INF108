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
	beq	$a0,$zero,else2
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	j	suite2
else2:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite2:
suite1:
	li	$a0, 0
	beq	$a0,$zero,suite3
	li	$a0, 0
	beq	$a0,$zero,else4
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	j	suite4
else4:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite4:
	addi	$sp,$sp,0
suite3:
	li	$a0, 0
	beq	$a0,$zero,else5
	li	$a0, 0
	beq	$a0,$zero,suite6
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite6:
	addi	$sp,$sp,0
	j	suite5
else5:
	li	$a0, 0
	beq	$a0,$zero,suite7
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
suite7:
	addi	$sp,$sp,0
suite5:
	li	$a0, 0
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	addi	$sp,$sp,0
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
