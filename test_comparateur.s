	.text
	j	main
main:
	move	$a0, $ra
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	addi	$sp,$sp,-4
	li	$a0, 2
	sw	$a0,4($sp)
	li	$a0, 3
	sw	$a0,0($sp)
	addi	$sp,$sp,-4
	addi	$sp,$sp,-4
	li	$a0, 0
	sw	$a0,4($sp)
	li	$a0, 1
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a0,$a1
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a0,$a1
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a0,$a1
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a0,$a1
	slti	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 2
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 2
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	and	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	and	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	and	$a0,$a1,$a0
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
	and	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,0($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	li	$a0, 0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,12($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,12($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	sub	$a0,$a1,$a0
	sltiu	$a0,$a0,1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	xor	$a0,$a1,$a0
	sltu	$a0,$zero,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	li	$a0, 1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,8($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	and	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,24($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,8($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,16($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a0,$a1
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	and	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	lw	$a0,4($sp)
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	or	$a0,$a1,$a0
	addi	$sp,$sp,-4
	sw	$a0,0($sp)
	lw	$a0,4($sp)
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	slt	$a0,$a1,$a0
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, 10
	syscall
	addi	$sp,$sp,16
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra
	li	$v0, 10
	syscall
	.data
