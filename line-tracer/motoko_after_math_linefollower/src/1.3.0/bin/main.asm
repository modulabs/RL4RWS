
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 fbb3 	bl	80018f4 <lib_low_level_init>
 800018e:	f000 f921 	bl	80003d4 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f000 f88a 	bl	80002b4 <create_thread>
 80001a0:	f000 f882 	bl	80002a8 <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	20000564 	.word	0x20000564
 80001ac:	08001129 	.word	0x08001129

080001b0 <thread_ending>:
 80001b0:	b672      	cpsid	i
 80001b2:	4b05      	ldr	r3, [pc, #20]	; (80001c8 <thread_ending+0x18>)
 80001b4:	4a05      	ldr	r2, [pc, #20]	; (80001cc <thread_ending+0x1c>)
 80001b6:	681b      	ldr	r3, [r3, #0]
 80001b8:	210c      	movs	r1, #12
 80001ba:	fb01 2303 	mla	r3, r1, r3, r2
 80001be:	2200      	movs	r2, #0
 80001c0:	605a      	str	r2, [r3, #4]
 80001c2:	b662      	cpsie	i
 80001c4:	bf00      	nop
 80001c6:	e7fd      	b.n	80001c4 <thread_ending+0x14>
 80001c8:	200007ac 	.word	0x200007ac
 80001cc:	20000764 	.word	0x20000764

080001d0 <null_thread>:
 80001d0:	b508      	push	{r3, lr}
 80001d2:	f001 fd41 	bl	8001c58 <sleep>
 80001d6:	e7fc      	b.n	80001d2 <null_thread+0x2>

080001d8 <scheduler>:
 80001d8:	b570      	push	{r4, r5, r6, lr}
 80001da:	2200      	movs	r2, #0
 80001dc:	4611      	mov	r1, r2
 80001de:	4b15      	ldr	r3, [pc, #84]	; (8000234 <scheduler+0x5c>)
 80001e0:	200c      	movs	r0, #12
 80001e2:	fb00 f501 	mul.w	r5, r0, r1
 80001e6:	195e      	adds	r6, r3, r5
 80001e8:	6874      	ldr	r4, [r6, #4]
 80001ea:	f014 0f02 	tst.w	r4, #2
 80001ee:	461c      	mov	r4, r3
 80001f0:	d10a      	bne.n	8000208 <scheduler+0x30>
 80001f2:	6876      	ldr	r6, [r6, #4]
 80001f4:	07f6      	lsls	r6, r6, #31
 80001f6:	d507      	bpl.n	8000208 <scheduler+0x30>
 80001f8:	4350      	muls	r0, r2
 80001fa:	5b5d      	ldrh	r5, [r3, r5]
 80001fc:	5a18      	ldrh	r0, [r3, r0]
 80001fe:	b2ad      	uxth	r5, r5
 8000200:	b280      	uxth	r0, r0
 8000202:	4285      	cmp	r5, r0
 8000204:	bf38      	it	cc
 8000206:	460a      	movcc	r2, r1
 8000208:	200c      	movs	r0, #12
 800020a:	4348      	muls	r0, r1
 800020c:	5a1d      	ldrh	r5, [r3, r0]
 800020e:	b2ad      	uxth	r5, r5
 8000210:	b125      	cbz	r5, 800021c <scheduler+0x44>
 8000212:	5a1d      	ldrh	r5, [r3, r0]
 8000214:	b2ad      	uxth	r5, r5
 8000216:	3d01      	subs	r5, #1
 8000218:	b2ad      	uxth	r5, r5
 800021a:	521d      	strh	r5, [r3, r0]
 800021c:	3101      	adds	r1, #1
 800021e:	2906      	cmp	r1, #6
 8000220:	d1dd      	bne.n	80001de <scheduler+0x6>
 8000222:	230c      	movs	r3, #12
 8000224:	4353      	muls	r3, r2
 8000226:	18e1      	adds	r1, r4, r3
 8000228:	8849      	ldrh	r1, [r1, #2]
 800022a:	b289      	uxth	r1, r1
 800022c:	52e1      	strh	r1, [r4, r3]
 800022e:	4b02      	ldr	r3, [pc, #8]	; (8000238 <scheduler+0x60>)
 8000230:	601a      	str	r2, [r3, #0]
 8000232:	bd70      	pop	{r4, r5, r6, pc}
 8000234:	20000764 	.word	0x20000764
 8000238:	200007ac 	.word	0x200007ac

0800023c <SysTick_Handler>:
 800023c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000240:	f3ef 8208 	mrs	r2, MSP
 8000244:	4c0d      	ldr	r4, [pc, #52]	; (800027c <SysTick_Handler+0x40>)
 8000246:	4d0e      	ldr	r5, [pc, #56]	; (8000280 <SysTick_Handler+0x44>)
 8000248:	6823      	ldr	r3, [r4, #0]
 800024a:	3301      	adds	r3, #1
 800024c:	d005      	beq.n	800025a <SysTick_Handler+0x1e>
 800024e:	6823      	ldr	r3, [r4, #0]
 8000250:	210c      	movs	r1, #12
 8000252:	fb01 5303 	mla	r3, r1, r3, r5
 8000256:	609a      	str	r2, [r3, #8]
 8000258:	e001      	b.n	800025e <SysTick_Handler+0x22>
 800025a:	2300      	movs	r3, #0
 800025c:	6023      	str	r3, [r4, #0]
 800025e:	f7ff ffbb 	bl	80001d8 <scheduler>
 8000262:	6823      	ldr	r3, [r4, #0]
 8000264:	220c      	movs	r2, #12
 8000266:	fb02 5503 	mla	r5, r2, r3, r5
 800026a:	f06f 0306 	mvn.w	r3, #6
 800026e:	68aa      	ldr	r2, [r5, #8]
 8000270:	469e      	mov	lr, r3
 8000272:	f382 8808 	msr	MSP, r2
 8000276:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800027a:	4770      	bx	lr
 800027c:	200007ac 	.word	0x200007ac
 8000280:	20000764 	.word	0x20000764

08000284 <sched_off>:
 8000284:	b672      	cpsid	i
 8000286:	4770      	bx	lr

08000288 <sched_on>:
 8000288:	b662      	cpsie	i
 800028a:	4770      	bx	lr

0800028c <yield>:
 800028c:	bf00      	nop
 800028e:	4770      	bx	lr

08000290 <get_thread_id>:
 8000290:	b082      	sub	sp, #8
 8000292:	b672      	cpsid	i
 8000294:	4b03      	ldr	r3, [pc, #12]	; (80002a4 <get_thread_id+0x14>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	9301      	str	r3, [sp, #4]
 800029a:	b662      	cpsie	i
 800029c:	9801      	ldr	r0, [sp, #4]
 800029e:	b002      	add	sp, #8
 80002a0:	4770      	bx	lr
 80002a2:	bf00      	nop
 80002a4:	200007ac 	.word	0x200007ac

080002a8 <kernel_start>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f001 fcc3 	bl	8001c34 <sys_tick_init>
 80002ae:	bf00      	nop
 80002b0:	e7fd      	b.n	80002ae <kernel_start+0x6>
	...

080002b4 <create_thread>:
 80002b4:	f022 0203 	bic.w	r2, r2, #3
 80002b8:	3a40      	subs	r2, #64	; 0x40
 80002ba:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80002be:	eb01 0c02 	add.w	ip, r1, r2
 80002c2:	f102 0834 	add.w	r8, r2, #52	; 0x34
 80002c6:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80002ca:	323c      	adds	r2, #60	; 0x3c
 80002cc:	4488      	add	r8, r1
 80002ce:	4489      	add	r9, r1
 80002d0:	4607      	mov	r7, r0
 80002d2:	4411      	add	r1, r2
 80002d4:	2200      	movs	r2, #0
 80002d6:	b672      	cpsid	i
 80002d8:	4e11      	ldr	r6, [pc, #68]	; (8000320 <create_thread+0x6c>)
 80002da:	250c      	movs	r5, #12
 80002dc:	4355      	muls	r5, r2
 80002de:	1974      	adds	r4, r6, r5
 80002e0:	6860      	ldr	r0, [r4, #4]
 80002e2:	07c0      	lsls	r0, r0, #31
 80002e4:	d412      	bmi.n	800030c <create_thread+0x58>
 80002e6:	480f      	ldr	r0, [pc, #60]	; (8000324 <create_thread+0x70>)
 80002e8:	f8c4 c008 	str.w	ip, [r4, #8]
 80002ec:	f8c8 0000 	str.w	r0, [r8]
 80002f0:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80002f4:	f8c9 7000 	str.w	r7, [r9]
 80002f8:	2b05      	cmp	r3, #5
 80002fa:	bf98      	it	ls
 80002fc:	2306      	movls	r3, #6
 80002fe:	6008      	str	r0, [r1, #0]
 8000300:	2001      	movs	r0, #1
 8000302:	8063      	strh	r3, [r4, #2]
 8000304:	5373      	strh	r3, [r6, r5]
 8000306:	6060      	str	r0, [r4, #4]
 8000308:	4610      	mov	r0, r2
 800030a:	e000      	b.n	800030e <create_thread+0x5a>
 800030c:	2006      	movs	r0, #6
 800030e:	b662      	cpsie	i
 8000310:	3201      	adds	r2, #1
 8000312:	2a06      	cmp	r2, #6
 8000314:	d001      	beq.n	800031a <create_thread+0x66>
 8000316:	2806      	cmp	r0, #6
 8000318:	d0dd      	beq.n	80002d6 <create_thread+0x22>
 800031a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800031e:	bf00      	nop
 8000320:	20000764 	.word	0x20000764
 8000324:	080001b1 	.word	0x080001b1

08000328 <kernel_init>:
 8000328:	b510      	push	{r4, lr}
 800032a:	2300      	movs	r3, #0
 800032c:	490b      	ldr	r1, [pc, #44]	; (800035c <kernel_init+0x34>)
 800032e:	220c      	movs	r2, #12
 8000330:	435a      	muls	r2, r3
 8000332:	188c      	adds	r4, r1, r2
 8000334:	2000      	movs	r0, #0
 8000336:	6060      	str	r0, [r4, #4]
 8000338:	3301      	adds	r3, #1
 800033a:	2006      	movs	r0, #6
 800033c:	4283      	cmp	r3, r0
 800033e:	8060      	strh	r0, [r4, #2]
 8000340:	5288      	strh	r0, [r1, r2]
 8000342:	d1f3      	bne.n	800032c <kernel_init+0x4>
 8000344:	4b06      	ldr	r3, [pc, #24]	; (8000360 <kernel_init+0x38>)
 8000346:	4807      	ldr	r0, [pc, #28]	; (8000364 <kernel_init+0x3c>)
 8000348:	4907      	ldr	r1, [pc, #28]	; (8000368 <kernel_init+0x40>)
 800034a:	f04f 32ff 	mov.w	r2, #4294967295
 800034e:	601a      	str	r2, [r3, #0]
 8000350:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000354:	2280      	movs	r2, #128	; 0x80
 8000356:	23ff      	movs	r3, #255	; 0xff
 8000358:	f7ff bfac 	b.w	80002b4 <create_thread>
 800035c:	20000764 	.word	0x20000764
 8000360:	200007ac 	.word	0x200007ac
 8000364:	080001d1 	.word	0x080001d1
 8000368:	200007b0 	.word	0x200007b0

0800036c <set_wait_state>:
 800036c:	b507      	push	{r0, r1, r2, lr}
 800036e:	f7ff ff8f 	bl	8000290 <get_thread_id>
 8000372:	9000      	str	r0, [sp, #0]
 8000374:	b672      	cpsid	i
 8000376:	4b0d      	ldr	r3, [pc, #52]	; (80003ac <set_wait_state+0x40>)
 8000378:	9a00      	ldr	r2, [sp, #0]
 800037a:	210c      	movs	r1, #12
 800037c:	fb01 3202 	mla	r2, r1, r2, r3
 8000380:	6851      	ldr	r1, [r2, #4]
 8000382:	f041 0102 	orr.w	r1, r1, #2
 8000386:	6051      	str	r1, [r2, #4]
 8000388:	b672      	cpsid	i
 800038a:	9a00      	ldr	r2, [sp, #0]
 800038c:	210c      	movs	r1, #12
 800038e:	fb01 3202 	mla	r2, r1, r2, r3
 8000392:	6852      	ldr	r2, [r2, #4]
 8000394:	9201      	str	r2, [sp, #4]
 8000396:	b662      	cpsie	i
 8000398:	9a01      	ldr	r2, [sp, #4]
 800039a:	0791      	lsls	r1, r2, #30
 800039c:	d500      	bpl.n	80003a0 <set_wait_state+0x34>
 800039e:	bf00      	nop
 80003a0:	9a01      	ldr	r2, [sp, #4]
 80003a2:	0792      	lsls	r2, r2, #30
 80003a4:	d4f0      	bmi.n	8000388 <set_wait_state+0x1c>
 80003a6:	b003      	add	sp, #12
 80003a8:	f85d fb04 	ldr.w	pc, [sp], #4
 80003ac:	20000764 	.word	0x20000764

080003b0 <wake_up_threads>:
 80003b0:	2300      	movs	r3, #0
 80003b2:	b672      	cpsid	i
 80003b4:	4a06      	ldr	r2, [pc, #24]	; (80003d0 <wake_up_threads+0x20>)
 80003b6:	210c      	movs	r1, #12
 80003b8:	fb01 2203 	mla	r2, r1, r3, r2
 80003bc:	6851      	ldr	r1, [r2, #4]
 80003be:	f021 0102 	bic.w	r1, r1, #2
 80003c2:	6051      	str	r1, [r2, #4]
 80003c4:	b662      	cpsie	i
 80003c6:	3301      	adds	r3, #1
 80003c8:	2b06      	cmp	r3, #6
 80003ca:	d1f2      	bne.n	80003b2 <wake_up_threads+0x2>
 80003cc:	4770      	bx	lr
 80003ce:	bf00      	nop
 80003d0:	20000764 	.word	0x20000764

080003d4 <lib_os_init>:
 80003d4:	b508      	push	{r3, lr}
 80003d6:	f7ff ffa7 	bl	8000328 <kernel_init>
 80003da:	f000 f8f9 	bl	80005d0 <messages_init>
 80003de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003e2:	f000 b8cd 	b.w	8000580 <stdio_init>
	...

080003e8 <putc_>:
 80003e8:	b538      	push	{r3, r4, r5, lr}
 80003ea:	4c06      	ldr	r4, [pc, #24]	; (8000404 <putc_+0x1c>)
 80003ec:	4605      	mov	r5, r0
 80003ee:	4620      	mov	r0, r4
 80003f0:	f000 f912 	bl	8000618 <mutex_lock>
 80003f4:	4628      	mov	r0, r5
 80003f6:	f001 f93b 	bl	8001670 <uart_write>
 80003fa:	4620      	mov	r0, r4
 80003fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000400:	f000 b926 	b.w	8000650 <mutex_unlock>
 8000404:	20000830 	.word	0x20000830

08000408 <puts_>:
 8000408:	b510      	push	{r4, lr}
 800040a:	4604      	mov	r4, r0
 800040c:	4807      	ldr	r0, [pc, #28]	; (800042c <puts_+0x24>)
 800040e:	f000 f903 	bl	8000618 <mutex_lock>
 8000412:	3c01      	subs	r4, #1
 8000414:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000418:	b110      	cbz	r0, 8000420 <puts_+0x18>
 800041a:	f7ff ffe5 	bl	80003e8 <putc_>
 800041e:	e7f9      	b.n	8000414 <puts_+0xc>
 8000420:	4802      	ldr	r0, [pc, #8]	; (800042c <puts_+0x24>)
 8000422:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000426:	f000 b913 	b.w	8000650 <mutex_unlock>
 800042a:	bf00      	nop
 800042c:	2000083c 	.word	0x2000083c

08000430 <puti_>:
 8000430:	b530      	push	{r4, r5, lr}
 8000432:	b085      	sub	sp, #20
 8000434:	1e03      	subs	r3, r0, #0
 8000436:	f04f 0200 	mov.w	r2, #0
 800043a:	bfa8      	it	ge
 800043c:	4614      	movge	r4, r2
 800043e:	f88d 200f 	strb.w	r2, [sp, #15]
 8000442:	bfbc      	itt	lt
 8000444:	425b      	neglt	r3, r3
 8000446:	2401      	movlt	r4, #1
 8000448:	220a      	movs	r2, #10
 800044a:	210a      	movs	r1, #10
 800044c:	fb93 f5f1 	sdiv	r5, r3, r1
 8000450:	fb01 3315 	mls	r3, r1, r5, r3
 8000454:	a801      	add	r0, sp, #4
 8000456:	3330      	adds	r3, #48	; 0x30
 8000458:	5413      	strb	r3, [r2, r0]
 800045a:	1e51      	subs	r1, r2, #1
 800045c:	462b      	mov	r3, r5
 800045e:	b10d      	cbz	r5, 8000464 <puti_+0x34>
 8000460:	460a      	mov	r2, r1
 8000462:	e7f2      	b.n	800044a <puti_+0x1a>
 8000464:	b12c      	cbz	r4, 8000472 <puti_+0x42>
 8000466:	ab04      	add	r3, sp, #16
 8000468:	440b      	add	r3, r1
 800046a:	222d      	movs	r2, #45	; 0x2d
 800046c:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000470:	460a      	mov	r2, r1
 8000472:	4410      	add	r0, r2
 8000474:	f7ff ffc8 	bl	8000408 <puts_>
 8000478:	b005      	add	sp, #20
 800047a:	bd30      	pop	{r4, r5, pc}

0800047c <putui_>:
 800047c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800047e:	2300      	movs	r3, #0
 8000480:	f88d 300f 	strb.w	r3, [sp, #15]
 8000484:	230a      	movs	r3, #10
 8000486:	240a      	movs	r4, #10
 8000488:	fbb0 f1f4 	udiv	r1, r0, r4
 800048c:	fb04 0011 	mls	r0, r4, r1, r0
 8000490:	aa01      	add	r2, sp, #4
 8000492:	3030      	adds	r0, #48	; 0x30
 8000494:	5498      	strb	r0, [r3, r2]
 8000496:	1e5c      	subs	r4, r3, #1
 8000498:	4608      	mov	r0, r1
 800049a:	b109      	cbz	r1, 80004a0 <putui_+0x24>
 800049c:	4623      	mov	r3, r4
 800049e:	e7f2      	b.n	8000486 <putui_+0xa>
 80004a0:	18d0      	adds	r0, r2, r3
 80004a2:	f7ff ffb1 	bl	8000408 <puts_>
 80004a6:	b004      	add	sp, #16
 80004a8:	bd10      	pop	{r4, pc}

080004aa <putx_>:
 80004aa:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80004ac:	2300      	movs	r3, #0
 80004ae:	f88d 300f 	strb.w	r3, [sp, #15]
 80004b2:	230a      	movs	r3, #10
 80004b4:	f000 010f 	and.w	r1, r0, #15
 80004b8:	2909      	cmp	r1, #9
 80004ba:	aa01      	add	r2, sp, #4
 80004bc:	bf94      	ite	ls
 80004be:	3130      	addls	r1, #48	; 0x30
 80004c0:	3157      	addhi	r1, #87	; 0x57
 80004c2:	0900      	lsrs	r0, r0, #4
 80004c4:	54d1      	strb	r1, [r2, r3]
 80004c6:	f103 31ff 	add.w	r1, r3, #4294967295
 80004ca:	d001      	beq.n	80004d0 <putx_+0x26>
 80004cc:	460b      	mov	r3, r1
 80004ce:	e7f1      	b.n	80004b4 <putx_+0xa>
 80004d0:	18d0      	adds	r0, r2, r3
 80004d2:	f7ff ff99 	bl	8000408 <puts_>
 80004d6:	b005      	add	sp, #20
 80004d8:	f85d fb04 	ldr.w	pc, [sp], #4

080004dc <printf_>:
 80004dc:	b40f      	push	{r0, r1, r2, r3}
 80004de:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004e0:	ac06      	add	r4, sp, #24
 80004e2:	4826      	ldr	r0, [pc, #152]	; (800057c <printf_+0xa0>)
 80004e4:	f854 5b04 	ldr.w	r5, [r4], #4
 80004e8:	f000 f896 	bl	8000618 <mutex_lock>
 80004ec:	9401      	str	r4, [sp, #4]
 80004ee:	2400      	movs	r4, #0
 80004f0:	5d28      	ldrb	r0, [r5, r4]
 80004f2:	2800      	cmp	r0, #0
 80004f4:	d039      	beq.n	800056a <printf_+0x8e>
 80004f6:	2825      	cmp	r0, #37	; 0x25
 80004f8:	d003      	beq.n	8000502 <printf_+0x26>
 80004fa:	f7ff ff75 	bl	80003e8 <putc_>
 80004fe:	3401      	adds	r4, #1
 8000500:	e7f6      	b.n	80004f0 <printf_+0x14>
 8000502:	192b      	adds	r3, r5, r4
 8000504:	7858      	ldrb	r0, [r3, #1]
 8000506:	2869      	cmp	r0, #105	; 0x69
 8000508:	d016      	beq.n	8000538 <printf_+0x5c>
 800050a:	d808      	bhi.n	800051e <printf_+0x42>
 800050c:	2825      	cmp	r0, #37	; 0x25
 800050e:	d028      	beq.n	8000562 <printf_+0x86>
 8000510:	2863      	cmp	r0, #99	; 0x63
 8000512:	d128      	bne.n	8000566 <printf_+0x8a>
 8000514:	9b01      	ldr	r3, [sp, #4]
 8000516:	1d1a      	adds	r2, r3, #4
 8000518:	9201      	str	r2, [sp, #4]
 800051a:	7818      	ldrb	r0, [r3, #0]
 800051c:	e021      	b.n	8000562 <printf_+0x86>
 800051e:	2875      	cmp	r0, #117	; 0x75
 8000520:	d011      	beq.n	8000546 <printf_+0x6a>
 8000522:	2878      	cmp	r0, #120	; 0x78
 8000524:	d016      	beq.n	8000554 <printf_+0x78>
 8000526:	2873      	cmp	r0, #115	; 0x73
 8000528:	d11d      	bne.n	8000566 <printf_+0x8a>
 800052a:	9b01      	ldr	r3, [sp, #4]
 800052c:	1d1a      	adds	r2, r3, #4
 800052e:	6818      	ldr	r0, [r3, #0]
 8000530:	9201      	str	r2, [sp, #4]
 8000532:	f7ff ff69 	bl	8000408 <puts_>
 8000536:	e016      	b.n	8000566 <printf_+0x8a>
 8000538:	9b01      	ldr	r3, [sp, #4]
 800053a:	1d1a      	adds	r2, r3, #4
 800053c:	6818      	ldr	r0, [r3, #0]
 800053e:	9201      	str	r2, [sp, #4]
 8000540:	f7ff ff76 	bl	8000430 <puti_>
 8000544:	e00f      	b.n	8000566 <printf_+0x8a>
 8000546:	9b01      	ldr	r3, [sp, #4]
 8000548:	1d1a      	adds	r2, r3, #4
 800054a:	6818      	ldr	r0, [r3, #0]
 800054c:	9201      	str	r2, [sp, #4]
 800054e:	f7ff ff95 	bl	800047c <putui_>
 8000552:	e008      	b.n	8000566 <printf_+0x8a>
 8000554:	9b01      	ldr	r3, [sp, #4]
 8000556:	1d1a      	adds	r2, r3, #4
 8000558:	6818      	ldr	r0, [r3, #0]
 800055a:	9201      	str	r2, [sp, #4]
 800055c:	f7ff ffa5 	bl	80004aa <putx_>
 8000560:	e001      	b.n	8000566 <printf_+0x8a>
 8000562:	f7ff ff41 	bl	80003e8 <putc_>
 8000566:	3402      	adds	r4, #2
 8000568:	e7c2      	b.n	80004f0 <printf_+0x14>
 800056a:	4804      	ldr	r0, [pc, #16]	; (800057c <printf_+0xa0>)
 800056c:	f000 f870 	bl	8000650 <mutex_unlock>
 8000570:	b003      	add	sp, #12
 8000572:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000576:	b004      	add	sp, #16
 8000578:	4770      	bx	lr
 800057a:	bf00      	nop
 800057c:	20000838 	.word	0x20000838

08000580 <stdio_init>:
 8000580:	b510      	push	{r4, lr}
 8000582:	480e      	ldr	r0, [pc, #56]	; (80005bc <stdio_init+0x3c>)
 8000584:	f000 f83e 	bl	8000604 <mutex_init>
 8000588:	480d      	ldr	r0, [pc, #52]	; (80005c0 <stdio_init+0x40>)
 800058a:	f000 f83b 	bl	8000604 <mutex_init>
 800058e:	480d      	ldr	r0, [pc, #52]	; (80005c4 <stdio_init+0x44>)
 8000590:	f000 f838 	bl	8000604 <mutex_init>
 8000594:	480c      	ldr	r0, [pc, #48]	; (80005c8 <stdio_init+0x48>)
 8000596:	f000 f835 	bl	8000604 <mutex_init>
 800059a:	2408      	movs	r4, #8
 800059c:	2020      	movs	r0, #32
 800059e:	f7ff ff23 	bl	80003e8 <putc_>
 80005a2:	3c01      	subs	r4, #1
 80005a4:	d1fa      	bne.n	800059c <stdio_init+0x1c>
 80005a6:	2420      	movs	r4, #32
 80005a8:	200a      	movs	r0, #10
 80005aa:	f7ff ff1d 	bl	80003e8 <putc_>
 80005ae:	3c01      	subs	r4, #1
 80005b0:	d1fa      	bne.n	80005a8 <stdio_init+0x28>
 80005b2:	4806      	ldr	r0, [pc, #24]	; (80005cc <stdio_init+0x4c>)
 80005b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005b8:	f7ff bf90 	b.w	80004dc <printf_>
 80005bc:	20000830 	.word	0x20000830
 80005c0:	20000834 	.word	0x20000834
 80005c4:	2000083c 	.word	0x2000083c
 80005c8:	20000838 	.word	0x20000838
 80005cc:	08002820 	.word	0x08002820

080005d0 <messages_init>:
 80005d0:	4a0a      	ldr	r2, [pc, #40]	; (80005fc <messages_init+0x2c>)
 80005d2:	2300      	movs	r3, #0
 80005d4:	b510      	push	{r4, lr}
 80005d6:	6013      	str	r3, [r2, #0]
 80005d8:	6053      	str	r3, [r2, #4]
 80005da:	6093      	str	r3, [r2, #8]
 80005dc:	60d3      	str	r3, [r2, #12]
 80005de:	6113      	str	r3, [r2, #16]
 80005e0:	6153      	str	r3, [r2, #20]
 80005e2:	4c07      	ldr	r4, [pc, #28]	; (8000600 <messages_init+0x30>)
 80005e4:	0118      	lsls	r0, r3, #4
 80005e6:	1821      	adds	r1, r4, r0
 80005e8:	3301      	adds	r3, #1
 80005ea:	2200      	movs	r2, #0
 80005ec:	2b04      	cmp	r3, #4
 80005ee:	604a      	str	r2, [r1, #4]
 80005f0:	5022      	str	r2, [r4, r0]
 80005f2:	60ca      	str	r2, [r1, #12]
 80005f4:	608a      	str	r2, [r1, #8]
 80005f6:	d1f4      	bne.n	80005e2 <messages_init+0x12>
 80005f8:	bd10      	pop	{r4, pc}
 80005fa:	bf00      	nop
 80005fc:	20000840 	.word	0x20000840
 8000600:	20000858 	.word	0x20000858

08000604 <mutex_init>:
 8000604:	b510      	push	{r4, lr}
 8000606:	4604      	mov	r4, r0
 8000608:	f7ff fe3c 	bl	8000284 <sched_off>
 800060c:	2300      	movs	r3, #0
 800060e:	6023      	str	r3, [r4, #0]
 8000610:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000614:	f7ff be38 	b.w	8000288 <sched_on>

08000618 <mutex_lock>:
 8000618:	b513      	push	{r0, r1, r4, lr}
 800061a:	4604      	mov	r4, r0
 800061c:	f7ff fe32 	bl	8000284 <sched_off>
 8000620:	6823      	ldr	r3, [r4, #0]
 8000622:	9301      	str	r3, [sp, #4]
 8000624:	f7ff fe30 	bl	8000288 <sched_on>
 8000628:	9b01      	ldr	r3, [sp, #4]
 800062a:	b10b      	cbz	r3, 8000630 <mutex_lock+0x18>
 800062c:	f7ff fe9e 	bl	800036c <set_wait_state>
 8000630:	9b01      	ldr	r3, [sp, #4]
 8000632:	2b00      	cmp	r3, #0
 8000634:	d1f2      	bne.n	800061c <mutex_lock+0x4>
 8000636:	f7ff fe25 	bl	8000284 <sched_off>
 800063a:	6823      	ldr	r3, [r4, #0]
 800063c:	9301      	str	r3, [sp, #4]
 800063e:	9b01      	ldr	r3, [sp, #4]
 8000640:	2b00      	cmp	r3, #0
 8000642:	d1eb      	bne.n	800061c <mutex_lock+0x4>
 8000644:	2301      	movs	r3, #1
 8000646:	6023      	str	r3, [r4, #0]
 8000648:	f7ff fe1e 	bl	8000288 <sched_on>
 800064c:	b002      	add	sp, #8
 800064e:	bd10      	pop	{r4, pc}

08000650 <mutex_unlock>:
 8000650:	b508      	push	{r3, lr}
 8000652:	f7ff ffd7 	bl	8000604 <mutex_init>
 8000656:	f7ff feab 	bl	80003b0 <wake_up_threads>
 800065a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800065e:	f7ff be15 	b.w	800028c <yield>
	...

08000664 <lsm9ds0_read>:
 8000664:	b538      	push	{r3, r4, r5, lr}
 8000666:	2128      	movs	r1, #40	; 0x28
 8000668:	20d4      	movs	r0, #212	; 0xd4
 800066a:	f001 fa8a 	bl	8001b82 <i2c_read_reg>
 800066e:	2129      	movs	r1, #41	; 0x29
 8000670:	4605      	mov	r5, r0
 8000672:	20d4      	movs	r0, #212	; 0xd4
 8000674:	f001 fa85 	bl	8001b82 <i2c_read_reg>
 8000678:	4c38      	ldr	r4, [pc, #224]	; (800075c <lsm9ds0_read+0xf8>)
 800067a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800067e:	81a0      	strh	r0, [r4, #12]
 8000680:	212a      	movs	r1, #42	; 0x2a
 8000682:	20d4      	movs	r0, #212	; 0xd4
 8000684:	f001 fa7d 	bl	8001b82 <i2c_read_reg>
 8000688:	212b      	movs	r1, #43	; 0x2b
 800068a:	4605      	mov	r5, r0
 800068c:	20d4      	movs	r0, #212	; 0xd4
 800068e:	f001 fa78 	bl	8001b82 <i2c_read_reg>
 8000692:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000696:	81e0      	strh	r0, [r4, #14]
 8000698:	212c      	movs	r1, #44	; 0x2c
 800069a:	20d4      	movs	r0, #212	; 0xd4
 800069c:	f001 fa71 	bl	8001b82 <i2c_read_reg>
 80006a0:	212d      	movs	r1, #45	; 0x2d
 80006a2:	4605      	mov	r5, r0
 80006a4:	20d4      	movs	r0, #212	; 0xd4
 80006a6:	f001 fa6c 	bl	8001b82 <i2c_read_reg>
 80006aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ae:	8220      	strh	r0, [r4, #16]
 80006b0:	2108      	movs	r1, #8
 80006b2:	203c      	movs	r0, #60	; 0x3c
 80006b4:	f001 fa65 	bl	8001b82 <i2c_read_reg>
 80006b8:	2109      	movs	r1, #9
 80006ba:	4605      	mov	r5, r0
 80006bc:	203c      	movs	r0, #60	; 0x3c
 80006be:	f001 fa60 	bl	8001b82 <i2c_read_reg>
 80006c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006c6:	80e0      	strh	r0, [r4, #6]
 80006c8:	210a      	movs	r1, #10
 80006ca:	203c      	movs	r0, #60	; 0x3c
 80006cc:	f001 fa59 	bl	8001b82 <i2c_read_reg>
 80006d0:	210b      	movs	r1, #11
 80006d2:	4605      	mov	r5, r0
 80006d4:	203c      	movs	r0, #60	; 0x3c
 80006d6:	f001 fa54 	bl	8001b82 <i2c_read_reg>
 80006da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006de:	8120      	strh	r0, [r4, #8]
 80006e0:	210c      	movs	r1, #12
 80006e2:	203c      	movs	r0, #60	; 0x3c
 80006e4:	f001 fa4d 	bl	8001b82 <i2c_read_reg>
 80006e8:	210d      	movs	r1, #13
 80006ea:	4605      	mov	r5, r0
 80006ec:	203c      	movs	r0, #60	; 0x3c
 80006ee:	f001 fa48 	bl	8001b82 <i2c_read_reg>
 80006f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006f6:	8160      	strh	r0, [r4, #10]
 80006f8:	2128      	movs	r1, #40	; 0x28
 80006fa:	203c      	movs	r0, #60	; 0x3c
 80006fc:	f001 fa41 	bl	8001b82 <i2c_read_reg>
 8000700:	2129      	movs	r1, #41	; 0x29
 8000702:	4605      	mov	r5, r0
 8000704:	203c      	movs	r0, #60	; 0x3c
 8000706:	f001 fa3c 	bl	8001b82 <i2c_read_reg>
 800070a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800070e:	8020      	strh	r0, [r4, #0]
 8000710:	212a      	movs	r1, #42	; 0x2a
 8000712:	203c      	movs	r0, #60	; 0x3c
 8000714:	f001 fa35 	bl	8001b82 <i2c_read_reg>
 8000718:	212b      	movs	r1, #43	; 0x2b
 800071a:	4605      	mov	r5, r0
 800071c:	203c      	movs	r0, #60	; 0x3c
 800071e:	f001 fa30 	bl	8001b82 <i2c_read_reg>
 8000722:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000726:	8060      	strh	r0, [r4, #2]
 8000728:	212c      	movs	r1, #44	; 0x2c
 800072a:	203c      	movs	r0, #60	; 0x3c
 800072c:	f001 fa29 	bl	8001b82 <i2c_read_reg>
 8000730:	212d      	movs	r1, #45	; 0x2d
 8000732:	4605      	mov	r5, r0
 8000734:	203c      	movs	r0, #60	; 0x3c
 8000736:	f001 fa24 	bl	8001b82 <i2c_read_reg>
 800073a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800073e:	80a0      	strh	r0, [r4, #4]
 8000740:	2105      	movs	r1, #5
 8000742:	203c      	movs	r0, #60	; 0x3c
 8000744:	f001 fa1d 	bl	8001b82 <i2c_read_reg>
 8000748:	2106      	movs	r1, #6
 800074a:	4605      	mov	r5, r0
 800074c:	203c      	movs	r0, #60	; 0x3c
 800074e:	f001 fa18 	bl	8001b82 <i2c_read_reg>
 8000752:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000756:	8320      	strh	r0, [r4, #24]
 8000758:	bd38      	pop	{r3, r4, r5, pc}
 800075a:	bf00      	nop
 800075c:	20000898 	.word	0x20000898

08000760 <lsm9ds0_init>:
 8000760:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000764:	4d34      	ldr	r5, [pc, #208]	; (8000838 <lsm9ds0_init+0xd8>)
 8000766:	2400      	movs	r4, #0
 8000768:	20d4      	movs	r0, #212	; 0xd4
 800076a:	210f      	movs	r1, #15
 800076c:	802c      	strh	r4, [r5, #0]
 800076e:	806c      	strh	r4, [r5, #2]
 8000770:	80ac      	strh	r4, [r5, #4]
 8000772:	80ec      	strh	r4, [r5, #6]
 8000774:	812c      	strh	r4, [r5, #8]
 8000776:	816c      	strh	r4, [r5, #10]
 8000778:	81ac      	strh	r4, [r5, #12]
 800077a:	81ec      	strh	r4, [r5, #14]
 800077c:	822c      	strh	r4, [r5, #16]
 800077e:	826c      	strh	r4, [r5, #18]
 8000780:	82ac      	strh	r4, [r5, #20]
 8000782:	82ec      	strh	r4, [r5, #22]
 8000784:	832c      	strh	r4, [r5, #24]
 8000786:	f001 f9fc 	bl	8001b82 <i2c_read_reg>
 800078a:	28d4      	cmp	r0, #212	; 0xd4
 800078c:	4606      	mov	r6, r0
 800078e:	d14e      	bne.n	800082e <lsm9ds0_init+0xce>
 8000790:	203c      	movs	r0, #60	; 0x3c
 8000792:	210f      	movs	r1, #15
 8000794:	f001 f9f5 	bl	8001b82 <i2c_read_reg>
 8000798:	2849      	cmp	r0, #73	; 0x49
 800079a:	bf18      	it	ne
 800079c:	2602      	movne	r6, #2
 800079e:	d147      	bne.n	8000830 <lsm9ds0_init+0xd0>
 80007a0:	4630      	mov	r0, r6
 80007a2:	2120      	movs	r1, #32
 80007a4:	22ff      	movs	r2, #255	; 0xff
 80007a6:	f001 f9d9 	bl	8001b5c <i2c_write_reg>
 80007aa:	4630      	mov	r0, r6
 80007ac:	2123      	movs	r1, #35	; 0x23
 80007ae:	2218      	movs	r2, #24
 80007b0:	f001 f9d4 	bl	8001b5c <i2c_write_reg>
 80007b4:	203c      	movs	r0, #60	; 0x3c
 80007b6:	211f      	movs	r1, #31
 80007b8:	4622      	mov	r2, r4
 80007ba:	f001 f9cf 	bl	8001b5c <i2c_write_reg>
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	2120      	movs	r1, #32
 80007c2:	2267      	movs	r2, #103	; 0x67
 80007c4:	f001 f9ca 	bl	8001b5c <i2c_write_reg>
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	2121      	movs	r1, #33	; 0x21
 80007cc:	4622      	mov	r2, r4
 80007ce:	f001 f9c5 	bl	8001b5c <i2c_write_reg>
 80007d2:	203c      	movs	r0, #60	; 0x3c
 80007d4:	2124      	movs	r1, #36	; 0x24
 80007d6:	22f4      	movs	r2, #244	; 0xf4
 80007d8:	f001 f9c0 	bl	8001b5c <i2c_write_reg>
 80007dc:	203c      	movs	r0, #60	; 0x3c
 80007de:	2125      	movs	r1, #37	; 0x25
 80007e0:	4622      	mov	r2, r4
 80007e2:	f001 f9bb 	bl	8001b5c <i2c_write_reg>
 80007e6:	203c      	movs	r0, #60	; 0x3c
 80007e8:	2126      	movs	r1, #38	; 0x26
 80007ea:	2280      	movs	r2, #128	; 0x80
 80007ec:	f001 f9b6 	bl	8001b5c <i2c_write_reg>
 80007f0:	f7ff ff38 	bl	8000664 <lsm9ds0_read>
 80007f4:	2664      	movs	r6, #100	; 0x64
 80007f6:	4627      	mov	r7, r4
 80007f8:	46a0      	mov	r8, r4
 80007fa:	f7ff ff33 	bl	8000664 <lsm9ds0_read>
 80007fe:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000802:	4b0d      	ldr	r3, [pc, #52]	; (8000838 <lsm9ds0_init+0xd8>)
 8000804:	4490      	add	r8, r2
 8000806:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 800080a:	4417      	add	r7, r2
 800080c:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000810:	3e01      	subs	r6, #1
 8000812:	4414      	add	r4, r2
 8000814:	d1f1      	bne.n	80007fa <lsm9ds0_init+0x9a>
 8000816:	2264      	movs	r2, #100	; 0x64
 8000818:	fb98 f8f2 	sdiv	r8, r8, r2
 800081c:	fb97 f7f2 	sdiv	r7, r7, r2
 8000820:	fb94 f4f2 	sdiv	r4, r4, r2
 8000824:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000828:	829f      	strh	r7, [r3, #20]
 800082a:	82dc      	strh	r4, [r3, #22]
 800082c:	e000      	b.n	8000830 <lsm9ds0_init+0xd0>
 800082e:	2601      	movs	r6, #1
 8000830:	4630      	mov	r0, r6
 8000832:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000836:	bf00      	nop
 8000838:	20000898 	.word	0x20000898

0800083c <rgb_i2c_delay>:
 800083c:	bf00      	nop
 800083e:	4770      	bx	lr

08000840 <RGBSetLowSDA>:
 8000840:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000842:	4f15      	ldr	r7, [pc, #84]	; (8000898 <RGBSetLowSDA+0x58>)
 8000844:	783b      	ldrb	r3, [r7, #0]
 8000846:	2401      	movs	r4, #1
 8000848:	2603      	movs	r6, #3
 800084a:	2500      	movs	r5, #0
 800084c:	4669      	mov	r1, sp
 800084e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000852:	9300      	str	r3, [sp, #0]
 8000854:	f88d 5007 	strb.w	r5, [sp, #7]
 8000858:	f88d 4004 	strb.w	r4, [sp, #4]
 800085c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000860:	f88d 4006 	strb.w	r4, [sp, #6]
 8000864:	f001 fde4 	bl	8002430 <GPIO_Init>
 8000868:	783a      	ldrb	r2, [r7, #0]
 800086a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800086e:	4669      	mov	r1, sp
 8000870:	851a      	strh	r2, [r3, #40]	; 0x28
 8000872:	f88d 5007 	strb.w	r5, [sp, #7]
 8000876:	4d09      	ldr	r5, [pc, #36]	; (800089c <RGBSetLowSDA+0x5c>)
 8000878:	9400      	str	r4, [sp, #0]
 800087a:	4628      	mov	r0, r5
 800087c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000880:	f88d 6005 	strb.w	r6, [sp, #5]
 8000884:	f88d 4006 	strb.w	r4, [sp, #6]
 8000888:	f001 fdd2 	bl	8002430 <GPIO_Init>
 800088c:	852c      	strh	r4, [r5, #40]	; 0x28
 800088e:	f7ff ffd5 	bl	800083c <rgb_i2c_delay>
 8000892:	b003      	add	sp, #12
 8000894:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000896:	bf00      	nop
 8000898:	2000090c 	.word	0x2000090c
 800089c:	48000400 	.word	0x48000400

080008a0 <RGBSetHighSDA>:
 80008a0:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80008a2:	4d13      	ldr	r5, [pc, #76]	; (80008f0 <RGBSetHighSDA+0x50>)
 80008a4:	782b      	ldrb	r3, [r5, #0]
 80008a6:	2400      	movs	r4, #0
 80008a8:	2603      	movs	r6, #3
 80008aa:	4669      	mov	r1, sp
 80008ac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80008b0:	9300      	str	r3, [sp, #0]
 80008b2:	f88d 4004 	strb.w	r4, [sp, #4]
 80008b6:	f88d 4007 	strb.w	r4, [sp, #7]
 80008ba:	f88d 6005 	strb.w	r6, [sp, #5]
 80008be:	f001 fdb7 	bl	8002430 <GPIO_Init>
 80008c2:	782a      	ldrb	r2, [r5, #0]
 80008c4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80008c8:	2501      	movs	r5, #1
 80008ca:	619a      	str	r2, [r3, #24]
 80008cc:	f88d 4004 	strb.w	r4, [sp, #4]
 80008d0:	f88d 4007 	strb.w	r4, [sp, #7]
 80008d4:	4c07      	ldr	r4, [pc, #28]	; (80008f4 <RGBSetHighSDA+0x54>)
 80008d6:	9500      	str	r5, [sp, #0]
 80008d8:	4620      	mov	r0, r4
 80008da:	4669      	mov	r1, sp
 80008dc:	f88d 6005 	strb.w	r6, [sp, #5]
 80008e0:	f001 fda6 	bl	8002430 <GPIO_Init>
 80008e4:	61a5      	str	r5, [r4, #24]
 80008e6:	f7ff ffa9 	bl	800083c <rgb_i2c_delay>
 80008ea:	b002      	add	sp, #8
 80008ec:	bd70      	pop	{r4, r5, r6, pc}
 80008ee:	bf00      	nop
 80008f0:	2000090c 	.word	0x2000090c
 80008f4:	48000400 	.word	0x48000400

080008f8 <RGBSetLowSCL>:
 80008f8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80008fc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000900:	851a      	strh	r2, [r3, #40]	; 0x28
 8000902:	f7ff bf9b 	b.w	800083c <rgb_i2c_delay>

08000906 <RGBSetHighSCL>:
 8000906:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800090a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800090e:	619a      	str	r2, [r3, #24]
 8000910:	f7ff bf94 	b.w	800083c <rgb_i2c_delay>

08000914 <rgb_i2c_init>:
 8000914:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000916:	4f1f      	ldr	r7, [pc, #124]	; (8000994 <rgb_i2c_init+0x80>)
 8000918:	2400      	movs	r4, #0
 800091a:	2501      	movs	r5, #1
 800091c:	2603      	movs	r6, #3
 800091e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000922:	4669      	mov	r1, sp
 8000924:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000928:	9300      	str	r3, [sp, #0]
 800092a:	f88d 4006 	strb.w	r4, [sp, #6]
 800092e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000932:	f88d 5004 	strb.w	r5, [sp, #4]
 8000936:	f88d 6005 	strb.w	r6, [sp, #5]
 800093a:	f001 fd79 	bl	8002430 <GPIO_Init>
 800093e:	783b      	ldrb	r3, [r7, #0]
 8000940:	f88d 4004 	strb.w	r4, [sp, #4]
 8000944:	4669      	mov	r1, sp
 8000946:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800094a:	9300      	str	r3, [sp, #0]
 800094c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000950:	f88d 6005 	strb.w	r6, [sp, #5]
 8000954:	f001 fd6c 	bl	8002430 <GPIO_Init>
 8000958:	7839      	ldrb	r1, [r7, #0]
 800095a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800095e:	f001 fdad 	bl	80024bc <GPIO_SetBits>
 8000962:	f88d 4004 	strb.w	r4, [sp, #4]
 8000966:	f88d 4007 	strb.w	r4, [sp, #7]
 800096a:	4c0b      	ldr	r4, [pc, #44]	; (8000998 <rgb_i2c_init+0x84>)
 800096c:	9500      	str	r5, [sp, #0]
 800096e:	4620      	mov	r0, r4
 8000970:	4669      	mov	r1, sp
 8000972:	f88d 6005 	strb.w	r6, [sp, #5]
 8000976:	f001 fd5b 	bl	8002430 <GPIO_Init>
 800097a:	4620      	mov	r0, r4
 800097c:	4629      	mov	r1, r5
 800097e:	f001 fd9d 	bl	80024bc <GPIO_SetBits>
 8000982:	f7ff ffc0 	bl	8000906 <RGBSetHighSCL>
 8000986:	f7ff ff5b 	bl	8000840 <RGBSetLowSDA>
 800098a:	f7ff ff89 	bl	80008a0 <RGBSetHighSDA>
 800098e:	b003      	add	sp, #12
 8000990:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000992:	bf00      	nop
 8000994:	2000090c 	.word	0x2000090c
 8000998:	48000400 	.word	0x48000400

0800099c <rgb_i2cStart>:
 800099c:	b508      	push	{r3, lr}
 800099e:	f7ff ffb2 	bl	8000906 <RGBSetHighSCL>
 80009a2:	f7ff ff7d 	bl	80008a0 <RGBSetHighSDA>
 80009a6:	f7ff ffae 	bl	8000906 <RGBSetHighSCL>
 80009aa:	f7ff ff49 	bl	8000840 <RGBSetLowSDA>
 80009ae:	f7ff ffa3 	bl	80008f8 <RGBSetLowSCL>
 80009b2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80009b6:	f7ff bf73 	b.w	80008a0 <RGBSetHighSDA>

080009ba <rgb_i2cStop>:
 80009ba:	b508      	push	{r3, lr}
 80009bc:	f7ff ff9c 	bl	80008f8 <RGBSetLowSCL>
 80009c0:	f7ff ff3e 	bl	8000840 <RGBSetLowSDA>
 80009c4:	f7ff ff9f 	bl	8000906 <RGBSetHighSCL>
 80009c8:	f7ff ff3a 	bl	8000840 <RGBSetLowSDA>
 80009cc:	f7ff ff9b 	bl	8000906 <RGBSetHighSCL>
 80009d0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80009d4:	f7ff bf64 	b.w	80008a0 <RGBSetHighSDA>

080009d8 <rgb_i2cWrite>:
 80009d8:	b538      	push	{r3, r4, r5, lr}
 80009da:	4604      	mov	r4, r0
 80009dc:	2508      	movs	r5, #8
 80009de:	f7ff ff8b 	bl	80008f8 <RGBSetLowSCL>
 80009e2:	0623      	lsls	r3, r4, #24
 80009e4:	d502      	bpl.n	80009ec <rgb_i2cWrite+0x14>
 80009e6:	f7ff ff5b 	bl	80008a0 <RGBSetHighSDA>
 80009ea:	e001      	b.n	80009f0 <rgb_i2cWrite+0x18>
 80009ec:	f7ff ff28 	bl	8000840 <RGBSetLowSDA>
 80009f0:	3d01      	subs	r5, #1
 80009f2:	f7ff ff88 	bl	8000906 <RGBSetHighSCL>
 80009f6:	0064      	lsls	r4, r4, #1
 80009f8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80009fc:	b2e4      	uxtb	r4, r4
 80009fe:	d1ee      	bne.n	80009de <rgb_i2cWrite+0x6>
 8000a00:	f7ff ff7a 	bl	80008f8 <RGBSetLowSCL>
 8000a04:	f7ff ff4c 	bl	80008a0 <RGBSetHighSDA>
 8000a08:	f7ff ff7d 	bl	8000906 <RGBSetHighSCL>
 8000a0c:	f7ff ff74 	bl	80008f8 <RGBSetLowSCL>
 8000a10:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000a14:	f7ff bf12 	b.w	800083c <rgb_i2c_delay>

08000a18 <rgb_i2cRead>:
 8000a18:	b570      	push	{r4, r5, r6, lr}
 8000a1a:	2300      	movs	r3, #0
 8000a1c:	4606      	mov	r6, r0
 8000a1e:	460c      	mov	r4, r1
 8000a20:	2200      	movs	r2, #0
 8000a22:	54e2      	strb	r2, [r4, r3]
 8000a24:	3301      	adds	r3, #1
 8000a26:	2b09      	cmp	r3, #9
 8000a28:	d1fa      	bne.n	8000a20 <rgb_i2cRead+0x8>
 8000a2a:	f7ff ff65 	bl	80008f8 <RGBSetLowSCL>
 8000a2e:	f7ff ff37 	bl	80008a0 <RGBSetHighSDA>
 8000a32:	2508      	movs	r5, #8
 8000a34:	2300      	movs	r3, #0
 8000a36:	5ce2      	ldrb	r2, [r4, r3]
 8000a38:	0052      	lsls	r2, r2, #1
 8000a3a:	54e2      	strb	r2, [r4, r3]
 8000a3c:	3301      	adds	r3, #1
 8000a3e:	2b09      	cmp	r3, #9
 8000a40:	d1f9      	bne.n	8000a36 <rgb_i2cRead+0x1e>
 8000a42:	f7ff ff60 	bl	8000906 <RGBSetHighSCL>
 8000a46:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a4a:	8a1b      	ldrh	r3, [r3, #16]
 8000a4c:	b29b      	uxth	r3, r3
 8000a4e:	07d8      	lsls	r0, r3, #31
 8000a50:	d503      	bpl.n	8000a5a <rgb_i2cRead+0x42>
 8000a52:	7822      	ldrb	r2, [r4, #0]
 8000a54:	f042 0201 	orr.w	r2, r2, #1
 8000a58:	7022      	strb	r2, [r4, #0]
 8000a5a:	0799      	lsls	r1, r3, #30
 8000a5c:	d503      	bpl.n	8000a66 <rgb_i2cRead+0x4e>
 8000a5e:	7862      	ldrb	r2, [r4, #1]
 8000a60:	f042 0201 	orr.w	r2, r2, #1
 8000a64:	7062      	strb	r2, [r4, #1]
 8000a66:	075a      	lsls	r2, r3, #29
 8000a68:	d503      	bpl.n	8000a72 <rgb_i2cRead+0x5a>
 8000a6a:	78a2      	ldrb	r2, [r4, #2]
 8000a6c:	f042 0201 	orr.w	r2, r2, #1
 8000a70:	70a2      	strb	r2, [r4, #2]
 8000a72:	0718      	lsls	r0, r3, #28
 8000a74:	d503      	bpl.n	8000a7e <rgb_i2cRead+0x66>
 8000a76:	78e2      	ldrb	r2, [r4, #3]
 8000a78:	f042 0201 	orr.w	r2, r2, #1
 8000a7c:	70e2      	strb	r2, [r4, #3]
 8000a7e:	06d9      	lsls	r1, r3, #27
 8000a80:	d503      	bpl.n	8000a8a <rgb_i2cRead+0x72>
 8000a82:	7922      	ldrb	r2, [r4, #4]
 8000a84:	f042 0201 	orr.w	r2, r2, #1
 8000a88:	7122      	strb	r2, [r4, #4]
 8000a8a:	069a      	lsls	r2, r3, #26
 8000a8c:	d503      	bpl.n	8000a96 <rgb_i2cRead+0x7e>
 8000a8e:	7962      	ldrb	r2, [r4, #5]
 8000a90:	f042 0201 	orr.w	r2, r2, #1
 8000a94:	7162      	strb	r2, [r4, #5]
 8000a96:	0658      	lsls	r0, r3, #25
 8000a98:	d503      	bpl.n	8000aa2 <rgb_i2cRead+0x8a>
 8000a9a:	79a2      	ldrb	r2, [r4, #6]
 8000a9c:	f042 0201 	orr.w	r2, r2, #1
 8000aa0:	71a2      	strb	r2, [r4, #6]
 8000aa2:	0619      	lsls	r1, r3, #24
 8000aa4:	d503      	bpl.n	8000aae <rgb_i2cRead+0x96>
 8000aa6:	79e3      	ldrb	r3, [r4, #7]
 8000aa8:	f043 0301 	orr.w	r3, r3, #1
 8000aac:	71e3      	strb	r3, [r4, #7]
 8000aae:	4b0b      	ldr	r3, [pc, #44]	; (8000adc <rgb_i2cRead+0xc4>)
 8000ab0:	8a1b      	ldrh	r3, [r3, #16]
 8000ab2:	07da      	lsls	r2, r3, #31
 8000ab4:	d503      	bpl.n	8000abe <rgb_i2cRead+0xa6>
 8000ab6:	7a23      	ldrb	r3, [r4, #8]
 8000ab8:	f043 0301 	orr.w	r3, r3, #1
 8000abc:	7223      	strb	r3, [r4, #8]
 8000abe:	f7ff ff1b 	bl	80008f8 <RGBSetLowSCL>
 8000ac2:	3d01      	subs	r5, #1
 8000ac4:	d1b6      	bne.n	8000a34 <rgb_i2cRead+0x1c>
 8000ac6:	b10e      	cbz	r6, 8000acc <rgb_i2cRead+0xb4>
 8000ac8:	f7ff feba 	bl	8000840 <RGBSetLowSDA>
 8000acc:	f7ff ff1b 	bl	8000906 <RGBSetHighSCL>
 8000ad0:	f7ff ff12 	bl	80008f8 <RGBSetLowSCL>
 8000ad4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ad8:	f7ff beb0 	b.w	800083c <rgb_i2c_delay>
 8000adc:	48000400 	.word	0x48000400

08000ae0 <rgb_i2c_write_reg>:
 8000ae0:	b570      	push	{r4, r5, r6, lr}
 8000ae2:	4605      	mov	r5, r0
 8000ae4:	460c      	mov	r4, r1
 8000ae6:	4616      	mov	r6, r2
 8000ae8:	f7ff ff58 	bl	800099c <rgb_i2cStart>
 8000aec:	4628      	mov	r0, r5
 8000aee:	f7ff ff73 	bl	80009d8 <rgb_i2cWrite>
 8000af2:	4620      	mov	r0, r4
 8000af4:	f7ff ff70 	bl	80009d8 <rgb_i2cWrite>
 8000af8:	4630      	mov	r0, r6
 8000afa:	f7ff ff6d 	bl	80009d8 <rgb_i2cWrite>
 8000afe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b02:	f7ff bf5a 	b.w	80009ba <rgb_i2cStop>

08000b06 <rgb_i2c_read_reg>:
 8000b06:	b570      	push	{r4, r5, r6, lr}
 8000b08:	4604      	mov	r4, r0
 8000b0a:	460d      	mov	r5, r1
 8000b0c:	4616      	mov	r6, r2
 8000b0e:	f7ff ff45 	bl	800099c <rgb_i2cStart>
 8000b12:	4620      	mov	r0, r4
 8000b14:	f7ff ff60 	bl	80009d8 <rgb_i2cWrite>
 8000b18:	4628      	mov	r0, r5
 8000b1a:	f7ff ff5d 	bl	80009d8 <rgb_i2cWrite>
 8000b1e:	f7ff ff3d 	bl	800099c <rgb_i2cStart>
 8000b22:	f044 0001 	orr.w	r0, r4, #1
 8000b26:	f7ff ff57 	bl	80009d8 <rgb_i2cWrite>
 8000b2a:	4631      	mov	r1, r6
 8000b2c:	2000      	movs	r0, #0
 8000b2e:	f7ff ff73 	bl	8000a18 <rgb_i2cRead>
 8000b32:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b36:	f7ff bf40 	b.w	80009ba <rgb_i2cStop>
	...

08000b3c <rgb_init>:
 8000b3c:	4b1d      	ldr	r3, [pc, #116]	; (8000bb4 <rgb_init+0x78>)
 8000b3e:	b570      	push	{r4, r5, r6, lr}
 8000b40:	2409      	movs	r4, #9
 8000b42:	2200      	movs	r2, #0
 8000b44:	3c01      	subs	r4, #1
 8000b46:	801a      	strh	r2, [r3, #0]
 8000b48:	825a      	strh	r2, [r3, #18]
 8000b4a:	849a      	strh	r2, [r3, #36]	; 0x24
 8000b4c:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000b50:	86da      	strh	r2, [r3, #54]	; 0x36
 8000b52:	f103 0302 	add.w	r3, r3, #2
 8000b56:	d1f4      	bne.n	8000b42 <rgb_init+0x6>
 8000b58:	4d17      	ldr	r5, [pc, #92]	; (8000bb8 <rgb_init+0x7c>)
 8000b5a:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000b5e:	802e      	strh	r6, [r5, #0]
 8000b60:	f7ff fed8 	bl	8000914 <rgb_i2c_init>
 8000b64:	2072      	movs	r0, #114	; 0x72
 8000b66:	2181      	movs	r1, #129	; 0x81
 8000b68:	22ff      	movs	r2, #255	; 0xff
 8000b6a:	f7ff ffb9 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b6e:	2072      	movs	r0, #114	; 0x72
 8000b70:	2183      	movs	r1, #131	; 0x83
 8000b72:	22ff      	movs	r2, #255	; 0xff
 8000b74:	f7ff ffb4 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b78:	2072      	movs	r0, #114	; 0x72
 8000b7a:	218d      	movs	r1, #141	; 0x8d
 8000b7c:	4622      	mov	r2, r4
 8000b7e:	f7ff ffaf 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b82:	2072      	movs	r0, #114	; 0x72
 8000b84:	2180      	movs	r1, #128	; 0x80
 8000b86:	2203      	movs	r2, #3
 8000b88:	f7ff ffaa 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b8c:	2072      	movs	r0, #114	; 0x72
 8000b8e:	218f      	movs	r1, #143	; 0x8f
 8000b90:	2223      	movs	r2, #35	; 0x23
 8000b92:	f7ff ffa5 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b96:	f7ff fe83 	bl	80008a0 <RGBSetHighSDA>
 8000b9a:	2072      	movs	r0, #114	; 0x72
 8000b9c:	2180      	movs	r1, #128	; 0x80
 8000b9e:	2207      	movs	r2, #7
 8000ba0:	802c      	strh	r4, [r5, #0]
 8000ba2:	f7ff ff9d 	bl	8000ae0 <rgb_i2c_write_reg>
 8000ba6:	2072      	movs	r0, #114	; 0x72
 8000ba8:	218e      	movs	r1, #142	; 0x8e
 8000baa:	2208      	movs	r2, #8
 8000bac:	f7ff ff98 	bl	8000ae0 <rgb_i2c_write_reg>
 8000bb0:	802e      	strh	r6, [r5, #0]
 8000bb2:	bd70      	pop	{r4, r5, r6, pc}
 8000bb4:	200008b2 	.word	0x200008b2
 8000bb8:	2000090c 	.word	0x2000090c

08000bbc <rgb_read>:
 8000bbc:	b538      	push	{r3, r4, r5, lr}
 8000bbe:	f7ff feed 	bl	800099c <rgb_i2cStart>
 8000bc2:	2072      	movs	r0, #114	; 0x72
 8000bc4:	f7ff ff08 	bl	80009d8 <rgb_i2cWrite>
 8000bc8:	20b4      	movs	r0, #180	; 0xb4
 8000bca:	f7ff ff05 	bl	80009d8 <rgb_i2cWrite>
 8000bce:	f7ff fee5 	bl	800099c <rgb_i2cStart>
 8000bd2:	2073      	movs	r0, #115	; 0x73
 8000bd4:	f7ff ff00 	bl	80009d8 <rgb_i2cWrite>
 8000bd8:	2001      	movs	r0, #1
 8000bda:	4946      	ldr	r1, [pc, #280]	; (8000cf4 <rgb_read+0x138>)
 8000bdc:	f7ff ff1c 	bl	8000a18 <rgb_i2cRead>
 8000be0:	2300      	movs	r3, #0
 8000be2:	4d45      	ldr	r5, [pc, #276]	; (8000cf8 <rgb_read+0x13c>)
 8000be4:	4c43      	ldr	r4, [pc, #268]	; (8000cf4 <rgb_read+0x138>)
 8000be6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000bea:	5d19      	ldrb	r1, [r3, r4]
 8000bec:	3301      	adds	r3, #1
 8000bee:	2b09      	cmp	r3, #9
 8000bf0:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000bf2:	d1f6      	bne.n	8000be2 <rgb_read+0x26>
 8000bf4:	2001      	movs	r0, #1
 8000bf6:	4621      	mov	r1, r4
 8000bf8:	f7ff ff0e 	bl	8000a18 <rgb_i2cRead>
 8000bfc:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000c00:	2300      	movs	r3, #0
 8000c02:	8811      	ldrh	r1, [r2, #0]
 8000c04:	5ce0      	ldrb	r0, [r4, r3]
 8000c06:	3301      	adds	r3, #1
 8000c08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c0c:	2b09      	cmp	r3, #9
 8000c0e:	f822 1b02 	strh.w	r1, [r2], #2
 8000c12:	d1f6      	bne.n	8000c02 <rgb_read+0x46>
 8000c14:	2001      	movs	r0, #1
 8000c16:	4937      	ldr	r1, [pc, #220]	; (8000cf4 <rgb_read+0x138>)
 8000c18:	f7ff fefe 	bl	8000a18 <rgb_i2cRead>
 8000c1c:	2300      	movs	r3, #0
 8000c1e:	5ce2      	ldrb	r2, [r4, r3]
 8000c20:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000c24:	3301      	adds	r3, #1
 8000c26:	2b09      	cmp	r3, #9
 8000c28:	d1f9      	bne.n	8000c1e <rgb_read+0x62>
 8000c2a:	2001      	movs	r0, #1
 8000c2c:	4931      	ldr	r1, [pc, #196]	; (8000cf4 <rgb_read+0x138>)
 8000c2e:	f7ff fef3 	bl	8000a18 <rgb_i2cRead>
 8000c32:	4a32      	ldr	r2, [pc, #200]	; (8000cfc <rgb_read+0x140>)
 8000c34:	2300      	movs	r3, #0
 8000c36:	5ce0      	ldrb	r0, [r4, r3]
 8000c38:	8851      	ldrh	r1, [r2, #2]
 8000c3a:	3301      	adds	r3, #1
 8000c3c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c40:	2b09      	cmp	r3, #9
 8000c42:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000c46:	d1f6      	bne.n	8000c36 <rgb_read+0x7a>
 8000c48:	2001      	movs	r0, #1
 8000c4a:	492a      	ldr	r1, [pc, #168]	; (8000cf4 <rgb_read+0x138>)
 8000c4c:	f7ff fee4 	bl	8000a18 <rgb_i2cRead>
 8000c50:	2300      	movs	r3, #0
 8000c52:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c56:	5ce1      	ldrb	r1, [r4, r3]
 8000c58:	3301      	adds	r3, #1
 8000c5a:	2b09      	cmp	r3, #9
 8000c5c:	8251      	strh	r1, [r2, #18]
 8000c5e:	d1f8      	bne.n	8000c52 <rgb_read+0x96>
 8000c60:	2001      	movs	r0, #1
 8000c62:	4924      	ldr	r1, [pc, #144]	; (8000cf4 <rgb_read+0x138>)
 8000c64:	f7ff fed8 	bl	8000a18 <rgb_i2cRead>
 8000c68:	4a25      	ldr	r2, [pc, #148]	; (8000d00 <rgb_read+0x144>)
 8000c6a:	2300      	movs	r3, #0
 8000c6c:	8811      	ldrh	r1, [r2, #0]
 8000c6e:	5ce0      	ldrb	r0, [r4, r3]
 8000c70:	3301      	adds	r3, #1
 8000c72:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c76:	2b09      	cmp	r3, #9
 8000c78:	f822 1b02 	strh.w	r1, [r2], #2
 8000c7c:	d1f6      	bne.n	8000c6c <rgb_read+0xb0>
 8000c7e:	2001      	movs	r0, #1
 8000c80:	491c      	ldr	r1, [pc, #112]	; (8000cf4 <rgb_read+0x138>)
 8000c82:	f7ff fec9 	bl	8000a18 <rgb_i2cRead>
 8000c86:	2300      	movs	r3, #0
 8000c88:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c8c:	5ce1      	ldrb	r1, [r4, r3]
 8000c8e:	3301      	adds	r3, #1
 8000c90:	2b09      	cmp	r3, #9
 8000c92:	8491      	strh	r1, [r2, #36]	; 0x24
 8000c94:	d1f8      	bne.n	8000c88 <rgb_read+0xcc>
 8000c96:	2001      	movs	r0, #1
 8000c98:	4916      	ldr	r1, [pc, #88]	; (8000cf4 <rgb_read+0x138>)
 8000c9a:	f7ff febd 	bl	8000a18 <rgb_i2cRead>
 8000c9e:	4a19      	ldr	r2, [pc, #100]	; (8000d04 <rgb_read+0x148>)
 8000ca0:	2300      	movs	r3, #0
 8000ca2:	8811      	ldrh	r1, [r2, #0]
 8000ca4:	5ce0      	ldrb	r0, [r4, r3]
 8000ca6:	3301      	adds	r3, #1
 8000ca8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000cac:	2b09      	cmp	r3, #9
 8000cae:	f822 1b02 	strh.w	r1, [r2], #2
 8000cb2:	d1f6      	bne.n	8000ca2 <rgb_read+0xe6>
 8000cb4:	2001      	movs	r0, #1
 8000cb6:	490f      	ldr	r1, [pc, #60]	; (8000cf4 <rgb_read+0x138>)
 8000cb8:	f7ff feae 	bl	8000a18 <rgb_i2cRead>
 8000cbc:	2300      	movs	r3, #0
 8000cbe:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000cc2:	5ce1      	ldrb	r1, [r4, r3]
 8000cc4:	3301      	adds	r3, #1
 8000cc6:	2b09      	cmp	r3, #9
 8000cc8:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000ccc:	d1f7      	bne.n	8000cbe <rgb_read+0x102>
 8000cce:	2000      	movs	r0, #0
 8000cd0:	4908      	ldr	r1, [pc, #32]	; (8000cf4 <rgb_read+0x138>)
 8000cd2:	f7ff fea1 	bl	8000a18 <rgb_i2cRead>
 8000cd6:	4a0c      	ldr	r2, [pc, #48]	; (8000d08 <rgb_read+0x14c>)
 8000cd8:	2300      	movs	r3, #0
 8000cda:	8811      	ldrh	r1, [r2, #0]
 8000cdc:	5ce0      	ldrb	r0, [r4, r3]
 8000cde:	3301      	adds	r3, #1
 8000ce0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ce4:	2b09      	cmp	r3, #9
 8000ce6:	f822 1b02 	strh.w	r1, [r2], #2
 8000cea:	d1f6      	bne.n	8000cda <rgb_read+0x11e>
 8000cec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000cf0:	f7ff be63 	b.w	80009ba <rgb_i2cStop>
 8000cf4:	2000090e 	.word	0x2000090e
 8000cf8:	200008b2 	.word	0x200008b2
 8000cfc:	200008b0 	.word	0x200008b0
 8000d00:	200008c4 	.word	0x200008c4
 8000d04:	200008d6 	.word	0x200008d6
 8000d08:	200008fa 	.word	0x200008fa

08000d0c <line_sensor_init>:
 8000d0c:	b538      	push	{r3, r4, r5, lr}
 8000d0e:	f7ff ff15 	bl	8000b3c <rgb_init>
 8000d12:	f7ff ff53 	bl	8000bbc <rgb_read>
 8000d16:	2072      	movs	r0, #114	; 0x72
 8000d18:	2192      	movs	r1, #146	; 0x92
 8000d1a:	4a11      	ldr	r2, [pc, #68]	; (8000d60 <line_sensor_init+0x54>)
 8000d1c:	f7ff fef3 	bl	8000b06 <rgb_i2c_read_reg>
 8000d20:	2000      	movs	r0, #0
 8000d22:	4603      	mov	r3, r0
 8000d24:	490f      	ldr	r1, [pc, #60]	; (8000d64 <line_sensor_init+0x58>)
 8000d26:	185a      	adds	r2, r3, r1
 8000d28:	7852      	ldrb	r2, [r2, #1]
 8000d2a:	2a69      	cmp	r2, #105	; 0x69
 8000d2c:	d002      	beq.n	8000d34 <line_sensor_init+0x28>
 8000d2e:	2201      	movs	r2, #1
 8000d30:	409a      	lsls	r2, r3
 8000d32:	4310      	orrs	r0, r2
 8000d34:	3301      	adds	r3, #1
 8000d36:	2b09      	cmp	r3, #9
 8000d38:	d1f4      	bne.n	8000d24 <line_sensor_init+0x18>
 8000d3a:	4a0b      	ldr	r2, [pc, #44]	; (8000d68 <line_sensor_init+0x5c>)
 8000d3c:	2300      	movs	r3, #0
 8000d3e:	700b      	strb	r3, [r1, #0]
 8000d40:	f102 0512 	add.w	r5, r2, #18
 8000d44:	2300      	movs	r3, #0
 8000d46:	f822 3f02 	strh.w	r3, [r2, #2]!
 8000d4a:	42aa      	cmp	r2, r5
 8000d4c:	8253      	strh	r3, [r2, #18]
 8000d4e:	8493      	strh	r3, [r2, #36]	; 0x24
 8000d50:	d1f8      	bne.n	8000d44 <line_sensor_init+0x38>
 8000d52:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
 8000d56:	f881 304c 	strb.w	r3, [r1, #76]	; 0x4c
 8000d5a:	644b      	str	r3, [r1, #68]	; 0x44
 8000d5c:	648b      	str	r3, [r1, #72]	; 0x48
 8000d5e:	bd38      	pop	{r3, r4, r5, pc}
 8000d60:	20000919 	.word	0x20000919
 8000d64:	20000918 	.word	0x20000918
 8000d68:	20000920 	.word	0x20000920

08000d6c <line_sensor_filter>:
 8000d6c:	b570      	push	{r4, r5, r6, lr}
 8000d6e:	4b5d      	ldr	r3, [pc, #372]	; (8000ee4 <line_sensor_filter+0x178>)
 8000d70:	f103 0212 	add.w	r2, r3, #18
 8000d74:	f933 0f02 	ldrsh.w	r0, [r3, #2]!
 8000d78:	f933 1c12 	ldrsh.w	r1, [r3, #-18]
 8000d7c:	4293      	cmp	r3, r2
 8000d7e:	ebc1 0100 	rsb	r1, r1, r0
 8000d82:	8259      	strh	r1, [r3, #18]
 8000d84:	d1f6      	bne.n	8000d74 <line_sensor_filter+0x8>
 8000d86:	4958      	ldr	r1, [pc, #352]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000d88:	4a58      	ldr	r2, [pc, #352]	; (8000eec <line_sensor_filter+0x180>)
 8000d8a:	6c8b      	ldr	r3, [r1, #72]	; 0x48
 8000d8c:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000d90:	f9b1 4036 	ldrsh.w	r4, [r1, #54]	; 0x36
 8000d94:	2007      	movs	r0, #7
 8000d96:	fb00 2303 	mla	r3, r0, r3, r2
 8000d9a:	2208      	movs	r2, #8
 8000d9c:	fb93 f3f2 	sdiv	r3, r3, r2
 8000da0:	f9b1 2034 	ldrsh.w	r2, [r1, #52]	; 0x34
 8000da4:	f9b1 002e 	ldrsh.w	r0, [r1, #46]	; 0x2e
 8000da8:	648b      	str	r3, [r1, #72]	; 0x48
 8000daa:	f512 7f96 	cmn.w	r2, #300	; 0x12c
 8000dae:	bfaa      	itet	ge
 8000db0:	4602      	movge	r2, r0
 8000db2:	2303      	movlt	r3, #3
 8000db4:	2300      	movge	r3, #0
 8000db6:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000dba:	bfb8      	it	lt
 8000dbc:	4622      	movlt	r2, r4
 8000dbe:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000dc2:	bfb8      	it	lt
 8000dc4:	2304      	movlt	r3, #4
 8000dc6:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000dca:	bfb8      	it	lt
 8000dcc:	4622      	movlt	r2, r4
 8000dce:	f9b1 4038 	ldrsh.w	r4, [r1, #56]	; 0x38
 8000dd2:	bfb8      	it	lt
 8000dd4:	2302      	movlt	r3, #2
 8000dd6:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000dda:	bfb8      	it	lt
 8000ddc:	4622      	movlt	r2, r4
 8000dde:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000de2:	bfb8      	it	lt
 8000de4:	2305      	movlt	r3, #5
 8000de6:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000dea:	bfb8      	it	lt
 8000dec:	4622      	movlt	r2, r4
 8000dee:	f9b1 403a 	ldrsh.w	r4, [r1, #58]	; 0x3a
 8000df2:	bfb8      	it	lt
 8000df4:	2301      	movlt	r3, #1
 8000df6:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000dfa:	bfb8      	it	lt
 8000dfc:	4622      	movlt	r2, r4
 8000dfe:	f9b1 403c 	ldrsh.w	r4, [r1, #60]	; 0x3c
 8000e02:	bfb8      	it	lt
 8000e04:	2306      	movlt	r3, #6
 8000e06:	4605      	mov	r5, r0
 8000e08:	f515 7f96 	cmn.w	r5, #300	; 0x12c
 8000e0c:	bfb8      	it	lt
 8000e0e:	2300      	movlt	r3, #0
 8000e10:	f510 7f96 	cmn.w	r0, #300	; 0x12c
 8000e14:	bfa8      	it	ge
 8000e16:	4610      	movge	r0, r2
 8000e18:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000e1c:	4a32      	ldr	r2, [pc, #200]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000e1e:	db32      	blt.n	8000e86 <line_sensor_filter+0x11a>
 8000e20:	f510 7f96 	cmn.w	r0, #300	; 0x12c
 8000e24:	dc5a      	bgt.n	8000edc <line_sensor_filter+0x170>
 8000e26:	2b00      	cmp	r3, #0
 8000e28:	d055      	beq.n	8000ed6 <line_sensor_filter+0x16a>
 8000e2a:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000e2e:	4632      	mov	r2, r6
 8000e30:	f9b6 6030 	ldrsh.w	r6, [r6, #48]	; 0x30
 8000e34:	f9b2 202c 	ldrsh.w	r2, [r2, #44]	; 0x2c
 8000e38:	1e5d      	subs	r5, r3, #1
 8000e3a:	4296      	cmp	r6, r2
 8000e3c:	f103 0401 	add.w	r4, r3, #1
 8000e40:	bfa8      	it	ge
 8000e42:	462c      	movge	r4, r5
 8000e44:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000e48:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000e4c:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000e50:	f9b4 502e 	ldrsh.w	r5, [r4, #46]	; 0x2e
 8000e54:	f9b3 302e 	ldrsh.w	r3, [r3, #46]	; 0x2e
 8000e58:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000e5c:	441d      	add	r5, r3
 8000e5e:	fb94 f3f5 	sdiv	r3, r4, r5
 8000e62:	f1c3 0420 	rsb	r4, r3, #32
 8000e66:	bfac      	ite	ge
 8000e68:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000e6c:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000e70:	4344      	muls	r4, r0
 8000e72:	fb03 4402 	mla	r4, r3, r2, r4
 8000e76:	2520      	movs	r5, #32
 8000e78:	fb94 f4f5 	sdiv	r4, r4, r5
 8000e7c:	3cda      	subs	r4, #218	; 0xda
 8000e7e:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000e82:	644c      	str	r4, [r1, #68]	; 0x44
 8000e84:	dd24      	ble.n	8000ed0 <line_sensor_filter+0x164>
 8000e86:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000e8a:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000e8e:	2b07      	cmp	r3, #7
 8000e90:	d803      	bhi.n	8000e9a <line_sensor_filter+0x12e>
 8000e92:	4a15      	ldr	r2, [pc, #84]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000e94:	3301      	adds	r3, #1
 8000e96:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000e9a:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000e9e:	4d12      	ldr	r5, [pc, #72]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000ea0:	2b08      	cmp	r3, #8
 8000ea2:	d109      	bne.n	8000eb8 <line_sensor_filter+0x14c>
 8000ea4:	f7ff f9ee 	bl	8000284 <sched_off>
 8000ea8:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000eac:	646c      	str	r4, [r5, #68]	; 0x44
 8000eae:	f043 0303 	orr.w	r3, r3, #3
 8000eb2:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000eb6:	e007      	b.n	8000ec8 <line_sensor_filter+0x15c>
 8000eb8:	f7ff f9e4 	bl	8000284 <sched_off>
 8000ebc:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000ec0:	f023 0301 	bic.w	r3, r3, #1
 8000ec4:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000ec8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ecc:	f7ff b9dc 	b.w	8000288 <sched_on>
 8000ed0:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000ed4:	dad9      	bge.n	8000e8a <line_sensor_filter+0x11e>
 8000ed6:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000eda:	e7d6      	b.n	8000e8a <line_sensor_filter+0x11e>
 8000edc:	2300      	movs	r3, #0
 8000ede:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000ee2:	bd70      	pop	{r4, r5, r6, pc}
 8000ee4:	20000932 	.word	0x20000932
 8000ee8:	20000918 	.word	0x20000918
 8000eec:	200008b2 	.word	0x200008b2

08000ef0 <line_sensor_read>:
 8000ef0:	b538      	push	{r3, r4, r5, lr}
 8000ef2:	f7ff fe63 	bl	8000bbc <rgb_read>
 8000ef6:	4b16      	ldr	r3, [pc, #88]	; (8000f50 <line_sensor_read+0x60>)
 8000ef8:	2200      	movs	r2, #0
 8000efa:	4618      	mov	r0, r3
 8000efc:	5e84      	ldrsh	r4, [r0, r2]
 8000efe:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000f02:	428c      	cmp	r4, r1
 8000f04:	bfdc      	itt	le
 8000f06:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000f0a:	5284      	strhle	r4, [r0, r2]
 8000f0c:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000f10:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000f12:	428c      	cmp	r4, r1
 8000f14:	bfdc      	itt	le
 8000f16:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000f1a:	825c      	strhle	r4, [r3, #18]
 8000f1c:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000f20:	428c      	cmp	r4, r1
 8000f22:	bfd8      	it	le
 8000f24:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000f28:	4c0a      	ldr	r4, [pc, #40]	; (8000f54 <line_sensor_read+0x64>)
 8000f2a:	bfd8      	it	le
 8000f2c:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000f2e:	490a      	ldr	r1, [pc, #40]	; (8000f58 <line_sensor_read+0x68>)
 8000f30:	5b14      	ldrh	r4, [r2, r4]
 8000f32:	4411      	add	r1, r2
 8000f34:	1b2c      	subs	r4, r5, r4
 8000f36:	3202      	adds	r2, #2
 8000f38:	838c      	strh	r4, [r1, #28]
 8000f3a:	2a10      	cmp	r2, #16
 8000f3c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000f40:	814c      	strh	r4, [r1, #10]
 8000f42:	f103 0302 	add.w	r3, r3, #2
 8000f46:	d1d9      	bne.n	8000efc <line_sensor_read+0xc>
 8000f48:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f4c:	f7ff bf0e 	b.w	8000d6c <line_sensor_filter>
 8000f50:	200008b2 	.word	0x200008b2
 8000f54:	20000000 	.word	0x20000000
 8000f58:	20000918 	.word	0x20000918

08000f5c <m_abs>:
 8000f5c:	ee07 0a90 	vmov	s15, r0
 8000f60:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000f64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f68:	bf48      	it	mi
 8000f6a:	eef1 7a67 	vnegmi.f32	s15, s15
 8000f6e:	ee17 0a90 	vmov	r0, s15
 8000f72:	4770      	bx	lr

08000f74 <m_saturate>:
 8000f74:	ee07 0a90 	vmov	s15, r0
 8000f78:	ee06 1a90 	vmov	s13, r1
 8000f7c:	eef4 7a66 	vcmp.f32	s15, s13
 8000f80:	ee07 2a10 	vmov	s14, r2
 8000f84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f88:	bf48      	it	mi
 8000f8a:	eef0 7a66 	vmovmi.f32	s15, s13
 8000f8e:	eef4 7a47 	vcmp.f32	s15, s14
 8000f92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f96:	bfcc      	ite	gt
 8000f98:	ee17 0a10 	vmovgt	r0, s14
 8000f9c:	ee17 0a90 	vmovle	r0, s15
 8000fa0:	4770      	bx	lr

08000fa2 <m_min>:
 8000fa2:	ee07 0a10 	vmov	s14, r0
 8000fa6:	ee07 1a90 	vmov	s15, r1
 8000faa:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000fae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000fb2:	bf54      	ite	pl
 8000fb4:	ee17 0a90 	vmovpl	r0, s15
 8000fb8:	ee17 0a10 	vmovmi	r0, s14
 8000fbc:	4770      	bx	lr
	...

08000fc0 <TIM2_IRQHandler>:
 8000fc0:	4b21      	ldr	r3, [pc, #132]	; (8001048 <TIM2_IRQHandler+0x88>)
 8000fc2:	4a22      	ldr	r2, [pc, #136]	; (800104c <TIM2_IRQHandler+0x8c>)
 8000fc4:	6819      	ldr	r1, [r3, #0]
 8000fc6:	2901      	cmp	r1, #1
 8000fc8:	b510      	push	{r4, lr}
 8000fca:	d011      	beq.n	8000ff0 <TIM2_IRQHandler+0x30>
 8000fcc:	d306      	bcc.n	8000fdc <TIM2_IRQHandler+0x1c>
 8000fce:	2902      	cmp	r1, #2
 8000fd0:	d113      	bne.n	8000ffa <TIM2_IRQHandler+0x3a>
 8000fd2:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000fd6:	8511      	strh	r1, [r2, #40]	; 0x28
 8000fd8:	2204      	movs	r2, #4
 8000fda:	e023      	b.n	8001024 <TIM2_IRQHandler+0x64>
 8000fdc:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000fe0:	8511      	strh	r1, [r2, #40]	; 0x28
 8000fe2:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000fe6:	6191      	str	r1, [r2, #24]
 8000fe8:	2201      	movs	r2, #1
 8000fea:	601a      	str	r2, [r3, #0]
 8000fec:	609a      	str	r2, [r3, #8]
 8000fee:	e023      	b.n	8001038 <TIM2_IRQHandler+0x78>
 8000ff0:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000ff4:	6191      	str	r1, [r2, #24]
 8000ff6:	2202      	movs	r2, #2
 8000ff8:	e014      	b.n	8001024 <TIM2_IRQHandler+0x64>
 8000ffa:	f011 0f01 	tst.w	r1, #1
 8000ffe:	4814      	ldr	r0, [pc, #80]	; (8001050 <TIM2_IRQHandler+0x90>)
 8001000:	f101 0401 	add.w	r4, r1, #1
 8001004:	d010      	beq.n	8001028 <TIM2_IRQHandler+0x68>
 8001006:	3904      	subs	r1, #4
 8001008:	f021 0101 	bic.w	r1, r1, #1
 800100c:	6c00      	ldr	r0, [r0, #64]	; 0x40
 800100e:	4419      	add	r1, r3
 8001010:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001014:	8288      	strh	r0, [r1, #20]
 8001016:	f44f 7180 	mov.w	r1, #256	; 0x100
 800101a:	8511      	strh	r1, [r2, #40]	; 0x28
 800101c:	d201      	bcs.n	8001022 <TIM2_IRQHandler+0x62>
 800101e:	601c      	str	r4, [r3, #0]
 8001020:	e00a      	b.n	8001038 <TIM2_IRQHandler+0x78>
 8001022:	2200      	movs	r2, #0
 8001024:	601a      	str	r2, [r3, #0]
 8001026:	e007      	b.n	8001038 <TIM2_IRQHandler+0x78>
 8001028:	f44f 7180 	mov.w	r1, #256	; 0x100
 800102c:	6191      	str	r1, [r2, #24]
 800102e:	601c      	str	r4, [r3, #0]
 8001030:	6883      	ldr	r3, [r0, #8]
 8001032:	f043 0304 	orr.w	r3, r3, #4
 8001036:	6083      	str	r3, [r0, #8]
 8001038:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 800103c:	2101      	movs	r1, #1
 800103e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001042:	f001 b932 	b.w	80022aa <TIM_ClearITPendingBit>
 8001046:	bf00      	nop
 8001048:	20000968 	.word	0x20000968
 800104c:	48000400 	.word	0x48000400
 8001050:	50000500 	.word	0x50000500

08001054 <line_sensor_thread>:
 8001054:	b508      	push	{r3, lr}
 8001056:	f7ff fe59 	bl	8000d0c <line_sensor_init>
 800105a:	4601      	mov	r1, r0
 800105c:	b120      	cbz	r0, 8001068 <line_sensor_thread+0x14>
 800105e:	4b07      	ldr	r3, [pc, #28]	; (800107c <line_sensor_thread+0x28>)
 8001060:	2001      	movs	r0, #1
 8001062:	6018      	str	r0, [r3, #0]
 8001064:	f000 f932 	bl	80012cc <abort_error_>
 8001068:	2000      	movs	r0, #0
 800106a:	2104      	movs	r1, #4
 800106c:	f001 f9b8 	bl	80023e0 <event_timer_set_period>
 8001070:	2000      	movs	r0, #0
 8001072:	f001 f9cb 	bl	800240c <event_timer_wait>
 8001076:	f7ff ff3b 	bl	8000ef0 <line_sensor_read>
 800107a:	e7f9      	b.n	8001070 <line_sensor_thread+0x1c>
 800107c:	20000e10 	.word	0x20000e10

08001080 <i2c_sensor_thread>:
 8001080:	b508      	push	{r3, lr}
 8001082:	f7ff fb6d 	bl	8000760 <lsm9ds0_init>
 8001086:	4601      	mov	r1, r0
 8001088:	b128      	cbz	r0, 8001096 <i2c_sensor_thread+0x16>
 800108a:	4b08      	ldr	r3, [pc, #32]	; (80010ac <i2c_sensor_thread+0x2c>)
 800108c:	2201      	movs	r2, #1
 800108e:	2002      	movs	r0, #2
 8001090:	601a      	str	r2, [r3, #0]
 8001092:	f000 f91b 	bl	80012cc <abort_error_>
 8001096:	2001      	movs	r0, #1
 8001098:	210a      	movs	r1, #10
 800109a:	f001 f9a1 	bl	80023e0 <event_timer_set_period>
 800109e:	2001      	movs	r0, #1
 80010a0:	f001 f9b4 	bl	800240c <event_timer_wait>
 80010a4:	f7ff fade 	bl	8000664 <lsm9ds0_read>
 80010a8:	e7f9      	b.n	800109e <i2c_sensor_thread+0x1e>
 80010aa:	bf00      	nop
 80010ac:	20000e10 	.word	0x20000e10

080010b0 <line_follower>:
 80010b0:	b538      	push	{r3, r4, r5, lr}
 80010b2:	f000 f9e9 	bl	8001488 <line_follower_init>
 80010b6:	2002      	movs	r0, #2
 80010b8:	2104      	movs	r1, #4
 80010ba:	f001 f991 	bl	80023e0 <event_timer_set_period>
 80010be:	f001 f971 	bl	80023a4 <timer_get_time>
 80010c2:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 80010c6:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 80010ca:	2400      	movs	r4, #0
 80010cc:	2002      	movs	r0, #2
 80010ce:	f001 f99d 	bl	800240c <event_timer_wait>
 80010d2:	4b14      	ldr	r3, [pc, #80]	; (8001124 <line_follower+0x74>)
 80010d4:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 80010d6:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 80010da:	dd02      	ble.n	80010e2 <line_follower+0x32>
 80010dc:	f000 f9cf 	bl	800147e <obstacle_main>
 80010e0:	e008      	b.n	80010f4 <line_follower+0x44>
 80010e2:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
 80010e6:	2b08      	cmp	r3, #8
 80010e8:	d102      	bne.n	80010f0 <line_follower+0x40>
 80010ea:	f000 f9ef 	bl	80014cc <line_follower_main>
 80010ee:	e001      	b.n	80010f4 <line_follower+0x44>
 80010f0:	f000 f86a 	bl	80011c8 <broken_line_main>
 80010f4:	3401      	adds	r4, #1
 80010f6:	2314      	movs	r3, #20
 80010f8:	fbb4 f2f3 	udiv	r2, r4, r3
 80010fc:	fb03 4312 	mls	r3, r3, r2, r4
 8001100:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001104:	b913      	cbnz	r3, 800110c <line_follower+0x5c>
 8001106:	f001 fa45 	bl	8002594 <led_on>
 800110a:	e001      	b.n	8001110 <line_follower+0x60>
 800110c:	f001 fa54 	bl	80025b8 <led_off>
 8001110:	f001 f948 	bl	80023a4 <timer_get_time>
 8001114:	4285      	cmp	r5, r0
 8001116:	d2d9      	bcs.n	80010cc <line_follower+0x1c>
 8001118:	2000      	movs	r0, #0
 800111a:	4601      	mov	r1, r0
 800111c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001120:	f001 ba64 	b.w	80025ec <drv8834_run>
 8001124:	20000918 	.word	0x20000918

08001128 <main_thread>:
 8001128:	b510      	push	{r4, lr}
 800112a:	481f      	ldr	r0, [pc, #124]	; (80011a8 <main_thread+0x80>)
 800112c:	4c1f      	ldr	r4, [pc, #124]	; (80011ac <main_thread+0x84>)
 800112e:	f7ff f9d5 	bl	80004dc <printf_>
 8001132:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001136:	f001 f943 	bl	80023c0 <timer_delay_ms>
 800113a:	2300      	movs	r3, #0
 800113c:	6023      	str	r3, [r4, #0]
 800113e:	491c      	ldr	r1, [pc, #112]	; (80011b0 <main_thread+0x88>)
 8001140:	481c      	ldr	r0, [pc, #112]	; (80011b4 <main_thread+0x8c>)
 8001142:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001146:	2306      	movs	r3, #6
 8001148:	f7ff f8b4 	bl	80002b4 <create_thread>
 800114c:	491a      	ldr	r1, [pc, #104]	; (80011b8 <main_thread+0x90>)
 800114e:	481b      	ldr	r0, [pc, #108]	; (80011bc <main_thread+0x94>)
 8001150:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001154:	2306      	movs	r3, #6
 8001156:	f7ff f8ad 	bl	80002b4 <create_thread>
 800115a:	f000 f833 	bl	80011c4 <broken_line_init>
 800115e:	f000 f98d 	bl	800147c <obstacle_init>
 8001162:	6823      	ldr	r3, [r4, #0]
 8001164:	b13b      	cbz	r3, 8001176 <main_thread+0x4e>
 8001166:	4816      	ldr	r0, [pc, #88]	; (80011c0 <main_thread+0x98>)
 8001168:	f7ff f9b8 	bl	80004dc <printf_>
 800116c:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8001170:	f001 f926 	bl	80023c0 <timer_delay_ms>
 8001174:	e7f7      	b.n	8001166 <main_thread+0x3e>
 8001176:	f001 fa31 	bl	80025dc <get_key>
 800117a:	b128      	cbz	r0, 8001188 <main_thread+0x60>
 800117c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001180:	f001 f91e 	bl	80023c0 <timer_delay_ms>
 8001184:	f7ff ff94 	bl	80010b0 <line_follower>
 8001188:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800118c:	f001 fa02 	bl	8002594 <led_on>
 8001190:	2064      	movs	r0, #100	; 0x64
 8001192:	f001 f915 	bl	80023c0 <timer_delay_ms>
 8001196:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800119a:	f001 fa0d 	bl	80025b8 <led_off>
 800119e:	20c8      	movs	r0, #200	; 0xc8
 80011a0:	f001 f90e 	bl	80023c0 <timer_delay_ms>
 80011a4:	e7dd      	b.n	8001162 <main_thread+0x3a>
 80011a6:	bf00      	nop
 80011a8:	08002831 	.word	0x08002831
 80011ac:	20000e10 	.word	0x20000e10
 80011b0:	20000164 	.word	0x20000164
 80011b4:	08001055 	.word	0x08001055
 80011b8:	20000364 	.word	0x20000364
 80011bc:	08001081 	.word	0x08001081
 80011c0:	0800286c 	.word	0x0800286c

080011c4 <broken_line_init>:
 80011c4:	4770      	bx	lr
	...

080011c8 <broken_line_main>:
 80011c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80011cc:	2500      	movs	r5, #0
 80011ce:	462c      	mov	r4, r5
 80011d0:	462f      	mov	r7, r5
 80011d2:	46a8      	mov	r8, r5
 80011d4:	462e      	mov	r6, r5
 80011d6:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80012c8 <broken_line_main+0x100>
 80011da:	f899 3040 	ldrb.w	r3, [r9, #64]	; 0x40
 80011de:	2b08      	cmp	r3, #8
 80011e0:	d06c      	beq.n	80012bc <broken_line_main+0xf4>
 80011e2:	2005      	movs	r0, #5
 80011e4:	f001 f8ec 	bl	80023c0 <timer_delay_ms>
 80011e8:	2f05      	cmp	r7, #5
 80011ea:	d861      	bhi.n	80012b0 <broken_line_main+0xe8>
 80011ec:	e8df f007 	tbb	[pc, r7]
 80011f0:	38271503 	.word	0x38271503
 80011f4:	4d4a      	.short	0x4d4a
 80011f6:	2c00      	cmp	r4, #0
 80011f8:	d145      	bne.n	8001286 <broken_line_main+0xbe>
 80011fa:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80011fe:	2b00      	cmp	r3, #0
 8001200:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001204:	f04f 0701 	mov.w	r7, #1
 8001208:	bfd4      	ite	le
 800120a:	f04f 0832 	movle.w	r8, #50	; 0x32
 800120e:	f04f 0800 	movgt.w	r8, #0
 8001212:	bfd4      	ite	le
 8001214:	2600      	movle	r6, #0
 8001216:	2632      	movgt	r6, #50	; 0x32
 8001218:	e04a      	b.n	80012b0 <broken_line_main+0xe8>
 800121a:	bba4      	cbnz	r4, 8001286 <broken_line_main+0xbe>
 800121c:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001220:	2b00      	cmp	r3, #0
 8001222:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001226:	f04f 0702 	mov.w	r7, #2
 800122a:	bfd4      	ite	le
 800122c:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001230:	f04f 0800 	movgt.w	r8, #0
 8001234:	bfd4      	ite	le
 8001236:	2600      	movle	r6, #0
 8001238:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 800123c:	e038      	b.n	80012b0 <broken_line_main+0xe8>
 800123e:	bb14      	cbnz	r4, 8001286 <broken_line_main+0xbe>
 8001240:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001244:	2b00      	cmp	r3, #0
 8001246:	f04f 0450 	mov.w	r4, #80	; 0x50
 800124a:	f04f 0703 	mov.w	r7, #3
 800124e:	bfd4      	ite	le
 8001250:	f04f 0800 	movle.w	r8, #0
 8001254:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001258:	bfd4      	ite	le
 800125a:	2632      	movle	r6, #50	; 0x32
 800125c:	2600      	movgt	r6, #0
 800125e:	e027      	b.n	80012b0 <broken_line_main+0xe8>
 8001260:	b98c      	cbnz	r4, 8001286 <broken_line_main+0xbe>
 8001262:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001266:	2b00      	cmp	r3, #0
 8001268:	f04f 0450 	mov.w	r4, #80	; 0x50
 800126c:	f04f 0704 	mov.w	r7, #4
 8001270:	bfd4      	ite	le
 8001272:	f04f 0800 	movle.w	r8, #0
 8001276:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 800127a:	bfd4      	ite	le
 800127c:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001280:	2600      	movgt	r6, #0
 8001282:	e015      	b.n	80012b0 <broken_line_main+0xe8>
 8001284:	b16c      	cbz	r4, 80012a2 <broken_line_main+0xda>
 8001286:	3c01      	subs	r4, #1
 8001288:	e012      	b.n	80012b0 <broken_line_main+0xe8>
 800128a:	b184      	cbz	r4, 80012ae <broken_line_main+0xe6>
 800128c:	f241 3387 	movw	r3, #4999	; 0x1387
 8001290:	429d      	cmp	r5, r3
 8001292:	bfd8      	it	le
 8001294:	3532      	addle	r5, #50	; 0x32
 8001296:	2664      	movs	r6, #100	; 0x64
 8001298:	fb95 f6f6 	sdiv	r6, r5, r6
 800129c:	3c01      	subs	r4, #1
 800129e:	46b0      	mov	r8, r6
 80012a0:	e006      	b.n	80012b0 <broken_line_main+0xe8>
 80012a2:	4625      	mov	r5, r4
 80012a4:	2705      	movs	r7, #5
 80012a6:	2428      	movs	r4, #40	; 0x28
 80012a8:	46a8      	mov	r8, r5
 80012aa:	462e      	mov	r6, r5
 80012ac:	e000      	b.n	80012b0 <broken_line_main+0xe8>
 80012ae:	4627      	mov	r7, r4
 80012b0:	fa0f f088 	sxth.w	r0, r8
 80012b4:	b231      	sxth	r1, r6
 80012b6:	f001 f999 	bl	80025ec <drv8834_run>
 80012ba:	e78c      	b.n	80011d6 <broken_line_main+0xe>
 80012bc:	2000      	movs	r0, #0
 80012be:	4601      	mov	r1, r0
 80012c0:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80012c4:	f001 b992 	b.w	80025ec <drv8834_run>
 80012c8:	20000918 	.word	0x20000918

080012cc <abort_error_>:
 80012cc:	b570      	push	{r4, r5, r6, lr}
 80012ce:	4605      	mov	r5, r0
 80012d0:	460e      	mov	r6, r1
 80012d2:	480f      	ldr	r0, [pc, #60]	; (8001310 <abort_error_+0x44>)
 80012d4:	4629      	mov	r1, r5
 80012d6:	4632      	mov	r2, r6
 80012d8:	f7ff f900 	bl	80004dc <printf_>
 80012dc:	2400      	movs	r4, #0
 80012de:	1ceb      	adds	r3, r5, #3
 80012e0:	429c      	cmp	r4, r3
 80012e2:	d20f      	bcs.n	8001304 <abort_error_+0x38>
 80012e4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012e8:	f001 f954 	bl	8002594 <led_on>
 80012ec:	2032      	movs	r0, #50	; 0x32
 80012ee:	f001 f867 	bl	80023c0 <timer_delay_ms>
 80012f2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012f6:	f001 f95f 	bl	80025b8 <led_off>
 80012fa:	2064      	movs	r0, #100	; 0x64
 80012fc:	f001 f860 	bl	80023c0 <timer_delay_ms>
 8001300:	3401      	adds	r4, #1
 8001302:	e7ec      	b.n	80012de <abort_error_+0x12>
 8001304:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001308:	f001 f85a 	bl	80023c0 <timer_delay_ms>
 800130c:	e7e1      	b.n	80012d2 <abort_error_+0x6>
 800130e:	bf00      	nop
 8001310:	0800287c 	.word	0x0800287c

08001314 <q_predictor_init>:
 8001314:	4b24      	ldr	r3, [pc, #144]	; (80013a8 <q_predictor_init+0x94>)
 8001316:	2200      	movs	r2, #0
 8001318:	4619      	mov	r1, r3
 800131a:	b570      	push	{r4, r5, r6, lr}
 800131c:	4608      	mov	r0, r1
 800131e:	601a      	str	r2, [r3, #0]
 8001320:	605a      	str	r2, [r3, #4]
 8001322:	f103 0208 	add.w	r2, r3, #8
 8001326:	3348      	adds	r3, #72	; 0x48
 8001328:	2400      	movs	r4, #0
 800132a:	f842 4b04 	str.w	r4, [r2], #4
 800132e:	429a      	cmp	r2, r3
 8001330:	d1fa      	bne.n	8001328 <q_predictor_init+0x14>
 8001332:	2200      	movs	r2, #0
 8001334:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001338:	2300      	movs	r3, #0
 800133a:	4e1c      	ldr	r6, [pc, #112]	; (80013ac <q_predictor_init+0x98>)
 800133c:	4416      	add	r6, r2
 800133e:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80013b0 <q_predictor_init+0x9c>
 8001342:	5ef6      	ldrsh	r6, [r6, r3]
 8001344:	ee07 6a10 	vmov	s14, r6
 8001348:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800134c:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 8001350:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001354:	3302      	adds	r3, #2
 8001356:	2b20      	cmp	r3, #32
 8001358:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 800135c:	d1ed      	bne.n	800133a <q_predictor_init+0x26>
 800135e:	3220      	adds	r2, #32
 8001360:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8001364:	d1e6      	bne.n	8001334 <q_predictor_init+0x20>
 8001366:	2300      	movs	r3, #0
 8001368:	4912      	ldr	r1, [pc, #72]	; (80013b4 <q_predictor_init+0xa0>)
 800136a:	5e59      	ldrsh	r1, [r3, r1]
 800136c:	ee07 1a10 	vmov	s14, r1
 8001370:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001374:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001378:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800137c:	3302      	adds	r3, #2
 800137e:	2b10      	cmp	r3, #16
 8001380:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001384:	d1f0      	bne.n	8001368 <q_predictor_init+0x54>
 8001386:	2300      	movs	r3, #0
 8001388:	490b      	ldr	r1, [pc, #44]	; (80013b8 <q_predictor_init+0xa4>)
 800138a:	5e59      	ldrsh	r1, [r3, r1]
 800138c:	ee07 1a10 	vmov	s14, r1
 8001390:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001394:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001398:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800139c:	3302      	adds	r3, #2
 800139e:	2b10      	cmp	r3, #16
 80013a0:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 80013a4:	d1f0      	bne.n	8001388 <q_predictor_init+0x74>
 80013a6:	bd70      	pop	{r4, r5, r6, pc}
 80013a8:	20000b7c 	.word	0x20000b7c
 80013ac:	20000010 	.word	0x20000010
 80013b0:	447a0000 	.word	0x447a0000
 80013b4:	20000154 	.word	0x20000154
 80013b8:	20000144 	.word	0x20000144

080013bc <obstacle_go_forward>:
 80013bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013be:	460f      	mov	r7, r1
 80013c0:	ed2d 8b04 	vpush	{d8-d9}
 80013c4:	4606      	mov	r6, r0
 80013c6:	b950      	cbnz	r0, 80013de <obstacle_go_forward+0x22>
 80013c8:	2000      	movs	r0, #0
 80013ca:	4601      	mov	r1, r0
 80013cc:	f001 f90e 	bl	80025ec <drv8834_run>
 80013d0:	ecbd 8b04 	vpop	{d8-d9}
 80013d4:	2064      	movs	r0, #100	; 0x64
 80013d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80013da:	f000 bff1 	b.w	80023c0 <timer_delay_ms>
 80013de:	ed9f 8a21 	vldr	s16, [pc, #132]	; 8001464 <obstacle_go_forward+0xa8>
 80013e2:	2400      	movs	r4, #0
 80013e4:	eef0 7a48 	vmov.f32	s15, s16
 80013e8:	4625      	mov	r5, r4
 80013ea:	eeb0 9a48 	vmov.f32	s18, s16
 80013ee:	42bd      	cmp	r5, r7
 80013f0:	d2ea      	bcs.n	80013c8 <obstacle_go_forward+0xc>
 80013f2:	4b1d      	ldr	r3, [pc, #116]	; (8001468 <obstacle_go_forward+0xac>)
 80013f4:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80013f8:	441c      	add	r4, r3
 80013fa:	ee07 4a10 	vmov	s14, r4
 80013fe:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8001402:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 800146c <obstacle_go_forward+0xb0>
 8001406:	ee79 8a68 	vsub.f32	s17, s18, s17
 800140a:	350a      	adds	r5, #10
 800140c:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001410:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001414:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8001470 <obstacle_go_forward+0xb4>
 8001418:	ee48 7a87 	vmla.f32	s15, s17, s14
 800141c:	ee07 6a10 	vmov	s14, r6
 8001420:	eef8 6a47 	vcvt.f32.u32	s13, s14
 8001424:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8001474 <obstacle_go_forward+0xb8>
 8001428:	ee26 7a87 	vmul.f32	s14, s13, s14
 800142c:	eddf 6a12 	vldr	s13, [pc, #72]	; 8001478 <obstacle_go_forward+0xbc>
 8001430:	ee08 7a26 	vmla.f32	s14, s16, s13
 8001434:	eeb0 8a47 	vmov.f32	s16, s14
 8001438:	ee37 7a67 	vsub.f32	s14, s14, s15
 800143c:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001440:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001444:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001448:	ee17 0a10 	vmov	r0, s14
 800144c:	ee17 1a90 	vmov	r1, s15
 8001450:	b200      	sxth	r0, r0
 8001452:	b209      	sxth	r1, r1
 8001454:	f001 f8ca 	bl	80025ec <drv8834_run>
 8001458:	200a      	movs	r0, #10
 800145a:	f000 ffb1 	bl	80023c0 <timer_delay_ms>
 800145e:	eef0 7a68 	vmov.f32	s15, s17
 8001462:	e7c4      	b.n	80013ee <obstacle_go_forward+0x32>
 8001464:	00000000 	.word	0x00000000
 8001468:	20000898 	.word	0x20000898
 800146c:	3a83126f 	.word	0x3a83126f
 8001470:	399d4952 	.word	0x399d4952
 8001474:	3e4ccccc 	.word	0x3e4ccccc
 8001478:	3f4ccccd 	.word	0x3f4ccccd

0800147c <obstacle_init>:
 800147c:	4770      	bx	lr

0800147e <obstacle_main>:
 800147e:	2000      	movs	r0, #0
 8001480:	2164      	movs	r1, #100	; 0x64
 8001482:	f7ff bf9b 	b.w	80013bc <obstacle_go_forward>
	...

08001488 <line_follower_init>:
 8001488:	b507      	push	{r0, r1, r2, lr}
 800148a:	4a0b      	ldr	r2, [pc, #44]	; (80014b8 <line_follower_init+0x30>)
 800148c:	480b      	ldr	r0, [pc, #44]	; (80014bc <line_follower_init+0x34>)
 800148e:	490c      	ldr	r1, [pc, #48]	; (80014c0 <line_follower_init+0x38>)
 8001490:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8001494:	6013      	str	r3, [r2, #0]
 8001496:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 800149a:	6053      	str	r3, [r2, #4]
 800149c:	2300      	movs	r3, #0
 800149e:	6093      	str	r3, [r2, #8]
 80014a0:	4a08      	ldr	r2, [pc, #32]	; (80014c4 <line_follower_init+0x3c>)
 80014a2:	9301      	str	r3, [sp, #4]
 80014a4:	9200      	str	r2, [sp, #0]
 80014a6:	4a08      	ldr	r2, [pc, #32]	; (80014c8 <line_follower_init+0x40>)
 80014a8:	f000 f878 	bl	800159c <pid_init>
 80014ac:	b003      	add	sp, #12
 80014ae:	f85d eb04 	ldr.w	lr, [sp], #4
 80014b2:	f7ff bf2f 	b.w	8001314 <q_predictor_init>
 80014b6:	bf00      	nop
 80014b8:	20000e04 	.word	0x20000e04
 80014bc:	20000e14 	.word	0x20000e14
 80014c0:	42c80000 	.word	0x42c80000
 80014c4:	41287ae1 	.word	0x41287ae1
 80014c8:	3ea6e979 	.word	0x3ea6e979

080014cc <line_follower_main>:
 80014cc:	b510      	push	{r4, lr}
 80014ce:	4b2b      	ldr	r3, [pc, #172]	; (800157c <line_follower_main+0xb0>)
 80014d0:	4c2b      	ldr	r4, [pc, #172]	; (8001580 <line_follower_main+0xb4>)
 80014d2:	ed93 7a11 	vldr	s14, [r3, #68]	; 0x44
 80014d6:	ed2d 8b04 	vpush	{d8-d9}
 80014da:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80014de:	eddf 7a29 	vldr	s15, [pc, #164]	; 8001584 <line_follower_main+0xb8>
 80014e2:	ed9f 8a29 	vldr	s16, [pc, #164]	; 8001588 <line_follower_main+0xbc>
 80014e6:	ee07 8a67 	vmls.f32	s16, s14, s15
 80014ea:	edd4 8a00 	vldr	s17, [r4]
 80014ee:	ee18 0a10 	vmov	r0, s16
 80014f2:	f7ff fd33 	bl	8000f5c <m_abs>
 80014f6:	ed9f 9a25 	vldr	s18, [pc, #148]	; 800158c <line_follower_main+0xc0>
 80014fa:	ee07 0a90 	vmov	s15, r0
 80014fe:	ee39 7a67 	vsub.f32	s14, s18, s15
 8001502:	eddf 7a23 	vldr	s15, [pc, #140]	; 8001590 <line_follower_main+0xc4>
 8001506:	ee18 0a10 	vmov	r0, s16
 800150a:	ee47 8a27 	vmla.f32	s17, s14, s15
 800150e:	f7ff fd25 	bl	8000f5c <m_abs>
 8001512:	ee07 0a90 	vmov	s15, r0
 8001516:	ee39 9a67 	vsub.f32	s18, s18, s15
 800151a:	ee18 0a90 	vmov	r0, s17
 800151e:	ee19 1a10 	vmov	r1, s18
 8001522:	f7ff fd3e 	bl	8000fa2 <m_min>
 8001526:	6862      	ldr	r2, [r4, #4]
 8001528:	6020      	str	r0, [r4, #0]
 800152a:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 800152e:	f7ff fd21 	bl	8000f74 <m_saturate>
 8001532:	ee18 1a10 	vmov	r1, s16
 8001536:	6020      	str	r0, [r4, #0]
 8001538:	4816      	ldr	r0, [pc, #88]	; (8001594 <line_follower_main+0xc8>)
 800153a:	f000 f85f 	bl	80015fc <pid_process>
 800153e:	edd4 6a00 	vldr	s13, [r4]
 8001542:	ee07 0a90 	vmov	s15, r0
 8001546:	ed9f 7a14 	vldr	s14, [pc, #80]	; 8001598 <line_follower_main+0xcc>
 800154a:	ee36 6aa7 	vadd.f32	s12, s13, s15
 800154e:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001552:	ee26 6a07 	vmul.f32	s12, s12, s14
 8001556:	ee27 7a87 	vmul.f32	s14, s15, s14
 800155a:	ecbd 8b04 	vpop	{d8-d9}
 800155e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001562:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001566:	60a0      	str	r0, [r4, #8]
 8001568:	ee17 1a10 	vmov	r1, s14
 800156c:	ee16 0a10 	vmov	r0, s12
 8001570:	b209      	sxth	r1, r1
 8001572:	b200      	sxth	r0, r0
 8001574:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001578:	f001 b838 	b.w	80025ec <drv8834_run>
 800157c:	20000918 	.word	0x20000918
 8001580:	20000e04 	.word	0x20000e04
 8001584:	3b800000 	.word	0x3b800000
 8001588:	00000000 	.word	0x00000000
 800158c:	3f800000 	.word	0x3f800000
 8001590:	3ca3d70a 	.word	0x3ca3d70a
 8001594:	20000e14 	.word	0x20000e14
 8001598:	42c80000 	.word	0x42c80000

0800159c <pid_init>:
 800159c:	ee06 2a10 	vmov	s12, r2
 80015a0:	ee05 3a90 	vmov	s11, r3
 80015a4:	eddd 7a00 	vldr	s15, [sp]
 80015a8:	ee76 6a25 	vadd.f32	s13, s12, s11
 80015ac:	ed9d 7a01 	vldr	s14, [sp, #4]
 80015b0:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80015b4:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80015b8:	ee76 6a87 	vadd.f32	s13, s13, s14
 80015bc:	eeb1 6a46 	vneg.f32	s12, s12
 80015c0:	edc0 6a04 	vstr	s13, [r0, #16]
 80015c4:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80015f8 <pid_init+0x5c>
 80015c8:	ee36 6a65 	vsub.f32	s12, s12, s11
 80015cc:	ee67 6a26 	vmul.f32	s13, s14, s13
 80015d0:	2200      	movs	r2, #0
 80015d2:	ee36 6a66 	vsub.f32	s12, s12, s13
 80015d6:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80015da:	eeb1 7a47 	vneg.f32	s14, s14
 80015de:	6002      	str	r2, [r0, #0]
 80015e0:	6042      	str	r2, [r0, #4]
 80015e2:	6082      	str	r2, [r0, #8]
 80015e4:	60c2      	str	r2, [r0, #12]
 80015e6:	ed80 6a05 	vstr	s12, [r0, #20]
 80015ea:	edc0 7a06 	vstr	s15, [r0, #24]
 80015ee:	ed80 7a07 	vstr	s14, [r0, #28]
 80015f2:	6202      	str	r2, [r0, #32]
 80015f4:	6241      	str	r1, [r0, #36]	; 0x24
 80015f6:	4770      	bx	lr
 80015f8:	40400000 	.word	0x40400000

080015fc <pid_process>:
 80015fc:	edd0 7a08 	vldr	s15, [r0, #32]
 8001600:	ee05 1a90 	vmov	s11, r1
 8001604:	ed90 5a04 	vldr	s10, [r0, #16]
 8001608:	ee45 7a85 	vmla.f32	s15, s11, s10
 800160c:	ed90 6a00 	vldr	s12, [r0]
 8001610:	edd0 5a05 	vldr	s11, [r0, #20]
 8001614:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001618:	edd0 6a01 	vldr	s13, [r0, #4]
 800161c:	ed80 6a01 	vstr	s12, [r0, #4]
 8001620:	ed90 6a06 	vldr	s12, [r0, #24]
 8001624:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001628:	ed90 7a02 	vldr	s14, [r0, #8]
 800162c:	edc0 6a02 	vstr	s13, [r0, #8]
 8001630:	edd0 6a07 	vldr	s13, [r0, #28]
 8001634:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001638:	ed80 7a03 	vstr	s14, [r0, #12]
 800163c:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001640:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001644:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001648:	edc0 7a08 	vstr	s15, [r0, #32]
 800164c:	bfc8      	it	gt
 800164e:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001652:	edd0 7a08 	vldr	s15, [r0, #32]
 8001656:	eeb1 7a47 	vneg.f32	s14, s14
 800165a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800165e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001662:	bf48      	it	mi
 8001664:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001668:	6001      	str	r1, [r0, #0]
 800166a:	6a00      	ldr	r0, [r0, #32]
 800166c:	4770      	bx	lr
	...

08001670 <uart_write>:
 8001670:	4b03      	ldr	r3, [pc, #12]	; (8001680 <uart_write+0x10>)
 8001672:	69da      	ldr	r2, [r3, #28]
 8001674:	0612      	lsls	r2, r2, #24
 8001676:	d401      	bmi.n	800167c <uart_write+0xc>
 8001678:	bf00      	nop
 800167a:	e7f9      	b.n	8001670 <uart_write>
 800167c:	8518      	strh	r0, [r3, #40]	; 0x28
 800167e:	4770      	bx	lr
 8001680:	40013800 	.word	0x40013800

08001684 <uart_init>:
 8001684:	b530      	push	{r4, r5, lr}
 8001686:	4b2c      	ldr	r3, [pc, #176]	; (8001738 <uart_init+0xb4>)
 8001688:	4d2c      	ldr	r5, [pc, #176]	; (800173c <uart_init+0xb8>)
 800168a:	2400      	movs	r4, #0
 800168c:	601c      	str	r4, [r3, #0]
 800168e:	4b2c      	ldr	r3, [pc, #176]	; (8001740 <uart_init+0xbc>)
 8001690:	b08b      	sub	sp, #44	; 0x2c
 8001692:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001696:	2101      	movs	r1, #1
 8001698:	601c      	str	r4, [r3, #0]
 800169a:	f000 fcef 	bl	800207c <RCC_AHBPeriphClockCmd>
 800169e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80016a2:	2101      	movs	r1, #1
 80016a4:	f000 fcf8 	bl	8002098 <RCC_APB2PeriphClockCmd>
 80016a8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80016ac:	9302      	str	r3, [sp, #8]
 80016ae:	2302      	movs	r3, #2
 80016b0:	f88d 300c 	strb.w	r3, [sp, #12]
 80016b4:	a902      	add	r1, sp, #8
 80016b6:	2303      	movs	r3, #3
 80016b8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80016bc:	f88d 300d 	strb.w	r3, [sp, #13]
 80016c0:	f88d 400e 	strb.w	r4, [sp, #14]
 80016c4:	f88d 400f 	strb.w	r4, [sp, #15]
 80016c8:	f000 feb2 	bl	8002430 <GPIO_Init>
 80016cc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80016d0:	2109      	movs	r1, #9
 80016d2:	2207      	movs	r2, #7
 80016d4:	f000 fefa 	bl	80024cc <GPIO_PinAFConfig>
 80016d8:	2207      	movs	r2, #7
 80016da:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80016de:	210a      	movs	r1, #10
 80016e0:	f000 fef4 	bl	80024cc <GPIO_PinAFConfig>
 80016e4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80016e8:	9304      	str	r3, [sp, #16]
 80016ea:	4628      	mov	r0, r5
 80016ec:	230c      	movs	r3, #12
 80016ee:	a904      	add	r1, sp, #16
 80016f0:	9308      	str	r3, [sp, #32]
 80016f2:	9405      	str	r4, [sp, #20]
 80016f4:	9406      	str	r4, [sp, #24]
 80016f6:	9407      	str	r4, [sp, #28]
 80016f8:	9409      	str	r4, [sp, #36]	; 0x24
 80016fa:	f000 f849 	bl	8001790 <USART_Init>
 80016fe:	4628      	mov	r0, r5
 8001700:	2101      	movs	r1, #1
 8001702:	f000 f8a7 	bl	8001854 <USART_Cmd>
 8001706:	2201      	movs	r2, #1
 8001708:	4628      	mov	r0, r5
 800170a:	490e      	ldr	r1, [pc, #56]	; (8001744 <uart_init+0xc0>)
 800170c:	f000 f8b2 	bl	8001874 <USART_ITConfig>
 8001710:	2325      	movs	r3, #37	; 0x25
 8001712:	f88d 4005 	strb.w	r4, [sp, #5]
 8001716:	f88d 4006 	strb.w	r4, [sp, #6]
 800171a:	a801      	add	r0, sp, #4
 800171c:	2401      	movs	r4, #1
 800171e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001722:	f88d 4007 	strb.w	r4, [sp, #7]
 8001726:	f000 f8f7 	bl	8001918 <NVIC_Init>
 800172a:	4628      	mov	r0, r5
 800172c:	4621      	mov	r1, r4
 800172e:	f000 f891 	bl	8001854 <USART_Cmd>
 8001732:	b00b      	add	sp, #44	; 0x2c
 8001734:	bd30      	pop	{r4, r5, pc}
 8001736:	bf00      	nop
 8001738:	20000e4c 	.word	0x20000e4c
 800173c:	40013800 	.word	0x40013800
 8001740:	20000e50 	.word	0x20000e50
 8001744:	00050105 	.word	0x00050105

08001748 <USART1_IRQHandler>:
 8001748:	b508      	push	{r3, lr}
 800174a:	480d      	ldr	r0, [pc, #52]	; (8001780 <USART1_IRQHandler+0x38>)
 800174c:	490d      	ldr	r1, [pc, #52]	; (8001784 <USART1_IRQHandler+0x3c>)
 800174e:	f000 f8aa 	bl	80018a6 <USART_GetITStatus>
 8001752:	b178      	cbz	r0, 8001774 <USART1_IRQHandler+0x2c>
 8001754:	480a      	ldr	r0, [pc, #40]	; (8001780 <USART1_IRQHandler+0x38>)
 8001756:	f000 f888 	bl	800186a <USART_ReceiveData>
 800175a:	4b0b      	ldr	r3, [pc, #44]	; (8001788 <USART1_IRQHandler+0x40>)
 800175c:	490b      	ldr	r1, [pc, #44]	; (800178c <USART1_IRQHandler+0x44>)
 800175e:	681a      	ldr	r2, [r3, #0]
 8001760:	b2c0      	uxtb	r0, r0
 8001762:	5488      	strb	r0, [r1, r2]
 8001764:	681a      	ldr	r2, [r3, #0]
 8001766:	3201      	adds	r2, #1
 8001768:	601a      	str	r2, [r3, #0]
 800176a:	681a      	ldr	r2, [r3, #0]
 800176c:	2a0f      	cmp	r2, #15
 800176e:	bf84      	itt	hi
 8001770:	2200      	movhi	r2, #0
 8001772:	601a      	strhi	r2, [r3, #0]
 8001774:	4802      	ldr	r0, [pc, #8]	; (8001780 <USART1_IRQHandler+0x38>)
 8001776:	4903      	ldr	r1, [pc, #12]	; (8001784 <USART1_IRQHandler+0x3c>)
 8001778:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800177c:	f000 b8b2 	b.w	80018e4 <USART_ClearITPendingBit>
 8001780:	40013800 	.word	0x40013800
 8001784:	00050105 	.word	0x00050105
 8001788:	20000e4c 	.word	0x20000e4c
 800178c:	20000e3c 	.word	0x20000e3c

08001790 <USART_Init>:
 8001790:	b530      	push	{r4, r5, lr}
 8001792:	4604      	mov	r4, r0
 8001794:	b099      	sub	sp, #100	; 0x64
 8001796:	460d      	mov	r5, r1
 8001798:	bf00      	nop
 800179a:	bf00      	nop
 800179c:	bf00      	nop
 800179e:	bf00      	nop
 80017a0:	bf00      	nop
 80017a2:	bf00      	nop
 80017a4:	bf00      	nop
 80017a6:	6803      	ldr	r3, [r0, #0]
 80017a8:	f023 0301 	bic.w	r3, r3, #1
 80017ac:	6003      	str	r3, [r0, #0]
 80017ae:	6842      	ldr	r2, [r0, #4]
 80017b0:	688b      	ldr	r3, [r1, #8]
 80017b2:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80017b6:	4313      	orrs	r3, r2
 80017b8:	6043      	str	r3, [r0, #4]
 80017ba:	686a      	ldr	r2, [r5, #4]
 80017bc:	68eb      	ldr	r3, [r5, #12]
 80017be:	6801      	ldr	r1, [r0, #0]
 80017c0:	431a      	orrs	r2, r3
 80017c2:	692b      	ldr	r3, [r5, #16]
 80017c4:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 80017c8:	f021 010c 	bic.w	r1, r1, #12
 80017cc:	4313      	orrs	r3, r2
 80017ce:	430b      	orrs	r3, r1
 80017d0:	6003      	str	r3, [r0, #0]
 80017d2:	6882      	ldr	r2, [r0, #8]
 80017d4:	696b      	ldr	r3, [r5, #20]
 80017d6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80017da:	4313      	orrs	r3, r2
 80017dc:	6083      	str	r3, [r0, #8]
 80017de:	a801      	add	r0, sp, #4
 80017e0:	f000 fac0 	bl	8001d64 <RCC_GetClocksFreq>
 80017e4:	4b17      	ldr	r3, [pc, #92]	; (8001844 <USART_Init+0xb4>)
 80017e6:	429c      	cmp	r4, r3
 80017e8:	d101      	bne.n	80017ee <USART_Init+0x5e>
 80017ea:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80017ec:	e00e      	b.n	800180c <USART_Init+0x7c>
 80017ee:	4b16      	ldr	r3, [pc, #88]	; (8001848 <USART_Init+0xb8>)
 80017f0:	429c      	cmp	r4, r3
 80017f2:	d101      	bne.n	80017f8 <USART_Init+0x68>
 80017f4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80017f6:	e009      	b.n	800180c <USART_Init+0x7c>
 80017f8:	4b14      	ldr	r3, [pc, #80]	; (800184c <USART_Init+0xbc>)
 80017fa:	429c      	cmp	r4, r3
 80017fc:	d101      	bne.n	8001802 <USART_Init+0x72>
 80017fe:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001800:	e004      	b.n	800180c <USART_Init+0x7c>
 8001802:	4b13      	ldr	r3, [pc, #76]	; (8001850 <USART_Init+0xc0>)
 8001804:	429c      	cmp	r4, r3
 8001806:	bf0c      	ite	eq
 8001808:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 800180a:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 800180c:	6823      	ldr	r3, [r4, #0]
 800180e:	6829      	ldr	r1, [r5, #0]
 8001810:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001814:	bf18      	it	ne
 8001816:	0052      	lslne	r2, r2, #1
 8001818:	fbb2 f3f1 	udiv	r3, r2, r1
 800181c:	fb01 2213 	mls	r2, r1, r3, r2
 8001820:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001824:	6822      	ldr	r2, [r4, #0]
 8001826:	bf28      	it	cs
 8001828:	3301      	addcs	r3, #1
 800182a:	0412      	lsls	r2, r2, #16
 800182c:	d506      	bpl.n	800183c <USART_Init+0xac>
 800182e:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8001832:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001836:	401a      	ands	r2, r3
 8001838:	ea41 0302 	orr.w	r3, r1, r2
 800183c:	b29b      	uxth	r3, r3
 800183e:	81a3      	strh	r3, [r4, #12]
 8001840:	b019      	add	sp, #100	; 0x64
 8001842:	bd30      	pop	{r4, r5, pc}
 8001844:	40013800 	.word	0x40013800
 8001848:	40004400 	.word	0x40004400
 800184c:	40004800 	.word	0x40004800
 8001850:	40004c00 	.word	0x40004c00

08001854 <USART_Cmd>:
 8001854:	bf00      	nop
 8001856:	bf00      	nop
 8001858:	6803      	ldr	r3, [r0, #0]
 800185a:	b111      	cbz	r1, 8001862 <USART_Cmd+0xe>
 800185c:	f043 0301 	orr.w	r3, r3, #1
 8001860:	e001      	b.n	8001866 <USART_Cmd+0x12>
 8001862:	f023 0301 	bic.w	r3, r3, #1
 8001866:	6003      	str	r3, [r0, #0]
 8001868:	4770      	bx	lr

0800186a <USART_ReceiveData>:
 800186a:	bf00      	nop
 800186c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800186e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001872:	4770      	bx	lr

08001874 <USART_ITConfig>:
 8001874:	b510      	push	{r4, lr}
 8001876:	bf00      	nop
 8001878:	bf00      	nop
 800187a:	bf00      	nop
 800187c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8001880:	2401      	movs	r4, #1
 8001882:	b2c9      	uxtb	r1, r1
 8001884:	2b02      	cmp	r3, #2
 8001886:	fa04 f101 	lsl.w	r1, r4, r1
 800188a:	d101      	bne.n	8001890 <USART_ITConfig+0x1c>
 800188c:	3004      	adds	r0, #4
 800188e:	e002      	b.n	8001896 <USART_ITConfig+0x22>
 8001890:	2b03      	cmp	r3, #3
 8001892:	bf08      	it	eq
 8001894:	3008      	addeq	r0, #8
 8001896:	6803      	ldr	r3, [r0, #0]
 8001898:	b10a      	cbz	r2, 800189e <USART_ITConfig+0x2a>
 800189a:	4319      	orrs	r1, r3
 800189c:	e001      	b.n	80018a2 <USART_ITConfig+0x2e>
 800189e:	ea23 0101 	bic.w	r1, r3, r1
 80018a2:	6001      	str	r1, [r0, #0]
 80018a4:	bd10      	pop	{r4, pc}

080018a6 <USART_GetITStatus>:
 80018a6:	b510      	push	{r4, lr}
 80018a8:	bf00      	nop
 80018aa:	bf00      	nop
 80018ac:	2401      	movs	r4, #1
 80018ae:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80018b2:	b2cb      	uxtb	r3, r1
 80018b4:	42a2      	cmp	r2, r4
 80018b6:	fa04 f303 	lsl.w	r3, r4, r3
 80018ba:	d101      	bne.n	80018c0 <USART_GetITStatus+0x1a>
 80018bc:	6802      	ldr	r2, [r0, #0]
 80018be:	e003      	b.n	80018c8 <USART_GetITStatus+0x22>
 80018c0:	2a02      	cmp	r2, #2
 80018c2:	bf0c      	ite	eq
 80018c4:	6842      	ldreq	r2, [r0, #4]
 80018c6:	6882      	ldrne	r2, [r0, #8]
 80018c8:	4013      	ands	r3, r2
 80018ca:	69c2      	ldr	r2, [r0, #28]
 80018cc:	b143      	cbz	r3, 80018e0 <USART_GetITStatus+0x3a>
 80018ce:	2301      	movs	r3, #1
 80018d0:	0c09      	lsrs	r1, r1, #16
 80018d2:	fa03 f101 	lsl.w	r1, r3, r1
 80018d6:	4211      	tst	r1, r2
 80018d8:	bf0c      	ite	eq
 80018da:	2000      	moveq	r0, #0
 80018dc:	2001      	movne	r0, #1
 80018de:	bd10      	pop	{r4, pc}
 80018e0:	4618      	mov	r0, r3
 80018e2:	bd10      	pop	{r4, pc}

080018e4 <USART_ClearITPendingBit>:
 80018e4:	bf00      	nop
 80018e6:	bf00      	nop
 80018e8:	2301      	movs	r3, #1
 80018ea:	0c09      	lsrs	r1, r1, #16
 80018ec:	fa03 f101 	lsl.w	r1, r3, r1
 80018f0:	6201      	str	r1, [r0, #32]
 80018f2:	4770      	bx	lr

080018f4 <lib_low_level_init>:
 80018f4:	b508      	push	{r3, lr}
 80018f6:	f000 f9b1 	bl	8001c5c <sytem_clock_init>
 80018fa:	f000 fdfd 	bl	80024f8 <gpio_init>
 80018fe:	f7ff fec1 	bl	8001684 <uart_init>
 8001902:	f000 fcd7 	bl	80022b4 <timer_init>
 8001906:	f000 ff25 	bl	8002754 <pwm_init>
 800190a:	f000 fea3 	bl	8002654 <drv8834_init>
 800190e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001912:	f000 b893 	b.w	8001a3c <i2c_0_init>
	...

08001918 <NVIC_Init>:
 8001918:	b510      	push	{r4, lr}
 800191a:	bf00      	nop
 800191c:	bf00      	nop
 800191e:	bf00      	nop
 8001920:	78c2      	ldrb	r2, [r0, #3]
 8001922:	7803      	ldrb	r3, [r0, #0]
 8001924:	b30a      	cbz	r2, 800196a <NVIC_Init+0x52>
 8001926:	4a16      	ldr	r2, [pc, #88]	; (8001980 <NVIC_Init+0x68>)
 8001928:	7844      	ldrb	r4, [r0, #1]
 800192a:	68d2      	ldr	r2, [r2, #12]
 800192c:	43d2      	mvns	r2, r2
 800192e:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8001932:	f1c2 0104 	rsb	r1, r2, #4
 8001936:	b2c9      	uxtb	r1, r1
 8001938:	fa04 f101 	lsl.w	r1, r4, r1
 800193c:	240f      	movs	r4, #15
 800193e:	fa44 f202 	asr.w	r2, r4, r2
 8001942:	7884      	ldrb	r4, [r0, #2]
 8001944:	b2c9      	uxtb	r1, r1
 8001946:	4022      	ands	r2, r4
 8001948:	430a      	orrs	r2, r1
 800194a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800194e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001952:	0112      	lsls	r2, r2, #4
 8001954:	b2d2      	uxtb	r2, r2
 8001956:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800195a:	7803      	ldrb	r3, [r0, #0]
 800195c:	2201      	movs	r2, #1
 800195e:	0959      	lsrs	r1, r3, #5
 8001960:	f003 031f 	and.w	r3, r3, #31
 8001964:	fa02 f303 	lsl.w	r3, r2, r3
 8001968:	e006      	b.n	8001978 <NVIC_Init+0x60>
 800196a:	0959      	lsrs	r1, r3, #5
 800196c:	2201      	movs	r2, #1
 800196e:	f003 031f 	and.w	r3, r3, #31
 8001972:	fa02 f303 	lsl.w	r3, r2, r3
 8001976:	3120      	adds	r1, #32
 8001978:	4a02      	ldr	r2, [pc, #8]	; (8001984 <NVIC_Init+0x6c>)
 800197a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800197e:	bd10      	pop	{r4, pc}
 8001980:	e000ed00 	.word	0xe000ed00
 8001984:	e000e100 	.word	0xe000e100

08001988 <i2c_delay>:
 8001988:	230b      	movs	r3, #11
 800198a:	3b01      	subs	r3, #1
 800198c:	d001      	beq.n	8001992 <i2c_delay+0xa>
 800198e:	bf00      	nop
 8001990:	e7fb      	b.n	800198a <i2c_delay+0x2>
 8001992:	4770      	bx	lr

08001994 <SetLowSDA>:
 8001994:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001996:	4d0d      	ldr	r5, [pc, #52]	; (80019cc <SetLowSDA+0x38>)
 8001998:	2301      	movs	r3, #1
 800199a:	2203      	movs	r2, #3
 800199c:	2480      	movs	r4, #128	; 0x80
 800199e:	f88d 3004 	strb.w	r3, [sp, #4]
 80019a2:	f88d 3006 	strb.w	r3, [sp, #6]
 80019a6:	4628      	mov	r0, r5
 80019a8:	2300      	movs	r3, #0
 80019aa:	4669      	mov	r1, sp
 80019ac:	f88d 2005 	strb.w	r2, [sp, #5]
 80019b0:	f88d 3007 	strb.w	r3, [sp, #7]
 80019b4:	9400      	str	r4, [sp, #0]
 80019b6:	f000 fd3b 	bl	8002430 <GPIO_Init>
 80019ba:	4628      	mov	r0, r5
 80019bc:	4621      	mov	r1, r4
 80019be:	f000 fd81 	bl	80024c4 <GPIO_ResetBits>
 80019c2:	f7ff ffe1 	bl	8001988 <i2c_delay>
 80019c6:	b003      	add	sp, #12
 80019c8:	bd30      	pop	{r4, r5, pc}
 80019ca:	bf00      	nop
 80019cc:	48000400 	.word	0x48000400

080019d0 <SetHighSDA>:
 80019d0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80019d2:	4d0d      	ldr	r5, [pc, #52]	; (8001a08 <SetHighSDA+0x38>)
 80019d4:	2203      	movs	r2, #3
 80019d6:	2300      	movs	r3, #0
 80019d8:	2480      	movs	r4, #128	; 0x80
 80019da:	f88d 2005 	strb.w	r2, [sp, #5]
 80019de:	4628      	mov	r0, r5
 80019e0:	2201      	movs	r2, #1
 80019e2:	4669      	mov	r1, sp
 80019e4:	f88d 3004 	strb.w	r3, [sp, #4]
 80019e8:	f88d 2006 	strb.w	r2, [sp, #6]
 80019ec:	f88d 3007 	strb.w	r3, [sp, #7]
 80019f0:	9400      	str	r4, [sp, #0]
 80019f2:	f000 fd1d 	bl	8002430 <GPIO_Init>
 80019f6:	4628      	mov	r0, r5
 80019f8:	4621      	mov	r1, r4
 80019fa:	f000 fd5f 	bl	80024bc <GPIO_SetBits>
 80019fe:	f7ff ffc3 	bl	8001988 <i2c_delay>
 8001a02:	b003      	add	sp, #12
 8001a04:	bd30      	pop	{r4, r5, pc}
 8001a06:	bf00      	nop
 8001a08:	48000400 	.word	0x48000400

08001a0c <SetLowSCL>:
 8001a0c:	b508      	push	{r3, lr}
 8001a0e:	4804      	ldr	r0, [pc, #16]	; (8001a20 <SetLowSCL+0x14>)
 8001a10:	2140      	movs	r1, #64	; 0x40
 8001a12:	f000 fd57 	bl	80024c4 <GPIO_ResetBits>
 8001a16:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a1a:	f7ff bfb5 	b.w	8001988 <i2c_delay>
 8001a1e:	bf00      	nop
 8001a20:	48000400 	.word	0x48000400

08001a24 <SetHighSCL>:
 8001a24:	b508      	push	{r3, lr}
 8001a26:	4804      	ldr	r0, [pc, #16]	; (8001a38 <SetHighSCL+0x14>)
 8001a28:	2140      	movs	r1, #64	; 0x40
 8001a2a:	f000 fd47 	bl	80024bc <GPIO_SetBits>
 8001a2e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a32:	f7ff bfa9 	b.w	8001988 <i2c_delay>
 8001a36:	bf00      	nop
 8001a38:	48000400 	.word	0x48000400

08001a3c <i2c_0_init>:
 8001a3c:	b507      	push	{r0, r1, r2, lr}
 8001a3e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a42:	2101      	movs	r1, #1
 8001a44:	f000 fb1a 	bl	800207c <RCC_AHBPeriphClockCmd>
 8001a48:	23c0      	movs	r3, #192	; 0xc0
 8001a4a:	9300      	str	r3, [sp, #0]
 8001a4c:	2301      	movs	r3, #1
 8001a4e:	2203      	movs	r2, #3
 8001a50:	480a      	ldr	r0, [pc, #40]	; (8001a7c <i2c_0_init+0x40>)
 8001a52:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a56:	4669      	mov	r1, sp
 8001a58:	f88d 3006 	strb.w	r3, [sp, #6]
 8001a5c:	2300      	movs	r3, #0
 8001a5e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a62:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a66:	f000 fce3 	bl	8002430 <GPIO_Init>
 8001a6a:	f7ff ffdb 	bl	8001a24 <SetHighSCL>
 8001a6e:	f7ff ff91 	bl	8001994 <SetLowSDA>
 8001a72:	f7ff ffad 	bl	80019d0 <SetHighSDA>
 8001a76:	b003      	add	sp, #12
 8001a78:	f85d fb04 	ldr.w	pc, [sp], #4
 8001a7c:	48000400 	.word	0x48000400

08001a80 <i2cStart>:
 8001a80:	b508      	push	{r3, lr}
 8001a82:	f7ff ffcf 	bl	8001a24 <SetHighSCL>
 8001a86:	f7ff ffa3 	bl	80019d0 <SetHighSDA>
 8001a8a:	f7ff ffcb 	bl	8001a24 <SetHighSCL>
 8001a8e:	f7ff ff81 	bl	8001994 <SetLowSDA>
 8001a92:	f7ff ffbb 	bl	8001a0c <SetLowSCL>
 8001a96:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a9a:	f7ff bf99 	b.w	80019d0 <SetHighSDA>

08001a9e <i2cStop>:
 8001a9e:	b508      	push	{r3, lr}
 8001aa0:	f7ff ffb4 	bl	8001a0c <SetLowSCL>
 8001aa4:	f7ff ff76 	bl	8001994 <SetLowSDA>
 8001aa8:	f7ff ffbc 	bl	8001a24 <SetHighSCL>
 8001aac:	f7ff ff72 	bl	8001994 <SetLowSDA>
 8001ab0:	f7ff ffb8 	bl	8001a24 <SetHighSCL>
 8001ab4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001ab8:	f7ff bf8a 	b.w	80019d0 <SetHighSDA>

08001abc <i2cWrite>:
 8001abc:	b538      	push	{r3, r4, r5, lr}
 8001abe:	4604      	mov	r4, r0
 8001ac0:	2508      	movs	r5, #8
 8001ac2:	f7ff ffa3 	bl	8001a0c <SetLowSCL>
 8001ac6:	0623      	lsls	r3, r4, #24
 8001ac8:	d502      	bpl.n	8001ad0 <i2cWrite+0x14>
 8001aca:	f7ff ff81 	bl	80019d0 <SetHighSDA>
 8001ace:	e001      	b.n	8001ad4 <i2cWrite+0x18>
 8001ad0:	f7ff ff60 	bl	8001994 <SetLowSDA>
 8001ad4:	3d01      	subs	r5, #1
 8001ad6:	f7ff ffa5 	bl	8001a24 <SetHighSCL>
 8001ada:	0064      	lsls	r4, r4, #1
 8001adc:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001ae0:	b2e4      	uxtb	r4, r4
 8001ae2:	d1ee      	bne.n	8001ac2 <i2cWrite+0x6>
 8001ae4:	f7ff ff92 	bl	8001a0c <SetLowSCL>
 8001ae8:	f7ff ff72 	bl	80019d0 <SetHighSDA>
 8001aec:	f7ff ff9a 	bl	8001a24 <SetHighSCL>
 8001af0:	4b05      	ldr	r3, [pc, #20]	; (8001b08 <i2cWrite+0x4c>)
 8001af2:	8a1c      	ldrh	r4, [r3, #16]
 8001af4:	b2a4      	uxth	r4, r4
 8001af6:	f7ff ff89 	bl	8001a0c <SetLowSCL>
 8001afa:	f7ff ff45 	bl	8001988 <i2c_delay>
 8001afe:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001b02:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001b06:	bd38      	pop	{r3, r4, r5, pc}
 8001b08:	48000400 	.word	0x48000400

08001b0c <i2cRead>:
 8001b0c:	b570      	push	{r4, r5, r6, lr}
 8001b0e:	4606      	mov	r6, r0
 8001b10:	f7ff ff7c 	bl	8001a0c <SetLowSCL>
 8001b14:	f7ff ff5c 	bl	80019d0 <SetHighSDA>
 8001b18:	2508      	movs	r5, #8
 8001b1a:	2400      	movs	r4, #0
 8001b1c:	f7ff ff82 	bl	8001a24 <SetHighSCL>
 8001b20:	4b0d      	ldr	r3, [pc, #52]	; (8001b58 <i2cRead+0x4c>)
 8001b22:	8a1b      	ldrh	r3, [r3, #16]
 8001b24:	0064      	lsls	r4, r4, #1
 8001b26:	061a      	lsls	r2, r3, #24
 8001b28:	b2e4      	uxtb	r4, r4
 8001b2a:	bf48      	it	mi
 8001b2c:	3401      	addmi	r4, #1
 8001b2e:	f105 35ff 	add.w	r5, r5, #4294967295
 8001b32:	bf48      	it	mi
 8001b34:	b2e4      	uxtbmi	r4, r4
 8001b36:	f7ff ff69 	bl	8001a0c <SetLowSCL>
 8001b3a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b3e:	d1ed      	bne.n	8001b1c <i2cRead+0x10>
 8001b40:	b10e      	cbz	r6, 8001b46 <i2cRead+0x3a>
 8001b42:	f7ff ff27 	bl	8001994 <SetLowSDA>
 8001b46:	f7ff ff6d 	bl	8001a24 <SetHighSCL>
 8001b4a:	f7ff ff5f 	bl	8001a0c <SetLowSCL>
 8001b4e:	f7ff ff1b 	bl	8001988 <i2c_delay>
 8001b52:	4620      	mov	r0, r4
 8001b54:	bd70      	pop	{r4, r5, r6, pc}
 8001b56:	bf00      	nop
 8001b58:	48000400 	.word	0x48000400

08001b5c <i2c_write_reg>:
 8001b5c:	b570      	push	{r4, r5, r6, lr}
 8001b5e:	4605      	mov	r5, r0
 8001b60:	460c      	mov	r4, r1
 8001b62:	4616      	mov	r6, r2
 8001b64:	f7ff ff8c 	bl	8001a80 <i2cStart>
 8001b68:	4628      	mov	r0, r5
 8001b6a:	f7ff ffa7 	bl	8001abc <i2cWrite>
 8001b6e:	4620      	mov	r0, r4
 8001b70:	f7ff ffa4 	bl	8001abc <i2cWrite>
 8001b74:	4630      	mov	r0, r6
 8001b76:	f7ff ffa1 	bl	8001abc <i2cWrite>
 8001b7a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b7e:	f7ff bf8e 	b.w	8001a9e <i2cStop>

08001b82 <i2c_read_reg>:
 8001b82:	b538      	push	{r3, r4, r5, lr}
 8001b84:	4604      	mov	r4, r0
 8001b86:	460d      	mov	r5, r1
 8001b88:	f7ff ff7a 	bl	8001a80 <i2cStart>
 8001b8c:	4620      	mov	r0, r4
 8001b8e:	f7ff ff95 	bl	8001abc <i2cWrite>
 8001b92:	4628      	mov	r0, r5
 8001b94:	f7ff ff92 	bl	8001abc <i2cWrite>
 8001b98:	f7ff ff72 	bl	8001a80 <i2cStart>
 8001b9c:	f044 0001 	orr.w	r0, r4, #1
 8001ba0:	f7ff ff8c 	bl	8001abc <i2cWrite>
 8001ba4:	2000      	movs	r0, #0
 8001ba6:	f7ff ffb1 	bl	8001b0c <i2cRead>
 8001baa:	4604      	mov	r4, r0
 8001bac:	f7ff ff77 	bl	8001a9e <i2cStop>
 8001bb0:	4620      	mov	r0, r4
 8001bb2:	bd38      	pop	{r3, r4, r5, pc}

08001bb4 <Default_Handler>:
 8001bb4:	4668      	mov	r0, sp
 8001bb6:	f020 0107 	bic.w	r1, r0, #7
 8001bba:	468d      	mov	sp, r1
 8001bbc:	bf00      	nop
 8001bbe:	e7fd      	b.n	8001bbc <Default_Handler+0x8>

08001bc0 <HardFault_Handler>:
 8001bc0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bc4:	f000 fce6 	bl	8002594 <led_on>
 8001bc8:	4b06      	ldr	r3, [pc, #24]	; (8001be4 <HardFault_Handler+0x24>)
 8001bca:	3b01      	subs	r3, #1
 8001bcc:	d001      	beq.n	8001bd2 <HardFault_Handler+0x12>
 8001bce:	bf00      	nop
 8001bd0:	e7fb      	b.n	8001bca <HardFault_Handler+0xa>
 8001bd2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bd6:	f000 fcef 	bl	80025b8 <led_off>
 8001bda:	4b02      	ldr	r3, [pc, #8]	; (8001be4 <HardFault_Handler+0x24>)
 8001bdc:	3b01      	subs	r3, #1
 8001bde:	d0ef      	beq.n	8001bc0 <HardFault_Handler>
 8001be0:	bf00      	nop
 8001be2:	e7fb      	b.n	8001bdc <HardFault_Handler+0x1c>
 8001be4:	00989681 	.word	0x00989681

08001be8 <_reset_init>:
 8001be8:	4a0e      	ldr	r2, [pc, #56]	; (8001c24 <_reset_init+0x3c>)
 8001bea:	480f      	ldr	r0, [pc, #60]	; (8001c28 <_reset_init+0x40>)
 8001bec:	1a80      	subs	r0, r0, r2
 8001bee:	1080      	asrs	r0, r0, #2
 8001bf0:	2300      	movs	r3, #0
 8001bf2:	4283      	cmp	r3, r0
 8001bf4:	d006      	beq.n	8001c04 <_reset_init+0x1c>
 8001bf6:	490d      	ldr	r1, [pc, #52]	; (8001c2c <_reset_init+0x44>)
 8001bf8:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8001bfc:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001c00:	3301      	adds	r3, #1
 8001c02:	e7f6      	b.n	8001bf2 <_reset_init+0xa>
 8001c04:	4b0a      	ldr	r3, [pc, #40]	; (8001c30 <_reset_init+0x48>)
 8001c06:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001c0a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001c0e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001c12:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8001c16:	685a      	ldr	r2, [r3, #4]
 8001c18:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8001c1c:	605a      	str	r2, [r3, #4]
 8001c1e:	f7fe bab3 	b.w	8000188 <main>
 8001c22:	bf00      	nop
 8001c24:	20000000 	.word	0x20000000
 8001c28:	20000144 	.word	0x20000144
 8001c2c:	08002894 	.word	0x08002894
 8001c30:	e000ed00 	.word	0xe000ed00

08001c34 <sys_tick_init>:
 8001c34:	4b05      	ldr	r3, [pc, #20]	; (8001c4c <sys_tick_init+0x18>)
 8001c36:	4a06      	ldr	r2, [pc, #24]	; (8001c50 <sys_tick_init+0x1c>)
 8001c38:	605a      	str	r2, [r3, #4]
 8001c3a:	4a06      	ldr	r2, [pc, #24]	; (8001c54 <sys_tick_init+0x20>)
 8001c3c:	21f0      	movs	r1, #240	; 0xf0
 8001c3e:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001c42:	2200      	movs	r2, #0
 8001c44:	609a      	str	r2, [r3, #8]
 8001c46:	2207      	movs	r2, #7
 8001c48:	601a      	str	r2, [r3, #0]
 8001c4a:	4770      	bx	lr
 8001c4c:	e000e010 	.word	0xe000e010
 8001c50:	00029040 	.word	0x00029040
 8001c54:	e000ed00 	.word	0xe000ed00

08001c58 <sleep>:
 8001c58:	bf30      	wfi
 8001c5a:	4770      	bx	lr

08001c5c <sytem_clock_init>:
 8001c5c:	f000 b800 	b.w	8001c60 <SystemInit>

08001c60 <SystemInit>:
 8001c60:	4b3b      	ldr	r3, [pc, #236]	; (8001d50 <SystemInit+0xf0>)
 8001c62:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001c66:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001c6a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001c6e:	4b39      	ldr	r3, [pc, #228]	; (8001d54 <SystemInit+0xf4>)
 8001c70:	681a      	ldr	r2, [r3, #0]
 8001c72:	f042 0201 	orr.w	r2, r2, #1
 8001c76:	601a      	str	r2, [r3, #0]
 8001c78:	6859      	ldr	r1, [r3, #4]
 8001c7a:	4a37      	ldr	r2, [pc, #220]	; (8001d58 <SystemInit+0xf8>)
 8001c7c:	400a      	ands	r2, r1
 8001c7e:	605a      	str	r2, [r3, #4]
 8001c80:	681a      	ldr	r2, [r3, #0]
 8001c82:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001c86:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001c8a:	601a      	str	r2, [r3, #0]
 8001c8c:	681a      	ldr	r2, [r3, #0]
 8001c8e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001c92:	601a      	str	r2, [r3, #0]
 8001c94:	685a      	ldr	r2, [r3, #4]
 8001c96:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001c9a:	605a      	str	r2, [r3, #4]
 8001c9c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c9e:	f022 020f 	bic.w	r2, r2, #15
 8001ca2:	62da      	str	r2, [r3, #44]	; 0x2c
 8001ca4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ca6:	4a2d      	ldr	r2, [pc, #180]	; (8001d5c <SystemInit+0xfc>)
 8001ca8:	b082      	sub	sp, #8
 8001caa:	400a      	ands	r2, r1
 8001cac:	631a      	str	r2, [r3, #48]	; 0x30
 8001cae:	2200      	movs	r2, #0
 8001cb0:	609a      	str	r2, [r3, #8]
 8001cb2:	9200      	str	r2, [sp, #0]
 8001cb4:	9201      	str	r2, [sp, #4]
 8001cb6:	681a      	ldr	r2, [r3, #0]
 8001cb8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001cbc:	601a      	str	r2, [r3, #0]
 8001cbe:	4b25      	ldr	r3, [pc, #148]	; (8001d54 <SystemInit+0xf4>)
 8001cc0:	681a      	ldr	r2, [r3, #0]
 8001cc2:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001cc6:	9201      	str	r2, [sp, #4]
 8001cc8:	9a00      	ldr	r2, [sp, #0]
 8001cca:	3201      	adds	r2, #1
 8001ccc:	9200      	str	r2, [sp, #0]
 8001cce:	9a01      	ldr	r2, [sp, #4]
 8001cd0:	b91a      	cbnz	r2, 8001cda <SystemInit+0x7a>
 8001cd2:	9a00      	ldr	r2, [sp, #0]
 8001cd4:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001cd8:	d1f1      	bne.n	8001cbe <SystemInit+0x5e>
 8001cda:	681b      	ldr	r3, [r3, #0]
 8001cdc:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8001ce0:	bf18      	it	ne
 8001ce2:	2301      	movne	r3, #1
 8001ce4:	9301      	str	r3, [sp, #4]
 8001ce6:	9b01      	ldr	r3, [sp, #4]
 8001ce8:	2b01      	cmp	r3, #1
 8001cea:	d005      	beq.n	8001cf8 <SystemInit+0x98>
 8001cec:	4b18      	ldr	r3, [pc, #96]	; (8001d50 <SystemInit+0xf0>)
 8001cee:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001cf2:	609a      	str	r2, [r3, #8]
 8001cf4:	b002      	add	sp, #8
 8001cf6:	4770      	bx	lr
 8001cf8:	4b19      	ldr	r3, [pc, #100]	; (8001d60 <SystemInit+0x100>)
 8001cfa:	2212      	movs	r2, #18
 8001cfc:	601a      	str	r2, [r3, #0]
 8001cfe:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8001d02:	685a      	ldr	r2, [r3, #4]
 8001d04:	605a      	str	r2, [r3, #4]
 8001d06:	685a      	ldr	r2, [r3, #4]
 8001d08:	605a      	str	r2, [r3, #4]
 8001d0a:	685a      	ldr	r2, [r3, #4]
 8001d0c:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001d10:	605a      	str	r2, [r3, #4]
 8001d12:	685a      	ldr	r2, [r3, #4]
 8001d14:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001d18:	605a      	str	r2, [r3, #4]
 8001d1a:	685a      	ldr	r2, [r3, #4]
 8001d1c:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001d20:	605a      	str	r2, [r3, #4]
 8001d22:	681a      	ldr	r2, [r3, #0]
 8001d24:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001d28:	601a      	str	r2, [r3, #0]
 8001d2a:	6819      	ldr	r1, [r3, #0]
 8001d2c:	4a09      	ldr	r2, [pc, #36]	; (8001d54 <SystemInit+0xf4>)
 8001d2e:	0189      	lsls	r1, r1, #6
 8001d30:	d5fb      	bpl.n	8001d2a <SystemInit+0xca>
 8001d32:	6853      	ldr	r3, [r2, #4]
 8001d34:	f023 0303 	bic.w	r3, r3, #3
 8001d38:	6053      	str	r3, [r2, #4]
 8001d3a:	6853      	ldr	r3, [r2, #4]
 8001d3c:	f043 0302 	orr.w	r3, r3, #2
 8001d40:	6053      	str	r3, [r2, #4]
 8001d42:	4b04      	ldr	r3, [pc, #16]	; (8001d54 <SystemInit+0xf4>)
 8001d44:	685b      	ldr	r3, [r3, #4]
 8001d46:	f003 030c 	and.w	r3, r3, #12
 8001d4a:	2b08      	cmp	r3, #8
 8001d4c:	d1f9      	bne.n	8001d42 <SystemInit+0xe2>
 8001d4e:	e7cd      	b.n	8001cec <SystemInit+0x8c>
 8001d50:	e000ed00 	.word	0xe000ed00
 8001d54:	40021000 	.word	0x40021000
 8001d58:	f87fc00c 	.word	0xf87fc00c
 8001d5c:	ff00fccc 	.word	0xff00fccc
 8001d60:	40022000 	.word	0x40022000

08001d64 <RCC_GetClocksFreq>:
 8001d64:	4ba5      	ldr	r3, [pc, #660]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001d66:	685a      	ldr	r2, [r3, #4]
 8001d68:	f002 020c 	and.w	r2, r2, #12
 8001d6c:	2a04      	cmp	r2, #4
 8001d6e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001d72:	d005      	beq.n	8001d80 <RCC_GetClocksFreq+0x1c>
 8001d74:	2a08      	cmp	r2, #8
 8001d76:	d006      	beq.n	8001d86 <RCC_GetClocksFreq+0x22>
 8001d78:	4ba1      	ldr	r3, [pc, #644]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001d7a:	6003      	str	r3, [r0, #0]
 8001d7c:	b9ba      	cbnz	r2, 8001dae <RCC_GetClocksFreq+0x4a>
 8001d7e:	e017      	b.n	8001db0 <RCC_GetClocksFreq+0x4c>
 8001d80:	4b9f      	ldr	r3, [pc, #636]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001d82:	6003      	str	r3, [r0, #0]
 8001d84:	e013      	b.n	8001dae <RCC_GetClocksFreq+0x4a>
 8001d86:	6859      	ldr	r1, [r3, #4]
 8001d88:	685c      	ldr	r4, [r3, #4]
 8001d8a:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001d8e:	03e2      	lsls	r2, r4, #15
 8001d90:	f101 0102 	add.w	r1, r1, #2
 8001d94:	d401      	bmi.n	8001d9a <RCC_GetClocksFreq+0x36>
 8001d96:	4a9b      	ldr	r2, [pc, #620]	; (8002004 <RCC_GetClocksFreq+0x2a0>)
 8001d98:	e006      	b.n	8001da8 <RCC_GetClocksFreq+0x44>
 8001d9a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001d9c:	4b98      	ldr	r3, [pc, #608]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001d9e:	f002 020f 	and.w	r2, r2, #15
 8001da2:	3201      	adds	r2, #1
 8001da4:	fbb3 f2f2 	udiv	r2, r3, r2
 8001da8:	434a      	muls	r2, r1
 8001daa:	6002      	str	r2, [r0, #0]
 8001dac:	e000      	b.n	8001db0 <RCC_GetClocksFreq+0x4c>
 8001dae:	2200      	movs	r2, #0
 8001db0:	4f92      	ldr	r7, [pc, #584]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001db2:	4d95      	ldr	r5, [pc, #596]	; (8002008 <RCC_GetClocksFreq+0x2a4>)
 8001db4:	687b      	ldr	r3, [r7, #4]
 8001db6:	f8df 8254 	ldr.w	r8, [pc, #596]	; 800200c <RCC_GetClocksFreq+0x2a8>
 8001dba:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001dbe:	5cec      	ldrb	r4, [r5, r3]
 8001dc0:	6803      	ldr	r3, [r0, #0]
 8001dc2:	b2e4      	uxtb	r4, r4
 8001dc4:	fa23 f104 	lsr.w	r1, r3, r4
 8001dc8:	6041      	str	r1, [r0, #4]
 8001dca:	687e      	ldr	r6, [r7, #4]
 8001dcc:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001dd0:	5dae      	ldrb	r6, [r5, r6]
 8001dd2:	fa21 f606 	lsr.w	r6, r1, r6
 8001dd6:	6086      	str	r6, [r0, #8]
 8001dd8:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001ddc:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001de0:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001de4:	b2ed      	uxtb	r5, r5
 8001de6:	40e9      	lsrs	r1, r5
 8001de8:	60c1      	str	r1, [r0, #12]
 8001dea:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001dee:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001df2:	f009 0c0f 	and.w	ip, r9, #15
 8001df6:	f019 0f10 	tst.w	r9, #16
 8001dfa:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001dfe:	fa1f fc8c 	uxth.w	ip, ip
 8001e02:	d007      	beq.n	8001e14 <RCC_GetClocksFreq+0xb0>
 8001e04:	f1bc 0f00 	cmp.w	ip, #0
 8001e08:	d004      	beq.n	8001e14 <RCC_GetClocksFreq+0xb0>
 8001e0a:	fbb2 fcfc 	udiv	ip, r2, ip
 8001e0e:	f8c0 c010 	str.w	ip, [r0, #16]
 8001e12:	e000      	b.n	8001e16 <RCC_GetClocksFreq+0xb2>
 8001e14:	6103      	str	r3, [r0, #16]
 8001e16:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001e18:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001e1c:	f00c 070f 	and.w	r7, ip, #15
 8001e20:	f01c 0f10 	tst.w	ip, #16
 8001e24:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001e28:	b2bf      	uxth	r7, r7
 8001e2a:	d004      	beq.n	8001e36 <RCC_GetClocksFreq+0xd2>
 8001e2c:	b11f      	cbz	r7, 8001e36 <RCC_GetClocksFreq+0xd2>
 8001e2e:	fbb2 f7f7 	udiv	r7, r2, r7
 8001e32:	6147      	str	r7, [r0, #20]
 8001e34:	e000      	b.n	8001e38 <RCC_GetClocksFreq+0xd4>
 8001e36:	6143      	str	r3, [r0, #20]
 8001e38:	4f70      	ldr	r7, [pc, #448]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001e3a:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e3e:	f01c 0f10 	tst.w	ip, #16
 8001e42:	bf0a      	itet	eq
 8001e44:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8002000 <RCC_GetClocksFreq+0x29c>
 8001e48:	6183      	strne	r3, [r0, #24]
 8001e4a:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001e4e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001e50:	06bf      	lsls	r7, r7, #26
 8001e52:	bf56      	itet	pl
 8001e54:	4f6a      	ldrpl	r7, [pc, #424]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001e56:	61c3      	strmi	r3, [r0, #28]
 8001e58:	61c7      	strpl	r7, [r0, #28]
 8001e5a:	4f68      	ldr	r7, [pc, #416]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001e5c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e60:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001e64:	bf0a      	itet	eq
 8001e66:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8002000 <RCC_GetClocksFreq+0x29c>
 8001e6a:	6203      	strne	r3, [r0, #32]
 8001e6c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001e70:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001e72:	05ff      	lsls	r7, r7, #23
 8001e74:	d506      	bpl.n	8001e84 <RCC_GetClocksFreq+0x120>
 8001e76:	4293      	cmp	r3, r2
 8001e78:	d104      	bne.n	8001e84 <RCC_GetClocksFreq+0x120>
 8001e7a:	42a5      	cmp	r5, r4
 8001e7c:	d102      	bne.n	8001e84 <RCC_GetClocksFreq+0x120>
 8001e7e:	005f      	lsls	r7, r3, #1
 8001e80:	6247      	str	r7, [r0, #36]	; 0x24
 8001e82:	e000      	b.n	8001e86 <RCC_GetClocksFreq+0x122>
 8001e84:	6241      	str	r1, [r0, #36]	; 0x24
 8001e86:	4f5d      	ldr	r7, [pc, #372]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001e88:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e8c:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001e90:	d008      	beq.n	8001ea4 <RCC_GetClocksFreq+0x140>
 8001e92:	4293      	cmp	r3, r2
 8001e94:	d106      	bne.n	8001ea4 <RCC_GetClocksFreq+0x140>
 8001e96:	42a5      	cmp	r5, r4
 8001e98:	d104      	bne.n	8001ea4 <RCC_GetClocksFreq+0x140>
 8001e9a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e9e:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001ea2:	e000      	b.n	8001ea6 <RCC_GetClocksFreq+0x142>
 8001ea4:	6281      	str	r1, [r0, #40]	; 0x28
 8001ea6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ea8:	05bf      	lsls	r7, r7, #22
 8001eaa:	d506      	bpl.n	8001eba <RCC_GetClocksFreq+0x156>
 8001eac:	4293      	cmp	r3, r2
 8001eae:	d104      	bne.n	8001eba <RCC_GetClocksFreq+0x156>
 8001eb0:	42a5      	cmp	r5, r4
 8001eb2:	d102      	bne.n	8001eba <RCC_GetClocksFreq+0x156>
 8001eb4:	005f      	lsls	r7, r3, #1
 8001eb6:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001eb8:	e000      	b.n	8001ebc <RCC_GetClocksFreq+0x158>
 8001eba:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001ebc:	4f4f      	ldr	r7, [pc, #316]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001ebe:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ec2:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001ec6:	d008      	beq.n	8001eda <RCC_GetClocksFreq+0x176>
 8001ec8:	4293      	cmp	r3, r2
 8001eca:	d106      	bne.n	8001eda <RCC_GetClocksFreq+0x176>
 8001ecc:	42a5      	cmp	r5, r4
 8001ece:	d104      	bne.n	8001eda <RCC_GetClocksFreq+0x176>
 8001ed0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001ed4:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001ed8:	e000      	b.n	8001edc <RCC_GetClocksFreq+0x178>
 8001eda:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001edc:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ede:	053f      	lsls	r7, r7, #20
 8001ee0:	d506      	bpl.n	8001ef0 <RCC_GetClocksFreq+0x18c>
 8001ee2:	4293      	cmp	r3, r2
 8001ee4:	d104      	bne.n	8001ef0 <RCC_GetClocksFreq+0x18c>
 8001ee6:	42a5      	cmp	r5, r4
 8001ee8:	d102      	bne.n	8001ef0 <RCC_GetClocksFreq+0x18c>
 8001eea:	005f      	lsls	r7, r3, #1
 8001eec:	6507      	str	r7, [r0, #80]	; 0x50
 8001eee:	e000      	b.n	8001ef2 <RCC_GetClocksFreq+0x18e>
 8001ef0:	6501      	str	r1, [r0, #80]	; 0x50
 8001ef2:	4f42      	ldr	r7, [pc, #264]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001ef4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ef8:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001efc:	d008      	beq.n	8001f10 <RCC_GetClocksFreq+0x1ac>
 8001efe:	4293      	cmp	r3, r2
 8001f00:	d106      	bne.n	8001f10 <RCC_GetClocksFreq+0x1ac>
 8001f02:	42a5      	cmp	r5, r4
 8001f04:	d104      	bne.n	8001f10 <RCC_GetClocksFreq+0x1ac>
 8001f06:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001f0a:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001f0e:	e000      	b.n	8001f12 <RCC_GetClocksFreq+0x1ae>
 8001f10:	6501      	str	r1, [r0, #80]	; 0x50
 8001f12:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001f14:	043f      	lsls	r7, r7, #16
 8001f16:	d506      	bpl.n	8001f26 <RCC_GetClocksFreq+0x1c2>
 8001f18:	4293      	cmp	r3, r2
 8001f1a:	d104      	bne.n	8001f26 <RCC_GetClocksFreq+0x1c2>
 8001f1c:	42a5      	cmp	r5, r4
 8001f1e:	d102      	bne.n	8001f26 <RCC_GetClocksFreq+0x1c2>
 8001f20:	005a      	lsls	r2, r3, #1
 8001f22:	6582      	str	r2, [r0, #88]	; 0x58
 8001f24:	e000      	b.n	8001f28 <RCC_GetClocksFreq+0x1c4>
 8001f26:	6581      	str	r1, [r0, #88]	; 0x58
 8001f28:	4a34      	ldr	r2, [pc, #208]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001f2a:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001f2c:	07a4      	lsls	r4, r4, #30
 8001f2e:	d014      	beq.n	8001f5a <RCC_GetClocksFreq+0x1f6>
 8001f30:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f32:	f001 0103 	and.w	r1, r1, #3
 8001f36:	2901      	cmp	r1, #1
 8001f38:	d101      	bne.n	8001f3e <RCC_GetClocksFreq+0x1da>
 8001f3a:	6383      	str	r3, [r0, #56]	; 0x38
 8001f3c:	e00e      	b.n	8001f5c <RCC_GetClocksFreq+0x1f8>
 8001f3e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f40:	f001 0103 	and.w	r1, r1, #3
 8001f44:	2902      	cmp	r1, #2
 8001f46:	d102      	bne.n	8001f4e <RCC_GetClocksFreq+0x1ea>
 8001f48:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001f4c:	e005      	b.n	8001f5a <RCC_GetClocksFreq+0x1f6>
 8001f4e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f50:	f001 0103 	and.w	r1, r1, #3
 8001f54:	2903      	cmp	r1, #3
 8001f56:	d101      	bne.n	8001f5c <RCC_GetClocksFreq+0x1f8>
 8001f58:	4929      	ldr	r1, [pc, #164]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001f5a:	6381      	str	r1, [r0, #56]	; 0x38
 8001f5c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001f5e:	4927      	ldr	r1, [pc, #156]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001f60:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001f64:	d101      	bne.n	8001f6a <RCC_GetClocksFreq+0x206>
 8001f66:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001f68:	e018      	b.n	8001f9c <RCC_GetClocksFreq+0x238>
 8001f6a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f6c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f70:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001f74:	d101      	bne.n	8001f7a <RCC_GetClocksFreq+0x216>
 8001f76:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001f78:	e010      	b.n	8001f9c <RCC_GetClocksFreq+0x238>
 8001f7a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f7c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f80:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001f84:	d102      	bne.n	8001f8c <RCC_GetClocksFreq+0x228>
 8001f86:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001f8a:	e006      	b.n	8001f9a <RCC_GetClocksFreq+0x236>
 8001f8c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f8e:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f92:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001f96:	d101      	bne.n	8001f9c <RCC_GetClocksFreq+0x238>
 8001f98:	4a19      	ldr	r2, [pc, #100]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001f9a:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001f9c:	4a17      	ldr	r2, [pc, #92]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001f9e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001fa0:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001fa4:	d101      	bne.n	8001faa <RCC_GetClocksFreq+0x246>
 8001fa6:	6406      	str	r6, [r0, #64]	; 0x40
 8001fa8:	e018      	b.n	8001fdc <RCC_GetClocksFreq+0x278>
 8001faa:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001fac:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fb0:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001fb4:	d101      	bne.n	8001fba <RCC_GetClocksFreq+0x256>
 8001fb6:	6403      	str	r3, [r0, #64]	; 0x40
 8001fb8:	e010      	b.n	8001fdc <RCC_GetClocksFreq+0x278>
 8001fba:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001fbc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fc0:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001fc4:	d102      	bne.n	8001fcc <RCC_GetClocksFreq+0x268>
 8001fc6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001fca:	e006      	b.n	8001fda <RCC_GetClocksFreq+0x276>
 8001fcc:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001fce:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fd2:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001fd6:	d101      	bne.n	8001fdc <RCC_GetClocksFreq+0x278>
 8001fd8:	4909      	ldr	r1, [pc, #36]	; (8002000 <RCC_GetClocksFreq+0x29c>)
 8001fda:	6401      	str	r1, [r0, #64]	; 0x40
 8001fdc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001fde:	4907      	ldr	r1, [pc, #28]	; (8001ffc <RCC_GetClocksFreq+0x298>)
 8001fe0:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001fe4:	d101      	bne.n	8001fea <RCC_GetClocksFreq+0x286>
 8001fe6:	6446      	str	r6, [r0, #68]	; 0x44
 8001fe8:	e023      	b.n	8002032 <RCC_GetClocksFreq+0x2ce>
 8001fea:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001fec:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001ff0:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001ff4:	d10c      	bne.n	8002010 <RCC_GetClocksFreq+0x2ac>
 8001ff6:	6443      	str	r3, [r0, #68]	; 0x44
 8001ff8:	e01b      	b.n	8002032 <RCC_GetClocksFreq+0x2ce>
 8001ffa:	bf00      	nop
 8001ffc:	40021000 	.word	0x40021000
 8002000:	007a1200 	.word	0x007a1200
 8002004:	003d0900 	.word	0x003d0900
 8002008:	20000134 	.word	0x20000134
 800200c:	20000114 	.word	0x20000114
 8002010:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002012:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002016:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 800201a:	d102      	bne.n	8002022 <RCC_GetClocksFreq+0x2be>
 800201c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002020:	e006      	b.n	8002030 <RCC_GetClocksFreq+0x2cc>
 8002022:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002024:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002028:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 800202c:	d101      	bne.n	8002032 <RCC_GetClocksFreq+0x2ce>
 800202e:	4a11      	ldr	r2, [pc, #68]	; (8002074 <RCC_GetClocksFreq+0x310>)
 8002030:	6442      	str	r2, [r0, #68]	; 0x44
 8002032:	4a11      	ldr	r2, [pc, #68]	; (8002078 <RCC_GetClocksFreq+0x314>)
 8002034:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002036:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800203a:	d102      	bne.n	8002042 <RCC_GetClocksFreq+0x2de>
 800203c:	6486      	str	r6, [r0, #72]	; 0x48
 800203e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002042:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002044:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002048:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800204c:	d00f      	beq.n	800206e <RCC_GetClocksFreq+0x30a>
 800204e:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002050:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002054:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002058:	d102      	bne.n	8002060 <RCC_GetClocksFreq+0x2fc>
 800205a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800205e:	e006      	b.n	800206e <RCC_GetClocksFreq+0x30a>
 8002060:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002062:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002066:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800206a:	d101      	bne.n	8002070 <RCC_GetClocksFreq+0x30c>
 800206c:	4b01      	ldr	r3, [pc, #4]	; (8002074 <RCC_GetClocksFreq+0x310>)
 800206e:	6483      	str	r3, [r0, #72]	; 0x48
 8002070:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002074:	007a1200 	.word	0x007a1200
 8002078:	40021000 	.word	0x40021000

0800207c <RCC_AHBPeriphClockCmd>:
 800207c:	bf00      	nop
 800207e:	bf00      	nop
 8002080:	4b04      	ldr	r3, [pc, #16]	; (8002094 <RCC_AHBPeriphClockCmd+0x18>)
 8002082:	695a      	ldr	r2, [r3, #20]
 8002084:	b109      	cbz	r1, 800208a <RCC_AHBPeriphClockCmd+0xe>
 8002086:	4310      	orrs	r0, r2
 8002088:	e001      	b.n	800208e <RCC_AHBPeriphClockCmd+0x12>
 800208a:	ea22 0000 	bic.w	r0, r2, r0
 800208e:	6158      	str	r0, [r3, #20]
 8002090:	4770      	bx	lr
 8002092:	bf00      	nop
 8002094:	40021000 	.word	0x40021000

08002098 <RCC_APB2PeriphClockCmd>:
 8002098:	bf00      	nop
 800209a:	bf00      	nop
 800209c:	4b04      	ldr	r3, [pc, #16]	; (80020b0 <RCC_APB2PeriphClockCmd+0x18>)
 800209e:	699a      	ldr	r2, [r3, #24]
 80020a0:	b109      	cbz	r1, 80020a6 <RCC_APB2PeriphClockCmd+0xe>
 80020a2:	4310      	orrs	r0, r2
 80020a4:	e001      	b.n	80020aa <RCC_APB2PeriphClockCmd+0x12>
 80020a6:	ea22 0000 	bic.w	r0, r2, r0
 80020aa:	6198      	str	r0, [r3, #24]
 80020ac:	4770      	bx	lr
 80020ae:	bf00      	nop
 80020b0:	40021000 	.word	0x40021000

080020b4 <RCC_APB1PeriphClockCmd>:
 80020b4:	bf00      	nop
 80020b6:	bf00      	nop
 80020b8:	4b04      	ldr	r3, [pc, #16]	; (80020cc <RCC_APB1PeriphClockCmd+0x18>)
 80020ba:	69da      	ldr	r2, [r3, #28]
 80020bc:	b109      	cbz	r1, 80020c2 <RCC_APB1PeriphClockCmd+0xe>
 80020be:	4310      	orrs	r0, r2
 80020c0:	e001      	b.n	80020c6 <RCC_APB1PeriphClockCmd+0x12>
 80020c2:	ea22 0000 	bic.w	r0, r2, r0
 80020c6:	61d8      	str	r0, [r3, #28]
 80020c8:	4770      	bx	lr
 80020ca:	bf00      	nop
 80020cc:	40021000 	.word	0x40021000

080020d0 <TIM_TimeBaseInit>:
 80020d0:	bf00      	nop
 80020d2:	bf00      	nop
 80020d4:	bf00      	nop
 80020d6:	4a24      	ldr	r2, [pc, #144]	; (8002168 <TIM_TimeBaseInit+0x98>)
 80020d8:	8803      	ldrh	r3, [r0, #0]
 80020da:	4290      	cmp	r0, r2
 80020dc:	b29b      	uxth	r3, r3
 80020de:	d012      	beq.n	8002106 <TIM_TimeBaseInit+0x36>
 80020e0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80020e4:	4290      	cmp	r0, r2
 80020e6:	d00e      	beq.n	8002106 <TIM_TimeBaseInit+0x36>
 80020e8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80020ec:	d00b      	beq.n	8002106 <TIM_TimeBaseInit+0x36>
 80020ee:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80020f2:	4290      	cmp	r0, r2
 80020f4:	d007      	beq.n	8002106 <TIM_TimeBaseInit+0x36>
 80020f6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020fa:	4290      	cmp	r0, r2
 80020fc:	d003      	beq.n	8002106 <TIM_TimeBaseInit+0x36>
 80020fe:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002102:	4290      	cmp	r0, r2
 8002104:	d103      	bne.n	800210e <TIM_TimeBaseInit+0x3e>
 8002106:	884a      	ldrh	r2, [r1, #2]
 8002108:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800210c:	4313      	orrs	r3, r2
 800210e:	4a17      	ldr	r2, [pc, #92]	; (800216c <TIM_TimeBaseInit+0x9c>)
 8002110:	4290      	cmp	r0, r2
 8002112:	d008      	beq.n	8002126 <TIM_TimeBaseInit+0x56>
 8002114:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002118:	4290      	cmp	r0, r2
 800211a:	d004      	beq.n	8002126 <TIM_TimeBaseInit+0x56>
 800211c:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002120:	890a      	ldrh	r2, [r1, #8]
 8002122:	b29b      	uxth	r3, r3
 8002124:	4313      	orrs	r3, r2
 8002126:	8003      	strh	r3, [r0, #0]
 8002128:	684b      	ldr	r3, [r1, #4]
 800212a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800212c:	880b      	ldrh	r3, [r1, #0]
 800212e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002130:	4b0d      	ldr	r3, [pc, #52]	; (8002168 <TIM_TimeBaseInit+0x98>)
 8002132:	4298      	cmp	r0, r3
 8002134:	d013      	beq.n	800215e <TIM_TimeBaseInit+0x8e>
 8002136:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800213a:	4298      	cmp	r0, r3
 800213c:	d00f      	beq.n	800215e <TIM_TimeBaseInit+0x8e>
 800213e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002142:	4298      	cmp	r0, r3
 8002144:	d00b      	beq.n	800215e <TIM_TimeBaseInit+0x8e>
 8002146:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800214a:	4298      	cmp	r0, r3
 800214c:	d007      	beq.n	800215e <TIM_TimeBaseInit+0x8e>
 800214e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002152:	4298      	cmp	r0, r3
 8002154:	d003      	beq.n	800215e <TIM_TimeBaseInit+0x8e>
 8002156:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800215a:	4298      	cmp	r0, r3
 800215c:	d101      	bne.n	8002162 <TIM_TimeBaseInit+0x92>
 800215e:	894b      	ldrh	r3, [r1, #10]
 8002160:	8603      	strh	r3, [r0, #48]	; 0x30
 8002162:	2301      	movs	r3, #1
 8002164:	6143      	str	r3, [r0, #20]
 8002166:	4770      	bx	lr
 8002168:	40012c00 	.word	0x40012c00
 800216c:	40001000 	.word	0x40001000

08002170 <TIM_Cmd>:
 8002170:	bf00      	nop
 8002172:	bf00      	nop
 8002174:	8803      	ldrh	r3, [r0, #0]
 8002176:	b119      	cbz	r1, 8002180 <TIM_Cmd+0x10>
 8002178:	b29b      	uxth	r3, r3
 800217a:	f043 0301 	orr.w	r3, r3, #1
 800217e:	e003      	b.n	8002188 <TIM_Cmd+0x18>
 8002180:	f023 0301 	bic.w	r3, r3, #1
 8002184:	041b      	lsls	r3, r3, #16
 8002186:	0c1b      	lsrs	r3, r3, #16
 8002188:	8003      	strh	r3, [r0, #0]
 800218a:	4770      	bx	lr

0800218c <TIM_OC1Init>:
 800218c:	b530      	push	{r4, r5, lr}
 800218e:	bf00      	nop
 8002190:	bf00      	nop
 8002192:	bf00      	nop
 8002194:	bf00      	nop
 8002196:	6a03      	ldr	r3, [r0, #32]
 8002198:	680c      	ldr	r4, [r1, #0]
 800219a:	f023 0301 	bic.w	r3, r3, #1
 800219e:	6203      	str	r3, [r0, #32]
 80021a0:	6a03      	ldr	r3, [r0, #32]
 80021a2:	6842      	ldr	r2, [r0, #4]
 80021a4:	6985      	ldr	r5, [r0, #24]
 80021a6:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 80021aa:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 80021ae:	432c      	orrs	r4, r5
 80021b0:	898d      	ldrh	r5, [r1, #12]
 80021b2:	f023 0302 	bic.w	r3, r3, #2
 80021b6:	432b      	orrs	r3, r5
 80021b8:	888d      	ldrh	r5, [r1, #4]
 80021ba:	432b      	orrs	r3, r5
 80021bc:	4d15      	ldr	r5, [pc, #84]	; (8002214 <TIM_OC1Init+0x88>)
 80021be:	42a8      	cmp	r0, r5
 80021c0:	d00f      	beq.n	80021e2 <TIM_OC1Init+0x56>
 80021c2:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80021c6:	42a8      	cmp	r0, r5
 80021c8:	d00b      	beq.n	80021e2 <TIM_OC1Init+0x56>
 80021ca:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80021ce:	42a8      	cmp	r0, r5
 80021d0:	d007      	beq.n	80021e2 <TIM_OC1Init+0x56>
 80021d2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80021d6:	42a8      	cmp	r0, r5
 80021d8:	d003      	beq.n	80021e2 <TIM_OC1Init+0x56>
 80021da:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80021de:	42a8      	cmp	r0, r5
 80021e0:	d111      	bne.n	8002206 <TIM_OC1Init+0x7a>
 80021e2:	bf00      	nop
 80021e4:	bf00      	nop
 80021e6:	bf00      	nop
 80021e8:	bf00      	nop
 80021ea:	89cd      	ldrh	r5, [r1, #14]
 80021ec:	f023 0308 	bic.w	r3, r3, #8
 80021f0:	432b      	orrs	r3, r5
 80021f2:	88cd      	ldrh	r5, [r1, #6]
 80021f4:	f023 0304 	bic.w	r3, r3, #4
 80021f8:	432b      	orrs	r3, r5
 80021fa:	8a0d      	ldrh	r5, [r1, #16]
 80021fc:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002200:	432a      	orrs	r2, r5
 8002202:	8a4d      	ldrh	r5, [r1, #18]
 8002204:	432a      	orrs	r2, r5
 8002206:	6042      	str	r2, [r0, #4]
 8002208:	688a      	ldr	r2, [r1, #8]
 800220a:	6184      	str	r4, [r0, #24]
 800220c:	6342      	str	r2, [r0, #52]	; 0x34
 800220e:	6203      	str	r3, [r0, #32]
 8002210:	bd30      	pop	{r4, r5, pc}
 8002212:	bf00      	nop
 8002214:	40012c00 	.word	0x40012c00

08002218 <TIM_OC2Init>:
 8002218:	b570      	push	{r4, r5, r6, lr}
 800221a:	bf00      	nop
 800221c:	bf00      	nop
 800221e:	bf00      	nop
 8002220:	bf00      	nop
 8002222:	6a03      	ldr	r3, [r0, #32]
 8002224:	680c      	ldr	r4, [r1, #0]
 8002226:	898e      	ldrh	r6, [r1, #12]
 8002228:	f023 0310 	bic.w	r3, r3, #16
 800222c:	6203      	str	r3, [r0, #32]
 800222e:	6a05      	ldr	r5, [r0, #32]
 8002230:	6842      	ldr	r2, [r0, #4]
 8002232:	6983      	ldr	r3, [r0, #24]
 8002234:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8002238:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 800223c:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8002240:	888b      	ldrh	r3, [r1, #4]
 8002242:	f025 0520 	bic.w	r5, r5, #32
 8002246:	4333      	orrs	r3, r6
 8002248:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 800224c:	4d10      	ldr	r5, [pc, #64]	; (8002290 <TIM_OC2Init+0x78>)
 800224e:	42a8      	cmp	r0, r5
 8002250:	d003      	beq.n	800225a <TIM_OC2Init+0x42>
 8002252:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002256:	42a8      	cmp	r0, r5
 8002258:	d114      	bne.n	8002284 <TIM_OC2Init+0x6c>
 800225a:	bf00      	nop
 800225c:	bf00      	nop
 800225e:	bf00      	nop
 8002260:	bf00      	nop
 8002262:	89cd      	ldrh	r5, [r1, #14]
 8002264:	8a0e      	ldrh	r6, [r1, #16]
 8002266:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800226a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800226e:	88cd      	ldrh	r5, [r1, #6]
 8002270:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002274:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002278:	8a4d      	ldrh	r5, [r1, #18]
 800227a:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800227e:	4335      	orrs	r5, r6
 8002280:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002284:	6042      	str	r2, [r0, #4]
 8002286:	688a      	ldr	r2, [r1, #8]
 8002288:	6184      	str	r4, [r0, #24]
 800228a:	6382      	str	r2, [r0, #56]	; 0x38
 800228c:	6203      	str	r3, [r0, #32]
 800228e:	bd70      	pop	{r4, r5, r6, pc}
 8002290:	40012c00 	.word	0x40012c00

08002294 <TIM_CtrlPWMOutputs>:
 8002294:	bf00      	nop
 8002296:	bf00      	nop
 8002298:	6c43      	ldr	r3, [r0, #68]	; 0x44
 800229a:	b111      	cbz	r1, 80022a2 <TIM_CtrlPWMOutputs+0xe>
 800229c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80022a0:	e001      	b.n	80022a6 <TIM_CtrlPWMOutputs+0x12>
 80022a2:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80022a6:	6443      	str	r3, [r0, #68]	; 0x44
 80022a8:	4770      	bx	lr

080022aa <TIM_ClearITPendingBit>:
 80022aa:	bf00      	nop
 80022ac:	43c9      	mvns	r1, r1
 80022ae:	b289      	uxth	r1, r1
 80022b0:	6101      	str	r1, [r0, #16]
 80022b2:	4770      	bx	lr

080022b4 <timer_init>:
 80022b4:	b530      	push	{r4, r5, lr}
 80022b6:	2300      	movs	r3, #0
 80022b8:	b085      	sub	sp, #20
 80022ba:	491f      	ldr	r1, [pc, #124]	; (8002338 <timer_init+0x84>)
 80022bc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80022c0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022c4:	491d      	ldr	r1, [pc, #116]	; (800233c <timer_init+0x88>)
 80022c6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022ca:	4a1d      	ldr	r2, [pc, #116]	; (8002340 <timer_init+0x8c>)
 80022cc:	2400      	movs	r4, #0
 80022ce:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80022d2:	3301      	adds	r3, #1
 80022d4:	2b04      	cmp	r3, #4
 80022d6:	4625      	mov	r5, r4
 80022d8:	d1ef      	bne.n	80022ba <timer_init+0x6>
 80022da:	4b1a      	ldr	r3, [pc, #104]	; (8002344 <timer_init+0x90>)
 80022dc:	2002      	movs	r0, #2
 80022de:	2101      	movs	r1, #1
 80022e0:	601c      	str	r4, [r3, #0]
 80022e2:	f7ff fee7 	bl	80020b4 <RCC_APB1PeriphClockCmd>
 80022e6:	f8ad 4006 	strh.w	r4, [sp, #6]
 80022ea:	f8ad 400c 	strh.w	r4, [sp, #12]
 80022ee:	f8ad 400e 	strh.w	r4, [sp, #14]
 80022f2:	4c15      	ldr	r4, [pc, #84]	; (8002348 <timer_init+0x94>)
 80022f4:	f44f 738c 	mov.w	r3, #280	; 0x118
 80022f8:	f8ad 3004 	strh.w	r3, [sp, #4]
 80022fc:	4620      	mov	r0, r4
 80022fe:	2331      	movs	r3, #49	; 0x31
 8002300:	a901      	add	r1, sp, #4
 8002302:	9302      	str	r3, [sp, #8]
 8002304:	f7ff fee4 	bl	80020d0 <TIM_TimeBaseInit>
 8002308:	4620      	mov	r0, r4
 800230a:	2101      	movs	r1, #1
 800230c:	f7ff ff30 	bl	8002170 <TIM_Cmd>
 8002310:	68e3      	ldr	r3, [r4, #12]
 8002312:	f043 0301 	orr.w	r3, r3, #1
 8002316:	60e3      	str	r3, [r4, #12]
 8002318:	231d      	movs	r3, #29
 800231a:	f88d 3000 	strb.w	r3, [sp]
 800231e:	4668      	mov	r0, sp
 8002320:	2301      	movs	r3, #1
 8002322:	f88d 5001 	strb.w	r5, [sp, #1]
 8002326:	f88d 3002 	strb.w	r3, [sp, #2]
 800232a:	f88d 3003 	strb.w	r3, [sp, #3]
 800232e:	f7ff faf3 	bl	8001918 <NVIC_Init>
 8002332:	b005      	add	sp, #20
 8002334:	bd30      	pop	{r4, r5, pc}
 8002336:	bf00      	nop
 8002338:	20000e68 	.word	0x20000e68
 800233c:	20000e5c 	.word	0x20000e5c
 8002340:	20000e54 	.word	0x20000e54
 8002344:	20000e64 	.word	0x20000e64
 8002348:	40000400 	.word	0x40000400

0800234c <TIM3_IRQHandler>:
 800234c:	2300      	movs	r3, #0
 800234e:	4a10      	ldr	r2, [pc, #64]	; (8002390 <TIM3_IRQHandler+0x44>)
 8002350:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002354:	b289      	uxth	r1, r1
 8002356:	b129      	cbz	r1, 8002364 <TIM3_IRQHandler+0x18>
 8002358:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 800235c:	b289      	uxth	r1, r1
 800235e:	3901      	subs	r1, #1
 8002360:	b289      	uxth	r1, r1
 8002362:	e007      	b.n	8002374 <TIM3_IRQHandler+0x28>
 8002364:	490b      	ldr	r1, [pc, #44]	; (8002394 <TIM3_IRQHandler+0x48>)
 8002366:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 800236a:	b289      	uxth	r1, r1
 800236c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002370:	4a09      	ldr	r2, [pc, #36]	; (8002398 <TIM3_IRQHandler+0x4c>)
 8002372:	2101      	movs	r1, #1
 8002374:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002378:	3301      	adds	r3, #1
 800237a:	2b04      	cmp	r3, #4
 800237c:	d1e7      	bne.n	800234e <TIM3_IRQHandler+0x2>
 800237e:	4b07      	ldr	r3, [pc, #28]	; (800239c <TIM3_IRQHandler+0x50>)
 8002380:	4807      	ldr	r0, [pc, #28]	; (80023a0 <TIM3_IRQHandler+0x54>)
 8002382:	681a      	ldr	r2, [r3, #0]
 8002384:	2101      	movs	r1, #1
 8002386:	3201      	adds	r2, #1
 8002388:	601a      	str	r2, [r3, #0]
 800238a:	f7ff bf8e 	b.w	80022aa <TIM_ClearITPendingBit>
 800238e:	bf00      	nop
 8002390:	20000e68 	.word	0x20000e68
 8002394:	20000e5c 	.word	0x20000e5c
 8002398:	20000e54 	.word	0x20000e54
 800239c:	20000e64 	.word	0x20000e64
 80023a0:	40000400 	.word	0x40000400

080023a4 <timer_get_time>:
 80023a4:	b082      	sub	sp, #8
 80023a6:	b672      	cpsid	i
 80023a8:	4b04      	ldr	r3, [pc, #16]	; (80023bc <timer_get_time+0x18>)
 80023aa:	681b      	ldr	r3, [r3, #0]
 80023ac:	9301      	str	r3, [sp, #4]
 80023ae:	b662      	cpsie	i
 80023b0:	9801      	ldr	r0, [sp, #4]
 80023b2:	230a      	movs	r3, #10
 80023b4:	fbb0 f0f3 	udiv	r0, r0, r3
 80023b8:	b002      	add	sp, #8
 80023ba:	4770      	bx	lr
 80023bc:	20000e64 	.word	0x20000e64

080023c0 <timer_delay_ms>:
 80023c0:	b513      	push	{r0, r1, r4, lr}
 80023c2:	4604      	mov	r4, r0
 80023c4:	f7ff ffee 	bl	80023a4 <timer_get_time>
 80023c8:	4420      	add	r0, r4
 80023ca:	9001      	str	r0, [sp, #4]
 80023cc:	9c01      	ldr	r4, [sp, #4]
 80023ce:	f7ff ffe9 	bl	80023a4 <timer_get_time>
 80023d2:	4284      	cmp	r4, r0
 80023d4:	d902      	bls.n	80023dc <timer_delay_ms+0x1c>
 80023d6:	f7ff fc3f 	bl	8001c58 <sleep>
 80023da:	e7f7      	b.n	80023cc <timer_delay_ms+0xc>
 80023dc:	b002      	add	sp, #8
 80023de:	bd10      	pop	{r4, pc}

080023e0 <event_timer_set_period>:
 80023e0:	b672      	cpsid	i
 80023e2:	230a      	movs	r3, #10
 80023e4:	4359      	muls	r1, r3
 80023e6:	4b06      	ldr	r3, [pc, #24]	; (8002400 <event_timer_set_period+0x20>)
 80023e8:	b289      	uxth	r1, r1
 80023ea:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80023ee:	4b05      	ldr	r3, [pc, #20]	; (8002404 <event_timer_set_period+0x24>)
 80023f0:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80023f4:	4b04      	ldr	r3, [pc, #16]	; (8002408 <event_timer_set_period+0x28>)
 80023f6:	2200      	movs	r2, #0
 80023f8:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80023fc:	b662      	cpsie	i
 80023fe:	4770      	bx	lr
 8002400:	20000e68 	.word	0x20000e68
 8002404:	20000e5c 	.word	0x20000e5c
 8002408:	20000e54 	.word	0x20000e54

0800240c <event_timer_wait>:
 800240c:	b510      	push	{r4, lr}
 800240e:	4604      	mov	r4, r0
 8002410:	4b06      	ldr	r3, [pc, #24]	; (800242c <event_timer_wait+0x20>)
 8002412:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002416:	b292      	uxth	r2, r2
 8002418:	b912      	cbnz	r2, 8002420 <event_timer_wait+0x14>
 800241a:	f7ff fc1d 	bl	8001c58 <sleep>
 800241e:	e7f7      	b.n	8002410 <event_timer_wait+0x4>
 8002420:	b672      	cpsid	i
 8002422:	2200      	movs	r2, #0
 8002424:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002428:	b662      	cpsie	i
 800242a:	bd10      	pop	{r4, pc}
 800242c:	20000e54 	.word	0x20000e54

08002430 <GPIO_Init>:
 8002430:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002432:	bf00      	nop
 8002434:	bf00      	nop
 8002436:	bf00      	nop
 8002438:	bf00      	nop
 800243a:	2300      	movs	r3, #0
 800243c:	680e      	ldr	r6, [r1, #0]
 800243e:	461a      	mov	r2, r3
 8002440:	2501      	movs	r5, #1
 8002442:	4095      	lsls	r5, r2
 8002444:	ea05 0406 	and.w	r4, r5, r6
 8002448:	42ac      	cmp	r4, r5
 800244a:	d131      	bne.n	80024b0 <GPIO_Init+0x80>
 800244c:	790d      	ldrb	r5, [r1, #4]
 800244e:	1e6f      	subs	r7, r5, #1
 8002450:	b2ff      	uxtb	r7, r7
 8002452:	2f01      	cmp	r7, #1
 8002454:	d81c      	bhi.n	8002490 <GPIO_Init+0x60>
 8002456:	bf00      	nop
 8002458:	f04f 0c03 	mov.w	ip, #3
 800245c:	6887      	ldr	r7, [r0, #8]
 800245e:	fa0c fc03 	lsl.w	ip, ip, r3
 8002462:	ea27 070c 	bic.w	r7, r7, ip
 8002466:	6087      	str	r7, [r0, #8]
 8002468:	f891 c005 	ldrb.w	ip, [r1, #5]
 800246c:	6887      	ldr	r7, [r0, #8]
 800246e:	fa0c fc03 	lsl.w	ip, ip, r3
 8002472:	ea4c 0707 	orr.w	r7, ip, r7
 8002476:	6087      	str	r7, [r0, #8]
 8002478:	bf00      	nop
 800247a:	8887      	ldrh	r7, [r0, #4]
 800247c:	b2bf      	uxth	r7, r7
 800247e:	ea27 0404 	bic.w	r4, r7, r4
 8002482:	8084      	strh	r4, [r0, #4]
 8002484:	798c      	ldrb	r4, [r1, #6]
 8002486:	8887      	ldrh	r7, [r0, #4]
 8002488:	4094      	lsls	r4, r2
 800248a:	433c      	orrs	r4, r7
 800248c:	b2a4      	uxth	r4, r4
 800248e:	8084      	strh	r4, [r0, #4]
 8002490:	2403      	movs	r4, #3
 8002492:	6807      	ldr	r7, [r0, #0]
 8002494:	409c      	lsls	r4, r3
 8002496:	43e4      	mvns	r4, r4
 8002498:	4027      	ands	r7, r4
 800249a:	6007      	str	r7, [r0, #0]
 800249c:	6807      	ldr	r7, [r0, #0]
 800249e:	409d      	lsls	r5, r3
 80024a0:	433d      	orrs	r5, r7
 80024a2:	6005      	str	r5, [r0, #0]
 80024a4:	68c5      	ldr	r5, [r0, #12]
 80024a6:	402c      	ands	r4, r5
 80024a8:	79cd      	ldrb	r5, [r1, #7]
 80024aa:	409d      	lsls	r5, r3
 80024ac:	432c      	orrs	r4, r5
 80024ae:	60c4      	str	r4, [r0, #12]
 80024b0:	3201      	adds	r2, #1
 80024b2:	2a10      	cmp	r2, #16
 80024b4:	f103 0302 	add.w	r3, r3, #2
 80024b8:	d1c2      	bne.n	8002440 <GPIO_Init+0x10>
 80024ba:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024bc <GPIO_SetBits>:
 80024bc:	bf00      	nop
 80024be:	bf00      	nop
 80024c0:	6181      	str	r1, [r0, #24]
 80024c2:	4770      	bx	lr

080024c4 <GPIO_ResetBits>:
 80024c4:	bf00      	nop
 80024c6:	bf00      	nop
 80024c8:	8501      	strh	r1, [r0, #40]	; 0x28
 80024ca:	4770      	bx	lr

080024cc <GPIO_PinAFConfig>:
 80024cc:	b510      	push	{r4, lr}
 80024ce:	bf00      	nop
 80024d0:	bf00      	nop
 80024d2:	bf00      	nop
 80024d4:	f001 0307 	and.w	r3, r1, #7
 80024d8:	08c9      	lsrs	r1, r1, #3
 80024da:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80024de:	009b      	lsls	r3, r3, #2
 80024e0:	6a04      	ldr	r4, [r0, #32]
 80024e2:	210f      	movs	r1, #15
 80024e4:	4099      	lsls	r1, r3
 80024e6:	ea24 0101 	bic.w	r1, r4, r1
 80024ea:	6201      	str	r1, [r0, #32]
 80024ec:	6a01      	ldr	r1, [r0, #32]
 80024ee:	fa02 f303 	lsl.w	r3, r2, r3
 80024f2:	430b      	orrs	r3, r1
 80024f4:	6203      	str	r3, [r0, #32]
 80024f6:	bd10      	pop	{r4, pc}

080024f8 <gpio_init>:
 80024f8:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 80024fc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002500:	2101      	movs	r1, #1
 8002502:	f7ff fdbb 	bl	800207c <RCC_AHBPeriphClockCmd>
 8002506:	4d21      	ldr	r5, [pc, #132]	; (800258c <gpio_init+0x94>)
 8002508:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800250c:	2101      	movs	r1, #1
 800250e:	f7ff fdb5 	bl	800207c <RCC_AHBPeriphClockCmd>
 8002512:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002516:	2101      	movs	r1, #1
 8002518:	f7ff fdb0 	bl	800207c <RCC_AHBPeriphClockCmd>
 800251c:	2400      	movs	r4, #0
 800251e:	2603      	movs	r6, #3
 8002520:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002524:	2701      	movs	r7, #1
 8002526:	4628      	mov	r0, r5
 8002528:	4669      	mov	r1, sp
 800252a:	f88d 7004 	strb.w	r7, [sp, #4]
 800252e:	f8cd 9000 	str.w	r9, [sp]
 8002532:	f88d 4006 	strb.w	r4, [sp, #6]
 8002536:	f88d 6005 	strb.w	r6, [sp, #5]
 800253a:	f88d 4007 	strb.w	r4, [sp, #7]
 800253e:	f7ff ff77 	bl	8002430 <GPIO_Init>
 8002542:	f88d 7004 	strb.w	r7, [sp, #4]
 8002546:	4f12      	ldr	r7, [pc, #72]	; (8002590 <gpio_init+0x98>)
 8002548:	f88d 4006 	strb.w	r4, [sp, #6]
 800254c:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002550:	4638      	mov	r0, r7
 8002552:	4669      	mov	r1, sp
 8002554:	f8cd 8000 	str.w	r8, [sp]
 8002558:	f88d 6005 	strb.w	r6, [sp, #5]
 800255c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002560:	f7ff ff66 	bl	8002430 <GPIO_Init>
 8002564:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002568:	4628      	mov	r0, r5
 800256a:	4669      	mov	r1, sp
 800256c:	9300      	str	r3, [sp, #0]
 800256e:	f88d 4004 	strb.w	r4, [sp, #4]
 8002572:	f88d 6005 	strb.w	r6, [sp, #5]
 8002576:	f88d 4007 	strb.w	r4, [sp, #7]
 800257a:	f7ff ff59 	bl	8002430 <GPIO_Init>
 800257e:	f8c5 9018 	str.w	r9, [r5, #24]
 8002582:	f8c7 8018 	str.w	r8, [r7, #24]
 8002586:	b003      	add	sp, #12
 8002588:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800258c:	48000400 	.word	0x48000400
 8002590:	48000800 	.word	0x48000800

08002594 <led_on>:
 8002594:	0402      	lsls	r2, r0, #16
 8002596:	d503      	bpl.n	80025a0 <led_on+0xc>
 8002598:	4b05      	ldr	r3, [pc, #20]	; (80025b0 <led_on+0x1c>)
 800259a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800259e:	619a      	str	r2, [r3, #24]
 80025a0:	0483      	lsls	r3, r0, #18
 80025a2:	d503      	bpl.n	80025ac <led_on+0x18>
 80025a4:	4b03      	ldr	r3, [pc, #12]	; (80025b4 <led_on+0x20>)
 80025a6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80025aa:	851a      	strh	r2, [r3, #40]	; 0x28
 80025ac:	4770      	bx	lr
 80025ae:	bf00      	nop
 80025b0:	48000400 	.word	0x48000400
 80025b4:	48000800 	.word	0x48000800

080025b8 <led_off>:
 80025b8:	0403      	lsls	r3, r0, #16
 80025ba:	d503      	bpl.n	80025c4 <led_off+0xc>
 80025bc:	4b05      	ldr	r3, [pc, #20]	; (80025d4 <led_off+0x1c>)
 80025be:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80025c2:	851a      	strh	r2, [r3, #40]	; 0x28
 80025c4:	0481      	lsls	r1, r0, #18
 80025c6:	d503      	bpl.n	80025d0 <led_off+0x18>
 80025c8:	4b03      	ldr	r3, [pc, #12]	; (80025d8 <led_off+0x20>)
 80025ca:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80025ce:	619a      	str	r2, [r3, #24]
 80025d0:	4770      	bx	lr
 80025d2:	bf00      	nop
 80025d4:	48000400 	.word	0x48000400
 80025d8:	48000800 	.word	0x48000800

080025dc <get_key>:
 80025dc:	4b02      	ldr	r3, [pc, #8]	; (80025e8 <get_key+0xc>)
 80025de:	8a18      	ldrh	r0, [r3, #16]
 80025e0:	43c0      	mvns	r0, r0
 80025e2:	f400 7000 	and.w	r0, r0, #512	; 0x200
 80025e6:	4770      	bx	lr
 80025e8:	48000400 	.word	0x48000400

080025ec <drv8834_run>:
 80025ec:	1e02      	subs	r2, r0, #0
 80025ee:	4b18      	ldr	r3, [pc, #96]	; (8002650 <drv8834_run+0x64>)
 80025f0:	dd09      	ble.n	8002606 <drv8834_run+0x1a>
 80025f2:	6998      	ldr	r0, [r3, #24]
 80025f4:	f040 0008 	orr.w	r0, r0, #8
 80025f8:	6198      	str	r0, [r3, #24]
 80025fa:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80025fe:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002602:	6198      	str	r0, [r3, #24]
 8002604:	e00b      	b.n	800261e <drv8834_run+0x32>
 8002606:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002608:	b280      	uxth	r0, r0
 800260a:	f040 0008 	orr.w	r0, r0, #8
 800260e:	8518      	strh	r0, [r3, #40]	; 0x28
 8002610:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002614:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002618:	4252      	negs	r2, r2
 800261a:	8518      	strh	r0, [r3, #40]	; 0x28
 800261c:	b212      	sxth	r2, r2
 800261e:	2900      	cmp	r1, #0
 8002620:	4b0b      	ldr	r3, [pc, #44]	; (8002650 <drv8834_run+0x64>)
 8002622:	dd05      	ble.n	8002630 <drv8834_run+0x44>
 8002624:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002626:	b280      	uxth	r0, r0
 8002628:	f040 0020 	orr.w	r0, r0, #32
 800262c:	8518      	strh	r0, [r3, #40]	; 0x28
 800262e:	e005      	b.n	800263c <drv8834_run+0x50>
 8002630:	6998      	ldr	r0, [r3, #24]
 8002632:	4249      	negs	r1, r1
 8002634:	f040 0020 	orr.w	r0, r0, #32
 8002638:	6198      	str	r0, [r3, #24]
 800263a:	b209      	sxth	r1, r1
 800263c:	2964      	cmp	r1, #100	; 0x64
 800263e:	bfb4      	ite	lt
 8002640:	4608      	movlt	r0, r1
 8002642:	2064      	movge	r0, #100	; 0x64
 8002644:	2a64      	cmp	r2, #100	; 0x64
 8002646:	bfb4      	ite	lt
 8002648:	4611      	movlt	r1, r2
 800264a:	2164      	movge	r1, #100	; 0x64
 800264c:	f000 b844 	b.w	80026d8 <pwm_set>
 8002650:	48000400 	.word	0x48000400

08002654 <drv8834_init>:
 8002654:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8002656:	4d1f      	ldr	r5, [pc, #124]	; (80026d4 <drv8834_init+0x80>)
 8002658:	2400      	movs	r4, #0
 800265a:	2603      	movs	r6, #3
 800265c:	2338      	movs	r3, #56	; 0x38
 800265e:	2701      	movs	r7, #1
 8002660:	4628      	mov	r0, r5
 8002662:	4669      	mov	r1, sp
 8002664:	9300      	str	r3, [sp, #0]
 8002666:	f88d 7004 	strb.w	r7, [sp, #4]
 800266a:	f88d 4006 	strb.w	r4, [sp, #6]
 800266e:	f88d 6005 	strb.w	r6, [sp, #5]
 8002672:	f88d 4007 	strb.w	r4, [sp, #7]
 8002676:	f7ff fedb 	bl	8002430 <GPIO_Init>
 800267a:	2308      	movs	r3, #8
 800267c:	9300      	str	r3, [sp, #0]
 800267e:	4628      	mov	r0, r5
 8002680:	2302      	movs	r3, #2
 8002682:	4669      	mov	r1, sp
 8002684:	f88d 3004 	strb.w	r3, [sp, #4]
 8002688:	f88d 4006 	strb.w	r4, [sp, #6]
 800268c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002690:	f88d 4007 	strb.w	r4, [sp, #7]
 8002694:	f7ff fecc 	bl	8002430 <GPIO_Init>
 8002698:	220f      	movs	r2, #15
 800269a:	4628      	mov	r0, r5
 800269c:	4631      	mov	r1, r6
 800269e:	f7ff ff15 	bl	80024cc <GPIO_PinAFConfig>
 80026a2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80026a6:	4669      	mov	r1, sp
 80026a8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80026ac:	9300      	str	r3, [sp, #0]
 80026ae:	f88d 7004 	strb.w	r7, [sp, #4]
 80026b2:	f88d 4006 	strb.w	r4, [sp, #6]
 80026b6:	f88d 6005 	strb.w	r6, [sp, #5]
 80026ba:	f88d 4007 	strb.w	r4, [sp, #7]
 80026be:	f7ff feb7 	bl	8002430 <GPIO_Init>
 80026c2:	2310      	movs	r3, #16
 80026c4:	852b      	strh	r3, [r5, #40]	; 0x28
 80026c6:	4620      	mov	r0, r4
 80026c8:	4621      	mov	r1, r4
 80026ca:	f7ff ff8f 	bl	80025ec <drv8834_run>
 80026ce:	b003      	add	sp, #12
 80026d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80026d2:	bf00      	nop
 80026d4:	48000400 	.word	0x48000400

080026d8 <pwm_set>:
 80026d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026dc:	b086      	sub	sp, #24
 80026de:	2370      	movs	r3, #112	; 0x70
 80026e0:	9301      	str	r3, [sp, #4]
 80026e2:	2301      	movs	r3, #1
 80026e4:	f8ad 3008 	strh.w	r3, [sp, #8]
 80026e8:	2304      	movs	r3, #4
 80026ea:	f8ad 300a 	strh.w	r3, [sp, #10]
 80026ee:	4f17      	ldr	r7, [pc, #92]	; (800274c <pwm_set+0x74>)
 80026f0:	4c17      	ldr	r4, [pc, #92]	; (8002750 <pwm_set+0x78>)
 80026f2:	2302      	movs	r3, #2
 80026f4:	f8ad 3010 	strh.w	r3, [sp, #16]
 80026f8:	2300      	movs	r3, #0
 80026fa:	f8ad 3012 	strh.w	r3, [sp, #18]
 80026fe:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002702:	683b      	ldr	r3, [r7, #0]
 8002704:	f242 7610 	movw	r6, #10000	; 0x2710
 8002708:	fbb3 f3f6 	udiv	r3, r3, r6
 800270c:	3b02      	subs	r3, #2
 800270e:	4358      	muls	r0, r3
 8002710:	2564      	movs	r5, #100	; 0x64
 8002712:	fbb0 f3f5 	udiv	r3, r0, r5
 8002716:	f44f 7280 	mov.w	r2, #256	; 0x100
 800271a:	4620      	mov	r0, r4
 800271c:	4688      	mov	r8, r1
 800271e:	a901      	add	r1, sp, #4
 8002720:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002724:	9303      	str	r3, [sp, #12]
 8002726:	f7ff fd31 	bl	800218c <TIM_OC1Init>
 800272a:	683b      	ldr	r3, [r7, #0]
 800272c:	fbb3 f6f6 	udiv	r6, r3, r6
 8002730:	3e02      	subs	r6, #2
 8002732:	fb06 f808 	mul.w	r8, r6, r8
 8002736:	fbb8 f5f5 	udiv	r5, r8, r5
 800273a:	4620      	mov	r0, r4
 800273c:	a901      	add	r1, sp, #4
 800273e:	9503      	str	r5, [sp, #12]
 8002740:	f7ff fd6a 	bl	8002218 <TIM_OC2Init>
 8002744:	b006      	add	sp, #24
 8002746:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800274a:	bf00      	nop
 800274c:	20000110 	.word	0x20000110
 8002750:	40012c00 	.word	0x40012c00

08002754 <pwm_init>:
 8002754:	b530      	push	{r4, r5, lr}
 8002756:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800275a:	b087      	sub	sp, #28
 800275c:	2101      	movs	r1, #1
 800275e:	f7ff fc9b 	bl	8002098 <RCC_APB2PeriphClockCmd>
 8002762:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002766:	2101      	movs	r1, #1
 8002768:	f7ff fc88 	bl	800207c <RCC_AHBPeriphClockCmd>
 800276c:	4c1d      	ldr	r4, [pc, #116]	; (80027e4 <pwm_init+0x90>)
 800276e:	4d1e      	ldr	r5, [pc, #120]	; (80027e8 <pwm_init+0x94>)
 8002770:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002774:	9301      	str	r3, [sp, #4]
 8002776:	2302      	movs	r3, #2
 8002778:	f88d 3008 	strb.w	r3, [sp, #8]
 800277c:	4620      	mov	r0, r4
 800277e:	2303      	movs	r3, #3
 8002780:	a901      	add	r1, sp, #4
 8002782:	f88d 3009 	strb.w	r3, [sp, #9]
 8002786:	f7ff fe53 	bl	8002430 <GPIO_Init>
 800278a:	4620      	mov	r0, r4
 800278c:	210d      	movs	r1, #13
 800278e:	2206      	movs	r2, #6
 8002790:	f7ff fe9c 	bl	80024cc <GPIO_PinAFConfig>
 8002794:	4620      	mov	r0, r4
 8002796:	210e      	movs	r1, #14
 8002798:	2206      	movs	r2, #6
 800279a:	f7ff fe97 	bl	80024cc <GPIO_PinAFConfig>
 800279e:	4b13      	ldr	r3, [pc, #76]	; (80027ec <pwm_init+0x98>)
 80027a0:	681a      	ldr	r2, [r3, #0]
 80027a2:	f242 7310 	movw	r3, #10000	; 0x2710
 80027a6:	fbb2 f3f3 	udiv	r3, r2, r3
 80027aa:	2400      	movs	r4, #0
 80027ac:	3b01      	subs	r3, #1
 80027ae:	4628      	mov	r0, r5
 80027b0:	a903      	add	r1, sp, #12
 80027b2:	9304      	str	r3, [sp, #16]
 80027b4:	f8ad 400c 	strh.w	r4, [sp, #12]
 80027b8:	f8ad 400e 	strh.w	r4, [sp, #14]
 80027bc:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027c0:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027c4:	f7ff fc84 	bl	80020d0 <TIM_TimeBaseInit>
 80027c8:	4620      	mov	r0, r4
 80027ca:	4621      	mov	r1, r4
 80027cc:	f7ff ff84 	bl	80026d8 <pwm_set>
 80027d0:	4628      	mov	r0, r5
 80027d2:	2101      	movs	r1, #1
 80027d4:	f7ff fccc 	bl	8002170 <TIM_Cmd>
 80027d8:	4628      	mov	r0, r5
 80027da:	2101      	movs	r1, #1
 80027dc:	f7ff fd5a 	bl	8002294 <TIM_CtrlPWMOutputs>
 80027e0:	b007      	add	sp, #28
 80027e2:	bd30      	pop	{r4, r5, pc}
 80027e4:	48000400 	.word	0x48000400
 80027e8:	40012c00 	.word	0x40012c00
 80027ec:	20000110 	.word	0x20000110

080027f0 <_init>:
 80027f0:	e1a0c00d 	mov	ip, sp
 80027f4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80027f8:	e24cb004 	sub	fp, ip, #4
 80027fc:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002800:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002804:	e12fff1e 	bx	lr

08002808 <_fini>:
 8002808:	e1a0c00d 	mov	ip, sp
 800280c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002810:	e24cb004 	sub	fp, ip, #4
 8002814:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002818:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800281c:	e12fff1e 	bx	lr
 8002820:	69647473 	.word	0x69647473
 8002824:	6e69206f 	.word	0x6e69206f
 8002828:	64207469 	.word	0x64207469
 800282c:	0a656e6f 	.word	0x0a656e6f
 8002830:	00          	.byte	0x00
 8002831:	0a          	.byte	0x0a
 8002832:	6577      	.short	0x6577
 8002834:	6d6f636c 	.word	0x6d6f636c
 8002838:	6f742065 	.word	0x6f742065
 800283c:	7a755320 	.word	0x7a755320
 8002840:	4f616875 	.word	0x4f616875
 8002844:	5f5e2053 	.word	0x5f5e2053
 8002848:	2e32205e 	.word	0x2e32205e
 800284c:	0a362e30 	.word	0x0a362e30
 8002850:	4c495542 	.word	0x4c495542
 8002854:	65462044 	.word	0x65462044
 8002858:	37202062 	.word	0x37202062
 800285c:	31303220 	.word	0x31303220
 8002860:	38302036 	.word	0x38302036
 8002864:	3a39323a 	.word	0x3a39323a
 8002868:	000a3832 	.word	0x000a3832
 800286c:	74737973 	.word	0x74737973
 8002870:	61206d65 	.word	0x61206d65
 8002874:	74726f62 	.word	0x74726f62
 8002878:	000a6465 	.word	0x000a6465
 800287c:	6f727265 	.word	0x6f727265
 8002880:	6f632072 	.word	0x6f632072
 8002884:	25206564 	.word	0x25206564
 8002888:	75253a75 	.word	0x75253a75
 800288c:	0000000a 	.word	0x0000000a

08002890 <__EH_FRAME_BEGIN__>:
 8002890:	00000000                                ....
