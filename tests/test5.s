	.text
	j	main
func_f:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,0($sp)
while1:
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,done1
	li	$a0, 6
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,-4
	li	$a0, 3
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,else1
while2:
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,done2
	li	$a0, 5
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sw	$a0,0($sp)
	j	while2
done2:
	j	suite1
else1:
while3:
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,done3
	li	$a0, 1
	sub	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sw	$a0,0($sp)
	j	while3
done3:
suite1:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sw	$a0,4($sp)
	addi	$sp,$sp,4
	j	while1
done1:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	addi	$sp,$sp,12
	jr	$ra
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 4
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 4
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
