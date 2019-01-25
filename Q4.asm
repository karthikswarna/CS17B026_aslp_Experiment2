	.file	1 "Q4.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	isprime
	.set	nomips16
	.set	nomicromips
	.ent	isprime
	.type	isprime, @function
isprime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	lw	$2,16($fp)
	slt	$2,$2,2
	beq	$2,$0,$L2
	nop

	move	$2,$0
	b	$L3
	nop

$L2:
	li	$2,2			# 0x2
	sw	$2,4($fp)
	b	$L4
	nop

$L6:
	lw	$3,16($fp)
	lw	$2,4($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L5
	nop

	move	$2,$0
	b	$L3
	nop

$L5:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$3,4($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L6
	nop

	li	$2,1			# 0x1
$L3:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	isprime
	.size	isprime, .-isprime
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$2,12			# 0xc
	sw	$2,36($fp)
	lw	$2,36($fp)
	sw	$2,24($fp)
	lw	$2,36($fp)
	sw	$2,28($fp)
	li	$2,1			# 0x1
	sw	$2,32($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	beq	$2,$0,$L8
	nop

	b	$L9
	nop

$L10:
	lw	$3,36($fp)
	lw	$2,32($fp)
	subu	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L9:
	lw	$2,24($fp)
	andi	$2,$2,0x1
	beq	$2,$0,$L10
	nop

	lw	$2,28($fp)
	andi	$2,$2,0x1
	beq	$2,$0,$L10
	nop

	lw	$2,24($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L11
	nop

	lw	$2,24($fp)
	sw	$2,36($fp)
	b	$L13
	nop

$L11:
	lw	$2,28($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L13
	nop

	lw	$2,28($fp)
	sw	$2,36($fp)
	b	$L13
	nop

$L8:
	lw	$3,36($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L14
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L14:
	beq	$2,$0,$L15
	nop

	li	$3,1			# 0x1
	beq	$2,$3,$L17
	nop

	b	$L13
	nop

$L15:
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	b	$L13
	nop

$L18:
	lw	$3,36($fp)
	lw	$2,32($fp)
	subu	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L17:
	lw	$4,24($fp)
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	bne	$2,$0,$L18
	nop

	lw	$4,28($fp)
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	bne	$2,$0,$L18
	nop

	lw	$4,24($fp)
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	beq	$2,$0,$L19
	nop

	lw	$2,24($fp)
	sw	$2,36($fp)
	b	$L22
	nop

$L19:
	lw	$4,28($fp)
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	beq	$2,$0,$L22
	nop

	lw	$2,28($fp)
	sw	$2,36($fp)
$L22:
	nop
$L13:
	move	$2,$0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
