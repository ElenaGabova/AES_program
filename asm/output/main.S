	.syntax unified
	.arch armv7-a
	.eabi_attribute 28, 1
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"main.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"end_c - start_c = %d\012\000"
	.align	2
.LC1:
	.ascii	"Result for %d is %d\012\000"
	.text
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	.syntax unified
@ 20 "./source/main.c" 1
	start_c:
	vmov.u8 r3, d0[0]
	b end_c
end_c:
	movw r0, #:lower16:start_c
	movt r0, #:upper16:start_c
	movw r1, #:lower16:end_c
	movt r1, #:upper16:end_c
	sub r3, r1, r0
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #8]
	ldr	r1, [r7, #8]
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	printf
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #16
	uxtb	r3, r3
	mov	r2, r3
	lsls	r2, r2, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	uxtb	r1, r3
	movw	r3, #:lower16:a.6329
	movt	r3, #:upper16:a.6329
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L3
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	movw	r3, #:lower16:a.6329
	movt	r3, #:upper16:a.6329
	ldr	r4, [r7, #12]
	.syntax unified
@ 51 "./source/main.c" 1
	vldm.64 r3, {d0-d15}
	vldm.64 r3, {d16-d31}
	mov r0, #6
	adr r1, sw_start
	mla r0, r4, r0, r1
	mov r15, r0
sw_start:
	vmov.u8 r2, d0[0]
	b sw_end
	vmov.u8 r2, d0[1]
	b sw_end
	vmov.u8 r2, d0[2]
	b sw_end
	vmov.u8 r2, d0[3]
	b sw_end
	vmov.u8 r2, d0[4]
	b sw_end
	vmov.u8 r2, d0[5]
	b sw_end
	vmov.u8 r2, d0[6]
	b sw_end
	vmov.u8 r2, d0[7]
	b sw_end
	vmov.u8 r2, d1[0]
	b sw_end
	vmov.u8 r2, d1[1]
	b sw_end
	vmov.u8 r2, d1[2]
	b sw_end
	vmov.u8 r2, d1[3]
	b sw_end
	vmov.u8 r2, d1[4]
	b sw_end
	vmov.u8 r2, d1[5]
	b sw_end
	vmov.u8 r2, d1[6]
	b sw_end
	vmov.u8 r2, d1[7]
b sw_end
	sw_end: 
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L5
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	main, .-main
	.local	a.6329
	.comm	a.6329,16,4
	.ident	"GCC: (Linaro GCC 5.1-2015.08) 5.1.1 20150608"
	.section	.note.GNU-stack,"",%progbits
