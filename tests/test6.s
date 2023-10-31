	.text
	addi	$sp,$sp,0
	j	main
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	li	$a0, 0
	sw	$a0,0($sp)
	li	$a0, 1
	sw	$a0,8($sp)
while1:
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 10
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,done1
	li	$a0, 1
	sw	$a0,4($sp)
while2:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 10
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	beq	$a0,$zero,done2
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	mult	$a1,$a0
	mflo	$a0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,4($sp)
	j	while2
	j	while2
done2:
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,8($sp)
	j	while1
	j	while1
done1:
	lw	$a0,0($sp)
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 0
	sw	$a0,8($sp)
while3:
	li	$a0, 1
	beq	$a0,$zero,done3
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 10
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,suite1
	j	done3
suite1:
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	add	$a0,$a1,$a0
	sw	$a0,8($sp)
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	div	$a1,$a0
	mfhi	$a0
	addi	$sp,$sp,-4
	sw	$zero,0($sp)
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	beq	$a0,$zero,suite2
	j	while3
suite2:
	lw	$a0,8($sp)
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	j	while3
done3:
	addi	$sp,$sp,12
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
