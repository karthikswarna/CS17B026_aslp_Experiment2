	.file	1 "Q3.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	li	$2,1			# 0x1
	sw	$2,4($fp)
	b	$L2
	nop

$L8:
	sw	$0,8($fp)
	li	$2,2			# 0x2
	sw	$2,0($fp)
	b	$L3
	nop

$L6:
	lw	$3,4($fp)
	lw	$2,0($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L4
	nop

	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
	b	$L5
	nop

$L4:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L3:
	lw	$2,4($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	move	$3,$2
	lw	$2,0($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L6
	nop

$L5:
	lw	$2,8($fp)
	bne	$2,$0,$L7
	nop

	lw	$3,4($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L7
	nop

	lw	$2,4($fp)
	sw	$2,12($fp)
$L7:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,101
	bne	$2,$0,$L8
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
