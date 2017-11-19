
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <thread_ending>:
 8000188:	b672      	cpsid	i
 800018a:	4b05      	ldr	r3, [pc, #20]	; (80001a0 <thread_ending+0x18>)
 800018c:	4a05      	ldr	r2, [pc, #20]	; (80001a4 <thread_ending+0x1c>)
 800018e:	681b      	ldr	r3, [r3, #0]
 8000190:	210c      	movs	r1, #12
 8000192:	fb01 2303 	mla	r3, r1, r3, r2
 8000196:	2200      	movs	r2, #0
 8000198:	605a      	str	r2, [r3, #4]
 800019a:	b662      	cpsie	i
 800019c:	bf00      	nop
 800019e:	e7fd      	b.n	800019c <thread_ending+0x14>
 80001a0:	2000022c 	.word	0x2000022c
 80001a4:	200001e4 	.word	0x200001e4

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f002 f91f 	bl	80023ec <sleep>
 80001ae:	e7fc      	b.n	80001aa <null_thread+0x2>

080001b0 <scheduler>:
 80001b0:	b570      	push	{r4, r5, r6, lr}
 80001b2:	2200      	movs	r2, #0
 80001b4:	4611      	mov	r1, r2
 80001b6:	4b15      	ldr	r3, [pc, #84]	; (800020c <scheduler+0x5c>)
 80001b8:	200c      	movs	r0, #12
 80001ba:	fb00 f501 	mul.w	r5, r0, r1
 80001be:	195e      	adds	r6, r3, r5
 80001c0:	6874      	ldr	r4, [r6, #4]
 80001c2:	f014 0f02 	tst.w	r4, #2
 80001c6:	461c      	mov	r4, r3
 80001c8:	d10a      	bne.n	80001e0 <scheduler+0x30>
 80001ca:	6876      	ldr	r6, [r6, #4]
 80001cc:	07f6      	lsls	r6, r6, #31
 80001ce:	d507      	bpl.n	80001e0 <scheduler+0x30>
 80001d0:	4350      	muls	r0, r2
 80001d2:	5b5d      	ldrh	r5, [r3, r5]
 80001d4:	5a18      	ldrh	r0, [r3, r0]
 80001d6:	b2ad      	uxth	r5, r5
 80001d8:	b280      	uxth	r0, r0
 80001da:	4285      	cmp	r5, r0
 80001dc:	bf38      	it	cc
 80001de:	460a      	movcc	r2, r1
 80001e0:	200c      	movs	r0, #12
 80001e2:	4348      	muls	r0, r1
 80001e4:	5a1d      	ldrh	r5, [r3, r0]
 80001e6:	b2ad      	uxth	r5, r5
 80001e8:	b125      	cbz	r5, 80001f4 <scheduler+0x44>
 80001ea:	5a1d      	ldrh	r5, [r3, r0]
 80001ec:	b2ad      	uxth	r5, r5
 80001ee:	3d01      	subs	r5, #1
 80001f0:	b2ad      	uxth	r5, r5
 80001f2:	521d      	strh	r5, [r3, r0]
 80001f4:	3101      	adds	r1, #1
 80001f6:	2906      	cmp	r1, #6
 80001f8:	d1dd      	bne.n	80001b6 <scheduler+0x6>
 80001fa:	230c      	movs	r3, #12
 80001fc:	4353      	muls	r3, r2
 80001fe:	18e1      	adds	r1, r4, r3
 8000200:	8849      	ldrh	r1, [r1, #2]
 8000202:	b289      	uxth	r1, r1
 8000204:	52e1      	strh	r1, [r4, r3]
 8000206:	4b02      	ldr	r3, [pc, #8]	; (8000210 <scheduler+0x60>)
 8000208:	601a      	str	r2, [r3, #0]
 800020a:	bd70      	pop	{r4, r5, r6, pc}
 800020c:	200001e4 	.word	0x200001e4
 8000210:	2000022c 	.word	0x2000022c

08000214 <SysTick_Handler>:
 8000214:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000218:	f3ef 8208 	mrs	r2, MSP
 800021c:	4c0d      	ldr	r4, [pc, #52]	; (8000254 <SysTick_Handler+0x40>)
 800021e:	4d0e      	ldr	r5, [pc, #56]	; (8000258 <SysTick_Handler+0x44>)
 8000220:	6823      	ldr	r3, [r4, #0]
 8000222:	3301      	adds	r3, #1
 8000224:	d005      	beq.n	8000232 <SysTick_Handler+0x1e>
 8000226:	6823      	ldr	r3, [r4, #0]
 8000228:	210c      	movs	r1, #12
 800022a:	fb01 5303 	mla	r3, r1, r3, r5
 800022e:	609a      	str	r2, [r3, #8]
 8000230:	e001      	b.n	8000236 <SysTick_Handler+0x22>
 8000232:	2300      	movs	r3, #0
 8000234:	6023      	str	r3, [r4, #0]
 8000236:	f7ff ffbb 	bl	80001b0 <scheduler>
 800023a:	6823      	ldr	r3, [r4, #0]
 800023c:	220c      	movs	r2, #12
 800023e:	fb02 5503 	mla	r5, r2, r3, r5
 8000242:	f06f 0306 	mvn.w	r3, #6
 8000246:	68aa      	ldr	r2, [r5, #8]
 8000248:	469e      	mov	lr, r3
 800024a:	f382 8808 	msr	MSP, r2
 800024e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000252:	4770      	bx	lr
 8000254:	2000022c 	.word	0x2000022c
 8000258:	200001e4 	.word	0x200001e4

0800025c <sched_off>:
 800025c:	b672      	cpsid	i
 800025e:	4770      	bx	lr

08000260 <sched_on>:
 8000260:	b662      	cpsie	i
 8000262:	4770      	bx	lr

08000264 <yield>:
 8000264:	bf00      	nop
 8000266:	4770      	bx	lr

08000268 <get_thread_id>:
 8000268:	b082      	sub	sp, #8
 800026a:	b672      	cpsid	i
 800026c:	4b03      	ldr	r3, [pc, #12]	; (800027c <get_thread_id+0x14>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	9301      	str	r3, [sp, #4]
 8000272:	b662      	cpsie	i
 8000274:	9801      	ldr	r0, [sp, #4]
 8000276:	b002      	add	sp, #8
 8000278:	4770      	bx	lr
 800027a:	bf00      	nop
 800027c:	2000022c 	.word	0x2000022c

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f002 f8a1 	bl	80023c8 <sys_tick_init>
 8000286:	bf00      	nop
 8000288:	e7fd      	b.n	8000286 <kernel_start+0x6>
	...

0800028c <create_thread>:
 800028c:	f022 0203 	bic.w	r2, r2, #3
 8000290:	3a40      	subs	r2, #64	; 0x40
 8000292:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8000296:	eb01 0c02 	add.w	ip, r1, r2
 800029a:	f102 0834 	add.w	r8, r2, #52	; 0x34
 800029e:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80002a2:	323c      	adds	r2, #60	; 0x3c
 80002a4:	4488      	add	r8, r1
 80002a6:	4489      	add	r9, r1
 80002a8:	4607      	mov	r7, r0
 80002aa:	4411      	add	r1, r2
 80002ac:	2200      	movs	r2, #0
 80002ae:	b672      	cpsid	i
 80002b0:	4e11      	ldr	r6, [pc, #68]	; (80002f8 <create_thread+0x6c>)
 80002b2:	250c      	movs	r5, #12
 80002b4:	4355      	muls	r5, r2
 80002b6:	1974      	adds	r4, r6, r5
 80002b8:	6860      	ldr	r0, [r4, #4]
 80002ba:	07c0      	lsls	r0, r0, #31
 80002bc:	d412      	bmi.n	80002e4 <create_thread+0x58>
 80002be:	480f      	ldr	r0, [pc, #60]	; (80002fc <create_thread+0x70>)
 80002c0:	f8c4 c008 	str.w	ip, [r4, #8]
 80002c4:	f8c8 0000 	str.w	r0, [r8]
 80002c8:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80002cc:	f8c9 7000 	str.w	r7, [r9]
 80002d0:	2b05      	cmp	r3, #5
 80002d2:	bf98      	it	ls
 80002d4:	2306      	movls	r3, #6
 80002d6:	6008      	str	r0, [r1, #0]
 80002d8:	2001      	movs	r0, #1
 80002da:	8063      	strh	r3, [r4, #2]
 80002dc:	5373      	strh	r3, [r6, r5]
 80002de:	6060      	str	r0, [r4, #4]
 80002e0:	4610      	mov	r0, r2
 80002e2:	e000      	b.n	80002e6 <create_thread+0x5a>
 80002e4:	2006      	movs	r0, #6
 80002e6:	b662      	cpsie	i
 80002e8:	3201      	adds	r2, #1
 80002ea:	2a06      	cmp	r2, #6
 80002ec:	d001      	beq.n	80002f2 <create_thread+0x66>
 80002ee:	2806      	cmp	r0, #6
 80002f0:	d0dd      	beq.n	80002ae <create_thread+0x22>
 80002f2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80002f6:	bf00      	nop
 80002f8:	200001e4 	.word	0x200001e4
 80002fc:	08000189 	.word	0x08000189

08000300 <kernel_init>:
 8000300:	b510      	push	{r4, lr}
 8000302:	2300      	movs	r3, #0
 8000304:	490b      	ldr	r1, [pc, #44]	; (8000334 <kernel_init+0x34>)
 8000306:	220c      	movs	r2, #12
 8000308:	435a      	muls	r2, r3
 800030a:	188c      	adds	r4, r1, r2
 800030c:	2000      	movs	r0, #0
 800030e:	6060      	str	r0, [r4, #4]
 8000310:	3301      	adds	r3, #1
 8000312:	2006      	movs	r0, #6
 8000314:	4283      	cmp	r3, r0
 8000316:	8060      	strh	r0, [r4, #2]
 8000318:	5288      	strh	r0, [r1, r2]
 800031a:	d1f3      	bne.n	8000304 <kernel_init+0x4>
 800031c:	4b06      	ldr	r3, [pc, #24]	; (8000338 <kernel_init+0x38>)
 800031e:	4807      	ldr	r0, [pc, #28]	; (800033c <kernel_init+0x3c>)
 8000320:	4907      	ldr	r1, [pc, #28]	; (8000340 <kernel_init+0x40>)
 8000322:	f04f 32ff 	mov.w	r2, #4294967295
 8000326:	601a      	str	r2, [r3, #0]
 8000328:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800032c:	2280      	movs	r2, #128	; 0x80
 800032e:	23ff      	movs	r3, #255	; 0xff
 8000330:	f7ff bfac 	b.w	800028c <create_thread>
 8000334:	200001e4 	.word	0x200001e4
 8000338:	2000022c 	.word	0x2000022c
 800033c:	080001a9 	.word	0x080001a9
 8000340:	20000230 	.word	0x20000230

08000344 <set_wait_state>:
 8000344:	b507      	push	{r0, r1, r2, lr}
 8000346:	f7ff ff8f 	bl	8000268 <get_thread_id>
 800034a:	9000      	str	r0, [sp, #0]
 800034c:	b672      	cpsid	i
 800034e:	4b0d      	ldr	r3, [pc, #52]	; (8000384 <set_wait_state+0x40>)
 8000350:	9a00      	ldr	r2, [sp, #0]
 8000352:	210c      	movs	r1, #12
 8000354:	fb01 3202 	mla	r2, r1, r2, r3
 8000358:	6851      	ldr	r1, [r2, #4]
 800035a:	f041 0102 	orr.w	r1, r1, #2
 800035e:	6051      	str	r1, [r2, #4]
 8000360:	b672      	cpsid	i
 8000362:	9a00      	ldr	r2, [sp, #0]
 8000364:	210c      	movs	r1, #12
 8000366:	fb01 3202 	mla	r2, r1, r2, r3
 800036a:	6852      	ldr	r2, [r2, #4]
 800036c:	9201      	str	r2, [sp, #4]
 800036e:	b662      	cpsie	i
 8000370:	9a01      	ldr	r2, [sp, #4]
 8000372:	0791      	lsls	r1, r2, #30
 8000374:	d500      	bpl.n	8000378 <set_wait_state+0x34>
 8000376:	bf00      	nop
 8000378:	9a01      	ldr	r2, [sp, #4]
 800037a:	0792      	lsls	r2, r2, #30
 800037c:	d4f0      	bmi.n	8000360 <set_wait_state+0x1c>
 800037e:	b003      	add	sp, #12
 8000380:	f85d fb04 	ldr.w	pc, [sp], #4
 8000384:	200001e4 	.word	0x200001e4

08000388 <wake_up_threads>:
 8000388:	2300      	movs	r3, #0
 800038a:	b672      	cpsid	i
 800038c:	4a06      	ldr	r2, [pc, #24]	; (80003a8 <wake_up_threads+0x20>)
 800038e:	210c      	movs	r1, #12
 8000390:	fb01 2203 	mla	r2, r1, r3, r2
 8000394:	6851      	ldr	r1, [r2, #4]
 8000396:	f021 0102 	bic.w	r1, r1, #2
 800039a:	6051      	str	r1, [r2, #4]
 800039c:	b662      	cpsie	i
 800039e:	3301      	adds	r3, #1
 80003a0:	2b06      	cmp	r3, #6
 80003a2:	d1f2      	bne.n	800038a <wake_up_threads+0x2>
 80003a4:	4770      	bx	lr
 80003a6:	bf00      	nop
 80003a8:	200001e4 	.word	0x200001e4

080003ac <messages_init>:
 80003ac:	4a0a      	ldr	r2, [pc, #40]	; (80003d8 <messages_init+0x2c>)
 80003ae:	2300      	movs	r3, #0
 80003b0:	b510      	push	{r4, lr}
 80003b2:	6013      	str	r3, [r2, #0]
 80003b4:	6053      	str	r3, [r2, #4]
 80003b6:	6093      	str	r3, [r2, #8]
 80003b8:	60d3      	str	r3, [r2, #12]
 80003ba:	6113      	str	r3, [r2, #16]
 80003bc:	6153      	str	r3, [r2, #20]
 80003be:	4c07      	ldr	r4, [pc, #28]	; (80003dc <messages_init+0x30>)
 80003c0:	0118      	lsls	r0, r3, #4
 80003c2:	1821      	adds	r1, r4, r0
 80003c4:	3301      	adds	r3, #1
 80003c6:	2200      	movs	r2, #0
 80003c8:	2b04      	cmp	r3, #4
 80003ca:	604a      	str	r2, [r1, #4]
 80003cc:	5022      	str	r2, [r4, r0]
 80003ce:	60ca      	str	r2, [r1, #12]
 80003d0:	608a      	str	r2, [r1, #8]
 80003d2:	d1f4      	bne.n	80003be <messages_init+0x12>
 80003d4:	bd10      	pop	{r4, pc}
 80003d6:	bf00      	nop
 80003d8:	200002b0 	.word	0x200002b0
 80003dc:	200002c8 	.word	0x200002c8

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 fdc3 	bl	8001f78 <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	20000308 	.word	0x20000308

08000400 <puts_>:
 8000400:	b510      	push	{r4, lr}
 8000402:	4604      	mov	r4, r0
 8000404:	4807      	ldr	r0, [pc, #28]	; (8000424 <puts_+0x24>)
 8000406:	f000 f8f2 	bl	80005ee <mutex_lock>
 800040a:	3c01      	subs	r4, #1
 800040c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000410:	b110      	cbz	r0, 8000418 <puts_+0x18>
 8000412:	f7ff ffe5 	bl	80003e0 <putc_>
 8000416:	e7f9      	b.n	800040c <puts_+0xc>
 8000418:	4802      	ldr	r0, [pc, #8]	; (8000424 <puts_+0x24>)
 800041a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800041e:	f000 b902 	b.w	8000626 <mutex_unlock>
 8000422:	bf00      	nop
 8000424:	20000314 	.word	0x20000314

08000428 <puti_>:
 8000428:	b530      	push	{r4, r5, lr}
 800042a:	b085      	sub	sp, #20
 800042c:	1e03      	subs	r3, r0, #0
 800042e:	f04f 0200 	mov.w	r2, #0
 8000432:	bfa8      	it	ge
 8000434:	4614      	movge	r4, r2
 8000436:	f88d 200f 	strb.w	r2, [sp, #15]
 800043a:	bfbc      	itt	lt
 800043c:	425b      	neglt	r3, r3
 800043e:	2401      	movlt	r4, #1
 8000440:	220a      	movs	r2, #10
 8000442:	210a      	movs	r1, #10
 8000444:	fb93 f5f1 	sdiv	r5, r3, r1
 8000448:	fb01 3315 	mls	r3, r1, r5, r3
 800044c:	a801      	add	r0, sp, #4
 800044e:	3330      	adds	r3, #48	; 0x30
 8000450:	5413      	strb	r3, [r2, r0]
 8000452:	1e51      	subs	r1, r2, #1
 8000454:	462b      	mov	r3, r5
 8000456:	b10d      	cbz	r5, 800045c <puti_+0x34>
 8000458:	460a      	mov	r2, r1
 800045a:	e7f2      	b.n	8000442 <puti_+0x1a>
 800045c:	b12c      	cbz	r4, 800046a <puti_+0x42>
 800045e:	ab04      	add	r3, sp, #16
 8000460:	440b      	add	r3, r1
 8000462:	222d      	movs	r2, #45	; 0x2d
 8000464:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000468:	460a      	mov	r2, r1
 800046a:	4410      	add	r0, r2
 800046c:	f7ff ffc8 	bl	8000400 <puts_>
 8000470:	b005      	add	sp, #20
 8000472:	bd30      	pop	{r4, r5, pc}

08000474 <putui_>:
 8000474:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000476:	2300      	movs	r3, #0
 8000478:	f88d 300f 	strb.w	r3, [sp, #15]
 800047c:	230a      	movs	r3, #10
 800047e:	240a      	movs	r4, #10
 8000480:	fbb0 f1f4 	udiv	r1, r0, r4
 8000484:	fb04 0011 	mls	r0, r4, r1, r0
 8000488:	aa01      	add	r2, sp, #4
 800048a:	3030      	adds	r0, #48	; 0x30
 800048c:	5498      	strb	r0, [r3, r2]
 800048e:	1e5c      	subs	r4, r3, #1
 8000490:	4608      	mov	r0, r1
 8000492:	b109      	cbz	r1, 8000498 <putui_+0x24>
 8000494:	4623      	mov	r3, r4
 8000496:	e7f2      	b.n	800047e <putui_+0xa>
 8000498:	18d0      	adds	r0, r2, r3
 800049a:	f7ff ffb1 	bl	8000400 <puts_>
 800049e:	b004      	add	sp, #16
 80004a0:	bd10      	pop	{r4, pc}

080004a2 <putx_>:
 80004a2:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80004a4:	2300      	movs	r3, #0
 80004a6:	f88d 300f 	strb.w	r3, [sp, #15]
 80004aa:	230a      	movs	r3, #10
 80004ac:	f000 010f 	and.w	r1, r0, #15
 80004b0:	2909      	cmp	r1, #9
 80004b2:	aa01      	add	r2, sp, #4
 80004b4:	bf94      	ite	ls
 80004b6:	3130      	addls	r1, #48	; 0x30
 80004b8:	3157      	addhi	r1, #87	; 0x57
 80004ba:	0900      	lsrs	r0, r0, #4
 80004bc:	54d1      	strb	r1, [r2, r3]
 80004be:	f103 31ff 	add.w	r1, r3, #4294967295
 80004c2:	d001      	beq.n	80004c8 <putx_+0x26>
 80004c4:	460b      	mov	r3, r1
 80004c6:	e7f1      	b.n	80004ac <putx_+0xa>
 80004c8:	18d0      	adds	r0, r2, r3
 80004ca:	f7ff ff99 	bl	8000400 <puts_>
 80004ce:	b005      	add	sp, #20
 80004d0:	f85d fb04 	ldr.w	pc, [sp], #4

080004d4 <printf_>:
 80004d4:	b40f      	push	{r0, r1, r2, r3}
 80004d6:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004d8:	ac06      	add	r4, sp, #24
 80004da:	4826      	ldr	r0, [pc, #152]	; (8000574 <printf_+0xa0>)
 80004dc:	f854 5b04 	ldr.w	r5, [r4], #4
 80004e0:	f000 f885 	bl	80005ee <mutex_lock>
 80004e4:	9401      	str	r4, [sp, #4]
 80004e6:	2400      	movs	r4, #0
 80004e8:	5d28      	ldrb	r0, [r5, r4]
 80004ea:	2800      	cmp	r0, #0
 80004ec:	d039      	beq.n	8000562 <printf_+0x8e>
 80004ee:	2825      	cmp	r0, #37	; 0x25
 80004f0:	d003      	beq.n	80004fa <printf_+0x26>
 80004f2:	f7ff ff75 	bl	80003e0 <putc_>
 80004f6:	3401      	adds	r4, #1
 80004f8:	e7f6      	b.n	80004e8 <printf_+0x14>
 80004fa:	192b      	adds	r3, r5, r4
 80004fc:	7858      	ldrb	r0, [r3, #1]
 80004fe:	2869      	cmp	r0, #105	; 0x69
 8000500:	d016      	beq.n	8000530 <printf_+0x5c>
 8000502:	d808      	bhi.n	8000516 <printf_+0x42>
 8000504:	2825      	cmp	r0, #37	; 0x25
 8000506:	d028      	beq.n	800055a <printf_+0x86>
 8000508:	2863      	cmp	r0, #99	; 0x63
 800050a:	d128      	bne.n	800055e <printf_+0x8a>
 800050c:	9b01      	ldr	r3, [sp, #4]
 800050e:	1d1a      	adds	r2, r3, #4
 8000510:	9201      	str	r2, [sp, #4]
 8000512:	7818      	ldrb	r0, [r3, #0]
 8000514:	e021      	b.n	800055a <printf_+0x86>
 8000516:	2875      	cmp	r0, #117	; 0x75
 8000518:	d011      	beq.n	800053e <printf_+0x6a>
 800051a:	2878      	cmp	r0, #120	; 0x78
 800051c:	d016      	beq.n	800054c <printf_+0x78>
 800051e:	2873      	cmp	r0, #115	; 0x73
 8000520:	d11d      	bne.n	800055e <printf_+0x8a>
 8000522:	9b01      	ldr	r3, [sp, #4]
 8000524:	1d1a      	adds	r2, r3, #4
 8000526:	6818      	ldr	r0, [r3, #0]
 8000528:	9201      	str	r2, [sp, #4]
 800052a:	f7ff ff69 	bl	8000400 <puts_>
 800052e:	e016      	b.n	800055e <printf_+0x8a>
 8000530:	9b01      	ldr	r3, [sp, #4]
 8000532:	1d1a      	adds	r2, r3, #4
 8000534:	6818      	ldr	r0, [r3, #0]
 8000536:	9201      	str	r2, [sp, #4]
 8000538:	f7ff ff76 	bl	8000428 <puti_>
 800053c:	e00f      	b.n	800055e <printf_+0x8a>
 800053e:	9b01      	ldr	r3, [sp, #4]
 8000540:	1d1a      	adds	r2, r3, #4
 8000542:	6818      	ldr	r0, [r3, #0]
 8000544:	9201      	str	r2, [sp, #4]
 8000546:	f7ff ff95 	bl	8000474 <putui_>
 800054a:	e008      	b.n	800055e <printf_+0x8a>
 800054c:	9b01      	ldr	r3, [sp, #4]
 800054e:	1d1a      	adds	r2, r3, #4
 8000550:	6818      	ldr	r0, [r3, #0]
 8000552:	9201      	str	r2, [sp, #4]
 8000554:	f7ff ffa5 	bl	80004a2 <putx_>
 8000558:	e001      	b.n	800055e <printf_+0x8a>
 800055a:	f7ff ff41 	bl	80003e0 <putc_>
 800055e:	3402      	adds	r4, #2
 8000560:	e7c2      	b.n	80004e8 <printf_+0x14>
 8000562:	4804      	ldr	r0, [pc, #16]	; (8000574 <printf_+0xa0>)
 8000564:	f000 f85f 	bl	8000626 <mutex_unlock>
 8000568:	b003      	add	sp, #12
 800056a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800056e:	b004      	add	sp, #16
 8000570:	4770      	bx	lr
 8000572:	bf00      	nop
 8000574:	20000310 	.word	0x20000310

08000578 <stdio_init>:
 8000578:	b510      	push	{r4, lr}
 800057a:	480e      	ldr	r0, [pc, #56]	; (80005b4 <stdio_init+0x3c>)
 800057c:	f000 f82d 	bl	80005da <mutex_init>
 8000580:	480d      	ldr	r0, [pc, #52]	; (80005b8 <stdio_init+0x40>)
 8000582:	f000 f82a 	bl	80005da <mutex_init>
 8000586:	480d      	ldr	r0, [pc, #52]	; (80005bc <stdio_init+0x44>)
 8000588:	f000 f827 	bl	80005da <mutex_init>
 800058c:	480c      	ldr	r0, [pc, #48]	; (80005c0 <stdio_init+0x48>)
 800058e:	f000 f824 	bl	80005da <mutex_init>
 8000592:	2408      	movs	r4, #8
 8000594:	2020      	movs	r0, #32
 8000596:	f7ff ff23 	bl	80003e0 <putc_>
 800059a:	3c01      	subs	r4, #1
 800059c:	d1fa      	bne.n	8000594 <stdio_init+0x1c>
 800059e:	2420      	movs	r4, #32
 80005a0:	200a      	movs	r0, #10
 80005a2:	f7ff ff1d 	bl	80003e0 <putc_>
 80005a6:	3c01      	subs	r4, #1
 80005a8:	d1fa      	bne.n	80005a0 <stdio_init+0x28>
 80005aa:	4806      	ldr	r0, [pc, #24]	; (80005c4 <stdio_init+0x4c>)
 80005ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005b0:	f7ff bf90 	b.w	80004d4 <printf_>
 80005b4:	20000308 	.word	0x20000308
 80005b8:	2000030c 	.word	0x2000030c
 80005bc:	20000314 	.word	0x20000314
 80005c0:	20000310 	.word	0x20000310
 80005c4:	080028e8 	.word	0x080028e8

080005c8 <lib_os_init>:
 80005c8:	b508      	push	{r3, lr}
 80005ca:	f7ff fe99 	bl	8000300 <kernel_init>
 80005ce:	f7ff feed 	bl	80003ac <messages_init>
 80005d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005d6:	f7ff bfcf 	b.w	8000578 <stdio_init>

080005da <mutex_init>:
 80005da:	b510      	push	{r4, lr}
 80005dc:	4604      	mov	r4, r0
 80005de:	f7ff fe3d 	bl	800025c <sched_off>
 80005e2:	2300      	movs	r3, #0
 80005e4:	6023      	str	r3, [r4, #0]
 80005e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005ea:	f7ff be39 	b.w	8000260 <sched_on>

080005ee <mutex_lock>:
 80005ee:	b513      	push	{r0, r1, r4, lr}
 80005f0:	4604      	mov	r4, r0
 80005f2:	f7ff fe33 	bl	800025c <sched_off>
 80005f6:	6823      	ldr	r3, [r4, #0]
 80005f8:	9301      	str	r3, [sp, #4]
 80005fa:	f7ff fe31 	bl	8000260 <sched_on>
 80005fe:	9b01      	ldr	r3, [sp, #4]
 8000600:	b10b      	cbz	r3, 8000606 <mutex_lock+0x18>
 8000602:	f7ff fe9f 	bl	8000344 <set_wait_state>
 8000606:	9b01      	ldr	r3, [sp, #4]
 8000608:	2b00      	cmp	r3, #0
 800060a:	d1f2      	bne.n	80005f2 <mutex_lock+0x4>
 800060c:	f7ff fe26 	bl	800025c <sched_off>
 8000610:	6823      	ldr	r3, [r4, #0]
 8000612:	9301      	str	r3, [sp, #4]
 8000614:	9b01      	ldr	r3, [sp, #4]
 8000616:	2b00      	cmp	r3, #0
 8000618:	d1eb      	bne.n	80005f2 <mutex_lock+0x4>
 800061a:	2301      	movs	r3, #1
 800061c:	6023      	str	r3, [r4, #0]
 800061e:	f7ff fe1f 	bl	8000260 <sched_on>
 8000622:	b002      	add	sp, #8
 8000624:	bd10      	pop	{r4, pc}

08000626 <mutex_unlock>:
 8000626:	b508      	push	{r3, lr}
 8000628:	f7ff ffd7 	bl	80005da <mutex_init>
 800062c:	f7ff feac 	bl	8000388 <wake_up_threads>
 8000630:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000634:	f7ff be16 	b.w	8000264 <yield>

08000638 <m_abs>:
 8000638:	ee07 0a90 	vmov	s15, r0
 800063c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000640:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000644:	bf48      	it	mi
 8000646:	eef1 7a67 	vnegmi.f32	s15, s15
 800064a:	ee17 0a90 	vmov	r0, s15
 800064e:	4770      	bx	lr

08000650 <m_saturate>:
 8000650:	ee07 0a90 	vmov	s15, r0
 8000654:	ee06 1a90 	vmov	s13, r1
 8000658:	eef4 7a66 	vcmp.f32	s15, s13
 800065c:	ee07 2a10 	vmov	s14, r2
 8000660:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000664:	bf48      	it	mi
 8000666:	eef0 7a66 	vmovmi.f32	s15, s13
 800066a:	eef4 7a47 	vcmp.f32	s15, s14
 800066e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000672:	bfcc      	ite	gt
 8000674:	ee17 0a10 	vmovgt	r0, s14
 8000678:	ee17 0a90 	vmovle	r0, s15
 800067c:	4770      	bx	lr

0800067e <m_min>:
 800067e:	ee07 0a10 	vmov	s14, r0
 8000682:	ee07 1a90 	vmov	s15, r1
 8000686:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800068a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800068e:	bf54      	ite	pl
 8000690:	ee17 0a90 	vmovpl	r0, s15
 8000694:	ee17 0a10 	vmovmi	r0, s14
 8000698:	4770      	bx	lr
	...

0800069c <pid_init>:
 800069c:	ee06 2a10 	vmov	s12, r2
 80006a0:	ee05 3a90 	vmov	s11, r3
 80006a4:	eddd 7a00 	vldr	s15, [sp]
 80006a8:	ee76 6a25 	vadd.f32	s13, s12, s11
 80006ac:	ed9d 7a01 	vldr	s14, [sp, #4]
 80006b0:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80006b4:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80006b8:	ee76 6a87 	vadd.f32	s13, s13, s14
 80006bc:	eeb1 6a46 	vneg.f32	s12, s12
 80006c0:	edc0 6a04 	vstr	s13, [r0, #16]
 80006c4:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80006f8 <pid_init+0x5c>
 80006c8:	ee36 6a65 	vsub.f32	s12, s12, s11
 80006cc:	ee67 6a26 	vmul.f32	s13, s14, s13
 80006d0:	2200      	movs	r2, #0
 80006d2:	ee36 6a66 	vsub.f32	s12, s12, s13
 80006d6:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80006da:	eeb1 7a47 	vneg.f32	s14, s14
 80006de:	6002      	str	r2, [r0, #0]
 80006e0:	6042      	str	r2, [r0, #4]
 80006e2:	6082      	str	r2, [r0, #8]
 80006e4:	60c2      	str	r2, [r0, #12]
 80006e6:	ed80 6a05 	vstr	s12, [r0, #20]
 80006ea:	edc0 7a06 	vstr	s15, [r0, #24]
 80006ee:	ed80 7a07 	vstr	s14, [r0, #28]
 80006f2:	6202      	str	r2, [r0, #32]
 80006f4:	6241      	str	r1, [r0, #36]	; 0x24
 80006f6:	4770      	bx	lr
 80006f8:	40400000 	.word	0x40400000

080006fc <pid_process>:
 80006fc:	edd0 7a08 	vldr	s15, [r0, #32]
 8000700:	ee05 1a90 	vmov	s11, r1
 8000704:	ed90 5a04 	vldr	s10, [r0, #16]
 8000708:	ee45 7a85 	vmla.f32	s15, s11, s10
 800070c:	ed90 6a00 	vldr	s12, [r0]
 8000710:	edd0 5a05 	vldr	s11, [r0, #20]
 8000714:	ee46 7a25 	vmla.f32	s15, s12, s11
 8000718:	edd0 6a01 	vldr	s13, [r0, #4]
 800071c:	ed80 6a01 	vstr	s12, [r0, #4]
 8000720:	ed90 6a06 	vldr	s12, [r0, #24]
 8000724:	ee46 7a86 	vmla.f32	s15, s13, s12
 8000728:	ed90 7a02 	vldr	s14, [r0, #8]
 800072c:	edc0 6a02 	vstr	s13, [r0, #8]
 8000730:	edd0 6a07 	vldr	s13, [r0, #28]
 8000734:	ee47 7a26 	vmla.f32	s15, s14, s13
 8000738:	ed80 7a03 	vstr	s14, [r0, #12]
 800073c:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000740:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000748:	edc0 7a08 	vstr	s15, [r0, #32]
 800074c:	bfc8      	it	gt
 800074e:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000752:	edd0 7a08 	vldr	s15, [r0, #32]
 8000756:	eeb1 7a47 	vneg.f32	s14, s14
 800075a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800075e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000762:	bf48      	it	mi
 8000764:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8000768:	6001      	str	r1, [r0, #0]
 800076a:	6a00      	ldr	r0, [r0, #32]
 800076c:	4770      	bx	lr
	...

08000770 <lsm9ds0_read>:
 8000770:	b538      	push	{r3, r4, r5, lr}
 8000772:	2128      	movs	r1, #40	; 0x28
 8000774:	20d4      	movs	r0, #212	; 0xd4
 8000776:	f001 fd8c 	bl	8002292 <i2c_read_reg>
 800077a:	2129      	movs	r1, #41	; 0x29
 800077c:	4605      	mov	r5, r0
 800077e:	20d4      	movs	r0, #212	; 0xd4
 8000780:	f001 fd87 	bl	8002292 <i2c_read_reg>
 8000784:	4c38      	ldr	r4, [pc, #224]	; (8000868 <lsm9ds0_read+0xf8>)
 8000786:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800078a:	81a0      	strh	r0, [r4, #12]
 800078c:	212a      	movs	r1, #42	; 0x2a
 800078e:	20d4      	movs	r0, #212	; 0xd4
 8000790:	f001 fd7f 	bl	8002292 <i2c_read_reg>
 8000794:	212b      	movs	r1, #43	; 0x2b
 8000796:	4605      	mov	r5, r0
 8000798:	20d4      	movs	r0, #212	; 0xd4
 800079a:	f001 fd7a 	bl	8002292 <i2c_read_reg>
 800079e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007a2:	81e0      	strh	r0, [r4, #14]
 80007a4:	212c      	movs	r1, #44	; 0x2c
 80007a6:	20d4      	movs	r0, #212	; 0xd4
 80007a8:	f001 fd73 	bl	8002292 <i2c_read_reg>
 80007ac:	212d      	movs	r1, #45	; 0x2d
 80007ae:	4605      	mov	r5, r0
 80007b0:	20d4      	movs	r0, #212	; 0xd4
 80007b2:	f001 fd6e 	bl	8002292 <i2c_read_reg>
 80007b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ba:	8220      	strh	r0, [r4, #16]
 80007bc:	2108      	movs	r1, #8
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	f001 fd67 	bl	8002292 <i2c_read_reg>
 80007c4:	2109      	movs	r1, #9
 80007c6:	4605      	mov	r5, r0
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	f001 fd62 	bl	8002292 <i2c_read_reg>
 80007ce:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007d2:	80e0      	strh	r0, [r4, #6]
 80007d4:	210a      	movs	r1, #10
 80007d6:	203c      	movs	r0, #60	; 0x3c
 80007d8:	f001 fd5b 	bl	8002292 <i2c_read_reg>
 80007dc:	210b      	movs	r1, #11
 80007de:	4605      	mov	r5, r0
 80007e0:	203c      	movs	r0, #60	; 0x3c
 80007e2:	f001 fd56 	bl	8002292 <i2c_read_reg>
 80007e6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ea:	8120      	strh	r0, [r4, #8]
 80007ec:	210c      	movs	r1, #12
 80007ee:	203c      	movs	r0, #60	; 0x3c
 80007f0:	f001 fd4f 	bl	8002292 <i2c_read_reg>
 80007f4:	210d      	movs	r1, #13
 80007f6:	4605      	mov	r5, r0
 80007f8:	203c      	movs	r0, #60	; 0x3c
 80007fa:	f001 fd4a 	bl	8002292 <i2c_read_reg>
 80007fe:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000802:	8160      	strh	r0, [r4, #10]
 8000804:	2128      	movs	r1, #40	; 0x28
 8000806:	203c      	movs	r0, #60	; 0x3c
 8000808:	f001 fd43 	bl	8002292 <i2c_read_reg>
 800080c:	2129      	movs	r1, #41	; 0x29
 800080e:	4605      	mov	r5, r0
 8000810:	203c      	movs	r0, #60	; 0x3c
 8000812:	f001 fd3e 	bl	8002292 <i2c_read_reg>
 8000816:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800081a:	8020      	strh	r0, [r4, #0]
 800081c:	212a      	movs	r1, #42	; 0x2a
 800081e:	203c      	movs	r0, #60	; 0x3c
 8000820:	f001 fd37 	bl	8002292 <i2c_read_reg>
 8000824:	212b      	movs	r1, #43	; 0x2b
 8000826:	4605      	mov	r5, r0
 8000828:	203c      	movs	r0, #60	; 0x3c
 800082a:	f001 fd32 	bl	8002292 <i2c_read_reg>
 800082e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000832:	8060      	strh	r0, [r4, #2]
 8000834:	212c      	movs	r1, #44	; 0x2c
 8000836:	203c      	movs	r0, #60	; 0x3c
 8000838:	f001 fd2b 	bl	8002292 <i2c_read_reg>
 800083c:	212d      	movs	r1, #45	; 0x2d
 800083e:	4605      	mov	r5, r0
 8000840:	203c      	movs	r0, #60	; 0x3c
 8000842:	f001 fd26 	bl	8002292 <i2c_read_reg>
 8000846:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800084a:	80a0      	strh	r0, [r4, #4]
 800084c:	2105      	movs	r1, #5
 800084e:	203c      	movs	r0, #60	; 0x3c
 8000850:	f001 fd1f 	bl	8002292 <i2c_read_reg>
 8000854:	2106      	movs	r1, #6
 8000856:	4605      	mov	r5, r0
 8000858:	203c      	movs	r0, #60	; 0x3c
 800085a:	f001 fd1a 	bl	8002292 <i2c_read_reg>
 800085e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000862:	8320      	strh	r0, [r4, #24]
 8000864:	bd38      	pop	{r3, r4, r5, pc}
 8000866:	bf00      	nop
 8000868:	20000318 	.word	0x20000318

0800086c <lsm9ds0_init>:
 800086c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000870:	4d34      	ldr	r5, [pc, #208]	; (8000944 <lsm9ds0_init+0xd8>)
 8000872:	2400      	movs	r4, #0
 8000874:	20d4      	movs	r0, #212	; 0xd4
 8000876:	210f      	movs	r1, #15
 8000878:	802c      	strh	r4, [r5, #0]
 800087a:	806c      	strh	r4, [r5, #2]
 800087c:	80ac      	strh	r4, [r5, #4]
 800087e:	80ec      	strh	r4, [r5, #6]
 8000880:	812c      	strh	r4, [r5, #8]
 8000882:	816c      	strh	r4, [r5, #10]
 8000884:	81ac      	strh	r4, [r5, #12]
 8000886:	81ec      	strh	r4, [r5, #14]
 8000888:	822c      	strh	r4, [r5, #16]
 800088a:	826c      	strh	r4, [r5, #18]
 800088c:	82ac      	strh	r4, [r5, #20]
 800088e:	82ec      	strh	r4, [r5, #22]
 8000890:	832c      	strh	r4, [r5, #24]
 8000892:	f001 fcfe 	bl	8002292 <i2c_read_reg>
 8000896:	28d4      	cmp	r0, #212	; 0xd4
 8000898:	4606      	mov	r6, r0
 800089a:	d14e      	bne.n	800093a <lsm9ds0_init+0xce>
 800089c:	203c      	movs	r0, #60	; 0x3c
 800089e:	210f      	movs	r1, #15
 80008a0:	f001 fcf7 	bl	8002292 <i2c_read_reg>
 80008a4:	2849      	cmp	r0, #73	; 0x49
 80008a6:	bf18      	it	ne
 80008a8:	2602      	movne	r6, #2
 80008aa:	d147      	bne.n	800093c <lsm9ds0_init+0xd0>
 80008ac:	4630      	mov	r0, r6
 80008ae:	2120      	movs	r1, #32
 80008b0:	22ff      	movs	r2, #255	; 0xff
 80008b2:	f001 fcdb 	bl	800226c <i2c_write_reg>
 80008b6:	4630      	mov	r0, r6
 80008b8:	2123      	movs	r1, #35	; 0x23
 80008ba:	2218      	movs	r2, #24
 80008bc:	f001 fcd6 	bl	800226c <i2c_write_reg>
 80008c0:	203c      	movs	r0, #60	; 0x3c
 80008c2:	211f      	movs	r1, #31
 80008c4:	4622      	mov	r2, r4
 80008c6:	f001 fcd1 	bl	800226c <i2c_write_reg>
 80008ca:	203c      	movs	r0, #60	; 0x3c
 80008cc:	2120      	movs	r1, #32
 80008ce:	2267      	movs	r2, #103	; 0x67
 80008d0:	f001 fccc 	bl	800226c <i2c_write_reg>
 80008d4:	203c      	movs	r0, #60	; 0x3c
 80008d6:	2121      	movs	r1, #33	; 0x21
 80008d8:	4622      	mov	r2, r4
 80008da:	f001 fcc7 	bl	800226c <i2c_write_reg>
 80008de:	203c      	movs	r0, #60	; 0x3c
 80008e0:	2124      	movs	r1, #36	; 0x24
 80008e2:	22f4      	movs	r2, #244	; 0xf4
 80008e4:	f001 fcc2 	bl	800226c <i2c_write_reg>
 80008e8:	203c      	movs	r0, #60	; 0x3c
 80008ea:	2125      	movs	r1, #37	; 0x25
 80008ec:	4622      	mov	r2, r4
 80008ee:	f001 fcbd 	bl	800226c <i2c_write_reg>
 80008f2:	203c      	movs	r0, #60	; 0x3c
 80008f4:	2126      	movs	r1, #38	; 0x26
 80008f6:	2280      	movs	r2, #128	; 0x80
 80008f8:	f001 fcb8 	bl	800226c <i2c_write_reg>
 80008fc:	f7ff ff38 	bl	8000770 <lsm9ds0_read>
 8000900:	2664      	movs	r6, #100	; 0x64
 8000902:	4627      	mov	r7, r4
 8000904:	46a0      	mov	r8, r4
 8000906:	f7ff ff33 	bl	8000770 <lsm9ds0_read>
 800090a:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 800090e:	4b0d      	ldr	r3, [pc, #52]	; (8000944 <lsm9ds0_init+0xd8>)
 8000910:	4490      	add	r8, r2
 8000912:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000916:	4417      	add	r7, r2
 8000918:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 800091c:	3e01      	subs	r6, #1
 800091e:	4414      	add	r4, r2
 8000920:	d1f1      	bne.n	8000906 <lsm9ds0_init+0x9a>
 8000922:	2264      	movs	r2, #100	; 0x64
 8000924:	fb98 f8f2 	sdiv	r8, r8, r2
 8000928:	fb97 f7f2 	sdiv	r7, r7, r2
 800092c:	fb94 f4f2 	sdiv	r4, r4, r2
 8000930:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000934:	829f      	strh	r7, [r3, #20]
 8000936:	82dc      	strh	r4, [r3, #22]
 8000938:	e000      	b.n	800093c <lsm9ds0_init+0xd0>
 800093a:	2601      	movs	r6, #1
 800093c:	4630      	mov	r0, r6
 800093e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000942:	bf00      	nop
 8000944:	20000318 	.word	0x20000318

08000948 <TIM2_IRQHandler>:
 8000948:	4b21      	ldr	r3, [pc, #132]	; (80009d0 <TIM2_IRQHandler+0x88>)
 800094a:	4a22      	ldr	r2, [pc, #136]	; (80009d4 <TIM2_IRQHandler+0x8c>)
 800094c:	6819      	ldr	r1, [r3, #0]
 800094e:	2901      	cmp	r1, #1
 8000950:	b510      	push	{r4, lr}
 8000952:	d011      	beq.n	8000978 <TIM2_IRQHandler+0x30>
 8000954:	d306      	bcc.n	8000964 <TIM2_IRQHandler+0x1c>
 8000956:	2902      	cmp	r1, #2
 8000958:	d113      	bne.n	8000982 <TIM2_IRQHandler+0x3a>
 800095a:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800095e:	8511      	strh	r1, [r2, #40]	; 0x28
 8000960:	2204      	movs	r2, #4
 8000962:	e023      	b.n	80009ac <TIM2_IRQHandler+0x64>
 8000964:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000968:	8511      	strh	r1, [r2, #40]	; 0x28
 800096a:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800096e:	6191      	str	r1, [r2, #24]
 8000970:	2201      	movs	r2, #1
 8000972:	601a      	str	r2, [r3, #0]
 8000974:	609a      	str	r2, [r3, #8]
 8000976:	e023      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 8000978:	f44f 7180 	mov.w	r1, #256	; 0x100
 800097c:	6191      	str	r1, [r2, #24]
 800097e:	2202      	movs	r2, #2
 8000980:	e014      	b.n	80009ac <TIM2_IRQHandler+0x64>
 8000982:	f011 0f01 	tst.w	r1, #1
 8000986:	4814      	ldr	r0, [pc, #80]	; (80009d8 <TIM2_IRQHandler+0x90>)
 8000988:	f101 0401 	add.w	r4, r1, #1
 800098c:	d010      	beq.n	80009b0 <TIM2_IRQHandler+0x68>
 800098e:	3904      	subs	r1, #4
 8000990:	f021 0101 	bic.w	r1, r1, #1
 8000994:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000996:	4419      	add	r1, r3
 8000998:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800099c:	8288      	strh	r0, [r1, #20]
 800099e:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009a2:	8511      	strh	r1, [r2, #40]	; 0x28
 80009a4:	d201      	bcs.n	80009aa <TIM2_IRQHandler+0x62>
 80009a6:	601c      	str	r4, [r3, #0]
 80009a8:	e00a      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 80009aa:	2200      	movs	r2, #0
 80009ac:	601a      	str	r2, [r3, #0]
 80009ae:	e007      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 80009b0:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009b4:	6191      	str	r1, [r2, #24]
 80009b6:	601c      	str	r4, [r3, #0]
 80009b8:	6883      	ldr	r3, [r0, #8]
 80009ba:	f043 0304 	orr.w	r3, r3, #4
 80009be:	6083      	str	r3, [r0, #8]
 80009c0:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009c4:	2101      	movs	r1, #1
 80009c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009ca:	f001 b960 	b.w	8001c8e <TIM_ClearITPendingBit>
 80009ce:	bf00      	nop
 80009d0:	200003b8 	.word	0x200003b8
 80009d4:	48000400 	.word	0x48000400
 80009d8:	50000500 	.word	0x50000500

080009dc <rgb_i2c_delay>:
 80009dc:	bf00      	nop
 80009de:	bf00      	nop
 80009e0:	bf00      	nop
 80009e2:	bf00      	nop
 80009e4:	4770      	bx	lr
	...

080009e8 <RGBSetLowSDA>:
 80009e8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80009ea:	4f15      	ldr	r7, [pc, #84]	; (8000a40 <RGBSetLowSDA+0x58>)
 80009ec:	783b      	ldrb	r3, [r7, #0]
 80009ee:	2401      	movs	r4, #1
 80009f0:	2603      	movs	r6, #3
 80009f2:	2500      	movs	r5, #0
 80009f4:	4669      	mov	r1, sp
 80009f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80009fa:	9300      	str	r3, [sp, #0]
 80009fc:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a00:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a04:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a08:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a0c:	f001 fe35 	bl	800267a <GPIO_Init>
 8000a10:	783a      	ldrb	r2, [r7, #0]
 8000a12:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a16:	4669      	mov	r1, sp
 8000a18:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a1a:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a1e:	4d09      	ldr	r5, [pc, #36]	; (8000a44 <RGBSetLowSDA+0x5c>)
 8000a20:	9400      	str	r4, [sp, #0]
 8000a22:	4628      	mov	r0, r5
 8000a24:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a28:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a2c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a30:	f001 fe23 	bl	800267a <GPIO_Init>
 8000a34:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a36:	f7ff ffd1 	bl	80009dc <rgb_i2c_delay>
 8000a3a:	b003      	add	sp, #12
 8000a3c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a3e:	bf00      	nop
 8000a40:	200009cc 	.word	0x200009cc
 8000a44:	48000400 	.word	0x48000400

08000a48 <RGBSetHighSDA>:
 8000a48:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a4a:	4d13      	ldr	r5, [pc, #76]	; (8000a98 <RGBSetHighSDA+0x50>)
 8000a4c:	782b      	ldrb	r3, [r5, #0]
 8000a4e:	2400      	movs	r4, #0
 8000a50:	2603      	movs	r6, #3
 8000a52:	4669      	mov	r1, sp
 8000a54:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a58:	9300      	str	r3, [sp, #0]
 8000a5a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a5e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a62:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a66:	f001 fe08 	bl	800267a <GPIO_Init>
 8000a6a:	782a      	ldrb	r2, [r5, #0]
 8000a6c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a70:	2501      	movs	r5, #1
 8000a72:	619a      	str	r2, [r3, #24]
 8000a74:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a78:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a7c:	4c07      	ldr	r4, [pc, #28]	; (8000a9c <RGBSetHighSDA+0x54>)
 8000a7e:	9500      	str	r5, [sp, #0]
 8000a80:	4620      	mov	r0, r4
 8000a82:	4669      	mov	r1, sp
 8000a84:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a88:	f001 fdf7 	bl	800267a <GPIO_Init>
 8000a8c:	61a5      	str	r5, [r4, #24]
 8000a8e:	f7ff ffa5 	bl	80009dc <rgb_i2c_delay>
 8000a92:	b002      	add	sp, #8
 8000a94:	bd70      	pop	{r4, r5, r6, pc}
 8000a96:	bf00      	nop
 8000a98:	200009cc 	.word	0x200009cc
 8000a9c:	48000400 	.word	0x48000400

08000aa0 <RGBSetLowSCL>:
 8000aa0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000aa4:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000aa8:	851a      	strh	r2, [r3, #40]	; 0x28
 8000aaa:	f7ff bf97 	b.w	80009dc <rgb_i2c_delay>

08000aae <RGBSetHighSCL>:
 8000aae:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ab2:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ab6:	619a      	str	r2, [r3, #24]
 8000ab8:	f7ff bf90 	b.w	80009dc <rgb_i2c_delay>

08000abc <rgb_i2c_init>:
 8000abc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000abe:	4f1f      	ldr	r7, [pc, #124]	; (8000b3c <rgb_i2c_init+0x80>)
 8000ac0:	2400      	movs	r4, #0
 8000ac2:	2501      	movs	r5, #1
 8000ac4:	2603      	movs	r6, #3
 8000ac6:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000aca:	4669      	mov	r1, sp
 8000acc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ad0:	9300      	str	r3, [sp, #0]
 8000ad2:	f88d 4006 	strb.w	r4, [sp, #6]
 8000ad6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000ada:	f88d 5004 	strb.w	r5, [sp, #4]
 8000ade:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ae2:	f001 fdca 	bl	800267a <GPIO_Init>
 8000ae6:	783b      	ldrb	r3, [r7, #0]
 8000ae8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000aec:	4669      	mov	r1, sp
 8000aee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000af2:	9300      	str	r3, [sp, #0]
 8000af4:	f88d 4007 	strb.w	r4, [sp, #7]
 8000af8:	f88d 6005 	strb.w	r6, [sp, #5]
 8000afc:	f001 fdbd 	bl	800267a <GPIO_Init>
 8000b00:	7839      	ldrb	r1, [r7, #0]
 8000b02:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b06:	f001 fdfe 	bl	8002706 <GPIO_SetBits>
 8000b0a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b0e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b12:	4c0b      	ldr	r4, [pc, #44]	; (8000b40 <rgb_i2c_init+0x84>)
 8000b14:	9500      	str	r5, [sp, #0]
 8000b16:	4620      	mov	r0, r4
 8000b18:	4669      	mov	r1, sp
 8000b1a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b1e:	f001 fdac 	bl	800267a <GPIO_Init>
 8000b22:	4620      	mov	r0, r4
 8000b24:	4629      	mov	r1, r5
 8000b26:	f001 fdee 	bl	8002706 <GPIO_SetBits>
 8000b2a:	f7ff ffc0 	bl	8000aae <RGBSetHighSCL>
 8000b2e:	f7ff ff5b 	bl	80009e8 <RGBSetLowSDA>
 8000b32:	f7ff ff89 	bl	8000a48 <RGBSetHighSDA>
 8000b36:	b003      	add	sp, #12
 8000b38:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b3a:	bf00      	nop
 8000b3c:	200009cc 	.word	0x200009cc
 8000b40:	48000400 	.word	0x48000400

08000b44 <rgb_i2cStart>:
 8000b44:	b508      	push	{r3, lr}
 8000b46:	f7ff ffb2 	bl	8000aae <RGBSetHighSCL>
 8000b4a:	f7ff ff7d 	bl	8000a48 <RGBSetHighSDA>
 8000b4e:	f7ff ffae 	bl	8000aae <RGBSetHighSCL>
 8000b52:	f7ff ff49 	bl	80009e8 <RGBSetLowSDA>
 8000b56:	f7ff ffa3 	bl	8000aa0 <RGBSetLowSCL>
 8000b5a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b5e:	f7ff bf73 	b.w	8000a48 <RGBSetHighSDA>

08000b62 <rgb_i2cStop>:
 8000b62:	b508      	push	{r3, lr}
 8000b64:	f7ff ff9c 	bl	8000aa0 <RGBSetLowSCL>
 8000b68:	f7ff ff3e 	bl	80009e8 <RGBSetLowSDA>
 8000b6c:	f7ff ff9f 	bl	8000aae <RGBSetHighSCL>
 8000b70:	f7ff ff3a 	bl	80009e8 <RGBSetLowSDA>
 8000b74:	f7ff ff9b 	bl	8000aae <RGBSetHighSCL>
 8000b78:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b7c:	f7ff bf64 	b.w	8000a48 <RGBSetHighSDA>

08000b80 <rgb_i2cWrite>:
 8000b80:	b538      	push	{r3, r4, r5, lr}
 8000b82:	4604      	mov	r4, r0
 8000b84:	2508      	movs	r5, #8
 8000b86:	f7ff ff8b 	bl	8000aa0 <RGBSetLowSCL>
 8000b8a:	0623      	lsls	r3, r4, #24
 8000b8c:	d502      	bpl.n	8000b94 <rgb_i2cWrite+0x14>
 8000b8e:	f7ff ff5b 	bl	8000a48 <RGBSetHighSDA>
 8000b92:	e001      	b.n	8000b98 <rgb_i2cWrite+0x18>
 8000b94:	f7ff ff28 	bl	80009e8 <RGBSetLowSDA>
 8000b98:	3d01      	subs	r5, #1
 8000b9a:	f7ff ff88 	bl	8000aae <RGBSetHighSCL>
 8000b9e:	0064      	lsls	r4, r4, #1
 8000ba0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ba4:	b2e4      	uxtb	r4, r4
 8000ba6:	d1ee      	bne.n	8000b86 <rgb_i2cWrite+0x6>
 8000ba8:	f7ff ff7a 	bl	8000aa0 <RGBSetLowSCL>
 8000bac:	f7ff ff4c 	bl	8000a48 <RGBSetHighSDA>
 8000bb0:	f7ff ff7d 	bl	8000aae <RGBSetHighSCL>
 8000bb4:	f7ff ff74 	bl	8000aa0 <RGBSetLowSCL>
 8000bb8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bbc:	f7ff bf0e 	b.w	80009dc <rgb_i2c_delay>

08000bc0 <rgb_i2cRead>:
 8000bc0:	b570      	push	{r4, r5, r6, lr}
 8000bc2:	2300      	movs	r3, #0
 8000bc4:	4606      	mov	r6, r0
 8000bc6:	460c      	mov	r4, r1
 8000bc8:	2200      	movs	r2, #0
 8000bca:	54e2      	strb	r2, [r4, r3]
 8000bcc:	3301      	adds	r3, #1
 8000bce:	2b09      	cmp	r3, #9
 8000bd0:	d1fa      	bne.n	8000bc8 <rgb_i2cRead+0x8>
 8000bd2:	f7ff ff65 	bl	8000aa0 <RGBSetLowSCL>
 8000bd6:	f7ff ff37 	bl	8000a48 <RGBSetHighSDA>
 8000bda:	2508      	movs	r5, #8
 8000bdc:	2300      	movs	r3, #0
 8000bde:	5ce2      	ldrb	r2, [r4, r3]
 8000be0:	0052      	lsls	r2, r2, #1
 8000be2:	54e2      	strb	r2, [r4, r3]
 8000be4:	3301      	adds	r3, #1
 8000be6:	2b09      	cmp	r3, #9
 8000be8:	d1f9      	bne.n	8000bde <rgb_i2cRead+0x1e>
 8000bea:	f7ff ff60 	bl	8000aae <RGBSetHighSCL>
 8000bee:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000bf2:	8a1b      	ldrh	r3, [r3, #16]
 8000bf4:	b29b      	uxth	r3, r3
 8000bf6:	07d8      	lsls	r0, r3, #31
 8000bf8:	d503      	bpl.n	8000c02 <rgb_i2cRead+0x42>
 8000bfa:	7822      	ldrb	r2, [r4, #0]
 8000bfc:	f042 0201 	orr.w	r2, r2, #1
 8000c00:	7022      	strb	r2, [r4, #0]
 8000c02:	0799      	lsls	r1, r3, #30
 8000c04:	d503      	bpl.n	8000c0e <rgb_i2cRead+0x4e>
 8000c06:	7862      	ldrb	r2, [r4, #1]
 8000c08:	f042 0201 	orr.w	r2, r2, #1
 8000c0c:	7062      	strb	r2, [r4, #1]
 8000c0e:	075a      	lsls	r2, r3, #29
 8000c10:	d503      	bpl.n	8000c1a <rgb_i2cRead+0x5a>
 8000c12:	78a2      	ldrb	r2, [r4, #2]
 8000c14:	f042 0201 	orr.w	r2, r2, #1
 8000c18:	70a2      	strb	r2, [r4, #2]
 8000c1a:	0718      	lsls	r0, r3, #28
 8000c1c:	d503      	bpl.n	8000c26 <rgb_i2cRead+0x66>
 8000c1e:	78e2      	ldrb	r2, [r4, #3]
 8000c20:	f042 0201 	orr.w	r2, r2, #1
 8000c24:	70e2      	strb	r2, [r4, #3]
 8000c26:	06d9      	lsls	r1, r3, #27
 8000c28:	d503      	bpl.n	8000c32 <rgb_i2cRead+0x72>
 8000c2a:	7922      	ldrb	r2, [r4, #4]
 8000c2c:	f042 0201 	orr.w	r2, r2, #1
 8000c30:	7122      	strb	r2, [r4, #4]
 8000c32:	069a      	lsls	r2, r3, #26
 8000c34:	d503      	bpl.n	8000c3e <rgb_i2cRead+0x7e>
 8000c36:	7962      	ldrb	r2, [r4, #5]
 8000c38:	f042 0201 	orr.w	r2, r2, #1
 8000c3c:	7162      	strb	r2, [r4, #5]
 8000c3e:	0658      	lsls	r0, r3, #25
 8000c40:	d503      	bpl.n	8000c4a <rgb_i2cRead+0x8a>
 8000c42:	79a2      	ldrb	r2, [r4, #6]
 8000c44:	f042 0201 	orr.w	r2, r2, #1
 8000c48:	71a2      	strb	r2, [r4, #6]
 8000c4a:	0619      	lsls	r1, r3, #24
 8000c4c:	d503      	bpl.n	8000c56 <rgb_i2cRead+0x96>
 8000c4e:	79e3      	ldrb	r3, [r4, #7]
 8000c50:	f043 0301 	orr.w	r3, r3, #1
 8000c54:	71e3      	strb	r3, [r4, #7]
 8000c56:	4b0b      	ldr	r3, [pc, #44]	; (8000c84 <rgb_i2cRead+0xc4>)
 8000c58:	8a1b      	ldrh	r3, [r3, #16]
 8000c5a:	07da      	lsls	r2, r3, #31
 8000c5c:	d503      	bpl.n	8000c66 <rgb_i2cRead+0xa6>
 8000c5e:	7a23      	ldrb	r3, [r4, #8]
 8000c60:	f043 0301 	orr.w	r3, r3, #1
 8000c64:	7223      	strb	r3, [r4, #8]
 8000c66:	f7ff ff1b 	bl	8000aa0 <RGBSetLowSCL>
 8000c6a:	3d01      	subs	r5, #1
 8000c6c:	d1b6      	bne.n	8000bdc <rgb_i2cRead+0x1c>
 8000c6e:	b10e      	cbz	r6, 8000c74 <rgb_i2cRead+0xb4>
 8000c70:	f7ff feba 	bl	80009e8 <RGBSetLowSDA>
 8000c74:	f7ff ff1b 	bl	8000aae <RGBSetHighSCL>
 8000c78:	f7ff ff12 	bl	8000aa0 <RGBSetLowSCL>
 8000c7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c80:	f7ff beac 	b.w	80009dc <rgb_i2c_delay>
 8000c84:	48000400 	.word	0x48000400

08000c88 <rgb_i2c_write_reg>:
 8000c88:	b570      	push	{r4, r5, r6, lr}
 8000c8a:	4605      	mov	r5, r0
 8000c8c:	460c      	mov	r4, r1
 8000c8e:	4616      	mov	r6, r2
 8000c90:	f7ff ff58 	bl	8000b44 <rgb_i2cStart>
 8000c94:	4628      	mov	r0, r5
 8000c96:	f7ff ff73 	bl	8000b80 <rgb_i2cWrite>
 8000c9a:	4620      	mov	r0, r4
 8000c9c:	f7ff ff70 	bl	8000b80 <rgb_i2cWrite>
 8000ca0:	4630      	mov	r0, r6
 8000ca2:	f7ff ff6d 	bl	8000b80 <rgb_i2cWrite>
 8000ca6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000caa:	f7ff bf5a 	b.w	8000b62 <rgb_i2cStop>

08000cae <rgb_i2c_read_reg>:
 8000cae:	b570      	push	{r4, r5, r6, lr}
 8000cb0:	4604      	mov	r4, r0
 8000cb2:	460d      	mov	r5, r1
 8000cb4:	4616      	mov	r6, r2
 8000cb6:	f7ff ff45 	bl	8000b44 <rgb_i2cStart>
 8000cba:	4620      	mov	r0, r4
 8000cbc:	f7ff ff60 	bl	8000b80 <rgb_i2cWrite>
 8000cc0:	4628      	mov	r0, r5
 8000cc2:	f7ff ff5d 	bl	8000b80 <rgb_i2cWrite>
 8000cc6:	f7ff ff3d 	bl	8000b44 <rgb_i2cStart>
 8000cca:	f044 0001 	orr.w	r0, r4, #1
 8000cce:	f7ff ff57 	bl	8000b80 <rgb_i2cWrite>
 8000cd2:	4631      	mov	r1, r6
 8000cd4:	2000      	movs	r0, #0
 8000cd6:	f7ff ff73 	bl	8000bc0 <rgb_i2cRead>
 8000cda:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cde:	f7ff bf40 	b.w	8000b62 <rgb_i2cStop>
	...

08000ce4 <rgb_init>:
 8000ce4:	4b1d      	ldr	r3, [pc, #116]	; (8000d5c <rgb_init+0x78>)
 8000ce6:	b570      	push	{r4, r5, r6, lr}
 8000ce8:	2409      	movs	r4, #9
 8000cea:	2200      	movs	r2, #0
 8000cec:	3c01      	subs	r4, #1
 8000cee:	801a      	strh	r2, [r3, #0]
 8000cf0:	825a      	strh	r2, [r3, #18]
 8000cf2:	849a      	strh	r2, [r3, #36]	; 0x24
 8000cf4:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000cf8:	86da      	strh	r2, [r3, #54]	; 0x36
 8000cfa:	f103 0302 	add.w	r3, r3, #2
 8000cfe:	d1f4      	bne.n	8000cea <rgb_init+0x6>
 8000d00:	4d17      	ldr	r5, [pc, #92]	; (8000d60 <rgb_init+0x7c>)
 8000d02:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d06:	802e      	strh	r6, [r5, #0]
 8000d08:	f7ff fed8 	bl	8000abc <rgb_i2c_init>
 8000d0c:	2072      	movs	r0, #114	; 0x72
 8000d0e:	2181      	movs	r1, #129	; 0x81
 8000d10:	22ff      	movs	r2, #255	; 0xff
 8000d12:	f7ff ffb9 	bl	8000c88 <rgb_i2c_write_reg>
 8000d16:	2072      	movs	r0, #114	; 0x72
 8000d18:	2183      	movs	r1, #131	; 0x83
 8000d1a:	22ff      	movs	r2, #255	; 0xff
 8000d1c:	f7ff ffb4 	bl	8000c88 <rgb_i2c_write_reg>
 8000d20:	2072      	movs	r0, #114	; 0x72
 8000d22:	218d      	movs	r1, #141	; 0x8d
 8000d24:	4622      	mov	r2, r4
 8000d26:	f7ff ffaf 	bl	8000c88 <rgb_i2c_write_reg>
 8000d2a:	2072      	movs	r0, #114	; 0x72
 8000d2c:	2180      	movs	r1, #128	; 0x80
 8000d2e:	2203      	movs	r2, #3
 8000d30:	f7ff ffaa 	bl	8000c88 <rgb_i2c_write_reg>
 8000d34:	2072      	movs	r0, #114	; 0x72
 8000d36:	218f      	movs	r1, #143	; 0x8f
 8000d38:	2223      	movs	r2, #35	; 0x23
 8000d3a:	f7ff ffa5 	bl	8000c88 <rgb_i2c_write_reg>
 8000d3e:	f7ff fe83 	bl	8000a48 <RGBSetHighSDA>
 8000d42:	2072      	movs	r0, #114	; 0x72
 8000d44:	2180      	movs	r1, #128	; 0x80
 8000d46:	2207      	movs	r2, #7
 8000d48:	802c      	strh	r4, [r5, #0]
 8000d4a:	f7ff ff9d 	bl	8000c88 <rgb_i2c_write_reg>
 8000d4e:	2072      	movs	r0, #114	; 0x72
 8000d50:	218e      	movs	r1, #142	; 0x8e
 8000d52:	2208      	movs	r2, #8
 8000d54:	f7ff ff98 	bl	8000c88 <rgb_i2c_write_reg>
 8000d58:	802e      	strh	r6, [r5, #0]
 8000d5a:	bd70      	pop	{r4, r5, r6, pc}
 8000d5c:	20000332 	.word	0x20000332
 8000d60:	200009cc 	.word	0x200009cc

08000d64 <rgb_read>:
 8000d64:	b538      	push	{r3, r4, r5, lr}
 8000d66:	f7ff feed 	bl	8000b44 <rgb_i2cStart>
 8000d6a:	2072      	movs	r0, #114	; 0x72
 8000d6c:	f7ff ff08 	bl	8000b80 <rgb_i2cWrite>
 8000d70:	20b4      	movs	r0, #180	; 0xb4
 8000d72:	f7ff ff05 	bl	8000b80 <rgb_i2cWrite>
 8000d76:	f7ff fee5 	bl	8000b44 <rgb_i2cStart>
 8000d7a:	2073      	movs	r0, #115	; 0x73
 8000d7c:	f7ff ff00 	bl	8000b80 <rgb_i2cWrite>
 8000d80:	2001      	movs	r0, #1
 8000d82:	4946      	ldr	r1, [pc, #280]	; (8000e9c <rgb_read+0x138>)
 8000d84:	f7ff ff1c 	bl	8000bc0 <rgb_i2cRead>
 8000d88:	2300      	movs	r3, #0
 8000d8a:	4d45      	ldr	r5, [pc, #276]	; (8000ea0 <rgb_read+0x13c>)
 8000d8c:	4c43      	ldr	r4, [pc, #268]	; (8000e9c <rgb_read+0x138>)
 8000d8e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000d92:	5d19      	ldrb	r1, [r3, r4]
 8000d94:	3301      	adds	r3, #1
 8000d96:	2b09      	cmp	r3, #9
 8000d98:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000d9a:	d1f6      	bne.n	8000d8a <rgb_read+0x26>
 8000d9c:	2001      	movs	r0, #1
 8000d9e:	4621      	mov	r1, r4
 8000da0:	f7ff ff0e 	bl	8000bc0 <rgb_i2cRead>
 8000da4:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000da8:	2300      	movs	r3, #0
 8000daa:	8811      	ldrh	r1, [r2, #0]
 8000dac:	5ce0      	ldrb	r0, [r4, r3]
 8000dae:	3301      	adds	r3, #1
 8000db0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000db4:	2b09      	cmp	r3, #9
 8000db6:	f822 1b02 	strh.w	r1, [r2], #2
 8000dba:	d1f6      	bne.n	8000daa <rgb_read+0x46>
 8000dbc:	2001      	movs	r0, #1
 8000dbe:	4937      	ldr	r1, [pc, #220]	; (8000e9c <rgb_read+0x138>)
 8000dc0:	f7ff fefe 	bl	8000bc0 <rgb_i2cRead>
 8000dc4:	2300      	movs	r3, #0
 8000dc6:	5ce2      	ldrb	r2, [r4, r3]
 8000dc8:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000dcc:	3301      	adds	r3, #1
 8000dce:	2b09      	cmp	r3, #9
 8000dd0:	d1f9      	bne.n	8000dc6 <rgb_read+0x62>
 8000dd2:	2001      	movs	r0, #1
 8000dd4:	4931      	ldr	r1, [pc, #196]	; (8000e9c <rgb_read+0x138>)
 8000dd6:	f7ff fef3 	bl	8000bc0 <rgb_i2cRead>
 8000dda:	4a32      	ldr	r2, [pc, #200]	; (8000ea4 <rgb_read+0x140>)
 8000ddc:	2300      	movs	r3, #0
 8000dde:	5ce0      	ldrb	r0, [r4, r3]
 8000de0:	8851      	ldrh	r1, [r2, #2]
 8000de2:	3301      	adds	r3, #1
 8000de4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000de8:	2b09      	cmp	r3, #9
 8000dea:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000dee:	d1f6      	bne.n	8000dde <rgb_read+0x7a>
 8000df0:	2001      	movs	r0, #1
 8000df2:	492a      	ldr	r1, [pc, #168]	; (8000e9c <rgb_read+0x138>)
 8000df4:	f7ff fee4 	bl	8000bc0 <rgb_i2cRead>
 8000df8:	2300      	movs	r3, #0
 8000dfa:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000dfe:	5ce1      	ldrb	r1, [r4, r3]
 8000e00:	3301      	adds	r3, #1
 8000e02:	2b09      	cmp	r3, #9
 8000e04:	8251      	strh	r1, [r2, #18]
 8000e06:	d1f8      	bne.n	8000dfa <rgb_read+0x96>
 8000e08:	2001      	movs	r0, #1
 8000e0a:	4924      	ldr	r1, [pc, #144]	; (8000e9c <rgb_read+0x138>)
 8000e0c:	f7ff fed8 	bl	8000bc0 <rgb_i2cRead>
 8000e10:	4a25      	ldr	r2, [pc, #148]	; (8000ea8 <rgb_read+0x144>)
 8000e12:	2300      	movs	r3, #0
 8000e14:	8811      	ldrh	r1, [r2, #0]
 8000e16:	5ce0      	ldrb	r0, [r4, r3]
 8000e18:	3301      	adds	r3, #1
 8000e1a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e1e:	2b09      	cmp	r3, #9
 8000e20:	f822 1b02 	strh.w	r1, [r2], #2
 8000e24:	d1f6      	bne.n	8000e14 <rgb_read+0xb0>
 8000e26:	2001      	movs	r0, #1
 8000e28:	491c      	ldr	r1, [pc, #112]	; (8000e9c <rgb_read+0x138>)
 8000e2a:	f7ff fec9 	bl	8000bc0 <rgb_i2cRead>
 8000e2e:	2300      	movs	r3, #0
 8000e30:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e34:	5ce1      	ldrb	r1, [r4, r3]
 8000e36:	3301      	adds	r3, #1
 8000e38:	2b09      	cmp	r3, #9
 8000e3a:	8491      	strh	r1, [r2, #36]	; 0x24
 8000e3c:	d1f8      	bne.n	8000e30 <rgb_read+0xcc>
 8000e3e:	2001      	movs	r0, #1
 8000e40:	4916      	ldr	r1, [pc, #88]	; (8000e9c <rgb_read+0x138>)
 8000e42:	f7ff febd 	bl	8000bc0 <rgb_i2cRead>
 8000e46:	4a19      	ldr	r2, [pc, #100]	; (8000eac <rgb_read+0x148>)
 8000e48:	2300      	movs	r3, #0
 8000e4a:	8811      	ldrh	r1, [r2, #0]
 8000e4c:	5ce0      	ldrb	r0, [r4, r3]
 8000e4e:	3301      	adds	r3, #1
 8000e50:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e54:	2b09      	cmp	r3, #9
 8000e56:	f822 1b02 	strh.w	r1, [r2], #2
 8000e5a:	d1f6      	bne.n	8000e4a <rgb_read+0xe6>
 8000e5c:	2001      	movs	r0, #1
 8000e5e:	490f      	ldr	r1, [pc, #60]	; (8000e9c <rgb_read+0x138>)
 8000e60:	f7ff feae 	bl	8000bc0 <rgb_i2cRead>
 8000e64:	2300      	movs	r3, #0
 8000e66:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e6a:	5ce1      	ldrb	r1, [r4, r3]
 8000e6c:	3301      	adds	r3, #1
 8000e6e:	2b09      	cmp	r3, #9
 8000e70:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000e74:	d1f7      	bne.n	8000e66 <rgb_read+0x102>
 8000e76:	2000      	movs	r0, #0
 8000e78:	4908      	ldr	r1, [pc, #32]	; (8000e9c <rgb_read+0x138>)
 8000e7a:	f7ff fea1 	bl	8000bc0 <rgb_i2cRead>
 8000e7e:	4a0c      	ldr	r2, [pc, #48]	; (8000eb0 <rgb_read+0x14c>)
 8000e80:	2300      	movs	r3, #0
 8000e82:	8811      	ldrh	r1, [r2, #0]
 8000e84:	5ce0      	ldrb	r0, [r4, r3]
 8000e86:	3301      	adds	r3, #1
 8000e88:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e8c:	2b09      	cmp	r3, #9
 8000e8e:	f822 1b02 	strh.w	r1, [r2], #2
 8000e92:	d1f6      	bne.n	8000e82 <rgb_read+0x11e>
 8000e94:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000e98:	f7ff be63 	b.w	8000b62 <rgb_i2cStop>
 8000e9c:	200009ce 	.word	0x200009ce
 8000ea0:	20000332 	.word	0x20000332
 8000ea4:	20000330 	.word	0x20000330
 8000ea8:	20000344 	.word	0x20000344
 8000eac:	20000356 	.word	0x20000356
 8000eb0:	2000037a 	.word	0x2000037a

08000eb4 <line_sensor_read.part.0>:
 8000eb4:	4980      	ldr	r1, [pc, #512]	; (80010b8 <line_sensor_read.part.0+0x204>)
 8000eb6:	4a81      	ldr	r2, [pc, #516]	; (80010bc <line_sensor_read.part.0+0x208>)
 8000eb8:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000eba:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000ebe:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000ec2:	2407      	movs	r4, #7
 8000ec4:	fb04 0303 	mla	r3, r4, r3, r0
 8000ec8:	2008      	movs	r0, #8
 8000eca:	fb93 f3f0 	sdiv	r3, r3, r0
 8000ece:	624b      	str	r3, [r1, #36]	; 0x24
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	461c      	mov	r4, r3
 8000ed4:	461d      	mov	r5, r3
 8000ed6:	461e      	mov	r6, r3
 8000ed8:	461f      	mov	r7, r3
 8000eda:	4610      	mov	r0, r2
 8000edc:	f8df c1e4 	ldr.w	ip, [pc, #484]	; 80010c4 <line_sensor_read.part.0+0x210>
 8000ee0:	f8b2 a036 	ldrh.w	sl, [r2, #54]	; 0x36
 8000ee4:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000ee8:	f8b2 9000 	ldrh.w	r9, [r2]
 8000eec:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000ef0:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000ef4:	ebcc 0a0a 	rsb	sl, ip, sl
 8000ef8:	f8df c1cc 	ldr.w	ip, [pc, #460]	; 80010c8 <line_sensor_read.part.0+0x214>
 8000efc:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f00:	ebcc 0909 	rsb	r9, ip, r9
 8000f04:	f8df c1c4 	ldr.w	ip, [pc, #452]	; 80010cc <line_sensor_read.part.0+0x218>
 8000f08:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f0c:	ebcc 0808 	rsb	r8, ip, r8
 8000f10:	f8df c1bc 	ldr.w	ip, [pc, #444]	; 80010d0 <line_sensor_read.part.0+0x21c>
 8000f14:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f18:	3304      	adds	r3, #4
 8000f1a:	ebcc 0c0b 	rsb	ip, ip, fp
 8000f1e:	fa1f fa8a 	uxth.w	sl, sl
 8000f22:	fa1f f989 	uxth.w	r9, r9
 8000f26:	fa1f f888 	uxth.w	r8, r8
 8000f2a:	fa1f fc8c 	uxth.w	ip, ip
 8000f2e:	2b20      	cmp	r3, #32
 8000f30:	f8a2 a036 	strh.w	sl, [r2, #54]	; 0x36
 8000f34:	f8a2 9000 	strh.w	r9, [r2]
 8000f38:	f8a2 8012 	strh.w	r8, [r2, #18]
 8000f3c:	f8a2 c024 	strh.w	ip, [r2, #36]	; 0x24
 8000f40:	fa07 f78a 	sxtah	r7, r7, sl
 8000f44:	fa06 f689 	sxtah	r6, r6, r9
 8000f48:	fa05 f588 	sxtah	r5, r5, r8
 8000f4c:	fa04 f48c 	sxtah	r4, r4, ip
 8000f50:	f102 0202 	add.w	r2, r2, #2
 8000f54:	d1c2      	bne.n	8000edc <line_sensor_read.part.0+0x28>
 8000f56:	2308      	movs	r3, #8
 8000f58:	fb97 f7f3 	sdiv	r7, r7, r3
 8000f5c:	fb96 f6f3 	sdiv	r6, r6, r3
 8000f60:	fb95 f5f3 	sdiv	r5, r5, r3
 8000f64:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f68:	4b54      	ldr	r3, [pc, #336]	; (80010bc <line_sensor_read.part.0+0x208>)
 8000f6a:	2200      	movs	r2, #0
 8000f6c:	f8b3 c036 	ldrh.w	ip, [r3, #54]	; 0x36
 8000f70:	ebcc 0c07 	rsb	ip, ip, r7
 8000f74:	f8a3 c036 	strh.w	ip, [r3, #54]	; 0x36
 8000f78:	f832 c000 	ldrh.w	ip, [r2, r0]
 8000f7c:	ebc6 0c0c 	rsb	ip, r6, ip
 8000f80:	f822 c000 	strh.w	ip, [r2, r0]
 8000f84:	f8b3 c012 	ldrh.w	ip, [r3, #18]
 8000f88:	ebc5 0c0c 	rsb	ip, r5, ip
 8000f8c:	f8a3 c012 	strh.w	ip, [r3, #18]
 8000f90:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000f94:	3202      	adds	r2, #2
 8000f96:	ebc4 0c0c 	rsb	ip, r4, ip
 8000f9a:	2a10      	cmp	r2, #16
 8000f9c:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000fa0:	f103 0302 	add.w	r3, r3, #2
 8000fa4:	d1e2      	bne.n	8000f6c <line_sensor_read.part.0+0xb8>
 8000fa6:	2300      	movs	r3, #0
 8000fa8:	181d      	adds	r5, r3, r0
 8000faa:	18cc      	adds	r4, r1, r3
 8000fac:	8eed      	ldrh	r5, [r5, #54]	; 0x36
 8000fae:	4a42      	ldr	r2, [pc, #264]	; (80010b8 <line_sensor_read.part.0+0x204>)
 8000fb0:	8165      	strh	r5, [r4, #10]
 8000fb2:	3302      	adds	r3, #2
 8000fb4:	2b10      	cmp	r3, #16
 8000fb6:	d1f7      	bne.n	8000fa8 <line_sensor_read.part.0+0xf4>
 8000fb8:	f8b2 c010 	ldrh.w	ip, [r2, #16]
 8000fbc:	8a56      	ldrh	r6, [r2, #18]
 8000fbe:	fa0f f58c 	sxth.w	r5, ip
 8000fc2:	b230      	sxth	r0, r6
 8000fc4:	182a      	adds	r2, r5, r0
 8000fc6:	d00c      	beq.n	8000fe2 <line_sensor_read.part.0+0x12e>
 8000fc8:	4c3d      	ldr	r4, [pc, #244]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8000fca:	8923      	ldrh	r3, [r4, #8]
 8000fcc:	88e7      	ldrh	r7, [r4, #6]
 8000fce:	fb16 f303 	smulbb	r3, r6, r3
 8000fd2:	fb1c 3307 	smlabb	r3, ip, r7, r3
 8000fd6:	2402      	movs	r4, #2
 8000fd8:	fb93 f3f2 	sdiv	r3, r3, r2
 8000fdc:	fb92 f2f4 	sdiv	r2, r2, r4
 8000fe0:	e000      	b.n	8000fe4 <line_sensor_read.part.0+0x130>
 8000fe2:	4613      	mov	r3, r2
 8000fe4:	8a8f      	ldrh	r7, [r1, #20]
 8000fe6:	b23c      	sxth	r4, r7
 8000fe8:	1820      	adds	r0, r4, r0
 8000fea:	d00b      	beq.n	8001004 <line_sensor_read.part.0+0x150>
 8000fec:	2c96      	cmp	r4, #150	; 0x96
 8000fee:	dd09      	ble.n	8001004 <line_sensor_read.part.0+0x150>
 8000ff0:	4a33      	ldr	r2, [pc, #204]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8000ff2:	8953      	ldrh	r3, [r2, #10]
 8000ff4:	8912      	ldrh	r2, [r2, #8]
 8000ff6:	fb16 f602 	smulbb	r6, r6, r2
 8000ffa:	fb17 6303 	smlabb	r3, r7, r3, r6
 8000ffe:	fb93 f3f0 	sdiv	r3, r3, r0
 8001002:	4622      	mov	r2, r4
 8001004:	89ce      	ldrh	r6, [r1, #14]
 8001006:	b230      	sxth	r0, r6
 8001008:	1945      	adds	r5, r0, r5
 800100a:	d00b      	beq.n	8001024 <line_sensor_read.part.0+0x170>
 800100c:	2896      	cmp	r0, #150	; 0x96
 800100e:	dd09      	ble.n	8001024 <line_sensor_read.part.0+0x170>
 8001010:	4a2b      	ldr	r2, [pc, #172]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001012:	8893      	ldrh	r3, [r2, #4]
 8001014:	88d2      	ldrh	r2, [r2, #6]
 8001016:	fb1c fc02 	smulbb	ip, ip, r2
 800101a:	fb16 c303 	smlabb	r3, r6, r3, ip
 800101e:	fb93 f3f5 	sdiv	r3, r3, r5
 8001022:	4602      	mov	r2, r0
 8001024:	f8b1 c016 	ldrh.w	ip, [r1, #22]
 8001028:	fa0f f58c 	sxth.w	r5, ip
 800102c:	192c      	adds	r4, r5, r4
 800102e:	d00b      	beq.n	8001048 <line_sensor_read.part.0+0x194>
 8001030:	2d96      	cmp	r5, #150	; 0x96
 8001032:	dd09      	ble.n	8001048 <line_sensor_read.part.0+0x194>
 8001034:	4a22      	ldr	r2, [pc, #136]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001036:	8993      	ldrh	r3, [r2, #12]
 8001038:	8952      	ldrh	r2, [r2, #10]
 800103a:	fb17 f702 	smulbb	r7, r7, r2
 800103e:	fb1c 7303 	smlabb	r3, ip, r3, r7
 8001042:	fb93 f3f4 	sdiv	r3, r3, r4
 8001046:	462a      	mov	r2, r5
 8001048:	898d      	ldrh	r5, [r1, #12]
 800104a:	b22c      	sxth	r4, r5
 800104c:	1820      	adds	r0, r4, r0
 800104e:	d00b      	beq.n	8001068 <line_sensor_read.part.0+0x1b4>
 8001050:	2c96      	cmp	r4, #150	; 0x96
 8001052:	dd09      	ble.n	8001068 <line_sensor_read.part.0+0x1b4>
 8001054:	4a1a      	ldr	r2, [pc, #104]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001056:	8853      	ldrh	r3, [r2, #2]
 8001058:	8892      	ldrh	r2, [r2, #4]
 800105a:	fb16 f602 	smulbb	r6, r6, r2
 800105e:	fb15 6303 	smlabb	r3, r5, r3, r6
 8001062:	fb93 f3f0 	sdiv	r3, r3, r0
 8001066:	4622      	mov	r2, r4
 8001068:	f9b1 0018 	ldrsh.w	r0, [r1, #24]
 800106c:	2896      	cmp	r0, #150	; 0x96
 800106e:	dd03      	ble.n	8001078 <line_sensor_read.part.0+0x1c4>
 8001070:	4b13      	ldr	r3, [pc, #76]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001072:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8001076:	4602      	mov	r2, r0
 8001078:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
 800107c:	2896      	cmp	r0, #150	; 0x96
 800107e:	dd03      	ble.n	8001088 <line_sensor_read.part.0+0x1d4>
 8001080:	4b0f      	ldr	r3, [pc, #60]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001082:	f9b3 3000 	ldrsh.w	r3, [r3]
 8001086:	e001      	b.n	800108c <line_sensor_read.part.0+0x1d8>
 8001088:	2a96      	cmp	r2, #150	; 0x96
 800108a:	dd0f      	ble.n	80010ac <line_sensor_read.part.0+0x1f8>
 800108c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001090:	dc05      	bgt.n	800109e <line_sensor_read.part.0+0x1ea>
 8001092:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8001096:	4293      	cmp	r3, r2
 8001098:	bfb8      	it	lt
 800109a:	4613      	movlt	r3, r2
 800109c:	e001      	b.n	80010a2 <line_sensor_read.part.0+0x1ee>
 800109e:	f44f 7380 	mov.w	r3, #256	; 0x100
 80010a2:	620b      	str	r3, [r1, #32]
 80010a4:	2308      	movs	r3, #8
 80010a6:	770b      	strb	r3, [r1, #28]
 80010a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80010ac:	4b02      	ldr	r3, [pc, #8]	; (80010b8 <line_sensor_read.part.0+0x204>)
 80010ae:	2200      	movs	r2, #0
 80010b0:	771a      	strb	r2, [r3, #28]
 80010b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80010b6:	bf00      	nop
 80010b8:	2000038c 	.word	0x2000038c
 80010bc:	20000332 	.word	0x20000332
 80010c0:	20000000 	.word	0x20000000
 80010c4:	20000154 	.word	0x20000154
 80010c8:	200001b4 	.word	0x200001b4
 80010cc:	20000194 	.word	0x20000194
 80010d0:	20000174 	.word	0x20000174

080010d4 <line_sensor_init>:
 80010d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010d8:	2064      	movs	r0, #100	; 0x64
 80010da:	f000 fe63 	bl	8001da4 <timer_delay_ms>
 80010de:	2400      	movs	r4, #0
 80010e0:	f7ff fe00 	bl	8000ce4 <rgb_init>
 80010e4:	f7ff fe3e 	bl	8000d64 <rgb_read>
 80010e8:	2072      	movs	r0, #114	; 0x72
 80010ea:	2192      	movs	r1, #146	; 0x92
 80010ec:	4a2e      	ldr	r2, [pc, #184]	; (80011a8 <line_sensor_init+0xd4>)
 80010ee:	f7ff fdde 	bl	8000cae <rgb_i2c_read_reg>
 80010f2:	4623      	mov	r3, r4
 80010f4:	4a2d      	ldr	r2, [pc, #180]	; (80011ac <line_sensor_init+0xd8>)
 80010f6:	1899      	adds	r1, r3, r2
 80010f8:	4616      	mov	r6, r2
 80010fa:	7849      	ldrb	r1, [r1, #1]
 80010fc:	2969      	cmp	r1, #105	; 0x69
 80010fe:	d002      	beq.n	8001106 <line_sensor_init+0x32>
 8001100:	2201      	movs	r2, #1
 8001102:	409a      	lsls	r2, r3
 8001104:	4314      	orrs	r4, r2
 8001106:	3301      	adds	r3, #1
 8001108:	2b09      	cmp	r3, #9
 800110a:	d1f3      	bne.n	80010f4 <line_sensor_init+0x20>
 800110c:	2100      	movs	r1, #0
 800110e:	1875      	adds	r5, r6, r1
 8001110:	3102      	adds	r1, #2
 8001112:	2200      	movs	r2, #0
 8001114:	2910      	cmp	r1, #16
 8001116:	4b25      	ldr	r3, [pc, #148]	; (80011ac <line_sensor_init+0xd8>)
 8001118:	816a      	strh	r2, [r5, #10]
 800111a:	d1f8      	bne.n	800110e <line_sensor_init+0x3a>
 800111c:	701a      	strb	r2, [r3, #0]
 800111e:	771a      	strb	r2, [r3, #28]
 8001120:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8001124:	621a      	str	r2, [r3, #32]
 8001126:	625a      	str	r2, [r3, #36]	; 0x24
 8001128:	f7ff fe1c 	bl	8000d64 <rgb_read>
 800112c:	2520      	movs	r5, #32
 800112e:	f7ff fe19 	bl	8000d64 <rgb_read>
 8001132:	491f      	ldr	r1, [pc, #124]	; (80011b0 <line_sensor_init+0xdc>)
 8001134:	2200      	movs	r2, #0
 8001136:	f8df c088 	ldr.w	ip, [pc, #136]	; 80011c0 <line_sensor_init+0xec>
 800113a:	f9b1 0036 	ldrsh.w	r0, [r1, #54]	; 0x36
 800113e:	f852 300c 	ldr.w	r3, [r2, ip]
 8001142:	4e1c      	ldr	r6, [pc, #112]	; (80011b4 <line_sensor_init+0xe0>)
 8001144:	f9b1 7012 	ldrsh.w	r7, [r1, #18]
 8001148:	f9b1 8024 	ldrsh.w	r8, [r1, #36]	; 0x24
 800114c:	4403      	add	r3, r0
 800114e:	f842 300c 	str.w	r3, [r2, ip]
 8001152:	f9b1 0000 	ldrsh.w	r0, [r1]
 8001156:	5993      	ldr	r3, [r2, r6]
 8001158:	4403      	add	r3, r0
 800115a:	4817      	ldr	r0, [pc, #92]	; (80011b8 <line_sensor_init+0xe4>)
 800115c:	5193      	str	r3, [r2, r6]
 800115e:	5813      	ldr	r3, [r2, r0]
 8001160:	443b      	add	r3, r7
 8001162:	5013      	str	r3, [r2, r0]
 8001164:	4b15      	ldr	r3, [pc, #84]	; (80011bc <line_sensor_init+0xe8>)
 8001166:	58d7      	ldr	r7, [r2, r3]
 8001168:	4447      	add	r7, r8
 800116a:	50d7      	str	r7, [r2, r3]
 800116c:	3204      	adds	r2, #4
 800116e:	2a20      	cmp	r2, #32
 8001170:	f101 0102 	add.w	r1, r1, #2
 8001174:	461f      	mov	r7, r3
 8001176:	d1de      	bne.n	8001136 <line_sensor_init+0x62>
 8001178:	3d01      	subs	r5, #1
 800117a:	d1d8      	bne.n	800112e <line_sensor_init+0x5a>
 800117c:	462b      	mov	r3, r5
 800117e:	f85c 2003 	ldr.w	r2, [ip, r3]
 8001182:	0952      	lsrs	r2, r2, #5
 8001184:	f84c 2003 	str.w	r2, [ip, r3]
 8001188:	58f2      	ldr	r2, [r6, r3]
 800118a:	0952      	lsrs	r2, r2, #5
 800118c:	50f2      	str	r2, [r6, r3]
 800118e:	58c2      	ldr	r2, [r0, r3]
 8001190:	0952      	lsrs	r2, r2, #5
 8001192:	50c2      	str	r2, [r0, r3]
 8001194:	58fa      	ldr	r2, [r7, r3]
 8001196:	0952      	lsrs	r2, r2, #5
 8001198:	50fa      	str	r2, [r7, r3]
 800119a:	3304      	adds	r3, #4
 800119c:	2b20      	cmp	r3, #32
 800119e:	d1ee      	bne.n	800117e <line_sensor_init+0xaa>
 80011a0:	4620      	mov	r0, r4
 80011a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011a6:	bf00      	nop
 80011a8:	2000038d 	.word	0x2000038d
 80011ac:	2000038c 	.word	0x2000038c
 80011b0:	20000332 	.word	0x20000332
 80011b4:	200001b4 	.word	0x200001b4
 80011b8:	20000194 	.word	0x20000194
 80011bc:	20000174 	.word	0x20000174
 80011c0:	20000154 	.word	0x20000154

080011c4 <line_sensor_read>:
 80011c4:	b510      	push	{r4, lr}
 80011c6:	4604      	mov	r4, r0
 80011c8:	f7ff fdcc 	bl	8000d64 <rgb_read>
 80011cc:	b91c      	cbnz	r4, 80011d6 <line_sensor_read+0x12>
 80011ce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80011d2:	f7ff be6f 	b.w	8000eb4 <line_sensor_read.part.0>
 80011d6:	bd10      	pop	{r4, pc}

080011d8 <abort_error_>:
 80011d8:	b570      	push	{r4, r5, r6, lr}
 80011da:	4605      	mov	r5, r0
 80011dc:	460e      	mov	r6, r1
 80011de:	480f      	ldr	r0, [pc, #60]	; (800121c <abort_error_+0x44>)
 80011e0:	4629      	mov	r1, r5
 80011e2:	4632      	mov	r2, r6
 80011e4:	f7ff f976 	bl	80004d4 <printf_>
 80011e8:	2400      	movs	r4, #0
 80011ea:	1ceb      	adds	r3, r5, #3
 80011ec:	429c      	cmp	r4, r3
 80011ee:	d20f      	bcs.n	8001210 <abort_error_+0x38>
 80011f0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80011f4:	f001 faf4 	bl	80027e0 <led_on>
 80011f8:	2032      	movs	r0, #50	; 0x32
 80011fa:	f000 fdd3 	bl	8001da4 <timer_delay_ms>
 80011fe:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001202:	f001 faff 	bl	8002804 <led_off>
 8001206:	2064      	movs	r0, #100	; 0x64
 8001208:	f000 fdcc 	bl	8001da4 <timer_delay_ms>
 800120c:	3401      	adds	r4, #1
 800120e:	e7ec      	b.n	80011ea <abort_error_+0x12>
 8001210:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001214:	f000 fdc6 	bl	8001da4 <timer_delay_ms>
 8001218:	e7e1      	b.n	80011de <abort_error_+0x6>
 800121a:	bf00      	nop
 800121c:	080028f9 	.word	0x080028f9

08001220 <line_sensor_thread>:
 8001220:	b508      	push	{r3, lr}
 8001222:	f7ff ff57 	bl	80010d4 <line_sensor_init>
 8001226:	4601      	mov	r1, r0
 8001228:	b120      	cbz	r0, 8001234 <line_sensor_thread+0x14>
 800122a:	4b08      	ldr	r3, [pc, #32]	; (800124c <line_sensor_thread+0x2c>)
 800122c:	2001      	movs	r0, #1
 800122e:	6018      	str	r0, [r3, #0]
 8001230:	f7ff ffd2 	bl	80011d8 <abort_error_>
 8001234:	2000      	movs	r0, #0
 8001236:	2104      	movs	r1, #4
 8001238:	f000 fdc4 	bl	8001dc4 <event_timer_set_period>
 800123c:	2000      	movs	r0, #0
 800123e:	f000 fdd7 	bl	8001df0 <event_timer_wait>
 8001242:	2000      	movs	r0, #0
 8001244:	f7ff ffbe 	bl	80011c4 <line_sensor_read>
 8001248:	e7f8      	b.n	800123c <line_sensor_thread+0x1c>
 800124a:	bf00      	nop
 800124c:	2000106c 	.word	0x2000106c

08001250 <i2c_sensor_thread>:
 8001250:	b508      	push	{r3, lr}
 8001252:	f7ff fb0b 	bl	800086c <lsm9ds0_init>
 8001256:	4601      	mov	r1, r0
 8001258:	b128      	cbz	r0, 8001266 <i2c_sensor_thread+0x16>
 800125a:	4b08      	ldr	r3, [pc, #32]	; (800127c <i2c_sensor_thread+0x2c>)
 800125c:	2201      	movs	r2, #1
 800125e:	2002      	movs	r0, #2
 8001260:	601a      	str	r2, [r3, #0]
 8001262:	f7ff ffb9 	bl	80011d8 <abort_error_>
 8001266:	2001      	movs	r0, #1
 8001268:	210a      	movs	r1, #10
 800126a:	f000 fdab 	bl	8001dc4 <event_timer_set_period>
 800126e:	2001      	movs	r0, #1
 8001270:	f000 fdbe 	bl	8001df0 <event_timer_wait>
 8001274:	f7ff fa7c 	bl	8000770 <lsm9ds0_read>
 8001278:	e7f9      	b.n	800126e <i2c_sensor_thread+0x1e>
 800127a:	bf00      	nop
 800127c:	2000106c 	.word	0x2000106c

08001280 <line_follower>:
 8001280:	b538      	push	{r3, r4, r5, lr}
 8001282:	f000 f8db 	bl	800143c <line_follower_init>
 8001286:	2002      	movs	r0, #2
 8001288:	2104      	movs	r1, #4
 800128a:	f000 fd9b 	bl	8001dc4 <event_timer_set_period>
 800128e:	f000 fd7b 	bl	8001d88 <timer_get_time>
 8001292:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 8001296:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 800129a:	2400      	movs	r4, #0
 800129c:	2002      	movs	r0, #2
 800129e:	f000 fda7 	bl	8001df0 <event_timer_wait>
 80012a2:	4b14      	ldr	r3, [pc, #80]	; (80012f4 <line_follower+0x74>)
 80012a4:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 80012a6:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 80012aa:	dd02      	ble.n	80012b2 <line_follower+0x32>
 80012ac:	f000 f9b1 	bl	8001612 <obstacle_main>
 80012b0:	e007      	b.n	80012c2 <line_follower+0x42>
 80012b2:	7f1b      	ldrb	r3, [r3, #28]
 80012b4:	2b08      	cmp	r3, #8
 80012b6:	d102      	bne.n	80012be <line_follower+0x3e>
 80012b8:	f000 f8e4 	bl	8001484 <line_follower_main>
 80012bc:	e001      	b.n	80012c2 <line_follower+0x42>
 80012be:	f000 f9ad 	bl	800161c <broken_line_main>
 80012c2:	3401      	adds	r4, #1
 80012c4:	2314      	movs	r3, #20
 80012c6:	fbb4 f2f3 	udiv	r2, r4, r3
 80012ca:	fb03 4312 	mls	r3, r3, r2, r4
 80012ce:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012d2:	b913      	cbnz	r3, 80012da <line_follower+0x5a>
 80012d4:	f001 fa84 	bl	80027e0 <led_on>
 80012d8:	e001      	b.n	80012de <line_follower+0x5e>
 80012da:	f001 fa93 	bl	8002804 <led_off>
 80012de:	f000 fd53 	bl	8001d88 <timer_get_time>
 80012e2:	4285      	cmp	r5, r0
 80012e4:	d2da      	bcs.n	800129c <line_follower+0x1c>
 80012e6:	2000      	movs	r0, #0
 80012e8:	4601      	mov	r1, r0
 80012ea:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80012ee:	f001 b90d 	b.w	800250c <drv8834_run>
 80012f2:	bf00      	nop
 80012f4:	2000038c 	.word	0x2000038c

080012f8 <main_thread>:
 80012f8:	b510      	push	{r4, lr}
 80012fa:	481f      	ldr	r0, [pc, #124]	; (8001378 <main_thread+0x80>)
 80012fc:	4c1f      	ldr	r4, [pc, #124]	; (800137c <main_thread+0x84>)
 80012fe:	f7ff f8e9 	bl	80004d4 <printf_>
 8001302:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001306:	f000 fd4d 	bl	8001da4 <timer_delay_ms>
 800130a:	2300      	movs	r3, #0
 800130c:	6023      	str	r3, [r4, #0]
 800130e:	491c      	ldr	r1, [pc, #112]	; (8001380 <main_thread+0x88>)
 8001310:	481c      	ldr	r0, [pc, #112]	; (8001384 <main_thread+0x8c>)
 8001312:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001316:	2306      	movs	r3, #6
 8001318:	f7fe ffb8 	bl	800028c <create_thread>
 800131c:	491a      	ldr	r1, [pc, #104]	; (8001388 <main_thread+0x90>)
 800131e:	481b      	ldr	r0, [pc, #108]	; (800138c <main_thread+0x94>)
 8001320:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001324:	2306      	movs	r3, #6
 8001326:	f7fe ffb1 	bl	800028c <create_thread>
 800132a:	f000 f976 	bl	800161a <broken_line_init>
 800132e:	f000 f96f 	bl	8001610 <obstacle_init>
 8001332:	6823      	ldr	r3, [r4, #0]
 8001334:	b13b      	cbz	r3, 8001346 <main_thread+0x4e>
 8001336:	4816      	ldr	r0, [pc, #88]	; (8001390 <main_thread+0x98>)
 8001338:	f7ff f8cc 	bl	80004d4 <printf_>
 800133c:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8001340:	f000 fd30 	bl	8001da4 <timer_delay_ms>
 8001344:	e7f7      	b.n	8001336 <main_thread+0x3e>
 8001346:	f001 fa6f 	bl	8002828 <get_key>
 800134a:	b128      	cbz	r0, 8001358 <main_thread+0x60>
 800134c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001350:	f000 fd28 	bl	8001da4 <timer_delay_ms>
 8001354:	f7ff ff94 	bl	8001280 <line_follower>
 8001358:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800135c:	f001 fa40 	bl	80027e0 <led_on>
 8001360:	2064      	movs	r0, #100	; 0x64
 8001362:	f000 fd1f 	bl	8001da4 <timer_delay_ms>
 8001366:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800136a:	f001 fa4b 	bl	8002804 <led_off>
 800136e:	20c8      	movs	r0, #200	; 0xc8
 8001370:	f000 fd18 	bl	8001da4 <timer_delay_ms>
 8001374:	e7dd      	b.n	8001332 <main_thread+0x3a>
 8001376:	bf00      	nop
 8001378:	0800290b 	.word	0x0800290b
 800137c:	2000106c 	.word	0x2000106c
 8001380:	20000c6c 	.word	0x20000c6c
 8001384:	08001221 	.word	0x08001221
 8001388:	20000e6c 	.word	0x20000e6c
 800138c:	08001251 	.word	0x08001251
 8001390:	08002946 	.word	0x08002946

08001394 <q_predictor_init>:
 8001394:	4b24      	ldr	r3, [pc, #144]	; (8001428 <q_predictor_init+0x94>)
 8001396:	2200      	movs	r2, #0
 8001398:	4619      	mov	r1, r3
 800139a:	b570      	push	{r4, r5, r6, lr}
 800139c:	4608      	mov	r0, r1
 800139e:	601a      	str	r2, [r3, #0]
 80013a0:	605a      	str	r2, [r3, #4]
 80013a2:	f103 0208 	add.w	r2, r3, #8
 80013a6:	3348      	adds	r3, #72	; 0x48
 80013a8:	2400      	movs	r4, #0
 80013aa:	f842 4b04 	str.w	r4, [r2], #4
 80013ae:	429a      	cmp	r2, r3
 80013b0:	d1fa      	bne.n	80013a8 <q_predictor_init+0x14>
 80013b2:	2200      	movs	r2, #0
 80013b4:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 80013b8:	2300      	movs	r3, #0
 80013ba:	4e1c      	ldr	r6, [pc, #112]	; (800142c <q_predictor_init+0x98>)
 80013bc:	4416      	add	r6, r2
 80013be:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001430 <q_predictor_init+0x9c>
 80013c2:	5ef6      	ldrsh	r6, [r6, r3]
 80013c4:	ee07 6a10 	vmov	s14, r6
 80013c8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013cc:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 80013d0:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80013d4:	3302      	adds	r3, #2
 80013d6:	2b20      	cmp	r3, #32
 80013d8:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 80013dc:	d1ed      	bne.n	80013ba <q_predictor_init+0x26>
 80013de:	3220      	adds	r2, #32
 80013e0:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80013e4:	d1e6      	bne.n	80013b4 <q_predictor_init+0x20>
 80013e6:	2300      	movs	r3, #0
 80013e8:	4912      	ldr	r1, [pc, #72]	; (8001434 <q_predictor_init+0xa0>)
 80013ea:	5e59      	ldrsh	r1, [r3, r1]
 80013ec:	ee07 1a10 	vmov	s14, r1
 80013f0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013f4:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80013f8:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80013fc:	3302      	adds	r3, #2
 80013fe:	2b10      	cmp	r3, #16
 8001400:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001404:	d1f0      	bne.n	80013e8 <q_predictor_init+0x54>
 8001406:	2300      	movs	r3, #0
 8001408:	490b      	ldr	r1, [pc, #44]	; (8001438 <q_predictor_init+0xa4>)
 800140a:	5e59      	ldrsh	r1, [r3, r1]
 800140c:	ee07 1a10 	vmov	s14, r1
 8001410:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001414:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001418:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800141c:	3302      	adds	r3, #2
 800141e:	2b10      	cmp	r3, #16
 8001420:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8001424:	d1f0      	bne.n	8001408 <q_predictor_init+0x74>
 8001426:	bd70      	pop	{r4, r5, r6, pc}
 8001428:	200009d8 	.word	0x200009d8
 800142c:	20000020 	.word	0x20000020
 8001430:	447a0000 	.word	0x447a0000
 8001434:	20000010 	.word	0x20000010
 8001438:	200001d4 	.word	0x200001d4

0800143c <line_follower_init>:
 800143c:	b507      	push	{r0, r1, r2, lr}
 800143e:	4b0a      	ldr	r3, [pc, #40]	; (8001468 <line_follower_init+0x2c>)
 8001440:	4a0a      	ldr	r2, [pc, #40]	; (800146c <line_follower_init+0x30>)
 8001442:	480b      	ldr	r0, [pc, #44]	; (8001470 <line_follower_init+0x34>)
 8001444:	6013      	str	r3, [r2, #0]
 8001446:	4b0b      	ldr	r3, [pc, #44]	; (8001474 <line_follower_init+0x38>)
 8001448:	490b      	ldr	r1, [pc, #44]	; (8001478 <line_follower_init+0x3c>)
 800144a:	6053      	str	r3, [r2, #4]
 800144c:	2300      	movs	r3, #0
 800144e:	6093      	str	r3, [r2, #8]
 8001450:	4a0a      	ldr	r2, [pc, #40]	; (800147c <line_follower_init+0x40>)
 8001452:	9301      	str	r3, [sp, #4]
 8001454:	9200      	str	r2, [sp, #0]
 8001456:	4a0a      	ldr	r2, [pc, #40]	; (8001480 <line_follower_init+0x44>)
 8001458:	f7ff f920 	bl	800069c <pid_init>
 800145c:	b003      	add	sp, #12
 800145e:	f85d eb04 	ldr.w	lr, [sp], #4
 8001462:	f7ff bf97 	b.w	8001394 <q_predictor_init>
 8001466:	bf00      	nop
 8001468:	3ecccccd 	.word	0x3ecccccd
 800146c:	20000c60 	.word	0x20000c60
 8001470:	20001270 	.word	0x20001270
 8001474:	3f666666 	.word	0x3f666666
 8001478:	42c80000 	.word	0x42c80000
 800147c:	4090f5c3 	.word	0x4090f5c3
 8001480:	3ea6e979 	.word	0x3ea6e979

08001484 <line_follower_main>:
 8001484:	b510      	push	{r4, lr}
 8001486:	4b29      	ldr	r3, [pc, #164]	; (800152c <line_follower_main+0xa8>)
 8001488:	4c29      	ldr	r4, [pc, #164]	; (8001530 <line_follower_main+0xac>)
 800148a:	ed93 7a08 	vldr	s14, [r3, #32]
 800148e:	ed2d 8b02 	vpush	{d8}
 8001492:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001496:	eddf 7a27 	vldr	s15, [pc, #156]	; 8001534 <line_follower_main+0xb0>
 800149a:	ed9f 8a27 	vldr	s16, [pc, #156]	; 8001538 <line_follower_main+0xb4>
 800149e:	ee07 8a67 	vmls.f32	s16, s14, s15
 80014a2:	ee18 0a10 	vmov	r0, s16
 80014a6:	f7ff f8c7 	bl	8000638 <m_abs>
 80014aa:	ed9f 7a24 	vldr	s14, [pc, #144]	; 800153c <line_follower_main+0xb8>
 80014ae:	ee07 0a90 	vmov	s15, r0
 80014b2:	ed9f 6a23 	vldr	s12, [pc, #140]	; 8001540 <line_follower_main+0xbc>
 80014b6:	ee77 5a67 	vsub.f32	s11, s14, s15
 80014ba:	edd4 6a00 	vldr	s13, [r4]
 80014be:	ee45 6a86 	vmla.f32	s13, s11, s12
 80014c2:	ee16 0a90 	vmov	r0, s13
 80014c6:	eddf 6a1f 	vldr	s13, [pc, #124]	; 8001544 <line_follower_main+0xc0>
 80014ca:	ee07 7ae6 	vmls.f32	s14, s15, s13
 80014ce:	ee17 1a10 	vmov	r1, s14
 80014d2:	f7ff f8d4 	bl	800067e <m_min>
 80014d6:	6862      	ldr	r2, [r4, #4]
 80014d8:	6020      	str	r0, [r4, #0]
 80014da:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 80014de:	f7ff f8b7 	bl	8000650 <m_saturate>
 80014e2:	ee18 1a10 	vmov	r1, s16
 80014e6:	6020      	str	r0, [r4, #0]
 80014e8:	4817      	ldr	r0, [pc, #92]	; (8001548 <line_follower_main+0xc4>)
 80014ea:	f7ff f907 	bl	80006fc <pid_process>
 80014ee:	edd4 6a00 	vldr	s13, [r4]
 80014f2:	ee07 0a90 	vmov	s15, r0
 80014f6:	ed9f 7a15 	vldr	s14, [pc, #84]	; 800154c <line_follower_main+0xc8>
 80014fa:	ee36 6aa7 	vadd.f32	s12, s13, s15
 80014fe:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001502:	ee26 6a07 	vmul.f32	s12, s12, s14
 8001506:	ee27 7a87 	vmul.f32	s14, s15, s14
 800150a:	ecbd 8b02 	vpop	{d8}
 800150e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001512:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001516:	60a0      	str	r0, [r4, #8]
 8001518:	ee17 1a10 	vmov	r1, s14
 800151c:	ee16 0a10 	vmov	r0, s12
 8001520:	b209      	sxth	r1, r1
 8001522:	b200      	sxth	r0, r0
 8001524:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001528:	f000 bff0 	b.w	800250c <drv8834_run>
 800152c:	2000038c 	.word	0x2000038c
 8001530:	20000c60 	.word	0x20000c60
 8001534:	3b800000 	.word	0x3b800000
 8001538:	00000000 	.word	0x00000000
 800153c:	3f800000 	.word	0x3f800000
 8001540:	3ca3d70a 	.word	0x3ca3d70a
 8001544:	40a00000 	.word	0x40a00000
 8001548:	20001270 	.word	0x20001270
 800154c:	42c80000 	.word	0x42c80000

08001550 <obstacle_go_forward>:
 8001550:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001552:	460f      	mov	r7, r1
 8001554:	ed2d 8b04 	vpush	{d8-d9}
 8001558:	4606      	mov	r6, r0
 800155a:	b950      	cbnz	r0, 8001572 <obstacle_go_forward+0x22>
 800155c:	2000      	movs	r0, #0
 800155e:	4601      	mov	r1, r0
 8001560:	f000 ffd4 	bl	800250c <drv8834_run>
 8001564:	ecbd 8b04 	vpop	{d8-d9}
 8001568:	2064      	movs	r0, #100	; 0x64
 800156a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800156e:	f000 bc19 	b.w	8001da4 <timer_delay_ms>
 8001572:	ed9f 8a21 	vldr	s16, [pc, #132]	; 80015f8 <obstacle_go_forward+0xa8>
 8001576:	2400      	movs	r4, #0
 8001578:	eef0 7a48 	vmov.f32	s15, s16
 800157c:	4625      	mov	r5, r4
 800157e:	eeb0 9a48 	vmov.f32	s18, s16
 8001582:	42bd      	cmp	r5, r7
 8001584:	d2ea      	bcs.n	800155c <obstacle_go_forward+0xc>
 8001586:	4b1d      	ldr	r3, [pc, #116]	; (80015fc <obstacle_go_forward+0xac>)
 8001588:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 800158c:	441c      	add	r4, r3
 800158e:	ee07 4a10 	vmov	s14, r4
 8001592:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8001596:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001600 <obstacle_go_forward+0xb0>
 800159a:	ee79 8a68 	vsub.f32	s17, s18, s17
 800159e:	350a      	adds	r5, #10
 80015a0:	ee78 7ae7 	vsub.f32	s15, s17, s15
 80015a4:	ee67 7a87 	vmul.f32	s15, s15, s14
 80015a8:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8001604 <obstacle_go_forward+0xb4>
 80015ac:	ee48 7a87 	vmla.f32	s15, s17, s14
 80015b0:	ee07 6a10 	vmov	s14, r6
 80015b4:	eef8 6a47 	vcvt.f32.u32	s13, s14
 80015b8:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8001608 <obstacle_go_forward+0xb8>
 80015bc:	ee26 7a87 	vmul.f32	s14, s13, s14
 80015c0:	eddf 6a12 	vldr	s13, [pc, #72]	; 800160c <obstacle_go_forward+0xbc>
 80015c4:	ee08 7a26 	vmla.f32	s14, s16, s13
 80015c8:	eeb0 8a47 	vmov.f32	s16, s14
 80015cc:	ee37 7a67 	vsub.f32	s14, s14, s15
 80015d0:	ee78 7a27 	vadd.f32	s15, s16, s15
 80015d4:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80015d8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80015dc:	ee17 0a10 	vmov	r0, s14
 80015e0:	ee17 1a90 	vmov	r1, s15
 80015e4:	b200      	sxth	r0, r0
 80015e6:	b209      	sxth	r1, r1
 80015e8:	f000 ff90 	bl	800250c <drv8834_run>
 80015ec:	200a      	movs	r0, #10
 80015ee:	f000 fbd9 	bl	8001da4 <timer_delay_ms>
 80015f2:	eef0 7a68 	vmov.f32	s15, s17
 80015f6:	e7c4      	b.n	8001582 <obstacle_go_forward+0x32>
 80015f8:	00000000 	.word	0x00000000
 80015fc:	20000318 	.word	0x20000318
 8001600:	3a83126f 	.word	0x3a83126f
 8001604:	399d4952 	.word	0x399d4952
 8001608:	3e4ccccc 	.word	0x3e4ccccc
 800160c:	3f4ccccd 	.word	0x3f4ccccd

08001610 <obstacle_init>:
 8001610:	4770      	bx	lr

08001612 <obstacle_main>:
 8001612:	2000      	movs	r0, #0
 8001614:	2164      	movs	r1, #100	; 0x64
 8001616:	f7ff bf9b 	b.w	8001550 <obstacle_go_forward>

0800161a <broken_line_init>:
 800161a:	4770      	bx	lr

0800161c <broken_line_main>:
 800161c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001620:	2500      	movs	r5, #0
 8001622:	462c      	mov	r4, r5
 8001624:	462f      	mov	r7, r5
 8001626:	46a8      	mov	r8, r5
 8001628:	462e      	mov	r6, r5
 800162a:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 800171c <broken_line_main+0x100>
 800162e:	f899 301c 	ldrb.w	r3, [r9, #28]
 8001632:	2b08      	cmp	r3, #8
 8001634:	d06c      	beq.n	8001710 <broken_line_main+0xf4>
 8001636:	2005      	movs	r0, #5
 8001638:	f000 fbb4 	bl	8001da4 <timer_delay_ms>
 800163c:	2f05      	cmp	r7, #5
 800163e:	d861      	bhi.n	8001704 <broken_line_main+0xe8>
 8001640:	e8df f007 	tbb	[pc, r7]
 8001644:	38271503 	.word	0x38271503
 8001648:	4d4a      	.short	0x4d4a
 800164a:	2c00      	cmp	r4, #0
 800164c:	d145      	bne.n	80016da <broken_line_main+0xbe>
 800164e:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001652:	2b00      	cmp	r3, #0
 8001654:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001658:	f04f 0701 	mov.w	r7, #1
 800165c:	bfd4      	ite	le
 800165e:	f04f 0832 	movle.w	r8, #50	; 0x32
 8001662:	f04f 0800 	movgt.w	r8, #0
 8001666:	bfd4      	ite	le
 8001668:	2600      	movle	r6, #0
 800166a:	2632      	movgt	r6, #50	; 0x32
 800166c:	e04a      	b.n	8001704 <broken_line_main+0xe8>
 800166e:	bba4      	cbnz	r4, 80016da <broken_line_main+0xbe>
 8001670:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001674:	2b00      	cmp	r3, #0
 8001676:	f04f 0464 	mov.w	r4, #100	; 0x64
 800167a:	f04f 0702 	mov.w	r7, #2
 800167e:	bfd4      	ite	le
 8001680:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001684:	f04f 0800 	movgt.w	r8, #0
 8001688:	bfd4      	ite	le
 800168a:	2600      	movle	r6, #0
 800168c:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001690:	e038      	b.n	8001704 <broken_line_main+0xe8>
 8001692:	bb14      	cbnz	r4, 80016da <broken_line_main+0xbe>
 8001694:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001698:	2b00      	cmp	r3, #0
 800169a:	f04f 0464 	mov.w	r4, #100	; 0x64
 800169e:	f04f 0703 	mov.w	r7, #3
 80016a2:	bfd4      	ite	le
 80016a4:	f04f 0800 	movle.w	r8, #0
 80016a8:	f04f 0832 	movgt.w	r8, #50	; 0x32
 80016ac:	bfd4      	ite	le
 80016ae:	2632      	movle	r6, #50	; 0x32
 80016b0:	2600      	movgt	r6, #0
 80016b2:	e027      	b.n	8001704 <broken_line_main+0xe8>
 80016b4:	b98c      	cbnz	r4, 80016da <broken_line_main+0xbe>
 80016b6:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80016ba:	2b00      	cmp	r3, #0
 80016bc:	f04f 0464 	mov.w	r4, #100	; 0x64
 80016c0:	f04f 0704 	mov.w	r7, #4
 80016c4:	bfd4      	ite	le
 80016c6:	f04f 0800 	movle.w	r8, #0
 80016ca:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 80016ce:	bfd4      	ite	le
 80016d0:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 80016d4:	2600      	movgt	r6, #0
 80016d6:	e015      	b.n	8001704 <broken_line_main+0xe8>
 80016d8:	b16c      	cbz	r4, 80016f6 <broken_line_main+0xda>
 80016da:	3c01      	subs	r4, #1
 80016dc:	e012      	b.n	8001704 <broken_line_main+0xe8>
 80016de:	b184      	cbz	r4, 8001702 <broken_line_main+0xe6>
 80016e0:	f241 3387 	movw	r3, #4999	; 0x1387
 80016e4:	429d      	cmp	r5, r3
 80016e6:	bfd8      	it	le
 80016e8:	3532      	addle	r5, #50	; 0x32
 80016ea:	2664      	movs	r6, #100	; 0x64
 80016ec:	fb95 f6f6 	sdiv	r6, r5, r6
 80016f0:	3c01      	subs	r4, #1
 80016f2:	46b0      	mov	r8, r6
 80016f4:	e006      	b.n	8001704 <broken_line_main+0xe8>
 80016f6:	4625      	mov	r5, r4
 80016f8:	2705      	movs	r7, #5
 80016fa:	2432      	movs	r4, #50	; 0x32
 80016fc:	46a8      	mov	r8, r5
 80016fe:	462e      	mov	r6, r5
 8001700:	e000      	b.n	8001704 <broken_line_main+0xe8>
 8001702:	4627      	mov	r7, r4
 8001704:	fa0f f088 	sxth.w	r0, r8
 8001708:	b231      	sxth	r1, r6
 800170a:	f000 feff 	bl	800250c <drv8834_run>
 800170e:	e78c      	b.n	800162a <broken_line_main+0xe>
 8001710:	2000      	movs	r0, #0
 8001712:	4601      	mov	r1, r0
 8001714:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001718:	f000 bef8 	b.w	800250c <drv8834_run>
 800171c:	2000038c 	.word	0x2000038c

08001720 <main>:
 8001720:	b508      	push	{r3, lr}
 8001722:	f000 ff99 	bl	8002658 <lib_low_level_init>
 8001726:	f7fe ff4f 	bl	80005c8 <lib_os_init>
 800172a:	4905      	ldr	r1, [pc, #20]	; (8001740 <main+0x20>)
 800172c:	4805      	ldr	r0, [pc, #20]	; (8001744 <main+0x24>)
 800172e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001732:	2306      	movs	r3, #6
 8001734:	f7fe fdaa 	bl	800028c <create_thread>
 8001738:	f7fe fda2 	bl	8000280 <kernel_start>
 800173c:	2000      	movs	r0, #0
 800173e:	bd08      	pop	{r3, pc}
 8001740:	20001070 	.word	0x20001070
 8001744:	080012f9 	.word	0x080012f9

08001748 <RCC_GetClocksFreq>:
 8001748:	4ba5      	ldr	r3, [pc, #660]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 800174a:	685a      	ldr	r2, [r3, #4]
 800174c:	f002 020c 	and.w	r2, r2, #12
 8001750:	2a04      	cmp	r2, #4
 8001752:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001756:	d005      	beq.n	8001764 <RCC_GetClocksFreq+0x1c>
 8001758:	2a08      	cmp	r2, #8
 800175a:	d006      	beq.n	800176a <RCC_GetClocksFreq+0x22>
 800175c:	4ba1      	ldr	r3, [pc, #644]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 800175e:	6003      	str	r3, [r0, #0]
 8001760:	b9ba      	cbnz	r2, 8001792 <RCC_GetClocksFreq+0x4a>
 8001762:	e017      	b.n	8001794 <RCC_GetClocksFreq+0x4c>
 8001764:	4b9f      	ldr	r3, [pc, #636]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 8001766:	6003      	str	r3, [r0, #0]
 8001768:	e013      	b.n	8001792 <RCC_GetClocksFreq+0x4a>
 800176a:	6859      	ldr	r1, [r3, #4]
 800176c:	685c      	ldr	r4, [r3, #4]
 800176e:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001772:	03e2      	lsls	r2, r4, #15
 8001774:	f101 0102 	add.w	r1, r1, #2
 8001778:	d401      	bmi.n	800177e <RCC_GetClocksFreq+0x36>
 800177a:	4a9b      	ldr	r2, [pc, #620]	; (80019e8 <RCC_GetClocksFreq+0x2a0>)
 800177c:	e006      	b.n	800178c <RCC_GetClocksFreq+0x44>
 800177e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001780:	4b98      	ldr	r3, [pc, #608]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 8001782:	f002 020f 	and.w	r2, r2, #15
 8001786:	3201      	adds	r2, #1
 8001788:	fbb3 f2f2 	udiv	r2, r3, r2
 800178c:	434a      	muls	r2, r1
 800178e:	6002      	str	r2, [r0, #0]
 8001790:	e000      	b.n	8001794 <RCC_GetClocksFreq+0x4c>
 8001792:	2200      	movs	r2, #0
 8001794:	4f92      	ldr	r7, [pc, #584]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 8001796:	4d95      	ldr	r5, [pc, #596]	; (80019ec <RCC_GetClocksFreq+0x2a4>)
 8001798:	687b      	ldr	r3, [r7, #4]
 800179a:	f8df 8254 	ldr.w	r8, [pc, #596]	; 80019f0 <RCC_GetClocksFreq+0x2a8>
 800179e:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80017a2:	5cec      	ldrb	r4, [r5, r3]
 80017a4:	6803      	ldr	r3, [r0, #0]
 80017a6:	b2e4      	uxtb	r4, r4
 80017a8:	fa23 f104 	lsr.w	r1, r3, r4
 80017ac:	6041      	str	r1, [r0, #4]
 80017ae:	687e      	ldr	r6, [r7, #4]
 80017b0:	f3c6 2602 	ubfx	r6, r6, #8, #3
 80017b4:	5dae      	ldrb	r6, [r5, r6]
 80017b6:	fa21 f606 	lsr.w	r6, r1, r6
 80017ba:	6086      	str	r6, [r0, #8]
 80017bc:	f8d7 c004 	ldr.w	ip, [r7, #4]
 80017c0:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 80017c4:	f815 500c 	ldrb.w	r5, [r5, ip]
 80017c8:	b2ed      	uxtb	r5, r5
 80017ca:	40e9      	lsrs	r1, r5
 80017cc:	60c1      	str	r1, [r0, #12]
 80017ce:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 80017d2:	f3c9 1904 	ubfx	r9, r9, #4, #5
 80017d6:	f009 0c0f 	and.w	ip, r9, #15
 80017da:	f019 0f10 	tst.w	r9, #16
 80017de:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 80017e2:	fa1f fc8c 	uxth.w	ip, ip
 80017e6:	d007      	beq.n	80017f8 <RCC_GetClocksFreq+0xb0>
 80017e8:	f1bc 0f00 	cmp.w	ip, #0
 80017ec:	d004      	beq.n	80017f8 <RCC_GetClocksFreq+0xb0>
 80017ee:	fbb2 fcfc 	udiv	ip, r2, ip
 80017f2:	f8c0 c010 	str.w	ip, [r0, #16]
 80017f6:	e000      	b.n	80017fa <RCC_GetClocksFreq+0xb2>
 80017f8:	6103      	str	r3, [r0, #16]
 80017fa:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 80017fc:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001800:	f00c 070f 	and.w	r7, ip, #15
 8001804:	f01c 0f10 	tst.w	ip, #16
 8001808:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 800180c:	b2bf      	uxth	r7, r7
 800180e:	d004      	beq.n	800181a <RCC_GetClocksFreq+0xd2>
 8001810:	b11f      	cbz	r7, 800181a <RCC_GetClocksFreq+0xd2>
 8001812:	fbb2 f7f7 	udiv	r7, r2, r7
 8001816:	6147      	str	r7, [r0, #20]
 8001818:	e000      	b.n	800181c <RCC_GetClocksFreq+0xd4>
 800181a:	6143      	str	r3, [r0, #20]
 800181c:	4f70      	ldr	r7, [pc, #448]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 800181e:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001822:	f01c 0f10 	tst.w	ip, #16
 8001826:	bf0a      	itet	eq
 8001828:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 80019e4 <RCC_GetClocksFreq+0x29c>
 800182c:	6183      	strne	r3, [r0, #24]
 800182e:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001832:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001834:	06bf      	lsls	r7, r7, #26
 8001836:	bf56      	itet	pl
 8001838:	4f6a      	ldrpl	r7, [pc, #424]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 800183a:	61c3      	strmi	r3, [r0, #28]
 800183c:	61c7      	strpl	r7, [r0, #28]
 800183e:	4f68      	ldr	r7, [pc, #416]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 8001840:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001844:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001848:	bf0a      	itet	eq
 800184a:	f8df c198 	ldreq.w	ip, [pc, #408]	; 80019e4 <RCC_GetClocksFreq+0x29c>
 800184e:	6203      	strne	r3, [r0, #32]
 8001850:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001854:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001856:	05ff      	lsls	r7, r7, #23
 8001858:	d506      	bpl.n	8001868 <RCC_GetClocksFreq+0x120>
 800185a:	4293      	cmp	r3, r2
 800185c:	d104      	bne.n	8001868 <RCC_GetClocksFreq+0x120>
 800185e:	42a5      	cmp	r5, r4
 8001860:	d102      	bne.n	8001868 <RCC_GetClocksFreq+0x120>
 8001862:	005f      	lsls	r7, r3, #1
 8001864:	6247      	str	r7, [r0, #36]	; 0x24
 8001866:	e000      	b.n	800186a <RCC_GetClocksFreq+0x122>
 8001868:	6241      	str	r1, [r0, #36]	; 0x24
 800186a:	4f5d      	ldr	r7, [pc, #372]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 800186c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001870:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001874:	d008      	beq.n	8001888 <RCC_GetClocksFreq+0x140>
 8001876:	4293      	cmp	r3, r2
 8001878:	d106      	bne.n	8001888 <RCC_GetClocksFreq+0x140>
 800187a:	42a5      	cmp	r5, r4
 800187c:	d104      	bne.n	8001888 <RCC_GetClocksFreq+0x140>
 800187e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001882:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001886:	e000      	b.n	800188a <RCC_GetClocksFreq+0x142>
 8001888:	6281      	str	r1, [r0, #40]	; 0x28
 800188a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 800188c:	05bf      	lsls	r7, r7, #22
 800188e:	d506      	bpl.n	800189e <RCC_GetClocksFreq+0x156>
 8001890:	4293      	cmp	r3, r2
 8001892:	d104      	bne.n	800189e <RCC_GetClocksFreq+0x156>
 8001894:	42a5      	cmp	r5, r4
 8001896:	d102      	bne.n	800189e <RCC_GetClocksFreq+0x156>
 8001898:	005f      	lsls	r7, r3, #1
 800189a:	62c7      	str	r7, [r0, #44]	; 0x2c
 800189c:	e000      	b.n	80018a0 <RCC_GetClocksFreq+0x158>
 800189e:	62c1      	str	r1, [r0, #44]	; 0x2c
 80018a0:	4f4f      	ldr	r7, [pc, #316]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 80018a2:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80018a6:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 80018aa:	d008      	beq.n	80018be <RCC_GetClocksFreq+0x176>
 80018ac:	4293      	cmp	r3, r2
 80018ae:	d106      	bne.n	80018be <RCC_GetClocksFreq+0x176>
 80018b0:	42a5      	cmp	r5, r4
 80018b2:	d104      	bne.n	80018be <RCC_GetClocksFreq+0x176>
 80018b4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80018b8:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 80018bc:	e000      	b.n	80018c0 <RCC_GetClocksFreq+0x178>
 80018be:	64c1      	str	r1, [r0, #76]	; 0x4c
 80018c0:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80018c2:	053f      	lsls	r7, r7, #20
 80018c4:	d506      	bpl.n	80018d4 <RCC_GetClocksFreq+0x18c>
 80018c6:	4293      	cmp	r3, r2
 80018c8:	d104      	bne.n	80018d4 <RCC_GetClocksFreq+0x18c>
 80018ca:	42a5      	cmp	r5, r4
 80018cc:	d102      	bne.n	80018d4 <RCC_GetClocksFreq+0x18c>
 80018ce:	005f      	lsls	r7, r3, #1
 80018d0:	6507      	str	r7, [r0, #80]	; 0x50
 80018d2:	e000      	b.n	80018d6 <RCC_GetClocksFreq+0x18e>
 80018d4:	6501      	str	r1, [r0, #80]	; 0x50
 80018d6:	4f42      	ldr	r7, [pc, #264]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 80018d8:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80018dc:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 80018e0:	d008      	beq.n	80018f4 <RCC_GetClocksFreq+0x1ac>
 80018e2:	4293      	cmp	r3, r2
 80018e4:	d106      	bne.n	80018f4 <RCC_GetClocksFreq+0x1ac>
 80018e6:	42a5      	cmp	r5, r4
 80018e8:	d104      	bne.n	80018f4 <RCC_GetClocksFreq+0x1ac>
 80018ea:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80018ee:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80018f2:	e000      	b.n	80018f6 <RCC_GetClocksFreq+0x1ae>
 80018f4:	6501      	str	r1, [r0, #80]	; 0x50
 80018f6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80018f8:	043f      	lsls	r7, r7, #16
 80018fa:	d506      	bpl.n	800190a <RCC_GetClocksFreq+0x1c2>
 80018fc:	4293      	cmp	r3, r2
 80018fe:	d104      	bne.n	800190a <RCC_GetClocksFreq+0x1c2>
 8001900:	42a5      	cmp	r5, r4
 8001902:	d102      	bne.n	800190a <RCC_GetClocksFreq+0x1c2>
 8001904:	005a      	lsls	r2, r3, #1
 8001906:	6582      	str	r2, [r0, #88]	; 0x58
 8001908:	e000      	b.n	800190c <RCC_GetClocksFreq+0x1c4>
 800190a:	6581      	str	r1, [r0, #88]	; 0x58
 800190c:	4a34      	ldr	r2, [pc, #208]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 800190e:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001910:	07a4      	lsls	r4, r4, #30
 8001912:	d014      	beq.n	800193e <RCC_GetClocksFreq+0x1f6>
 8001914:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001916:	f001 0103 	and.w	r1, r1, #3
 800191a:	2901      	cmp	r1, #1
 800191c:	d101      	bne.n	8001922 <RCC_GetClocksFreq+0x1da>
 800191e:	6383      	str	r3, [r0, #56]	; 0x38
 8001920:	e00e      	b.n	8001940 <RCC_GetClocksFreq+0x1f8>
 8001922:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001924:	f001 0103 	and.w	r1, r1, #3
 8001928:	2902      	cmp	r1, #2
 800192a:	d102      	bne.n	8001932 <RCC_GetClocksFreq+0x1ea>
 800192c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001930:	e005      	b.n	800193e <RCC_GetClocksFreq+0x1f6>
 8001932:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001934:	f001 0103 	and.w	r1, r1, #3
 8001938:	2903      	cmp	r1, #3
 800193a:	d101      	bne.n	8001940 <RCC_GetClocksFreq+0x1f8>
 800193c:	4929      	ldr	r1, [pc, #164]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 800193e:	6381      	str	r1, [r0, #56]	; 0x38
 8001940:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001942:	4927      	ldr	r1, [pc, #156]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 8001944:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001948:	d101      	bne.n	800194e <RCC_GetClocksFreq+0x206>
 800194a:	63c6      	str	r6, [r0, #60]	; 0x3c
 800194c:	e018      	b.n	8001980 <RCC_GetClocksFreq+0x238>
 800194e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001950:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001954:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001958:	d101      	bne.n	800195e <RCC_GetClocksFreq+0x216>
 800195a:	63c3      	str	r3, [r0, #60]	; 0x3c
 800195c:	e010      	b.n	8001980 <RCC_GetClocksFreq+0x238>
 800195e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001960:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001964:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001968:	d102      	bne.n	8001970 <RCC_GetClocksFreq+0x228>
 800196a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800196e:	e006      	b.n	800197e <RCC_GetClocksFreq+0x236>
 8001970:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001972:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001976:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 800197a:	d101      	bne.n	8001980 <RCC_GetClocksFreq+0x238>
 800197c:	4a19      	ldr	r2, [pc, #100]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 800197e:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001980:	4a17      	ldr	r2, [pc, #92]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 8001982:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001984:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001988:	d101      	bne.n	800198e <RCC_GetClocksFreq+0x246>
 800198a:	6406      	str	r6, [r0, #64]	; 0x40
 800198c:	e018      	b.n	80019c0 <RCC_GetClocksFreq+0x278>
 800198e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001990:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001994:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001998:	d101      	bne.n	800199e <RCC_GetClocksFreq+0x256>
 800199a:	6403      	str	r3, [r0, #64]	; 0x40
 800199c:	e010      	b.n	80019c0 <RCC_GetClocksFreq+0x278>
 800199e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80019a0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80019a4:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80019a8:	d102      	bne.n	80019b0 <RCC_GetClocksFreq+0x268>
 80019aa:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80019ae:	e006      	b.n	80019be <RCC_GetClocksFreq+0x276>
 80019b0:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80019b2:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80019b6:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 80019ba:	d101      	bne.n	80019c0 <RCC_GetClocksFreq+0x278>
 80019bc:	4909      	ldr	r1, [pc, #36]	; (80019e4 <RCC_GetClocksFreq+0x29c>)
 80019be:	6401      	str	r1, [r0, #64]	; 0x40
 80019c0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80019c2:	4907      	ldr	r1, [pc, #28]	; (80019e0 <RCC_GetClocksFreq+0x298>)
 80019c4:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 80019c8:	d101      	bne.n	80019ce <RCC_GetClocksFreq+0x286>
 80019ca:	6446      	str	r6, [r0, #68]	; 0x44
 80019cc:	e023      	b.n	8001a16 <RCC_GetClocksFreq+0x2ce>
 80019ce:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80019d0:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 80019d4:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 80019d8:	d10c      	bne.n	80019f4 <RCC_GetClocksFreq+0x2ac>
 80019da:	6443      	str	r3, [r0, #68]	; 0x44
 80019dc:	e01b      	b.n	8001a16 <RCC_GetClocksFreq+0x2ce>
 80019de:	bf00      	nop
 80019e0:	40021000 	.word	0x40021000
 80019e4:	007a1200 	.word	0x007a1200
 80019e8:	003d0900 	.word	0x003d0900
 80019ec:	20000140 	.word	0x20000140
 80019f0:	20000120 	.word	0x20000120
 80019f4:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80019f6:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 80019fa:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 80019fe:	d102      	bne.n	8001a06 <RCC_GetClocksFreq+0x2be>
 8001a00:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001a04:	e006      	b.n	8001a14 <RCC_GetClocksFreq+0x2cc>
 8001a06:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001a08:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001a0c:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001a10:	d101      	bne.n	8001a16 <RCC_GetClocksFreq+0x2ce>
 8001a12:	4a11      	ldr	r2, [pc, #68]	; (8001a58 <RCC_GetClocksFreq+0x310>)
 8001a14:	6442      	str	r2, [r0, #68]	; 0x44
 8001a16:	4a11      	ldr	r2, [pc, #68]	; (8001a5c <RCC_GetClocksFreq+0x314>)
 8001a18:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001a1a:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001a1e:	d102      	bne.n	8001a26 <RCC_GetClocksFreq+0x2de>
 8001a20:	6486      	str	r6, [r0, #72]	; 0x48
 8001a22:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001a26:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001a28:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001a2c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001a30:	d00f      	beq.n	8001a52 <RCC_GetClocksFreq+0x30a>
 8001a32:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001a34:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001a38:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001a3c:	d102      	bne.n	8001a44 <RCC_GetClocksFreq+0x2fc>
 8001a3e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001a42:	e006      	b.n	8001a52 <RCC_GetClocksFreq+0x30a>
 8001a44:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001a46:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001a4a:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001a4e:	d101      	bne.n	8001a54 <RCC_GetClocksFreq+0x30c>
 8001a50:	4b01      	ldr	r3, [pc, #4]	; (8001a58 <RCC_GetClocksFreq+0x310>)
 8001a52:	6483      	str	r3, [r0, #72]	; 0x48
 8001a54:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001a58:	007a1200 	.word	0x007a1200
 8001a5c:	40021000 	.word	0x40021000

08001a60 <RCC_AHBPeriphClockCmd>:
 8001a60:	bf00      	nop
 8001a62:	bf00      	nop
 8001a64:	4b04      	ldr	r3, [pc, #16]	; (8001a78 <RCC_AHBPeriphClockCmd+0x18>)
 8001a66:	695a      	ldr	r2, [r3, #20]
 8001a68:	b109      	cbz	r1, 8001a6e <RCC_AHBPeriphClockCmd+0xe>
 8001a6a:	4310      	orrs	r0, r2
 8001a6c:	e001      	b.n	8001a72 <RCC_AHBPeriphClockCmd+0x12>
 8001a6e:	ea22 0000 	bic.w	r0, r2, r0
 8001a72:	6158      	str	r0, [r3, #20]
 8001a74:	4770      	bx	lr
 8001a76:	bf00      	nop
 8001a78:	40021000 	.word	0x40021000

08001a7c <RCC_APB2PeriphClockCmd>:
 8001a7c:	bf00      	nop
 8001a7e:	bf00      	nop
 8001a80:	4b04      	ldr	r3, [pc, #16]	; (8001a94 <RCC_APB2PeriphClockCmd+0x18>)
 8001a82:	699a      	ldr	r2, [r3, #24]
 8001a84:	b109      	cbz	r1, 8001a8a <RCC_APB2PeriphClockCmd+0xe>
 8001a86:	4310      	orrs	r0, r2
 8001a88:	e001      	b.n	8001a8e <RCC_APB2PeriphClockCmd+0x12>
 8001a8a:	ea22 0000 	bic.w	r0, r2, r0
 8001a8e:	6198      	str	r0, [r3, #24]
 8001a90:	4770      	bx	lr
 8001a92:	bf00      	nop
 8001a94:	40021000 	.word	0x40021000

08001a98 <RCC_APB1PeriphClockCmd>:
 8001a98:	bf00      	nop
 8001a9a:	bf00      	nop
 8001a9c:	4b04      	ldr	r3, [pc, #16]	; (8001ab0 <RCC_APB1PeriphClockCmd+0x18>)
 8001a9e:	69da      	ldr	r2, [r3, #28]
 8001aa0:	b109      	cbz	r1, 8001aa6 <RCC_APB1PeriphClockCmd+0xe>
 8001aa2:	4310      	orrs	r0, r2
 8001aa4:	e001      	b.n	8001aaa <RCC_APB1PeriphClockCmd+0x12>
 8001aa6:	ea22 0000 	bic.w	r0, r2, r0
 8001aaa:	61d8      	str	r0, [r3, #28]
 8001aac:	4770      	bx	lr
 8001aae:	bf00      	nop
 8001ab0:	40021000 	.word	0x40021000

08001ab4 <TIM_TimeBaseInit>:
 8001ab4:	bf00      	nop
 8001ab6:	bf00      	nop
 8001ab8:	bf00      	nop
 8001aba:	4a24      	ldr	r2, [pc, #144]	; (8001b4c <TIM_TimeBaseInit+0x98>)
 8001abc:	8803      	ldrh	r3, [r0, #0]
 8001abe:	4290      	cmp	r0, r2
 8001ac0:	b29b      	uxth	r3, r3
 8001ac2:	d012      	beq.n	8001aea <TIM_TimeBaseInit+0x36>
 8001ac4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001ac8:	4290      	cmp	r0, r2
 8001aca:	d00e      	beq.n	8001aea <TIM_TimeBaseInit+0x36>
 8001acc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001ad0:	d00b      	beq.n	8001aea <TIM_TimeBaseInit+0x36>
 8001ad2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001ad6:	4290      	cmp	r0, r2
 8001ad8:	d007      	beq.n	8001aea <TIM_TimeBaseInit+0x36>
 8001ada:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ade:	4290      	cmp	r0, r2
 8001ae0:	d003      	beq.n	8001aea <TIM_TimeBaseInit+0x36>
 8001ae2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001ae6:	4290      	cmp	r0, r2
 8001ae8:	d103      	bne.n	8001af2 <TIM_TimeBaseInit+0x3e>
 8001aea:	884a      	ldrh	r2, [r1, #2]
 8001aec:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001af0:	4313      	orrs	r3, r2
 8001af2:	4a17      	ldr	r2, [pc, #92]	; (8001b50 <TIM_TimeBaseInit+0x9c>)
 8001af4:	4290      	cmp	r0, r2
 8001af6:	d008      	beq.n	8001b0a <TIM_TimeBaseInit+0x56>
 8001af8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001afc:	4290      	cmp	r0, r2
 8001afe:	d004      	beq.n	8001b0a <TIM_TimeBaseInit+0x56>
 8001b00:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001b04:	890a      	ldrh	r2, [r1, #8]
 8001b06:	b29b      	uxth	r3, r3
 8001b08:	4313      	orrs	r3, r2
 8001b0a:	8003      	strh	r3, [r0, #0]
 8001b0c:	684b      	ldr	r3, [r1, #4]
 8001b0e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001b10:	880b      	ldrh	r3, [r1, #0]
 8001b12:	8503      	strh	r3, [r0, #40]	; 0x28
 8001b14:	4b0d      	ldr	r3, [pc, #52]	; (8001b4c <TIM_TimeBaseInit+0x98>)
 8001b16:	4298      	cmp	r0, r3
 8001b18:	d013      	beq.n	8001b42 <TIM_TimeBaseInit+0x8e>
 8001b1a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001b1e:	4298      	cmp	r0, r3
 8001b20:	d00f      	beq.n	8001b42 <TIM_TimeBaseInit+0x8e>
 8001b22:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001b26:	4298      	cmp	r0, r3
 8001b28:	d00b      	beq.n	8001b42 <TIM_TimeBaseInit+0x8e>
 8001b2a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001b2e:	4298      	cmp	r0, r3
 8001b30:	d007      	beq.n	8001b42 <TIM_TimeBaseInit+0x8e>
 8001b32:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001b36:	4298      	cmp	r0, r3
 8001b38:	d003      	beq.n	8001b42 <TIM_TimeBaseInit+0x8e>
 8001b3a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001b3e:	4298      	cmp	r0, r3
 8001b40:	d101      	bne.n	8001b46 <TIM_TimeBaseInit+0x92>
 8001b42:	894b      	ldrh	r3, [r1, #10]
 8001b44:	8603      	strh	r3, [r0, #48]	; 0x30
 8001b46:	2301      	movs	r3, #1
 8001b48:	6143      	str	r3, [r0, #20]
 8001b4a:	4770      	bx	lr
 8001b4c:	40012c00 	.word	0x40012c00
 8001b50:	40001000 	.word	0x40001000

08001b54 <TIM_Cmd>:
 8001b54:	bf00      	nop
 8001b56:	bf00      	nop
 8001b58:	8803      	ldrh	r3, [r0, #0]
 8001b5a:	b119      	cbz	r1, 8001b64 <TIM_Cmd+0x10>
 8001b5c:	b29b      	uxth	r3, r3
 8001b5e:	f043 0301 	orr.w	r3, r3, #1
 8001b62:	e003      	b.n	8001b6c <TIM_Cmd+0x18>
 8001b64:	f023 0301 	bic.w	r3, r3, #1
 8001b68:	041b      	lsls	r3, r3, #16
 8001b6a:	0c1b      	lsrs	r3, r3, #16
 8001b6c:	8003      	strh	r3, [r0, #0]
 8001b6e:	4770      	bx	lr

08001b70 <TIM_OC1Init>:
 8001b70:	b530      	push	{r4, r5, lr}
 8001b72:	bf00      	nop
 8001b74:	bf00      	nop
 8001b76:	bf00      	nop
 8001b78:	bf00      	nop
 8001b7a:	6a03      	ldr	r3, [r0, #32]
 8001b7c:	680c      	ldr	r4, [r1, #0]
 8001b7e:	f023 0301 	bic.w	r3, r3, #1
 8001b82:	6203      	str	r3, [r0, #32]
 8001b84:	6a03      	ldr	r3, [r0, #32]
 8001b86:	6842      	ldr	r2, [r0, #4]
 8001b88:	6985      	ldr	r5, [r0, #24]
 8001b8a:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001b8e:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001b92:	432c      	orrs	r4, r5
 8001b94:	898d      	ldrh	r5, [r1, #12]
 8001b96:	f023 0302 	bic.w	r3, r3, #2
 8001b9a:	432b      	orrs	r3, r5
 8001b9c:	888d      	ldrh	r5, [r1, #4]
 8001b9e:	432b      	orrs	r3, r5
 8001ba0:	4d15      	ldr	r5, [pc, #84]	; (8001bf8 <TIM_OC1Init+0x88>)
 8001ba2:	42a8      	cmp	r0, r5
 8001ba4:	d00f      	beq.n	8001bc6 <TIM_OC1Init+0x56>
 8001ba6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001baa:	42a8      	cmp	r0, r5
 8001bac:	d00b      	beq.n	8001bc6 <TIM_OC1Init+0x56>
 8001bae:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001bb2:	42a8      	cmp	r0, r5
 8001bb4:	d007      	beq.n	8001bc6 <TIM_OC1Init+0x56>
 8001bb6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001bba:	42a8      	cmp	r0, r5
 8001bbc:	d003      	beq.n	8001bc6 <TIM_OC1Init+0x56>
 8001bbe:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001bc2:	42a8      	cmp	r0, r5
 8001bc4:	d111      	bne.n	8001bea <TIM_OC1Init+0x7a>
 8001bc6:	bf00      	nop
 8001bc8:	bf00      	nop
 8001bca:	bf00      	nop
 8001bcc:	bf00      	nop
 8001bce:	89cd      	ldrh	r5, [r1, #14]
 8001bd0:	f023 0308 	bic.w	r3, r3, #8
 8001bd4:	432b      	orrs	r3, r5
 8001bd6:	88cd      	ldrh	r5, [r1, #6]
 8001bd8:	f023 0304 	bic.w	r3, r3, #4
 8001bdc:	432b      	orrs	r3, r5
 8001bde:	8a0d      	ldrh	r5, [r1, #16]
 8001be0:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001be4:	432a      	orrs	r2, r5
 8001be6:	8a4d      	ldrh	r5, [r1, #18]
 8001be8:	432a      	orrs	r2, r5
 8001bea:	6042      	str	r2, [r0, #4]
 8001bec:	688a      	ldr	r2, [r1, #8]
 8001bee:	6184      	str	r4, [r0, #24]
 8001bf0:	6342      	str	r2, [r0, #52]	; 0x34
 8001bf2:	6203      	str	r3, [r0, #32]
 8001bf4:	bd30      	pop	{r4, r5, pc}
 8001bf6:	bf00      	nop
 8001bf8:	40012c00 	.word	0x40012c00

08001bfc <TIM_OC2Init>:
 8001bfc:	b570      	push	{r4, r5, r6, lr}
 8001bfe:	bf00      	nop
 8001c00:	bf00      	nop
 8001c02:	bf00      	nop
 8001c04:	bf00      	nop
 8001c06:	6a03      	ldr	r3, [r0, #32]
 8001c08:	680c      	ldr	r4, [r1, #0]
 8001c0a:	898e      	ldrh	r6, [r1, #12]
 8001c0c:	f023 0310 	bic.w	r3, r3, #16
 8001c10:	6203      	str	r3, [r0, #32]
 8001c12:	6a05      	ldr	r5, [r0, #32]
 8001c14:	6842      	ldr	r2, [r0, #4]
 8001c16:	6983      	ldr	r3, [r0, #24]
 8001c18:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001c1c:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001c20:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001c24:	888b      	ldrh	r3, [r1, #4]
 8001c26:	f025 0520 	bic.w	r5, r5, #32
 8001c2a:	4333      	orrs	r3, r6
 8001c2c:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001c30:	4d10      	ldr	r5, [pc, #64]	; (8001c74 <TIM_OC2Init+0x78>)
 8001c32:	42a8      	cmp	r0, r5
 8001c34:	d003      	beq.n	8001c3e <TIM_OC2Init+0x42>
 8001c36:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001c3a:	42a8      	cmp	r0, r5
 8001c3c:	d114      	bne.n	8001c68 <TIM_OC2Init+0x6c>
 8001c3e:	bf00      	nop
 8001c40:	bf00      	nop
 8001c42:	bf00      	nop
 8001c44:	bf00      	nop
 8001c46:	89cd      	ldrh	r5, [r1, #14]
 8001c48:	8a0e      	ldrh	r6, [r1, #16]
 8001c4a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001c4e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001c52:	88cd      	ldrh	r5, [r1, #6]
 8001c54:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001c58:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001c5c:	8a4d      	ldrh	r5, [r1, #18]
 8001c5e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001c62:	4335      	orrs	r5, r6
 8001c64:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001c68:	6042      	str	r2, [r0, #4]
 8001c6a:	688a      	ldr	r2, [r1, #8]
 8001c6c:	6184      	str	r4, [r0, #24]
 8001c6e:	6382      	str	r2, [r0, #56]	; 0x38
 8001c70:	6203      	str	r3, [r0, #32]
 8001c72:	bd70      	pop	{r4, r5, r6, pc}
 8001c74:	40012c00 	.word	0x40012c00

08001c78 <TIM_CtrlPWMOutputs>:
 8001c78:	bf00      	nop
 8001c7a:	bf00      	nop
 8001c7c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c7e:	b111      	cbz	r1, 8001c86 <TIM_CtrlPWMOutputs+0xe>
 8001c80:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001c84:	e001      	b.n	8001c8a <TIM_CtrlPWMOutputs+0x12>
 8001c86:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001c8a:	6443      	str	r3, [r0, #68]	; 0x44
 8001c8c:	4770      	bx	lr

08001c8e <TIM_ClearITPendingBit>:
 8001c8e:	bf00      	nop
 8001c90:	43c9      	mvns	r1, r1
 8001c92:	b289      	uxth	r1, r1
 8001c94:	6101      	str	r1, [r0, #16]
 8001c96:	4770      	bx	lr

08001c98 <timer_init>:
 8001c98:	b530      	push	{r4, r5, lr}
 8001c9a:	2300      	movs	r3, #0
 8001c9c:	b085      	sub	sp, #20
 8001c9e:	491f      	ldr	r1, [pc, #124]	; (8001d1c <timer_init+0x84>)
 8001ca0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001ca4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001ca8:	491d      	ldr	r1, [pc, #116]	; (8001d20 <timer_init+0x88>)
 8001caa:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001cae:	4a1d      	ldr	r2, [pc, #116]	; (8001d24 <timer_init+0x8c>)
 8001cb0:	2400      	movs	r4, #0
 8001cb2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001cb6:	3301      	adds	r3, #1
 8001cb8:	2b04      	cmp	r3, #4
 8001cba:	4625      	mov	r5, r4
 8001cbc:	d1ef      	bne.n	8001c9e <timer_init+0x6>
 8001cbe:	4b1a      	ldr	r3, [pc, #104]	; (8001d28 <timer_init+0x90>)
 8001cc0:	2002      	movs	r0, #2
 8001cc2:	2101      	movs	r1, #1
 8001cc4:	601c      	str	r4, [r3, #0]
 8001cc6:	f7ff fee7 	bl	8001a98 <RCC_APB1PeriphClockCmd>
 8001cca:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001cce:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001cd2:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001cd6:	4c15      	ldr	r4, [pc, #84]	; (8001d2c <timer_init+0x94>)
 8001cd8:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001cdc:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001ce0:	4620      	mov	r0, r4
 8001ce2:	2331      	movs	r3, #49	; 0x31
 8001ce4:	a901      	add	r1, sp, #4
 8001ce6:	9302      	str	r3, [sp, #8]
 8001ce8:	f7ff fee4 	bl	8001ab4 <TIM_TimeBaseInit>
 8001cec:	4620      	mov	r0, r4
 8001cee:	2101      	movs	r1, #1
 8001cf0:	f7ff ff30 	bl	8001b54 <TIM_Cmd>
 8001cf4:	68e3      	ldr	r3, [r4, #12]
 8001cf6:	f043 0301 	orr.w	r3, r3, #1
 8001cfa:	60e3      	str	r3, [r4, #12]
 8001cfc:	231d      	movs	r3, #29
 8001cfe:	f88d 3000 	strb.w	r3, [sp]
 8001d02:	4668      	mov	r0, sp
 8001d04:	2301      	movs	r3, #1
 8001d06:	f88d 5001 	strb.w	r5, [sp, #1]
 8001d0a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001d0e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001d12:	f000 fc69 	bl	80025e8 <NVIC_Init>
 8001d16:	b005      	add	sp, #20
 8001d18:	bd30      	pop	{r4, r5, pc}
 8001d1a:	bf00      	nop
 8001d1c:	200012ac 	.word	0x200012ac
 8001d20:	200012a0 	.word	0x200012a0
 8001d24:	20001298 	.word	0x20001298
 8001d28:	200012a8 	.word	0x200012a8
 8001d2c:	40000400 	.word	0x40000400

08001d30 <TIM3_IRQHandler>:
 8001d30:	2300      	movs	r3, #0
 8001d32:	4a10      	ldr	r2, [pc, #64]	; (8001d74 <TIM3_IRQHandler+0x44>)
 8001d34:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001d38:	b289      	uxth	r1, r1
 8001d3a:	b129      	cbz	r1, 8001d48 <TIM3_IRQHandler+0x18>
 8001d3c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001d40:	b289      	uxth	r1, r1
 8001d42:	3901      	subs	r1, #1
 8001d44:	b289      	uxth	r1, r1
 8001d46:	e007      	b.n	8001d58 <TIM3_IRQHandler+0x28>
 8001d48:	490b      	ldr	r1, [pc, #44]	; (8001d78 <TIM3_IRQHandler+0x48>)
 8001d4a:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001d4e:	b289      	uxth	r1, r1
 8001d50:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001d54:	4a09      	ldr	r2, [pc, #36]	; (8001d7c <TIM3_IRQHandler+0x4c>)
 8001d56:	2101      	movs	r1, #1
 8001d58:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001d5c:	3301      	adds	r3, #1
 8001d5e:	2b04      	cmp	r3, #4
 8001d60:	d1e7      	bne.n	8001d32 <TIM3_IRQHandler+0x2>
 8001d62:	4b07      	ldr	r3, [pc, #28]	; (8001d80 <TIM3_IRQHandler+0x50>)
 8001d64:	4807      	ldr	r0, [pc, #28]	; (8001d84 <TIM3_IRQHandler+0x54>)
 8001d66:	681a      	ldr	r2, [r3, #0]
 8001d68:	2101      	movs	r1, #1
 8001d6a:	3201      	adds	r2, #1
 8001d6c:	601a      	str	r2, [r3, #0]
 8001d6e:	f7ff bf8e 	b.w	8001c8e <TIM_ClearITPendingBit>
 8001d72:	bf00      	nop
 8001d74:	200012ac 	.word	0x200012ac
 8001d78:	200012a0 	.word	0x200012a0
 8001d7c:	20001298 	.word	0x20001298
 8001d80:	200012a8 	.word	0x200012a8
 8001d84:	40000400 	.word	0x40000400

08001d88 <timer_get_time>:
 8001d88:	b082      	sub	sp, #8
 8001d8a:	b672      	cpsid	i
 8001d8c:	4b04      	ldr	r3, [pc, #16]	; (8001da0 <timer_get_time+0x18>)
 8001d8e:	681b      	ldr	r3, [r3, #0]
 8001d90:	9301      	str	r3, [sp, #4]
 8001d92:	b662      	cpsie	i
 8001d94:	9801      	ldr	r0, [sp, #4]
 8001d96:	230a      	movs	r3, #10
 8001d98:	fbb0 f0f3 	udiv	r0, r0, r3
 8001d9c:	b002      	add	sp, #8
 8001d9e:	4770      	bx	lr
 8001da0:	200012a8 	.word	0x200012a8

08001da4 <timer_delay_ms>:
 8001da4:	b513      	push	{r0, r1, r4, lr}
 8001da6:	4604      	mov	r4, r0
 8001da8:	f7ff ffee 	bl	8001d88 <timer_get_time>
 8001dac:	4420      	add	r0, r4
 8001dae:	9001      	str	r0, [sp, #4]
 8001db0:	9c01      	ldr	r4, [sp, #4]
 8001db2:	f7ff ffe9 	bl	8001d88 <timer_get_time>
 8001db6:	4284      	cmp	r4, r0
 8001db8:	d902      	bls.n	8001dc0 <timer_delay_ms+0x1c>
 8001dba:	f000 fb17 	bl	80023ec <sleep>
 8001dbe:	e7f7      	b.n	8001db0 <timer_delay_ms+0xc>
 8001dc0:	b002      	add	sp, #8
 8001dc2:	bd10      	pop	{r4, pc}

08001dc4 <event_timer_set_period>:
 8001dc4:	b672      	cpsid	i
 8001dc6:	230a      	movs	r3, #10
 8001dc8:	4359      	muls	r1, r3
 8001dca:	4b06      	ldr	r3, [pc, #24]	; (8001de4 <event_timer_set_period+0x20>)
 8001dcc:	b289      	uxth	r1, r1
 8001dce:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001dd2:	4b05      	ldr	r3, [pc, #20]	; (8001de8 <event_timer_set_period+0x24>)
 8001dd4:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001dd8:	4b04      	ldr	r3, [pc, #16]	; (8001dec <event_timer_set_period+0x28>)
 8001dda:	2200      	movs	r2, #0
 8001ddc:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001de0:	b662      	cpsie	i
 8001de2:	4770      	bx	lr
 8001de4:	200012ac 	.word	0x200012ac
 8001de8:	200012a0 	.word	0x200012a0
 8001dec:	20001298 	.word	0x20001298

08001df0 <event_timer_wait>:
 8001df0:	b510      	push	{r4, lr}
 8001df2:	4604      	mov	r4, r0
 8001df4:	4b06      	ldr	r3, [pc, #24]	; (8001e10 <event_timer_wait+0x20>)
 8001df6:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001dfa:	b292      	uxth	r2, r2
 8001dfc:	b912      	cbnz	r2, 8001e04 <event_timer_wait+0x14>
 8001dfe:	f000 faf5 	bl	80023ec <sleep>
 8001e02:	e7f7      	b.n	8001df4 <event_timer_wait+0x4>
 8001e04:	b672      	cpsid	i
 8001e06:	2200      	movs	r2, #0
 8001e08:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001e0c:	b662      	cpsie	i
 8001e0e:	bd10      	pop	{r4, pc}
 8001e10:	20001298 	.word	0x20001298

08001e14 <USART_Init>:
 8001e14:	b530      	push	{r4, r5, lr}
 8001e16:	4604      	mov	r4, r0
 8001e18:	b099      	sub	sp, #100	; 0x64
 8001e1a:	460d      	mov	r5, r1
 8001e1c:	bf00      	nop
 8001e1e:	bf00      	nop
 8001e20:	bf00      	nop
 8001e22:	bf00      	nop
 8001e24:	bf00      	nop
 8001e26:	bf00      	nop
 8001e28:	bf00      	nop
 8001e2a:	6803      	ldr	r3, [r0, #0]
 8001e2c:	f023 0301 	bic.w	r3, r3, #1
 8001e30:	6003      	str	r3, [r0, #0]
 8001e32:	6842      	ldr	r2, [r0, #4]
 8001e34:	688b      	ldr	r3, [r1, #8]
 8001e36:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001e3a:	4313      	orrs	r3, r2
 8001e3c:	6043      	str	r3, [r0, #4]
 8001e3e:	686a      	ldr	r2, [r5, #4]
 8001e40:	68eb      	ldr	r3, [r5, #12]
 8001e42:	6801      	ldr	r1, [r0, #0]
 8001e44:	431a      	orrs	r2, r3
 8001e46:	692b      	ldr	r3, [r5, #16]
 8001e48:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001e4c:	f021 010c 	bic.w	r1, r1, #12
 8001e50:	4313      	orrs	r3, r2
 8001e52:	430b      	orrs	r3, r1
 8001e54:	6003      	str	r3, [r0, #0]
 8001e56:	6882      	ldr	r2, [r0, #8]
 8001e58:	696b      	ldr	r3, [r5, #20]
 8001e5a:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001e5e:	4313      	orrs	r3, r2
 8001e60:	6083      	str	r3, [r0, #8]
 8001e62:	a801      	add	r0, sp, #4
 8001e64:	f7ff fc70 	bl	8001748 <RCC_GetClocksFreq>
 8001e68:	4b17      	ldr	r3, [pc, #92]	; (8001ec8 <USART_Init+0xb4>)
 8001e6a:	429c      	cmp	r4, r3
 8001e6c:	d101      	bne.n	8001e72 <USART_Init+0x5e>
 8001e6e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001e70:	e00e      	b.n	8001e90 <USART_Init+0x7c>
 8001e72:	4b16      	ldr	r3, [pc, #88]	; (8001ecc <USART_Init+0xb8>)
 8001e74:	429c      	cmp	r4, r3
 8001e76:	d101      	bne.n	8001e7c <USART_Init+0x68>
 8001e78:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001e7a:	e009      	b.n	8001e90 <USART_Init+0x7c>
 8001e7c:	4b14      	ldr	r3, [pc, #80]	; (8001ed0 <USART_Init+0xbc>)
 8001e7e:	429c      	cmp	r4, r3
 8001e80:	d101      	bne.n	8001e86 <USART_Init+0x72>
 8001e82:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001e84:	e004      	b.n	8001e90 <USART_Init+0x7c>
 8001e86:	4b13      	ldr	r3, [pc, #76]	; (8001ed4 <USART_Init+0xc0>)
 8001e88:	429c      	cmp	r4, r3
 8001e8a:	bf0c      	ite	eq
 8001e8c:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8001e8e:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8001e90:	6823      	ldr	r3, [r4, #0]
 8001e92:	6829      	ldr	r1, [r5, #0]
 8001e94:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001e98:	bf18      	it	ne
 8001e9a:	0052      	lslne	r2, r2, #1
 8001e9c:	fbb2 f3f1 	udiv	r3, r2, r1
 8001ea0:	fb01 2213 	mls	r2, r1, r3, r2
 8001ea4:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001ea8:	6822      	ldr	r2, [r4, #0]
 8001eaa:	bf28      	it	cs
 8001eac:	3301      	addcs	r3, #1
 8001eae:	0412      	lsls	r2, r2, #16
 8001eb0:	d506      	bpl.n	8001ec0 <USART_Init+0xac>
 8001eb2:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8001eb6:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001eba:	401a      	ands	r2, r3
 8001ebc:	ea41 0302 	orr.w	r3, r1, r2
 8001ec0:	b29b      	uxth	r3, r3
 8001ec2:	81a3      	strh	r3, [r4, #12]
 8001ec4:	b019      	add	sp, #100	; 0x64
 8001ec6:	bd30      	pop	{r4, r5, pc}
 8001ec8:	40013800 	.word	0x40013800
 8001ecc:	40004400 	.word	0x40004400
 8001ed0:	40004800 	.word	0x40004800
 8001ed4:	40004c00 	.word	0x40004c00

08001ed8 <USART_Cmd>:
 8001ed8:	bf00      	nop
 8001eda:	bf00      	nop
 8001edc:	6803      	ldr	r3, [r0, #0]
 8001ede:	b111      	cbz	r1, 8001ee6 <USART_Cmd+0xe>
 8001ee0:	f043 0301 	orr.w	r3, r3, #1
 8001ee4:	e001      	b.n	8001eea <USART_Cmd+0x12>
 8001ee6:	f023 0301 	bic.w	r3, r3, #1
 8001eea:	6003      	str	r3, [r0, #0]
 8001eec:	4770      	bx	lr

08001eee <USART_ReceiveData>:
 8001eee:	bf00      	nop
 8001ef0:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001ef2:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001ef6:	4770      	bx	lr

08001ef8 <USART_ITConfig>:
 8001ef8:	b510      	push	{r4, lr}
 8001efa:	bf00      	nop
 8001efc:	bf00      	nop
 8001efe:	bf00      	nop
 8001f00:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8001f04:	2401      	movs	r4, #1
 8001f06:	b2c9      	uxtb	r1, r1
 8001f08:	2b02      	cmp	r3, #2
 8001f0a:	fa04 f101 	lsl.w	r1, r4, r1
 8001f0e:	d101      	bne.n	8001f14 <USART_ITConfig+0x1c>
 8001f10:	3004      	adds	r0, #4
 8001f12:	e002      	b.n	8001f1a <USART_ITConfig+0x22>
 8001f14:	2b03      	cmp	r3, #3
 8001f16:	bf08      	it	eq
 8001f18:	3008      	addeq	r0, #8
 8001f1a:	6803      	ldr	r3, [r0, #0]
 8001f1c:	b10a      	cbz	r2, 8001f22 <USART_ITConfig+0x2a>
 8001f1e:	4319      	orrs	r1, r3
 8001f20:	e001      	b.n	8001f26 <USART_ITConfig+0x2e>
 8001f22:	ea23 0101 	bic.w	r1, r3, r1
 8001f26:	6001      	str	r1, [r0, #0]
 8001f28:	bd10      	pop	{r4, pc}

08001f2a <USART_GetITStatus>:
 8001f2a:	b510      	push	{r4, lr}
 8001f2c:	bf00      	nop
 8001f2e:	bf00      	nop
 8001f30:	2401      	movs	r4, #1
 8001f32:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001f36:	b2cb      	uxtb	r3, r1
 8001f38:	42a2      	cmp	r2, r4
 8001f3a:	fa04 f303 	lsl.w	r3, r4, r3
 8001f3e:	d101      	bne.n	8001f44 <USART_GetITStatus+0x1a>
 8001f40:	6802      	ldr	r2, [r0, #0]
 8001f42:	e003      	b.n	8001f4c <USART_GetITStatus+0x22>
 8001f44:	2a02      	cmp	r2, #2
 8001f46:	bf0c      	ite	eq
 8001f48:	6842      	ldreq	r2, [r0, #4]
 8001f4a:	6882      	ldrne	r2, [r0, #8]
 8001f4c:	4013      	ands	r3, r2
 8001f4e:	69c2      	ldr	r2, [r0, #28]
 8001f50:	b143      	cbz	r3, 8001f64 <USART_GetITStatus+0x3a>
 8001f52:	2301      	movs	r3, #1
 8001f54:	0c09      	lsrs	r1, r1, #16
 8001f56:	fa03 f101 	lsl.w	r1, r3, r1
 8001f5a:	4211      	tst	r1, r2
 8001f5c:	bf0c      	ite	eq
 8001f5e:	2000      	moveq	r0, #0
 8001f60:	2001      	movne	r0, #1
 8001f62:	bd10      	pop	{r4, pc}
 8001f64:	4618      	mov	r0, r3
 8001f66:	bd10      	pop	{r4, pc}

08001f68 <USART_ClearITPendingBit>:
 8001f68:	bf00      	nop
 8001f6a:	bf00      	nop
 8001f6c:	2301      	movs	r3, #1
 8001f6e:	0c09      	lsrs	r1, r1, #16
 8001f70:	fa03 f101 	lsl.w	r1, r3, r1
 8001f74:	6201      	str	r1, [r0, #32]
 8001f76:	4770      	bx	lr

08001f78 <uart_write>:
 8001f78:	4b03      	ldr	r3, [pc, #12]	; (8001f88 <uart_write+0x10>)
 8001f7a:	69da      	ldr	r2, [r3, #28]
 8001f7c:	0612      	lsls	r2, r2, #24
 8001f7e:	d401      	bmi.n	8001f84 <uart_write+0xc>
 8001f80:	bf00      	nop
 8001f82:	e7f9      	b.n	8001f78 <uart_write>
 8001f84:	8518      	strh	r0, [r3, #40]	; 0x28
 8001f86:	4770      	bx	lr
 8001f88:	40013800 	.word	0x40013800

08001f8c <uart_init>:
 8001f8c:	b530      	push	{r4, r5, lr}
 8001f8e:	4b2c      	ldr	r3, [pc, #176]	; (8002040 <uart_init+0xb4>)
 8001f90:	4d2c      	ldr	r5, [pc, #176]	; (8002044 <uart_init+0xb8>)
 8001f92:	2400      	movs	r4, #0
 8001f94:	601c      	str	r4, [r3, #0]
 8001f96:	4b2c      	ldr	r3, [pc, #176]	; (8002048 <uart_init+0xbc>)
 8001f98:	b08b      	sub	sp, #44	; 0x2c
 8001f9a:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001f9e:	2101      	movs	r1, #1
 8001fa0:	601c      	str	r4, [r3, #0]
 8001fa2:	f7ff fd5d 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 8001fa6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001faa:	2101      	movs	r1, #1
 8001fac:	f7ff fd66 	bl	8001a7c <RCC_APB2PeriphClockCmd>
 8001fb0:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001fb4:	9302      	str	r3, [sp, #8]
 8001fb6:	2302      	movs	r3, #2
 8001fb8:	f88d 300c 	strb.w	r3, [sp, #12]
 8001fbc:	a902      	add	r1, sp, #8
 8001fbe:	2303      	movs	r3, #3
 8001fc0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001fc4:	f88d 300d 	strb.w	r3, [sp, #13]
 8001fc8:	f88d 400e 	strb.w	r4, [sp, #14]
 8001fcc:	f88d 400f 	strb.w	r4, [sp, #15]
 8001fd0:	f000 fb53 	bl	800267a <GPIO_Init>
 8001fd4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001fd8:	2109      	movs	r1, #9
 8001fda:	2207      	movs	r2, #7
 8001fdc:	f000 fb9b 	bl	8002716 <GPIO_PinAFConfig>
 8001fe0:	2207      	movs	r2, #7
 8001fe2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001fe6:	210a      	movs	r1, #10
 8001fe8:	f000 fb95 	bl	8002716 <GPIO_PinAFConfig>
 8001fec:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001ff0:	9304      	str	r3, [sp, #16]
 8001ff2:	4628      	mov	r0, r5
 8001ff4:	230c      	movs	r3, #12
 8001ff6:	a904      	add	r1, sp, #16
 8001ff8:	9308      	str	r3, [sp, #32]
 8001ffa:	9405      	str	r4, [sp, #20]
 8001ffc:	9406      	str	r4, [sp, #24]
 8001ffe:	9407      	str	r4, [sp, #28]
 8002000:	9409      	str	r4, [sp, #36]	; 0x24
 8002002:	f7ff ff07 	bl	8001e14 <USART_Init>
 8002006:	4628      	mov	r0, r5
 8002008:	2101      	movs	r1, #1
 800200a:	f7ff ff65 	bl	8001ed8 <USART_Cmd>
 800200e:	2201      	movs	r2, #1
 8002010:	4628      	mov	r0, r5
 8002012:	490e      	ldr	r1, [pc, #56]	; (800204c <uart_init+0xc0>)
 8002014:	f7ff ff70 	bl	8001ef8 <USART_ITConfig>
 8002018:	2325      	movs	r3, #37	; 0x25
 800201a:	f88d 4005 	strb.w	r4, [sp, #5]
 800201e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002022:	a801      	add	r0, sp, #4
 8002024:	2401      	movs	r4, #1
 8002026:	f88d 3004 	strb.w	r3, [sp, #4]
 800202a:	f88d 4007 	strb.w	r4, [sp, #7]
 800202e:	f000 fadb 	bl	80025e8 <NVIC_Init>
 8002032:	4628      	mov	r0, r5
 8002034:	4621      	mov	r1, r4
 8002036:	f7ff ff4f 	bl	8001ed8 <USART_Cmd>
 800203a:	b00b      	add	sp, #44	; 0x2c
 800203c:	bd30      	pop	{r4, r5, pc}
 800203e:	bf00      	nop
 8002040:	200012c4 	.word	0x200012c4
 8002044:	40013800 	.word	0x40013800
 8002048:	200012c8 	.word	0x200012c8
 800204c:	00050105 	.word	0x00050105

08002050 <USART1_IRQHandler>:
 8002050:	b508      	push	{r3, lr}
 8002052:	480d      	ldr	r0, [pc, #52]	; (8002088 <USART1_IRQHandler+0x38>)
 8002054:	490d      	ldr	r1, [pc, #52]	; (800208c <USART1_IRQHandler+0x3c>)
 8002056:	f7ff ff68 	bl	8001f2a <USART_GetITStatus>
 800205a:	b178      	cbz	r0, 800207c <USART1_IRQHandler+0x2c>
 800205c:	480a      	ldr	r0, [pc, #40]	; (8002088 <USART1_IRQHandler+0x38>)
 800205e:	f7ff ff46 	bl	8001eee <USART_ReceiveData>
 8002062:	4b0b      	ldr	r3, [pc, #44]	; (8002090 <USART1_IRQHandler+0x40>)
 8002064:	490b      	ldr	r1, [pc, #44]	; (8002094 <USART1_IRQHandler+0x44>)
 8002066:	681a      	ldr	r2, [r3, #0]
 8002068:	b2c0      	uxtb	r0, r0
 800206a:	5488      	strb	r0, [r1, r2]
 800206c:	681a      	ldr	r2, [r3, #0]
 800206e:	3201      	adds	r2, #1
 8002070:	601a      	str	r2, [r3, #0]
 8002072:	681a      	ldr	r2, [r3, #0]
 8002074:	2a0f      	cmp	r2, #15
 8002076:	bf84      	itt	hi
 8002078:	2200      	movhi	r2, #0
 800207a:	601a      	strhi	r2, [r3, #0]
 800207c:	4802      	ldr	r0, [pc, #8]	; (8002088 <USART1_IRQHandler+0x38>)
 800207e:	4903      	ldr	r1, [pc, #12]	; (800208c <USART1_IRQHandler+0x3c>)
 8002080:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002084:	f7ff bf70 	b.w	8001f68 <USART_ClearITPendingBit>
 8002088:	40013800 	.word	0x40013800
 800208c:	00050105 	.word	0x00050105
 8002090:	200012c4 	.word	0x200012c4
 8002094:	200012b4 	.word	0x200012b4

08002098 <i2c_delay>:
 8002098:	230b      	movs	r3, #11
 800209a:	3b01      	subs	r3, #1
 800209c:	d001      	beq.n	80020a2 <i2c_delay+0xa>
 800209e:	bf00      	nop
 80020a0:	e7fb      	b.n	800209a <i2c_delay+0x2>
 80020a2:	4770      	bx	lr

080020a4 <SetLowSDA>:
 80020a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80020a6:	4d0d      	ldr	r5, [pc, #52]	; (80020dc <SetLowSDA+0x38>)
 80020a8:	2301      	movs	r3, #1
 80020aa:	2203      	movs	r2, #3
 80020ac:	2480      	movs	r4, #128	; 0x80
 80020ae:	f88d 3004 	strb.w	r3, [sp, #4]
 80020b2:	f88d 3006 	strb.w	r3, [sp, #6]
 80020b6:	4628      	mov	r0, r5
 80020b8:	2300      	movs	r3, #0
 80020ba:	4669      	mov	r1, sp
 80020bc:	f88d 2005 	strb.w	r2, [sp, #5]
 80020c0:	f88d 3007 	strb.w	r3, [sp, #7]
 80020c4:	9400      	str	r4, [sp, #0]
 80020c6:	f000 fad8 	bl	800267a <GPIO_Init>
 80020ca:	4628      	mov	r0, r5
 80020cc:	4621      	mov	r1, r4
 80020ce:	f000 fb1e 	bl	800270e <GPIO_ResetBits>
 80020d2:	f7ff ffe1 	bl	8002098 <i2c_delay>
 80020d6:	b003      	add	sp, #12
 80020d8:	bd30      	pop	{r4, r5, pc}
 80020da:	bf00      	nop
 80020dc:	48000400 	.word	0x48000400

080020e0 <SetHighSDA>:
 80020e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80020e2:	4d0d      	ldr	r5, [pc, #52]	; (8002118 <SetHighSDA+0x38>)
 80020e4:	2203      	movs	r2, #3
 80020e6:	2300      	movs	r3, #0
 80020e8:	2480      	movs	r4, #128	; 0x80
 80020ea:	f88d 2005 	strb.w	r2, [sp, #5]
 80020ee:	4628      	mov	r0, r5
 80020f0:	2201      	movs	r2, #1
 80020f2:	4669      	mov	r1, sp
 80020f4:	f88d 3004 	strb.w	r3, [sp, #4]
 80020f8:	f88d 2006 	strb.w	r2, [sp, #6]
 80020fc:	f88d 3007 	strb.w	r3, [sp, #7]
 8002100:	9400      	str	r4, [sp, #0]
 8002102:	f000 faba 	bl	800267a <GPIO_Init>
 8002106:	4628      	mov	r0, r5
 8002108:	4621      	mov	r1, r4
 800210a:	f000 fafc 	bl	8002706 <GPIO_SetBits>
 800210e:	f7ff ffc3 	bl	8002098 <i2c_delay>
 8002112:	b003      	add	sp, #12
 8002114:	bd30      	pop	{r4, r5, pc}
 8002116:	bf00      	nop
 8002118:	48000400 	.word	0x48000400

0800211c <SetLowSCL>:
 800211c:	b508      	push	{r3, lr}
 800211e:	4804      	ldr	r0, [pc, #16]	; (8002130 <SetLowSCL+0x14>)
 8002120:	2140      	movs	r1, #64	; 0x40
 8002122:	f000 faf4 	bl	800270e <GPIO_ResetBits>
 8002126:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800212a:	f7ff bfb5 	b.w	8002098 <i2c_delay>
 800212e:	bf00      	nop
 8002130:	48000400 	.word	0x48000400

08002134 <SetHighSCL>:
 8002134:	b508      	push	{r3, lr}
 8002136:	4804      	ldr	r0, [pc, #16]	; (8002148 <SetHighSCL+0x14>)
 8002138:	2140      	movs	r1, #64	; 0x40
 800213a:	f000 fae4 	bl	8002706 <GPIO_SetBits>
 800213e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002142:	f7ff bfa9 	b.w	8002098 <i2c_delay>
 8002146:	bf00      	nop
 8002148:	48000400 	.word	0x48000400

0800214c <i2c_0_init>:
 800214c:	b507      	push	{r0, r1, r2, lr}
 800214e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002152:	2101      	movs	r1, #1
 8002154:	f7ff fc84 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 8002158:	23c0      	movs	r3, #192	; 0xc0
 800215a:	9300      	str	r3, [sp, #0]
 800215c:	2301      	movs	r3, #1
 800215e:	2203      	movs	r2, #3
 8002160:	480a      	ldr	r0, [pc, #40]	; (800218c <i2c_0_init+0x40>)
 8002162:	f88d 3004 	strb.w	r3, [sp, #4]
 8002166:	4669      	mov	r1, sp
 8002168:	f88d 3006 	strb.w	r3, [sp, #6]
 800216c:	2300      	movs	r3, #0
 800216e:	f88d 2005 	strb.w	r2, [sp, #5]
 8002172:	f88d 3007 	strb.w	r3, [sp, #7]
 8002176:	f000 fa80 	bl	800267a <GPIO_Init>
 800217a:	f7ff ffdb 	bl	8002134 <SetHighSCL>
 800217e:	f7ff ff91 	bl	80020a4 <SetLowSDA>
 8002182:	f7ff ffad 	bl	80020e0 <SetHighSDA>
 8002186:	b003      	add	sp, #12
 8002188:	f85d fb04 	ldr.w	pc, [sp], #4
 800218c:	48000400 	.word	0x48000400

08002190 <i2cStart>:
 8002190:	b508      	push	{r3, lr}
 8002192:	f7ff ffcf 	bl	8002134 <SetHighSCL>
 8002196:	f7ff ffa3 	bl	80020e0 <SetHighSDA>
 800219a:	f7ff ffcb 	bl	8002134 <SetHighSCL>
 800219e:	f7ff ff81 	bl	80020a4 <SetLowSDA>
 80021a2:	f7ff ffbb 	bl	800211c <SetLowSCL>
 80021a6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80021aa:	f7ff bf99 	b.w	80020e0 <SetHighSDA>

080021ae <i2cStop>:
 80021ae:	b508      	push	{r3, lr}
 80021b0:	f7ff ffb4 	bl	800211c <SetLowSCL>
 80021b4:	f7ff ff76 	bl	80020a4 <SetLowSDA>
 80021b8:	f7ff ffbc 	bl	8002134 <SetHighSCL>
 80021bc:	f7ff ff72 	bl	80020a4 <SetLowSDA>
 80021c0:	f7ff ffb8 	bl	8002134 <SetHighSCL>
 80021c4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80021c8:	f7ff bf8a 	b.w	80020e0 <SetHighSDA>

080021cc <i2cWrite>:
 80021cc:	b538      	push	{r3, r4, r5, lr}
 80021ce:	4604      	mov	r4, r0
 80021d0:	2508      	movs	r5, #8
 80021d2:	f7ff ffa3 	bl	800211c <SetLowSCL>
 80021d6:	0623      	lsls	r3, r4, #24
 80021d8:	d502      	bpl.n	80021e0 <i2cWrite+0x14>
 80021da:	f7ff ff81 	bl	80020e0 <SetHighSDA>
 80021de:	e001      	b.n	80021e4 <i2cWrite+0x18>
 80021e0:	f7ff ff60 	bl	80020a4 <SetLowSDA>
 80021e4:	3d01      	subs	r5, #1
 80021e6:	f7ff ffa5 	bl	8002134 <SetHighSCL>
 80021ea:	0064      	lsls	r4, r4, #1
 80021ec:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80021f0:	b2e4      	uxtb	r4, r4
 80021f2:	d1ee      	bne.n	80021d2 <i2cWrite+0x6>
 80021f4:	f7ff ff92 	bl	800211c <SetLowSCL>
 80021f8:	f7ff ff72 	bl	80020e0 <SetHighSDA>
 80021fc:	f7ff ff9a 	bl	8002134 <SetHighSCL>
 8002200:	4b05      	ldr	r3, [pc, #20]	; (8002218 <i2cWrite+0x4c>)
 8002202:	8a1c      	ldrh	r4, [r3, #16]
 8002204:	b2a4      	uxth	r4, r4
 8002206:	f7ff ff89 	bl	800211c <SetLowSCL>
 800220a:	f7ff ff45 	bl	8002098 <i2c_delay>
 800220e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002212:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002216:	bd38      	pop	{r3, r4, r5, pc}
 8002218:	48000400 	.word	0x48000400

0800221c <i2cRead>:
 800221c:	b570      	push	{r4, r5, r6, lr}
 800221e:	4606      	mov	r6, r0
 8002220:	f7ff ff7c 	bl	800211c <SetLowSCL>
 8002224:	f7ff ff5c 	bl	80020e0 <SetHighSDA>
 8002228:	2508      	movs	r5, #8
 800222a:	2400      	movs	r4, #0
 800222c:	f7ff ff82 	bl	8002134 <SetHighSCL>
 8002230:	4b0d      	ldr	r3, [pc, #52]	; (8002268 <i2cRead+0x4c>)
 8002232:	8a1b      	ldrh	r3, [r3, #16]
 8002234:	0064      	lsls	r4, r4, #1
 8002236:	061a      	lsls	r2, r3, #24
 8002238:	b2e4      	uxtb	r4, r4
 800223a:	bf48      	it	mi
 800223c:	3401      	addmi	r4, #1
 800223e:	f105 35ff 	add.w	r5, r5, #4294967295
 8002242:	bf48      	it	mi
 8002244:	b2e4      	uxtbmi	r4, r4
 8002246:	f7ff ff69 	bl	800211c <SetLowSCL>
 800224a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800224e:	d1ed      	bne.n	800222c <i2cRead+0x10>
 8002250:	b10e      	cbz	r6, 8002256 <i2cRead+0x3a>
 8002252:	f7ff ff27 	bl	80020a4 <SetLowSDA>
 8002256:	f7ff ff6d 	bl	8002134 <SetHighSCL>
 800225a:	f7ff ff5f 	bl	800211c <SetLowSCL>
 800225e:	f7ff ff1b 	bl	8002098 <i2c_delay>
 8002262:	4620      	mov	r0, r4
 8002264:	bd70      	pop	{r4, r5, r6, pc}
 8002266:	bf00      	nop
 8002268:	48000400 	.word	0x48000400

0800226c <i2c_write_reg>:
 800226c:	b570      	push	{r4, r5, r6, lr}
 800226e:	4605      	mov	r5, r0
 8002270:	460c      	mov	r4, r1
 8002272:	4616      	mov	r6, r2
 8002274:	f7ff ff8c 	bl	8002190 <i2cStart>
 8002278:	4628      	mov	r0, r5
 800227a:	f7ff ffa7 	bl	80021cc <i2cWrite>
 800227e:	4620      	mov	r0, r4
 8002280:	f7ff ffa4 	bl	80021cc <i2cWrite>
 8002284:	4630      	mov	r0, r6
 8002286:	f7ff ffa1 	bl	80021cc <i2cWrite>
 800228a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800228e:	f7ff bf8e 	b.w	80021ae <i2cStop>

08002292 <i2c_read_reg>:
 8002292:	b538      	push	{r3, r4, r5, lr}
 8002294:	4604      	mov	r4, r0
 8002296:	460d      	mov	r5, r1
 8002298:	f7ff ff7a 	bl	8002190 <i2cStart>
 800229c:	4620      	mov	r0, r4
 800229e:	f7ff ff95 	bl	80021cc <i2cWrite>
 80022a2:	4628      	mov	r0, r5
 80022a4:	f7ff ff92 	bl	80021cc <i2cWrite>
 80022a8:	f7ff ff72 	bl	8002190 <i2cStart>
 80022ac:	f044 0001 	orr.w	r0, r4, #1
 80022b0:	f7ff ff8c 	bl	80021cc <i2cWrite>
 80022b4:	2000      	movs	r0, #0
 80022b6:	f7ff ffb1 	bl	800221c <i2cRead>
 80022ba:	4604      	mov	r4, r0
 80022bc:	f7ff ff77 	bl	80021ae <i2cStop>
 80022c0:	4620      	mov	r0, r4
 80022c2:	bd38      	pop	{r3, r4, r5, pc}

080022c4 <SystemInit>:
 80022c4:	4b3b      	ldr	r3, [pc, #236]	; (80023b4 <SystemInit+0xf0>)
 80022c6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80022ca:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80022ce:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80022d2:	4b39      	ldr	r3, [pc, #228]	; (80023b8 <SystemInit+0xf4>)
 80022d4:	681a      	ldr	r2, [r3, #0]
 80022d6:	f042 0201 	orr.w	r2, r2, #1
 80022da:	601a      	str	r2, [r3, #0]
 80022dc:	6859      	ldr	r1, [r3, #4]
 80022de:	4a37      	ldr	r2, [pc, #220]	; (80023bc <SystemInit+0xf8>)
 80022e0:	400a      	ands	r2, r1
 80022e2:	605a      	str	r2, [r3, #4]
 80022e4:	681a      	ldr	r2, [r3, #0]
 80022e6:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80022ea:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80022ee:	601a      	str	r2, [r3, #0]
 80022f0:	681a      	ldr	r2, [r3, #0]
 80022f2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80022f6:	601a      	str	r2, [r3, #0]
 80022f8:	685a      	ldr	r2, [r3, #4]
 80022fa:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80022fe:	605a      	str	r2, [r3, #4]
 8002300:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002302:	f022 020f 	bic.w	r2, r2, #15
 8002306:	62da      	str	r2, [r3, #44]	; 0x2c
 8002308:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800230a:	4a2d      	ldr	r2, [pc, #180]	; (80023c0 <SystemInit+0xfc>)
 800230c:	b082      	sub	sp, #8
 800230e:	400a      	ands	r2, r1
 8002310:	631a      	str	r2, [r3, #48]	; 0x30
 8002312:	2200      	movs	r2, #0
 8002314:	609a      	str	r2, [r3, #8]
 8002316:	9200      	str	r2, [sp, #0]
 8002318:	9201      	str	r2, [sp, #4]
 800231a:	681a      	ldr	r2, [r3, #0]
 800231c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002320:	601a      	str	r2, [r3, #0]
 8002322:	4b25      	ldr	r3, [pc, #148]	; (80023b8 <SystemInit+0xf4>)
 8002324:	681a      	ldr	r2, [r3, #0]
 8002326:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800232a:	9201      	str	r2, [sp, #4]
 800232c:	9a00      	ldr	r2, [sp, #0]
 800232e:	3201      	adds	r2, #1
 8002330:	9200      	str	r2, [sp, #0]
 8002332:	9a01      	ldr	r2, [sp, #4]
 8002334:	b91a      	cbnz	r2, 800233e <SystemInit+0x7a>
 8002336:	9a00      	ldr	r2, [sp, #0]
 8002338:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800233c:	d1f1      	bne.n	8002322 <SystemInit+0x5e>
 800233e:	681b      	ldr	r3, [r3, #0]
 8002340:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8002344:	bf18      	it	ne
 8002346:	2301      	movne	r3, #1
 8002348:	9301      	str	r3, [sp, #4]
 800234a:	9b01      	ldr	r3, [sp, #4]
 800234c:	2b01      	cmp	r3, #1
 800234e:	d005      	beq.n	800235c <SystemInit+0x98>
 8002350:	4b18      	ldr	r3, [pc, #96]	; (80023b4 <SystemInit+0xf0>)
 8002352:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002356:	609a      	str	r2, [r3, #8]
 8002358:	b002      	add	sp, #8
 800235a:	4770      	bx	lr
 800235c:	4b19      	ldr	r3, [pc, #100]	; (80023c4 <SystemInit+0x100>)
 800235e:	2212      	movs	r2, #18
 8002360:	601a      	str	r2, [r3, #0]
 8002362:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8002366:	685a      	ldr	r2, [r3, #4]
 8002368:	605a      	str	r2, [r3, #4]
 800236a:	685a      	ldr	r2, [r3, #4]
 800236c:	605a      	str	r2, [r3, #4]
 800236e:	685a      	ldr	r2, [r3, #4]
 8002370:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002374:	605a      	str	r2, [r3, #4]
 8002376:	685a      	ldr	r2, [r3, #4]
 8002378:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800237c:	605a      	str	r2, [r3, #4]
 800237e:	685a      	ldr	r2, [r3, #4]
 8002380:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002384:	605a      	str	r2, [r3, #4]
 8002386:	681a      	ldr	r2, [r3, #0]
 8002388:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800238c:	601a      	str	r2, [r3, #0]
 800238e:	6819      	ldr	r1, [r3, #0]
 8002390:	4a09      	ldr	r2, [pc, #36]	; (80023b8 <SystemInit+0xf4>)
 8002392:	0189      	lsls	r1, r1, #6
 8002394:	d5fb      	bpl.n	800238e <SystemInit+0xca>
 8002396:	6853      	ldr	r3, [r2, #4]
 8002398:	f023 0303 	bic.w	r3, r3, #3
 800239c:	6053      	str	r3, [r2, #4]
 800239e:	6853      	ldr	r3, [r2, #4]
 80023a0:	f043 0302 	orr.w	r3, r3, #2
 80023a4:	6053      	str	r3, [r2, #4]
 80023a6:	4b04      	ldr	r3, [pc, #16]	; (80023b8 <SystemInit+0xf4>)
 80023a8:	685b      	ldr	r3, [r3, #4]
 80023aa:	f003 030c 	and.w	r3, r3, #12
 80023ae:	2b08      	cmp	r3, #8
 80023b0:	d1f9      	bne.n	80023a6 <SystemInit+0xe2>
 80023b2:	e7cd      	b.n	8002350 <SystemInit+0x8c>
 80023b4:	e000ed00 	.word	0xe000ed00
 80023b8:	40021000 	.word	0x40021000
 80023bc:	f87fc00c 	.word	0xf87fc00c
 80023c0:	ff00fccc 	.word	0xff00fccc
 80023c4:	40022000 	.word	0x40022000

080023c8 <sys_tick_init>:
 80023c8:	4b05      	ldr	r3, [pc, #20]	; (80023e0 <sys_tick_init+0x18>)
 80023ca:	4a06      	ldr	r2, [pc, #24]	; (80023e4 <sys_tick_init+0x1c>)
 80023cc:	605a      	str	r2, [r3, #4]
 80023ce:	4a06      	ldr	r2, [pc, #24]	; (80023e8 <sys_tick_init+0x20>)
 80023d0:	21f0      	movs	r1, #240	; 0xf0
 80023d2:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80023d6:	2200      	movs	r2, #0
 80023d8:	609a      	str	r2, [r3, #8]
 80023da:	2207      	movs	r2, #7
 80023dc:	601a      	str	r2, [r3, #0]
 80023de:	4770      	bx	lr
 80023e0:	e000e010 	.word	0xe000e010
 80023e4:	00029040 	.word	0x00029040
 80023e8:	e000ed00 	.word	0xe000ed00

080023ec <sleep>:
 80023ec:	bf30      	wfi
 80023ee:	4770      	bx	lr

080023f0 <sytem_clock_init>:
 80023f0:	f7ff bf68 	b.w	80022c4 <SystemInit>

080023f4 <pwm_set>:
 80023f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80023f8:	b086      	sub	sp, #24
 80023fa:	2370      	movs	r3, #112	; 0x70
 80023fc:	9301      	str	r3, [sp, #4]
 80023fe:	2301      	movs	r3, #1
 8002400:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002404:	2304      	movs	r3, #4
 8002406:	f8ad 300a 	strh.w	r3, [sp, #10]
 800240a:	4f17      	ldr	r7, [pc, #92]	; (8002468 <pwm_set+0x74>)
 800240c:	4c17      	ldr	r4, [pc, #92]	; (800246c <pwm_set+0x78>)
 800240e:	2302      	movs	r3, #2
 8002410:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002414:	2300      	movs	r3, #0
 8002416:	f8ad 3012 	strh.w	r3, [sp, #18]
 800241a:	f8ad 3016 	strh.w	r3, [sp, #22]
 800241e:	683b      	ldr	r3, [r7, #0]
 8002420:	f242 7610 	movw	r6, #10000	; 0x2710
 8002424:	fbb3 f3f6 	udiv	r3, r3, r6
 8002428:	3b02      	subs	r3, #2
 800242a:	4358      	muls	r0, r3
 800242c:	2564      	movs	r5, #100	; 0x64
 800242e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002432:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002436:	4620      	mov	r0, r4
 8002438:	4688      	mov	r8, r1
 800243a:	a901      	add	r1, sp, #4
 800243c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002440:	9303      	str	r3, [sp, #12]
 8002442:	f7ff fb95 	bl	8001b70 <TIM_OC1Init>
 8002446:	683b      	ldr	r3, [r7, #0]
 8002448:	fbb3 f6f6 	udiv	r6, r3, r6
 800244c:	3e02      	subs	r6, #2
 800244e:	fb06 f808 	mul.w	r8, r6, r8
 8002452:	fbb8 f5f5 	udiv	r5, r8, r5
 8002456:	4620      	mov	r0, r4
 8002458:	a901      	add	r1, sp, #4
 800245a:	9503      	str	r5, [sp, #12]
 800245c:	f7ff fbce 	bl	8001bfc <TIM_OC2Init>
 8002460:	b006      	add	sp, #24
 8002462:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002466:	bf00      	nop
 8002468:	20000150 	.word	0x20000150
 800246c:	40012c00 	.word	0x40012c00

08002470 <pwm_init>:
 8002470:	b530      	push	{r4, r5, lr}
 8002472:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002476:	b087      	sub	sp, #28
 8002478:	2101      	movs	r1, #1
 800247a:	f7ff faff 	bl	8001a7c <RCC_APB2PeriphClockCmd>
 800247e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002482:	2101      	movs	r1, #1
 8002484:	f7ff faec 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 8002488:	4c1d      	ldr	r4, [pc, #116]	; (8002500 <pwm_init+0x90>)
 800248a:	4d1e      	ldr	r5, [pc, #120]	; (8002504 <pwm_init+0x94>)
 800248c:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002490:	9301      	str	r3, [sp, #4]
 8002492:	2302      	movs	r3, #2
 8002494:	f88d 3008 	strb.w	r3, [sp, #8]
 8002498:	4620      	mov	r0, r4
 800249a:	2303      	movs	r3, #3
 800249c:	a901      	add	r1, sp, #4
 800249e:	f88d 3009 	strb.w	r3, [sp, #9]
 80024a2:	f000 f8ea 	bl	800267a <GPIO_Init>
 80024a6:	4620      	mov	r0, r4
 80024a8:	210d      	movs	r1, #13
 80024aa:	2206      	movs	r2, #6
 80024ac:	f000 f933 	bl	8002716 <GPIO_PinAFConfig>
 80024b0:	4620      	mov	r0, r4
 80024b2:	210e      	movs	r1, #14
 80024b4:	2206      	movs	r2, #6
 80024b6:	f000 f92e 	bl	8002716 <GPIO_PinAFConfig>
 80024ba:	4b13      	ldr	r3, [pc, #76]	; (8002508 <pwm_init+0x98>)
 80024bc:	681a      	ldr	r2, [r3, #0]
 80024be:	f242 7310 	movw	r3, #10000	; 0x2710
 80024c2:	fbb2 f3f3 	udiv	r3, r2, r3
 80024c6:	2400      	movs	r4, #0
 80024c8:	3b01      	subs	r3, #1
 80024ca:	4628      	mov	r0, r5
 80024cc:	a903      	add	r1, sp, #12
 80024ce:	9304      	str	r3, [sp, #16]
 80024d0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80024d4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80024d8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80024dc:	f8ad 4016 	strh.w	r4, [sp, #22]
 80024e0:	f7ff fae8 	bl	8001ab4 <TIM_TimeBaseInit>
 80024e4:	4620      	mov	r0, r4
 80024e6:	4621      	mov	r1, r4
 80024e8:	f7ff ff84 	bl	80023f4 <pwm_set>
 80024ec:	4628      	mov	r0, r5
 80024ee:	2101      	movs	r1, #1
 80024f0:	f7ff fb30 	bl	8001b54 <TIM_Cmd>
 80024f4:	4628      	mov	r0, r5
 80024f6:	2101      	movs	r1, #1
 80024f8:	f7ff fbbe 	bl	8001c78 <TIM_CtrlPWMOutputs>
 80024fc:	b007      	add	sp, #28
 80024fe:	bd30      	pop	{r4, r5, pc}
 8002500:	48000400 	.word	0x48000400
 8002504:	40012c00 	.word	0x40012c00
 8002508:	20000150 	.word	0x20000150

0800250c <drv8834_run>:
 800250c:	1e02      	subs	r2, r0, #0
 800250e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002512:	dd07      	ble.n	8002524 <drv8834_run+0x18>
 8002514:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002516:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 800251a:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 800251e:	b280      	uxth	r0, r0
 8002520:	8518      	strh	r0, [r3, #40]	; 0x28
 8002522:	e005      	b.n	8002530 <drv8834_run+0x24>
 8002524:	6998      	ldr	r0, [r3, #24]
 8002526:	4252      	negs	r2, r2
 8002528:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 800252c:	6198      	str	r0, [r3, #24]
 800252e:	b212      	sxth	r2, r2
 8002530:	2900      	cmp	r1, #0
 8002532:	4b0c      	ldr	r3, [pc, #48]	; (8002564 <drv8834_run+0x58>)
 8002534:	dd05      	ble.n	8002542 <drv8834_run+0x36>
 8002536:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002538:	b280      	uxth	r0, r0
 800253a:	f040 0020 	orr.w	r0, r0, #32
 800253e:	8518      	strh	r0, [r3, #40]	; 0x28
 8002540:	e005      	b.n	800254e <drv8834_run+0x42>
 8002542:	6998      	ldr	r0, [r3, #24]
 8002544:	4249      	negs	r1, r1
 8002546:	f040 0020 	orr.w	r0, r0, #32
 800254a:	6198      	str	r0, [r3, #24]
 800254c:	b209      	sxth	r1, r1
 800254e:	2964      	cmp	r1, #100	; 0x64
 8002550:	bfb4      	ite	lt
 8002552:	4608      	movlt	r0, r1
 8002554:	2064      	movge	r0, #100	; 0x64
 8002556:	2a64      	cmp	r2, #100	; 0x64
 8002558:	bfb4      	ite	lt
 800255a:	4611      	movlt	r1, r2
 800255c:	2164      	movge	r1, #100	; 0x64
 800255e:	f7ff bf49 	b.w	80023f4 <pwm_set>
 8002562:	bf00      	nop
 8002564:	48000400 	.word	0x48000400

08002568 <drv8834_init>:
 8002568:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 800256c:	4f1d      	ldr	r7, [pc, #116]	; (80025e4 <drv8834_init+0x7c>)
 800256e:	2400      	movs	r4, #0
 8002570:	2601      	movs	r6, #1
 8002572:	2503      	movs	r5, #3
 8002574:	f04f 0810 	mov.w	r8, #16
 8002578:	4638      	mov	r0, r7
 800257a:	4669      	mov	r1, sp
 800257c:	f8cd 8000 	str.w	r8, [sp]
 8002580:	f88d 6004 	strb.w	r6, [sp, #4]
 8002584:	f88d 4006 	strb.w	r4, [sp, #6]
 8002588:	f88d 5005 	strb.w	r5, [sp, #5]
 800258c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002590:	f000 f873 	bl	800267a <GPIO_Init>
 8002594:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002598:	2320      	movs	r3, #32
 800259a:	4638      	mov	r0, r7
 800259c:	4669      	mov	r1, sp
 800259e:	9300      	str	r3, [sp, #0]
 80025a0:	f88d 6004 	strb.w	r6, [sp, #4]
 80025a4:	f88d 4006 	strb.w	r4, [sp, #6]
 80025a8:	f88d 5005 	strb.w	r5, [sp, #5]
 80025ac:	f88d 4007 	strb.w	r4, [sp, #7]
 80025b0:	f000 f863 	bl	800267a <GPIO_Init>
 80025b4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80025b8:	4669      	mov	r1, sp
 80025ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80025be:	9300      	str	r3, [sp, #0]
 80025c0:	f88d 6004 	strb.w	r6, [sp, #4]
 80025c4:	f88d 4006 	strb.w	r4, [sp, #6]
 80025c8:	f88d 5005 	strb.w	r5, [sp, #5]
 80025cc:	f88d 4007 	strb.w	r4, [sp, #7]
 80025d0:	f000 f853 	bl	800267a <GPIO_Init>
 80025d4:	4620      	mov	r0, r4
 80025d6:	4621      	mov	r1, r4
 80025d8:	f7ff ff98 	bl	800250c <drv8834_run>
 80025dc:	b002      	add	sp, #8
 80025de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80025e2:	bf00      	nop
 80025e4:	48000400 	.word	0x48000400

080025e8 <NVIC_Init>:
 80025e8:	b510      	push	{r4, lr}
 80025ea:	bf00      	nop
 80025ec:	bf00      	nop
 80025ee:	bf00      	nop
 80025f0:	78c2      	ldrb	r2, [r0, #3]
 80025f2:	7803      	ldrb	r3, [r0, #0]
 80025f4:	b30a      	cbz	r2, 800263a <NVIC_Init+0x52>
 80025f6:	4a16      	ldr	r2, [pc, #88]	; (8002650 <NVIC_Init+0x68>)
 80025f8:	7844      	ldrb	r4, [r0, #1]
 80025fa:	68d2      	ldr	r2, [r2, #12]
 80025fc:	43d2      	mvns	r2, r2
 80025fe:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8002602:	f1c2 0104 	rsb	r1, r2, #4
 8002606:	b2c9      	uxtb	r1, r1
 8002608:	fa04 f101 	lsl.w	r1, r4, r1
 800260c:	240f      	movs	r4, #15
 800260e:	fa44 f202 	asr.w	r2, r4, r2
 8002612:	7884      	ldrb	r4, [r0, #2]
 8002614:	b2c9      	uxtb	r1, r1
 8002616:	4022      	ands	r2, r4
 8002618:	430a      	orrs	r2, r1
 800261a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800261e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002622:	0112      	lsls	r2, r2, #4
 8002624:	b2d2      	uxtb	r2, r2
 8002626:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800262a:	7803      	ldrb	r3, [r0, #0]
 800262c:	2201      	movs	r2, #1
 800262e:	0959      	lsrs	r1, r3, #5
 8002630:	f003 031f 	and.w	r3, r3, #31
 8002634:	fa02 f303 	lsl.w	r3, r2, r3
 8002638:	e006      	b.n	8002648 <NVIC_Init+0x60>
 800263a:	0959      	lsrs	r1, r3, #5
 800263c:	2201      	movs	r2, #1
 800263e:	f003 031f 	and.w	r3, r3, #31
 8002642:	fa02 f303 	lsl.w	r3, r2, r3
 8002646:	3120      	adds	r1, #32
 8002648:	4a02      	ldr	r2, [pc, #8]	; (8002654 <NVIC_Init+0x6c>)
 800264a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800264e:	bd10      	pop	{r4, pc}
 8002650:	e000ed00 	.word	0xe000ed00
 8002654:	e000e100 	.word	0xe000e100

08002658 <lib_low_level_init>:
 8002658:	b508      	push	{r3, lr}
 800265a:	f7ff fec9 	bl	80023f0 <sytem_clock_init>
 800265e:	f000 f871 	bl	8002744 <gpio_init>
 8002662:	f7ff fc93 	bl	8001f8c <uart_init>
 8002666:	f7ff fb17 	bl	8001c98 <timer_init>
 800266a:	f7ff ff01 	bl	8002470 <pwm_init>
 800266e:	f7ff ff7b 	bl	8002568 <drv8834_init>
 8002672:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002676:	f7ff bd69 	b.w	800214c <i2c_0_init>

0800267a <GPIO_Init>:
 800267a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800267c:	bf00      	nop
 800267e:	bf00      	nop
 8002680:	bf00      	nop
 8002682:	bf00      	nop
 8002684:	2300      	movs	r3, #0
 8002686:	680e      	ldr	r6, [r1, #0]
 8002688:	461a      	mov	r2, r3
 800268a:	2501      	movs	r5, #1
 800268c:	4095      	lsls	r5, r2
 800268e:	ea05 0406 	and.w	r4, r5, r6
 8002692:	42ac      	cmp	r4, r5
 8002694:	d131      	bne.n	80026fa <GPIO_Init+0x80>
 8002696:	790d      	ldrb	r5, [r1, #4]
 8002698:	1e6f      	subs	r7, r5, #1
 800269a:	b2ff      	uxtb	r7, r7
 800269c:	2f01      	cmp	r7, #1
 800269e:	d81c      	bhi.n	80026da <GPIO_Init+0x60>
 80026a0:	bf00      	nop
 80026a2:	f04f 0c03 	mov.w	ip, #3
 80026a6:	6887      	ldr	r7, [r0, #8]
 80026a8:	fa0c fc03 	lsl.w	ip, ip, r3
 80026ac:	ea27 070c 	bic.w	r7, r7, ip
 80026b0:	6087      	str	r7, [r0, #8]
 80026b2:	f891 c005 	ldrb.w	ip, [r1, #5]
 80026b6:	6887      	ldr	r7, [r0, #8]
 80026b8:	fa0c fc03 	lsl.w	ip, ip, r3
 80026bc:	ea4c 0707 	orr.w	r7, ip, r7
 80026c0:	6087      	str	r7, [r0, #8]
 80026c2:	bf00      	nop
 80026c4:	8887      	ldrh	r7, [r0, #4]
 80026c6:	b2bf      	uxth	r7, r7
 80026c8:	ea27 0404 	bic.w	r4, r7, r4
 80026cc:	8084      	strh	r4, [r0, #4]
 80026ce:	798c      	ldrb	r4, [r1, #6]
 80026d0:	8887      	ldrh	r7, [r0, #4]
 80026d2:	4094      	lsls	r4, r2
 80026d4:	433c      	orrs	r4, r7
 80026d6:	b2a4      	uxth	r4, r4
 80026d8:	8084      	strh	r4, [r0, #4]
 80026da:	2403      	movs	r4, #3
 80026dc:	6807      	ldr	r7, [r0, #0]
 80026de:	409c      	lsls	r4, r3
 80026e0:	43e4      	mvns	r4, r4
 80026e2:	4027      	ands	r7, r4
 80026e4:	6007      	str	r7, [r0, #0]
 80026e6:	6807      	ldr	r7, [r0, #0]
 80026e8:	409d      	lsls	r5, r3
 80026ea:	433d      	orrs	r5, r7
 80026ec:	6005      	str	r5, [r0, #0]
 80026ee:	68c5      	ldr	r5, [r0, #12]
 80026f0:	402c      	ands	r4, r5
 80026f2:	79cd      	ldrb	r5, [r1, #7]
 80026f4:	409d      	lsls	r5, r3
 80026f6:	432c      	orrs	r4, r5
 80026f8:	60c4      	str	r4, [r0, #12]
 80026fa:	3201      	adds	r2, #1
 80026fc:	2a10      	cmp	r2, #16
 80026fe:	f103 0302 	add.w	r3, r3, #2
 8002702:	d1c2      	bne.n	800268a <GPIO_Init+0x10>
 8002704:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002706 <GPIO_SetBits>:
 8002706:	bf00      	nop
 8002708:	bf00      	nop
 800270a:	6181      	str	r1, [r0, #24]
 800270c:	4770      	bx	lr

0800270e <GPIO_ResetBits>:
 800270e:	bf00      	nop
 8002710:	bf00      	nop
 8002712:	8501      	strh	r1, [r0, #40]	; 0x28
 8002714:	4770      	bx	lr

08002716 <GPIO_PinAFConfig>:
 8002716:	b510      	push	{r4, lr}
 8002718:	bf00      	nop
 800271a:	bf00      	nop
 800271c:	bf00      	nop
 800271e:	f001 0307 	and.w	r3, r1, #7
 8002722:	08c9      	lsrs	r1, r1, #3
 8002724:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002728:	009b      	lsls	r3, r3, #2
 800272a:	6a04      	ldr	r4, [r0, #32]
 800272c:	210f      	movs	r1, #15
 800272e:	4099      	lsls	r1, r3
 8002730:	ea24 0101 	bic.w	r1, r4, r1
 8002734:	6201      	str	r1, [r0, #32]
 8002736:	6a01      	ldr	r1, [r0, #32]
 8002738:	fa02 f303 	lsl.w	r3, r2, r3
 800273c:	430b      	orrs	r3, r1
 800273e:	6203      	str	r3, [r0, #32]
 8002740:	bd10      	pop	{r4, pc}
	...

08002744 <gpio_init>:
 8002744:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002748:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800274c:	2101      	movs	r1, #1
 800274e:	f7ff f987 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 8002752:	4d21      	ldr	r5, [pc, #132]	; (80027d8 <gpio_init+0x94>)
 8002754:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002758:	2101      	movs	r1, #1
 800275a:	f7ff f981 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 800275e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002762:	2101      	movs	r1, #1
 8002764:	f7ff f97c 	bl	8001a60 <RCC_AHBPeriphClockCmd>
 8002768:	2400      	movs	r4, #0
 800276a:	2603      	movs	r6, #3
 800276c:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002770:	2701      	movs	r7, #1
 8002772:	4628      	mov	r0, r5
 8002774:	4669      	mov	r1, sp
 8002776:	f88d 7004 	strb.w	r7, [sp, #4]
 800277a:	f8cd 9000 	str.w	r9, [sp]
 800277e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002782:	f88d 6005 	strb.w	r6, [sp, #5]
 8002786:	f88d 4007 	strb.w	r4, [sp, #7]
 800278a:	f7ff ff76 	bl	800267a <GPIO_Init>
 800278e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002792:	4f12      	ldr	r7, [pc, #72]	; (80027dc <gpio_init+0x98>)
 8002794:	f88d 4006 	strb.w	r4, [sp, #6]
 8002798:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 800279c:	4638      	mov	r0, r7
 800279e:	4669      	mov	r1, sp
 80027a0:	f8cd 8000 	str.w	r8, [sp]
 80027a4:	f88d 6005 	strb.w	r6, [sp, #5]
 80027a8:	f88d 4007 	strb.w	r4, [sp, #7]
 80027ac:	f7ff ff65 	bl	800267a <GPIO_Init>
 80027b0:	f44f 7300 	mov.w	r3, #512	; 0x200
 80027b4:	4628      	mov	r0, r5
 80027b6:	4669      	mov	r1, sp
 80027b8:	9300      	str	r3, [sp, #0]
 80027ba:	f88d 4004 	strb.w	r4, [sp, #4]
 80027be:	f88d 6005 	strb.w	r6, [sp, #5]
 80027c2:	f88d 4007 	strb.w	r4, [sp, #7]
 80027c6:	f7ff ff58 	bl	800267a <GPIO_Init>
 80027ca:	f8c5 9018 	str.w	r9, [r5, #24]
 80027ce:	f8c7 8018 	str.w	r8, [r7, #24]
 80027d2:	b003      	add	sp, #12
 80027d4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80027d8:	48000400 	.word	0x48000400
 80027dc:	48000800 	.word	0x48000800

080027e0 <led_on>:
 80027e0:	0402      	lsls	r2, r0, #16
 80027e2:	d503      	bpl.n	80027ec <led_on+0xc>
 80027e4:	4b05      	ldr	r3, [pc, #20]	; (80027fc <led_on+0x1c>)
 80027e6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80027ea:	619a      	str	r2, [r3, #24]
 80027ec:	0483      	lsls	r3, r0, #18
 80027ee:	d503      	bpl.n	80027f8 <led_on+0x18>
 80027f0:	4b03      	ldr	r3, [pc, #12]	; (8002800 <led_on+0x20>)
 80027f2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80027f6:	851a      	strh	r2, [r3, #40]	; 0x28
 80027f8:	4770      	bx	lr
 80027fa:	bf00      	nop
 80027fc:	48000400 	.word	0x48000400
 8002800:	48000800 	.word	0x48000800

08002804 <led_off>:
 8002804:	0403      	lsls	r3, r0, #16
 8002806:	d503      	bpl.n	8002810 <led_off+0xc>
 8002808:	4b05      	ldr	r3, [pc, #20]	; (8002820 <led_off+0x1c>)
 800280a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800280e:	851a      	strh	r2, [r3, #40]	; 0x28
 8002810:	0481      	lsls	r1, r0, #18
 8002812:	d503      	bpl.n	800281c <led_off+0x18>
 8002814:	4b03      	ldr	r3, [pc, #12]	; (8002824 <led_off+0x20>)
 8002816:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800281a:	619a      	str	r2, [r3, #24]
 800281c:	4770      	bx	lr
 800281e:	bf00      	nop
 8002820:	48000400 	.word	0x48000400
 8002824:	48000800 	.word	0x48000800

08002828 <get_key>:
 8002828:	4b02      	ldr	r3, [pc, #8]	; (8002834 <get_key+0xc>)
 800282a:	8a18      	ldrh	r0, [r3, #16]
 800282c:	43c0      	mvns	r0, r0
 800282e:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002832:	4770      	bx	lr
 8002834:	48000400 	.word	0x48000400

08002838 <Default_Handler>:
 8002838:	4668      	mov	r0, sp
 800283a:	f020 0107 	bic.w	r1, r0, #7
 800283e:	468d      	mov	sp, r1
 8002840:	bf00      	nop
 8002842:	e7fd      	b.n	8002840 <Default_Handler+0x8>

08002844 <HardFault_Handler>:
 8002844:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002848:	f7ff ffca 	bl	80027e0 <led_on>
 800284c:	4b06      	ldr	r3, [pc, #24]	; (8002868 <HardFault_Handler+0x24>)
 800284e:	3b01      	subs	r3, #1
 8002850:	d001      	beq.n	8002856 <HardFault_Handler+0x12>
 8002852:	bf00      	nop
 8002854:	e7fb      	b.n	800284e <HardFault_Handler+0xa>
 8002856:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800285a:	f7ff ffd3 	bl	8002804 <led_off>
 800285e:	4b02      	ldr	r3, [pc, #8]	; (8002868 <HardFault_Handler+0x24>)
 8002860:	3b01      	subs	r3, #1
 8002862:	d0ef      	beq.n	8002844 <HardFault_Handler>
 8002864:	bf00      	nop
 8002866:	e7fb      	b.n	8002860 <HardFault_Handler+0x1c>
 8002868:	00989681 	.word	0x00989681

0800286c <_reset_init>:
 800286c:	4a0e      	ldr	r2, [pc, #56]	; (80028a8 <_reset_init+0x3c>)
 800286e:	480f      	ldr	r0, [pc, #60]	; (80028ac <_reset_init+0x40>)
 8002870:	1a80      	subs	r0, r0, r2
 8002872:	1080      	asrs	r0, r0, #2
 8002874:	2300      	movs	r3, #0
 8002876:	4283      	cmp	r3, r0
 8002878:	d006      	beq.n	8002888 <_reset_init+0x1c>
 800287a:	490d      	ldr	r1, [pc, #52]	; (80028b0 <_reset_init+0x44>)
 800287c:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002880:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002884:	3301      	adds	r3, #1
 8002886:	e7f6      	b.n	8002876 <_reset_init+0xa>
 8002888:	4b0a      	ldr	r3, [pc, #40]	; (80028b4 <_reset_init+0x48>)
 800288a:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800288e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002892:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002896:	f503 730c 	add.w	r3, r3, #560	; 0x230
 800289a:	685a      	ldr	r2, [r3, #4]
 800289c:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80028a0:	605a      	str	r2, [r3, #4]
 80028a2:	f7fe bf3d 	b.w	8001720 <main>
 80028a6:	bf00      	nop
 80028a8:	20000000 	.word	0x20000000
 80028ac:	20000154 	.word	0x20000154
 80028b0:	0800295c 	.word	0x0800295c
 80028b4:	e000ed00 	.word	0xe000ed00

080028b8 <_init>:
 80028b8:	e1a0c00d 	mov	ip, sp
 80028bc:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80028c0:	e24cb004 	sub	fp, ip, #4
 80028c4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80028c8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80028cc:	e12fff1e 	bx	lr

080028d0 <_fini>:
 80028d0:	e1a0c00d 	mov	ip, sp
 80028d4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80028d8:	e24cb004 	sub	fp, ip, #4
 80028dc:	e24bd028 	sub	sp, fp, #40	; 0x28
 80028e0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80028e4:	e12fff1e 	bx	lr
 80028e8:	69647473 	.word	0x69647473
 80028ec:	6e69206f 	.word	0x6e69206f
 80028f0:	64207469 	.word	0x64207469
 80028f4:	0a656e6f 	.word	0x0a656e6f
 80028f8:	00          	.byte	0x00
 80028f9:	65          	.byte	0x65
 80028fa:	7272      	.short	0x7272
 80028fc:	6320726f 	.word	0x6320726f
 8002900:	2065646f 	.word	0x2065646f
 8002904:	253a7525 	.word	0x253a7525
 8002908:	0a75      	.short	0x0a75
 800290a:	00          	.byte	0x00
 800290b:	0a          	.byte	0x0a
 800290c:	636c6577 	.word	0x636c6577
 8002910:	20656d6f 	.word	0x20656d6f
 8002914:	53206f74 	.word	0x53206f74
 8002918:	68757a75 	.word	0x68757a75
 800291c:	20534f61 	.word	0x20534f61
 8002920:	205e5f5e 	.word	0x205e5f5e
 8002924:	2e302e32 	.word	0x2e302e32
 8002928:	55420a36 	.word	0x55420a36
 800292c:	20444c49 	.word	0x20444c49
 8002930:	20727041 	.word	0x20727041
 8002934:	32203032 	.word	0x32203032
 8002938:	20363130 	.word	0x20363130
 800293c:	313a3831 	.word	0x313a3831
 8002940:	34323a33 	.word	0x34323a33
 8002944:	7973000a 	.word	0x7973000a
 8002948:	6d657473 	.word	0x6d657473
 800294c:	6f626120 	.word	0x6f626120
 8002950:	64657472 	.word	0x64657472
 8002954:	0000000a 	.word	0x0000000a

08002958 <__EH_FRAME_BEGIN__>:
 8002958:	00000000                                ....
