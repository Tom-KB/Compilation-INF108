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
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	jal	func_f
	lw	$ra,0($sp)
	addi	$sp,$sp,8
	jr	$ra
	li	$v0, 10
	syscall
	.data
