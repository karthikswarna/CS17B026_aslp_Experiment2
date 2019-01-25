	.file	1 "Q5.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.word	2
	.word	4
	.word	6
	.word	8
	.word	7
	.word	9
	.word	12
	.word	14
	.word	17
	.align	2
$LC1:
	.word	1
	.word	2
	.word	3
	.word	23
	.word	10
	.word	20
	.word	16
	.word	18
	.word	4
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,128,$31		# vars= 96, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-128
	sw	$31,124($sp)
	sw	$fp,120($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,128($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,116($fp)
	lui	$2,%hi($LC0)
	addiu	$3,$fp,44
	addiu	$2,$2,%lo($LC0)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$3,$fp,80
	addiu	$2,$2,%lo($LC1)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,36($fp)
	b	$L2
	nop

$L5:
	sw	$0,40($fp)
	b	$L3
	nop

$L4:
	lw	$3,36($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,40($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,120
	addu	$2,$3,$2
	lw	$4,-76($2)
	lw	$3,36($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,40($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,120
	addu	$2,$3,$2
	lw	$2,-40($2)
	addu	$4,$4,$2
	lw	$3,36($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,40($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,120
	addu	$2,$3,$2
	sw	$4,-76($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L3:
	lw	$2,40($fp)
	slt	$2,$2,3
	bne	$2,$0,$L4
	nop

	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L2:
	lw	$2,36($fp)
	slt	$2,$2,3
	bne	$2,$0,$L5
	nop

	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,116($fp)
	lw	$3,0($3)
	beq	$4,$3,$L7
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	move	$sp,$fp
	lw	$31,124($sp)
	lw	$fp,120($sp)
	addiu	$sp,$sp,128
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
