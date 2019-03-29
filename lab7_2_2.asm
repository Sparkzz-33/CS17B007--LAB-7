main:
	li	$a0, 7
	jal 	fact
	add	$s0, $v0, $zero
	li	$v0, 1
	syscall
	li	$v0, 10
	syscall

fact:
	
	addi	$sp, $sp, -12
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	
	add	$s0, $a0, $zero
	li	$t1, 1
	beq	$s0, $t1, return1
	
	addi	$a0, $s0, -1
	
	jal 	fact
	
	add	$s1, $v0, $zero
	
	mul	$v0, $s1, $s0
	
exit:
	lw	$ra, 0($sp)
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	addi	$sp, $sp, 12
	jr	$ra
return1:
	li	$v0, 1
	j	exit
