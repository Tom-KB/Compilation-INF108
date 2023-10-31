	.text
	j	main
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	addi	$sp,$sp,-4
	li	$a0, 0
	sw	$a0,4($sp)
while1:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,done1
	li	$a0, 0
	sw	$a0,0($sp)
while2:
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 5
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,done2
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,suite1
	j	done2
suite1:
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
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,0($sp)
	j	while2
done2:
	li	$a0, 999
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,4($sp)
	j	while1
done1:
	li	$a0, 0
	addi	$sp,$sp,8
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	addi	$sp,$sp,8
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
