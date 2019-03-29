main:
	li	$a0, 5
	li	$a1, 4
	jal	mult_fun
	li	$s1, 2
	li	$s2, 3
	div	$s0, $v1, $s1
	add	$s0, $s0, $s2
	li	$v0, 10
	syscall
mult_fun:
	mul	$v1, $a0, $a1
	jr	$ra
