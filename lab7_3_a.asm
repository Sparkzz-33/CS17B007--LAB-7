main:
	li	$a0, 1
	jal	y
	j	$31
y:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	x
	mul	$v0, $v0, $v0
	mul	$v0, $v0, $v0
	addi	$t3, $t3, 314
	addi	$t2, $zero, 100
	div	$t3, $t3, $t2
	add	$v0, $v0, $t3
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra
x:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	z
	add	$t0, $v0, $zero
	mul	$v0, $v0, $v0
	mul	$v0, $v0, $t0
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra
z:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	p
	add	$t1, $v0, $zero
	mul	$v0, $v0, $v0
	add	$t4, $zero, $v0
	mul	$v0, $v0, $t1
	add	$v0, $v0, $t4
	lw	$ra, ($sp)
	addi	$sp, $sp, 4
	jr	$ra
p:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	add	$v0, $zero, $a0
	li	$t5, 1
	mul	$v0, $v0, $t5
	li	$t5, 1
	div	$v0, $v0, $t5
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra
