	.text
	j	main
f:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
while0:
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	beq	$a0,$zero,endwhile0
	lw	$a0,4($sp)
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
	sub	$a0,$a1,$a0
	sw	$a0,4($sp)
	j	while0
endwhile0:
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
main:
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 3
	jal	f
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
