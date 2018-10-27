
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
 80001a0:	20000240 	.word	0x20000240
 80001a4:	200001f8 	.word	0x200001f8

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f002 fb09 	bl	80027c0 <sleep>
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
 800020c:	200001f8 	.word	0x200001f8
 8000210:	20000240 	.word	0x20000240

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
 8000254:	20000240 	.word	0x20000240
 8000258:	200001f8 	.word	0x200001f8

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
 800027c:	20000240 	.word	0x20000240

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f002 fa8b 	bl	800279c <sys_tick_init>
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
 80002f8:	200001f8 	.word	0x200001f8
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
 8000334:	200001f8 	.word	0x200001f8
 8000338:	20000240 	.word	0x20000240
 800033c:	080001a9 	.word	0x080001a9
 8000340:	20000244 	.word	0x20000244

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
 8000384:	200001f8 	.word	0x200001f8

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
 80003a8:	200001f8 	.word	0x200001f8

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
 80003d8:	200002c4 	.word	0x200002c4
 80003dc:	200002dc 	.word	0x200002dc

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 ffad 	bl	800234c <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	2000031c 	.word	0x2000031c

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
 8000424:	20000328 	.word	0x20000328

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
 8000574:	20000324 	.word	0x20000324

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
 80005b4:	2000031c 	.word	0x2000031c
 80005b8:	20000320 	.word	0x20000320
 80005bc:	20000328 	.word	0x20000328
 80005c0:	20000324 	.word	0x20000324
 80005c4:	08002cfc 	.word	0x08002cfc

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

08000650 <m_sgn>:
 8000650:	ee07 0a90 	vmov	s15, r0
 8000654:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000658:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800065c:	d403      	bmi.n	8000666 <m_sgn+0x16>
 800065e:	dd04      	ble.n	800066a <m_sgn+0x1a>
 8000660:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
 8000664:	4770      	bx	lr
 8000666:	4802      	ldr	r0, [pc, #8]	; (8000670 <m_sgn+0x20>)
 8000668:	4770      	bx	lr
 800066a:	2000      	movs	r0, #0
 800066c:	4770      	bx	lr
 800066e:	bf00      	nop
 8000670:	bf800000 	.word	0xbf800000

08000674 <m_saturate>:
 8000674:	ee07 0a90 	vmov	s15, r0
 8000678:	ee06 1a90 	vmov	s13, r1
 800067c:	eef4 7a66 	vcmp.f32	s15, s13
 8000680:	ee07 2a10 	vmov	s14, r2
 8000684:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000688:	bf48      	it	mi
 800068a:	eef0 7a66 	vmovmi.f32	s15, s13
 800068e:	eef4 7a47 	vcmp.f32	s15, s14
 8000692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000696:	bfcc      	ite	gt
 8000698:	ee17 0a10 	vmovgt	r0, s14
 800069c:	ee17 0a90 	vmovle	r0, s15
 80006a0:	4770      	bx	lr

080006a2 <m_min>:
 80006a2:	ee07 0a10 	vmov	s14, r0
 80006a6:	ee07 1a90 	vmov	s15, r1
 80006aa:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80006ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80006b2:	bf54      	ite	pl
 80006b4:	ee17 0a90 	vmovpl	r0, s15
 80006b8:	ee17 0a10 	vmovmi	r0, s14
 80006bc:	4770      	bx	lr
	...

080006c0 <pid_init>:
 80006c0:	ee06 2a10 	vmov	s12, r2
 80006c4:	ee05 3a90 	vmov	s11, r3
 80006c8:	eddd 7a00 	vldr	s15, [sp]
 80006cc:	ee76 6a25 	vadd.f32	s13, s12, s11
 80006d0:	ed9d 7a01 	vldr	s14, [sp, #4]
 80006d4:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80006d8:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80006dc:	ee76 6a87 	vadd.f32	s13, s13, s14
 80006e0:	eeb1 6a46 	vneg.f32	s12, s12
 80006e4:	edc0 6a04 	vstr	s13, [r0, #16]
 80006e8:	eddf 6a0c 	vldr	s13, [pc, #48]	; 800071c <pid_init+0x5c>
 80006ec:	ee36 6a65 	vsub.f32	s12, s12, s11
 80006f0:	ee67 6a26 	vmul.f32	s13, s14, s13
 80006f4:	2200      	movs	r2, #0
 80006f6:	ee36 6a66 	vsub.f32	s12, s12, s13
 80006fa:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80006fe:	eeb1 7a47 	vneg.f32	s14, s14
 8000702:	6002      	str	r2, [r0, #0]
 8000704:	6042      	str	r2, [r0, #4]
 8000706:	6082      	str	r2, [r0, #8]
 8000708:	60c2      	str	r2, [r0, #12]
 800070a:	ed80 6a05 	vstr	s12, [r0, #20]
 800070e:	edc0 7a06 	vstr	s15, [r0, #24]
 8000712:	ed80 7a07 	vstr	s14, [r0, #28]
 8000716:	6202      	str	r2, [r0, #32]
 8000718:	6241      	str	r1, [r0, #36]	; 0x24
 800071a:	4770      	bx	lr
 800071c:	40400000 	.word	0x40400000

08000720 <pid_process>:
 8000720:	edd0 7a08 	vldr	s15, [r0, #32]
 8000724:	ee05 1a90 	vmov	s11, r1
 8000728:	ed90 5a04 	vldr	s10, [r0, #16]
 800072c:	ee45 7a85 	vmla.f32	s15, s11, s10
 8000730:	ed90 6a00 	vldr	s12, [r0]
 8000734:	edd0 5a05 	vldr	s11, [r0, #20]
 8000738:	ee46 7a25 	vmla.f32	s15, s12, s11
 800073c:	edd0 6a01 	vldr	s13, [r0, #4]
 8000740:	ed80 6a01 	vstr	s12, [r0, #4]
 8000744:	ed90 6a06 	vldr	s12, [r0, #24]
 8000748:	ee46 7a86 	vmla.f32	s15, s13, s12
 800074c:	ed90 7a02 	vldr	s14, [r0, #8]
 8000750:	edc0 6a02 	vstr	s13, [r0, #8]
 8000754:	edd0 6a07 	vldr	s13, [r0, #28]
 8000758:	ee47 7a26 	vmla.f32	s15, s14, s13
 800075c:	ed80 7a03 	vstr	s14, [r0, #12]
 8000760:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000764:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000768:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800076c:	edc0 7a08 	vstr	s15, [r0, #32]
 8000770:	bfc8      	it	gt
 8000772:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000776:	edd0 7a08 	vldr	s15, [r0, #32]
 800077a:	eeb1 7a47 	vneg.f32	s14, s14
 800077e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000782:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000786:	bf48      	it	mi
 8000788:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800078c:	6001      	str	r1, [r0, #0]
 800078e:	6a00      	ldr	r0, [r0, #32]
 8000790:	4770      	bx	lr
	...

08000794 <lsm9ds0_read>:
 8000794:	b538      	push	{r3, r4, r5, lr}
 8000796:	2128      	movs	r1, #40	; 0x28
 8000798:	20d4      	movs	r0, #212	; 0xd4
 800079a:	f001 ff64 	bl	8002666 <i2c_read_reg>
 800079e:	2129      	movs	r1, #41	; 0x29
 80007a0:	4605      	mov	r5, r0
 80007a2:	20d4      	movs	r0, #212	; 0xd4
 80007a4:	f001 ff5f 	bl	8002666 <i2c_read_reg>
 80007a8:	4c38      	ldr	r4, [pc, #224]	; (800088c <lsm9ds0_read+0xf8>)
 80007aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ae:	81a0      	strh	r0, [r4, #12]
 80007b0:	212a      	movs	r1, #42	; 0x2a
 80007b2:	20d4      	movs	r0, #212	; 0xd4
 80007b4:	f001 ff57 	bl	8002666 <i2c_read_reg>
 80007b8:	212b      	movs	r1, #43	; 0x2b
 80007ba:	4605      	mov	r5, r0
 80007bc:	20d4      	movs	r0, #212	; 0xd4
 80007be:	f001 ff52 	bl	8002666 <i2c_read_reg>
 80007c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007c6:	81e0      	strh	r0, [r4, #14]
 80007c8:	212c      	movs	r1, #44	; 0x2c
 80007ca:	20d4      	movs	r0, #212	; 0xd4
 80007cc:	f001 ff4b 	bl	8002666 <i2c_read_reg>
 80007d0:	212d      	movs	r1, #45	; 0x2d
 80007d2:	4605      	mov	r5, r0
 80007d4:	20d4      	movs	r0, #212	; 0xd4
 80007d6:	f001 ff46 	bl	8002666 <i2c_read_reg>
 80007da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007de:	8220      	strh	r0, [r4, #16]
 80007e0:	2108      	movs	r1, #8
 80007e2:	203c      	movs	r0, #60	; 0x3c
 80007e4:	f001 ff3f 	bl	8002666 <i2c_read_reg>
 80007e8:	2109      	movs	r1, #9
 80007ea:	4605      	mov	r5, r0
 80007ec:	203c      	movs	r0, #60	; 0x3c
 80007ee:	f001 ff3a 	bl	8002666 <i2c_read_reg>
 80007f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007f6:	80e0      	strh	r0, [r4, #6]
 80007f8:	210a      	movs	r1, #10
 80007fa:	203c      	movs	r0, #60	; 0x3c
 80007fc:	f001 ff33 	bl	8002666 <i2c_read_reg>
 8000800:	210b      	movs	r1, #11
 8000802:	4605      	mov	r5, r0
 8000804:	203c      	movs	r0, #60	; 0x3c
 8000806:	f001 ff2e 	bl	8002666 <i2c_read_reg>
 800080a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800080e:	8120      	strh	r0, [r4, #8]
 8000810:	210c      	movs	r1, #12
 8000812:	203c      	movs	r0, #60	; 0x3c
 8000814:	f001 ff27 	bl	8002666 <i2c_read_reg>
 8000818:	210d      	movs	r1, #13
 800081a:	4605      	mov	r5, r0
 800081c:	203c      	movs	r0, #60	; 0x3c
 800081e:	f001 ff22 	bl	8002666 <i2c_read_reg>
 8000822:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000826:	8160      	strh	r0, [r4, #10]
 8000828:	2128      	movs	r1, #40	; 0x28
 800082a:	203c      	movs	r0, #60	; 0x3c
 800082c:	f001 ff1b 	bl	8002666 <i2c_read_reg>
 8000830:	2129      	movs	r1, #41	; 0x29
 8000832:	4605      	mov	r5, r0
 8000834:	203c      	movs	r0, #60	; 0x3c
 8000836:	f001 ff16 	bl	8002666 <i2c_read_reg>
 800083a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800083e:	8020      	strh	r0, [r4, #0]
 8000840:	212a      	movs	r1, #42	; 0x2a
 8000842:	203c      	movs	r0, #60	; 0x3c
 8000844:	f001 ff0f 	bl	8002666 <i2c_read_reg>
 8000848:	212b      	movs	r1, #43	; 0x2b
 800084a:	4605      	mov	r5, r0
 800084c:	203c      	movs	r0, #60	; 0x3c
 800084e:	f001 ff0a 	bl	8002666 <i2c_read_reg>
 8000852:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000856:	8060      	strh	r0, [r4, #2]
 8000858:	212c      	movs	r1, #44	; 0x2c
 800085a:	203c      	movs	r0, #60	; 0x3c
 800085c:	f001 ff03 	bl	8002666 <i2c_read_reg>
 8000860:	212d      	movs	r1, #45	; 0x2d
 8000862:	4605      	mov	r5, r0
 8000864:	203c      	movs	r0, #60	; 0x3c
 8000866:	f001 fefe 	bl	8002666 <i2c_read_reg>
 800086a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800086e:	80a0      	strh	r0, [r4, #4]
 8000870:	2105      	movs	r1, #5
 8000872:	203c      	movs	r0, #60	; 0x3c
 8000874:	f001 fef7 	bl	8002666 <i2c_read_reg>
 8000878:	2106      	movs	r1, #6
 800087a:	4605      	mov	r5, r0
 800087c:	203c      	movs	r0, #60	; 0x3c
 800087e:	f001 fef2 	bl	8002666 <i2c_read_reg>
 8000882:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000886:	83e0      	strh	r0, [r4, #30]
 8000888:	bd38      	pop	{r3, r4, r5, pc}
 800088a:	bf00      	nop
 800088c:	2000032c 	.word	0x2000032c

08000890 <lsm9ds0_init>:
 8000890:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000894:	4d35      	ldr	r5, [pc, #212]	; (800096c <lsm9ds0_init+0xdc>)
 8000896:	2400      	movs	r4, #0
 8000898:	20d4      	movs	r0, #212	; 0xd4
 800089a:	210f      	movs	r1, #15
 800089c:	802c      	strh	r4, [r5, #0]
 800089e:	806c      	strh	r4, [r5, #2]
 80008a0:	80ac      	strh	r4, [r5, #4]
 80008a2:	80ec      	strh	r4, [r5, #6]
 80008a4:	812c      	strh	r4, [r5, #8]
 80008a6:	816c      	strh	r4, [r5, #10]
 80008a8:	81ac      	strh	r4, [r5, #12]
 80008aa:	81ec      	strh	r4, [r5, #14]
 80008ac:	822c      	strh	r4, [r5, #16]
 80008ae:	826c      	strh	r4, [r5, #18]
 80008b0:	82ac      	strh	r4, [r5, #20]
 80008b2:	82ec      	strh	r4, [r5, #22]
 80008b4:	832c      	strh	r4, [r5, #24]
 80008b6:	836c      	strh	r4, [r5, #26]
 80008b8:	83ac      	strh	r4, [r5, #28]
 80008ba:	83ec      	strh	r4, [r5, #30]
 80008bc:	f001 fed3 	bl	8002666 <i2c_read_reg>
 80008c0:	28d4      	cmp	r0, #212	; 0xd4
 80008c2:	4606      	mov	r6, r0
 80008c4:	d14e      	bne.n	8000964 <lsm9ds0_init+0xd4>
 80008c6:	203c      	movs	r0, #60	; 0x3c
 80008c8:	210f      	movs	r1, #15
 80008ca:	f001 fecc 	bl	8002666 <i2c_read_reg>
 80008ce:	2849      	cmp	r0, #73	; 0x49
 80008d0:	bf18      	it	ne
 80008d2:	2602      	movne	r6, #2
 80008d4:	d147      	bne.n	8000966 <lsm9ds0_init+0xd6>
 80008d6:	4630      	mov	r0, r6
 80008d8:	2120      	movs	r1, #32
 80008da:	22ff      	movs	r2, #255	; 0xff
 80008dc:	f001 feb0 	bl	8002640 <i2c_write_reg>
 80008e0:	4630      	mov	r0, r6
 80008e2:	2123      	movs	r1, #35	; 0x23
 80008e4:	2218      	movs	r2, #24
 80008e6:	f001 feab 	bl	8002640 <i2c_write_reg>
 80008ea:	203c      	movs	r0, #60	; 0x3c
 80008ec:	211f      	movs	r1, #31
 80008ee:	4622      	mov	r2, r4
 80008f0:	f001 fea6 	bl	8002640 <i2c_write_reg>
 80008f4:	203c      	movs	r0, #60	; 0x3c
 80008f6:	2120      	movs	r1, #32
 80008f8:	2267      	movs	r2, #103	; 0x67
 80008fa:	f001 fea1 	bl	8002640 <i2c_write_reg>
 80008fe:	203c      	movs	r0, #60	; 0x3c
 8000900:	2121      	movs	r1, #33	; 0x21
 8000902:	4622      	mov	r2, r4
 8000904:	f001 fe9c 	bl	8002640 <i2c_write_reg>
 8000908:	203c      	movs	r0, #60	; 0x3c
 800090a:	2124      	movs	r1, #36	; 0x24
 800090c:	22f4      	movs	r2, #244	; 0xf4
 800090e:	f001 fe97 	bl	8002640 <i2c_write_reg>
 8000912:	203c      	movs	r0, #60	; 0x3c
 8000914:	2125      	movs	r1, #37	; 0x25
 8000916:	4622      	mov	r2, r4
 8000918:	f001 fe92 	bl	8002640 <i2c_write_reg>
 800091c:	203c      	movs	r0, #60	; 0x3c
 800091e:	2126      	movs	r1, #38	; 0x26
 8000920:	2280      	movs	r2, #128	; 0x80
 8000922:	f001 fe8d 	bl	8002640 <i2c_write_reg>
 8000926:	f7ff ff35 	bl	8000794 <lsm9ds0_read>
 800092a:	2664      	movs	r6, #100	; 0x64
 800092c:	4627      	mov	r7, r4
 800092e:	46a0      	mov	r8, r4
 8000930:	f7ff ff30 	bl	8000794 <lsm9ds0_read>
 8000934:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000938:	4b0c      	ldr	r3, [pc, #48]	; (800096c <lsm9ds0_init+0xdc>)
 800093a:	4490      	add	r8, r2
 800093c:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000940:	4417      	add	r7, r2
 8000942:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000946:	3e01      	subs	r6, #1
 8000948:	4414      	add	r4, r2
 800094a:	d1f1      	bne.n	8000930 <lsm9ds0_init+0xa0>
 800094c:	2264      	movs	r2, #100	; 0x64
 800094e:	fb98 f8f2 	sdiv	r8, r8, r2
 8000952:	fb97 f7f2 	sdiv	r7, r7, r2
 8000956:	fb94 f4f2 	sdiv	r4, r4, r2
 800095a:	f8a3 8012 	strh.w	r8, [r3, #18]
 800095e:	829f      	strh	r7, [r3, #20]
 8000960:	82dc      	strh	r4, [r3, #22]
 8000962:	e000      	b.n	8000966 <lsm9ds0_init+0xd6>
 8000964:	2601      	movs	r6, #1
 8000966:	4630      	mov	r0, r6
 8000968:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800096c:	2000032c 	.word	0x2000032c

08000970 <TIM2_IRQHandler>:
 8000970:	4b21      	ldr	r3, [pc, #132]	; (80009f8 <TIM2_IRQHandler+0x88>)
 8000972:	4a22      	ldr	r2, [pc, #136]	; (80009fc <TIM2_IRQHandler+0x8c>)
 8000974:	6819      	ldr	r1, [r3, #0]
 8000976:	2901      	cmp	r1, #1
 8000978:	b510      	push	{r4, lr}
 800097a:	d011      	beq.n	80009a0 <TIM2_IRQHandler+0x30>
 800097c:	d306      	bcc.n	800098c <TIM2_IRQHandler+0x1c>
 800097e:	2902      	cmp	r1, #2
 8000980:	d113      	bne.n	80009aa <TIM2_IRQHandler+0x3a>
 8000982:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000986:	8511      	strh	r1, [r2, #40]	; 0x28
 8000988:	2204      	movs	r2, #4
 800098a:	e023      	b.n	80009d4 <TIM2_IRQHandler+0x64>
 800098c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000990:	8511      	strh	r1, [r2, #40]	; 0x28
 8000992:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000996:	6191      	str	r1, [r2, #24]
 8000998:	2201      	movs	r2, #1
 800099a:	601a      	str	r2, [r3, #0]
 800099c:	609a      	str	r2, [r3, #8]
 800099e:	e023      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009a0:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009a4:	6191      	str	r1, [r2, #24]
 80009a6:	2202      	movs	r2, #2
 80009a8:	e014      	b.n	80009d4 <TIM2_IRQHandler+0x64>
 80009aa:	f011 0f01 	tst.w	r1, #1
 80009ae:	4814      	ldr	r0, [pc, #80]	; (8000a00 <TIM2_IRQHandler+0x90>)
 80009b0:	f101 0401 	add.w	r4, r1, #1
 80009b4:	d010      	beq.n	80009d8 <TIM2_IRQHandler+0x68>
 80009b6:	3904      	subs	r1, #4
 80009b8:	f021 0101 	bic.w	r1, r1, #1
 80009bc:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80009be:	4419      	add	r1, r3
 80009c0:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80009c4:	8288      	strh	r0, [r1, #20]
 80009c6:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009ca:	8511      	strh	r1, [r2, #40]	; 0x28
 80009cc:	d201      	bcs.n	80009d2 <TIM2_IRQHandler+0x62>
 80009ce:	601c      	str	r4, [r3, #0]
 80009d0:	e00a      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009d2:	2200      	movs	r2, #0
 80009d4:	601a      	str	r2, [r3, #0]
 80009d6:	e007      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009d8:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009dc:	6191      	str	r1, [r2, #24]
 80009de:	601c      	str	r4, [r3, #0]
 80009e0:	6883      	ldr	r3, [r0, #8]
 80009e2:	f043 0304 	orr.w	r3, r3, #4
 80009e6:	6083      	str	r3, [r0, #8]
 80009e8:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009ec:	2101      	movs	r1, #1
 80009ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009f2:	f001 bb36 	b.w	8002062 <TIM_ClearITPendingBit>
 80009f6:	bf00      	nop
 80009f8:	200003e8 	.word	0x200003e8
 80009fc:	48000400 	.word	0x48000400
 8000a00:	50000500 	.word	0x50000500

08000a04 <rgb_i2c_delay>:
 8000a04:	bf00      	nop
 8000a06:	bf00      	nop
 8000a08:	bf00      	nop
 8000a0a:	bf00      	nop
 8000a0c:	4770      	bx	lr
	...

08000a10 <RGBSetLowSDA>:
 8000a10:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a12:	4f15      	ldr	r7, [pc, #84]	; (8000a68 <RGBSetLowSDA+0x58>)
 8000a14:	783b      	ldrb	r3, [r7, #0]
 8000a16:	2401      	movs	r4, #1
 8000a18:	2603      	movs	r6, #3
 8000a1a:	2500      	movs	r5, #0
 8000a1c:	4669      	mov	r1, sp
 8000a1e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a22:	9300      	str	r3, [sp, #0]
 8000a24:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a28:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a2c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a30:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a34:	f002 f80b 	bl	8002a4e <GPIO_Init>
 8000a38:	783a      	ldrb	r2, [r7, #0]
 8000a3a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a3e:	4669      	mov	r1, sp
 8000a40:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a42:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a46:	4d09      	ldr	r5, [pc, #36]	; (8000a6c <RGBSetLowSDA+0x5c>)
 8000a48:	9400      	str	r4, [sp, #0]
 8000a4a:	4628      	mov	r0, r5
 8000a4c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a50:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a54:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a58:	f001 fff9 	bl	8002a4e <GPIO_Init>
 8000a5c:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a5e:	f7ff ffd1 	bl	8000a04 <rgb_i2c_delay>
 8000a62:	b003      	add	sp, #12
 8000a64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a66:	bf00      	nop
 8000a68:	200009fc 	.word	0x200009fc
 8000a6c:	48000400 	.word	0x48000400

08000a70 <RGBSetHighSDA>:
 8000a70:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a72:	4d13      	ldr	r5, [pc, #76]	; (8000ac0 <RGBSetHighSDA+0x50>)
 8000a74:	782b      	ldrb	r3, [r5, #0]
 8000a76:	2400      	movs	r4, #0
 8000a78:	2603      	movs	r6, #3
 8000a7a:	4669      	mov	r1, sp
 8000a7c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a80:	9300      	str	r3, [sp, #0]
 8000a82:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a86:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a8a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a8e:	f001 ffde 	bl	8002a4e <GPIO_Init>
 8000a92:	782a      	ldrb	r2, [r5, #0]
 8000a94:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a98:	2501      	movs	r5, #1
 8000a9a:	619a      	str	r2, [r3, #24]
 8000a9c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000aa0:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aa4:	4c07      	ldr	r4, [pc, #28]	; (8000ac4 <RGBSetHighSDA+0x54>)
 8000aa6:	9500      	str	r5, [sp, #0]
 8000aa8:	4620      	mov	r0, r4
 8000aaa:	4669      	mov	r1, sp
 8000aac:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ab0:	f001 ffcd 	bl	8002a4e <GPIO_Init>
 8000ab4:	61a5      	str	r5, [r4, #24]
 8000ab6:	f7ff ffa5 	bl	8000a04 <rgb_i2c_delay>
 8000aba:	b002      	add	sp, #8
 8000abc:	bd70      	pop	{r4, r5, r6, pc}
 8000abe:	bf00      	nop
 8000ac0:	200009fc 	.word	0x200009fc
 8000ac4:	48000400 	.word	0x48000400

08000ac8 <RGBSetLowSCL>:
 8000ac8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000acc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ad0:	851a      	strh	r2, [r3, #40]	; 0x28
 8000ad2:	f7ff bf97 	b.w	8000a04 <rgb_i2c_delay>

08000ad6 <RGBSetHighSCL>:
 8000ad6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ada:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ade:	619a      	str	r2, [r3, #24]
 8000ae0:	f7ff bf90 	b.w	8000a04 <rgb_i2c_delay>

08000ae4 <rgb_i2c_init>:
 8000ae4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000ae6:	4f1f      	ldr	r7, [pc, #124]	; (8000b64 <rgb_i2c_init+0x80>)
 8000ae8:	2400      	movs	r4, #0
 8000aea:	2501      	movs	r5, #1
 8000aec:	2603      	movs	r6, #3
 8000aee:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000af2:	4669      	mov	r1, sp
 8000af4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000af8:	9300      	str	r3, [sp, #0]
 8000afa:	f88d 4006 	strb.w	r4, [sp, #6]
 8000afe:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b02:	f88d 5004 	strb.w	r5, [sp, #4]
 8000b06:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b0a:	f001 ffa0 	bl	8002a4e <GPIO_Init>
 8000b0e:	783b      	ldrb	r3, [r7, #0]
 8000b10:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b14:	4669      	mov	r1, sp
 8000b16:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b1a:	9300      	str	r3, [sp, #0]
 8000b1c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b20:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b24:	f001 ff93 	bl	8002a4e <GPIO_Init>
 8000b28:	7839      	ldrb	r1, [r7, #0]
 8000b2a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b2e:	f001 ffd4 	bl	8002ada <GPIO_SetBits>
 8000b32:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b36:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b3a:	4c0b      	ldr	r4, [pc, #44]	; (8000b68 <rgb_i2c_init+0x84>)
 8000b3c:	9500      	str	r5, [sp, #0]
 8000b3e:	4620      	mov	r0, r4
 8000b40:	4669      	mov	r1, sp
 8000b42:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b46:	f001 ff82 	bl	8002a4e <GPIO_Init>
 8000b4a:	4620      	mov	r0, r4
 8000b4c:	4629      	mov	r1, r5
 8000b4e:	f001 ffc4 	bl	8002ada <GPIO_SetBits>
 8000b52:	f7ff ffc0 	bl	8000ad6 <RGBSetHighSCL>
 8000b56:	f7ff ff5b 	bl	8000a10 <RGBSetLowSDA>
 8000b5a:	f7ff ff89 	bl	8000a70 <RGBSetHighSDA>
 8000b5e:	b003      	add	sp, #12
 8000b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b62:	bf00      	nop
 8000b64:	200009fc 	.word	0x200009fc
 8000b68:	48000400 	.word	0x48000400

08000b6c <rgb_i2cStart>:
 8000b6c:	b508      	push	{r3, lr}
 8000b6e:	f7ff ffb2 	bl	8000ad6 <RGBSetHighSCL>
 8000b72:	f7ff ff7d 	bl	8000a70 <RGBSetHighSDA>
 8000b76:	f7ff ffae 	bl	8000ad6 <RGBSetHighSCL>
 8000b7a:	f7ff ff49 	bl	8000a10 <RGBSetLowSDA>
 8000b7e:	f7ff ffa3 	bl	8000ac8 <RGBSetLowSCL>
 8000b82:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b86:	f7ff bf73 	b.w	8000a70 <RGBSetHighSDA>

08000b8a <rgb_i2cStop>:
 8000b8a:	b508      	push	{r3, lr}
 8000b8c:	f7ff ff9c 	bl	8000ac8 <RGBSetLowSCL>
 8000b90:	f7ff ff3e 	bl	8000a10 <RGBSetLowSDA>
 8000b94:	f7ff ff9f 	bl	8000ad6 <RGBSetHighSCL>
 8000b98:	f7ff ff3a 	bl	8000a10 <RGBSetLowSDA>
 8000b9c:	f7ff ff9b 	bl	8000ad6 <RGBSetHighSCL>
 8000ba0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000ba4:	f7ff bf64 	b.w	8000a70 <RGBSetHighSDA>

08000ba8 <rgb_i2cWrite>:
 8000ba8:	b538      	push	{r3, r4, r5, lr}
 8000baa:	4604      	mov	r4, r0
 8000bac:	2508      	movs	r5, #8
 8000bae:	f7ff ff8b 	bl	8000ac8 <RGBSetLowSCL>
 8000bb2:	0623      	lsls	r3, r4, #24
 8000bb4:	d502      	bpl.n	8000bbc <rgb_i2cWrite+0x14>
 8000bb6:	f7ff ff5b 	bl	8000a70 <RGBSetHighSDA>
 8000bba:	e001      	b.n	8000bc0 <rgb_i2cWrite+0x18>
 8000bbc:	f7ff ff28 	bl	8000a10 <RGBSetLowSDA>
 8000bc0:	3d01      	subs	r5, #1
 8000bc2:	f7ff ff88 	bl	8000ad6 <RGBSetHighSCL>
 8000bc6:	0064      	lsls	r4, r4, #1
 8000bc8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000bcc:	b2e4      	uxtb	r4, r4
 8000bce:	d1ee      	bne.n	8000bae <rgb_i2cWrite+0x6>
 8000bd0:	f7ff ff7a 	bl	8000ac8 <RGBSetLowSCL>
 8000bd4:	f7ff ff4c 	bl	8000a70 <RGBSetHighSDA>
 8000bd8:	f7ff ff7d 	bl	8000ad6 <RGBSetHighSCL>
 8000bdc:	f7ff ff74 	bl	8000ac8 <RGBSetLowSCL>
 8000be0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000be4:	f7ff bf0e 	b.w	8000a04 <rgb_i2c_delay>

08000be8 <rgb_i2cRead>:
 8000be8:	b570      	push	{r4, r5, r6, lr}
 8000bea:	2300      	movs	r3, #0
 8000bec:	4606      	mov	r6, r0
 8000bee:	460c      	mov	r4, r1
 8000bf0:	2200      	movs	r2, #0
 8000bf2:	54e2      	strb	r2, [r4, r3]
 8000bf4:	3301      	adds	r3, #1
 8000bf6:	2b09      	cmp	r3, #9
 8000bf8:	d1fa      	bne.n	8000bf0 <rgb_i2cRead+0x8>
 8000bfa:	f7ff ff65 	bl	8000ac8 <RGBSetLowSCL>
 8000bfe:	f7ff ff37 	bl	8000a70 <RGBSetHighSDA>
 8000c02:	2508      	movs	r5, #8
 8000c04:	2300      	movs	r3, #0
 8000c06:	5ce2      	ldrb	r2, [r4, r3]
 8000c08:	0052      	lsls	r2, r2, #1
 8000c0a:	54e2      	strb	r2, [r4, r3]
 8000c0c:	3301      	adds	r3, #1
 8000c0e:	2b09      	cmp	r3, #9
 8000c10:	d1f9      	bne.n	8000c06 <rgb_i2cRead+0x1e>
 8000c12:	f7ff ff60 	bl	8000ad6 <RGBSetHighSCL>
 8000c16:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c1a:	8a1b      	ldrh	r3, [r3, #16]
 8000c1c:	b29b      	uxth	r3, r3
 8000c1e:	07d8      	lsls	r0, r3, #31
 8000c20:	d503      	bpl.n	8000c2a <rgb_i2cRead+0x42>
 8000c22:	7822      	ldrb	r2, [r4, #0]
 8000c24:	f042 0201 	orr.w	r2, r2, #1
 8000c28:	7022      	strb	r2, [r4, #0]
 8000c2a:	0799      	lsls	r1, r3, #30
 8000c2c:	d503      	bpl.n	8000c36 <rgb_i2cRead+0x4e>
 8000c2e:	7862      	ldrb	r2, [r4, #1]
 8000c30:	f042 0201 	orr.w	r2, r2, #1
 8000c34:	7062      	strb	r2, [r4, #1]
 8000c36:	075a      	lsls	r2, r3, #29
 8000c38:	d503      	bpl.n	8000c42 <rgb_i2cRead+0x5a>
 8000c3a:	78a2      	ldrb	r2, [r4, #2]
 8000c3c:	f042 0201 	orr.w	r2, r2, #1
 8000c40:	70a2      	strb	r2, [r4, #2]
 8000c42:	0718      	lsls	r0, r3, #28
 8000c44:	d503      	bpl.n	8000c4e <rgb_i2cRead+0x66>
 8000c46:	78e2      	ldrb	r2, [r4, #3]
 8000c48:	f042 0201 	orr.w	r2, r2, #1
 8000c4c:	70e2      	strb	r2, [r4, #3]
 8000c4e:	06d9      	lsls	r1, r3, #27
 8000c50:	d503      	bpl.n	8000c5a <rgb_i2cRead+0x72>
 8000c52:	7922      	ldrb	r2, [r4, #4]
 8000c54:	f042 0201 	orr.w	r2, r2, #1
 8000c58:	7122      	strb	r2, [r4, #4]
 8000c5a:	069a      	lsls	r2, r3, #26
 8000c5c:	d503      	bpl.n	8000c66 <rgb_i2cRead+0x7e>
 8000c5e:	7962      	ldrb	r2, [r4, #5]
 8000c60:	f042 0201 	orr.w	r2, r2, #1
 8000c64:	7162      	strb	r2, [r4, #5]
 8000c66:	0658      	lsls	r0, r3, #25
 8000c68:	d503      	bpl.n	8000c72 <rgb_i2cRead+0x8a>
 8000c6a:	79a2      	ldrb	r2, [r4, #6]
 8000c6c:	f042 0201 	orr.w	r2, r2, #1
 8000c70:	71a2      	strb	r2, [r4, #6]
 8000c72:	0619      	lsls	r1, r3, #24
 8000c74:	d503      	bpl.n	8000c7e <rgb_i2cRead+0x96>
 8000c76:	79e3      	ldrb	r3, [r4, #7]
 8000c78:	f043 0301 	orr.w	r3, r3, #1
 8000c7c:	71e3      	strb	r3, [r4, #7]
 8000c7e:	4b0b      	ldr	r3, [pc, #44]	; (8000cac <rgb_i2cRead+0xc4>)
 8000c80:	8a1b      	ldrh	r3, [r3, #16]
 8000c82:	07da      	lsls	r2, r3, #31
 8000c84:	d503      	bpl.n	8000c8e <rgb_i2cRead+0xa6>
 8000c86:	7a23      	ldrb	r3, [r4, #8]
 8000c88:	f043 0301 	orr.w	r3, r3, #1
 8000c8c:	7223      	strb	r3, [r4, #8]
 8000c8e:	f7ff ff1b 	bl	8000ac8 <RGBSetLowSCL>
 8000c92:	3d01      	subs	r5, #1
 8000c94:	d1b6      	bne.n	8000c04 <rgb_i2cRead+0x1c>
 8000c96:	b10e      	cbz	r6, 8000c9c <rgb_i2cRead+0xb4>
 8000c98:	f7ff feba 	bl	8000a10 <RGBSetLowSDA>
 8000c9c:	f7ff ff1b 	bl	8000ad6 <RGBSetHighSCL>
 8000ca0:	f7ff ff12 	bl	8000ac8 <RGBSetLowSCL>
 8000ca4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ca8:	f7ff beac 	b.w	8000a04 <rgb_i2c_delay>
 8000cac:	48000400 	.word	0x48000400

08000cb0 <rgb_i2c_write_reg>:
 8000cb0:	b570      	push	{r4, r5, r6, lr}
 8000cb2:	4605      	mov	r5, r0
 8000cb4:	460c      	mov	r4, r1
 8000cb6:	4616      	mov	r6, r2
 8000cb8:	f7ff ff58 	bl	8000b6c <rgb_i2cStart>
 8000cbc:	4628      	mov	r0, r5
 8000cbe:	f7ff ff73 	bl	8000ba8 <rgb_i2cWrite>
 8000cc2:	4620      	mov	r0, r4
 8000cc4:	f7ff ff70 	bl	8000ba8 <rgb_i2cWrite>
 8000cc8:	4630      	mov	r0, r6
 8000cca:	f7ff ff6d 	bl	8000ba8 <rgb_i2cWrite>
 8000cce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cd2:	f7ff bf5a 	b.w	8000b8a <rgb_i2cStop>

08000cd6 <rgb_i2c_read_reg>:
 8000cd6:	b570      	push	{r4, r5, r6, lr}
 8000cd8:	4604      	mov	r4, r0
 8000cda:	460d      	mov	r5, r1
 8000cdc:	4616      	mov	r6, r2
 8000cde:	f7ff ff45 	bl	8000b6c <rgb_i2cStart>
 8000ce2:	4620      	mov	r0, r4
 8000ce4:	f7ff ff60 	bl	8000ba8 <rgb_i2cWrite>
 8000ce8:	4628      	mov	r0, r5
 8000cea:	f7ff ff5d 	bl	8000ba8 <rgb_i2cWrite>
 8000cee:	f7ff ff3d 	bl	8000b6c <rgb_i2cStart>
 8000cf2:	f044 0001 	orr.w	r0, r4, #1
 8000cf6:	f7ff ff57 	bl	8000ba8 <rgb_i2cWrite>
 8000cfa:	4631      	mov	r1, r6
 8000cfc:	2000      	movs	r0, #0
 8000cfe:	f7ff ff73 	bl	8000be8 <rgb_i2cRead>
 8000d02:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d06:	f7ff bf40 	b.w	8000b8a <rgb_i2cStop>
	...

08000d0c <rgb_init>:
 8000d0c:	4b1d      	ldr	r3, [pc, #116]	; (8000d84 <rgb_init+0x78>)
 8000d0e:	b570      	push	{r4, r5, r6, lr}
 8000d10:	2409      	movs	r4, #9
 8000d12:	2200      	movs	r2, #0
 8000d14:	3c01      	subs	r4, #1
 8000d16:	801a      	strh	r2, [r3, #0]
 8000d18:	825a      	strh	r2, [r3, #18]
 8000d1a:	849a      	strh	r2, [r3, #36]	; 0x24
 8000d1c:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000d20:	86da      	strh	r2, [r3, #54]	; 0x36
 8000d22:	f103 0302 	add.w	r3, r3, #2
 8000d26:	d1f4      	bne.n	8000d12 <rgb_init+0x6>
 8000d28:	4d17      	ldr	r5, [pc, #92]	; (8000d88 <rgb_init+0x7c>)
 8000d2a:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d2e:	802e      	strh	r6, [r5, #0]
 8000d30:	f7ff fed8 	bl	8000ae4 <rgb_i2c_init>
 8000d34:	2072      	movs	r0, #114	; 0x72
 8000d36:	2181      	movs	r1, #129	; 0x81
 8000d38:	22ff      	movs	r2, #255	; 0xff
 8000d3a:	f7ff ffb9 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d3e:	2072      	movs	r0, #114	; 0x72
 8000d40:	2183      	movs	r1, #131	; 0x83
 8000d42:	22ff      	movs	r2, #255	; 0xff
 8000d44:	f7ff ffb4 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d48:	2072      	movs	r0, #114	; 0x72
 8000d4a:	218d      	movs	r1, #141	; 0x8d
 8000d4c:	4622      	mov	r2, r4
 8000d4e:	f7ff ffaf 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d52:	2072      	movs	r0, #114	; 0x72
 8000d54:	2180      	movs	r1, #128	; 0x80
 8000d56:	2203      	movs	r2, #3
 8000d58:	f7ff ffaa 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d5c:	2072      	movs	r0, #114	; 0x72
 8000d5e:	218f      	movs	r1, #143	; 0x8f
 8000d60:	2223      	movs	r2, #35	; 0x23
 8000d62:	f7ff ffa5 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d66:	f7ff fe83 	bl	8000a70 <RGBSetHighSDA>
 8000d6a:	2072      	movs	r0, #114	; 0x72
 8000d6c:	2180      	movs	r1, #128	; 0x80
 8000d6e:	2207      	movs	r2, #7
 8000d70:	802c      	strh	r4, [r5, #0]
 8000d72:	f7ff ff9d 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d76:	2072      	movs	r0, #114	; 0x72
 8000d78:	218e      	movs	r1, #142	; 0x8e
 8000d7a:	2208      	movs	r2, #8
 8000d7c:	f7ff ff98 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d80:	802e      	strh	r6, [r5, #0]
 8000d82:	bd70      	pop	{r4, r5, r6, pc}
 8000d84:	2000034c 	.word	0x2000034c
 8000d88:	200009fc 	.word	0x200009fc

08000d8c <rgb_read>:
 8000d8c:	b538      	push	{r3, r4, r5, lr}
 8000d8e:	f7ff feed 	bl	8000b6c <rgb_i2cStart>
 8000d92:	2072      	movs	r0, #114	; 0x72
 8000d94:	f7ff ff08 	bl	8000ba8 <rgb_i2cWrite>
 8000d98:	20b4      	movs	r0, #180	; 0xb4
 8000d9a:	f7ff ff05 	bl	8000ba8 <rgb_i2cWrite>
 8000d9e:	f7ff fee5 	bl	8000b6c <rgb_i2cStart>
 8000da2:	2073      	movs	r0, #115	; 0x73
 8000da4:	f7ff ff00 	bl	8000ba8 <rgb_i2cWrite>
 8000da8:	2001      	movs	r0, #1
 8000daa:	4946      	ldr	r1, [pc, #280]	; (8000ec4 <rgb_read+0x138>)
 8000dac:	f7ff ff1c 	bl	8000be8 <rgb_i2cRead>
 8000db0:	2300      	movs	r3, #0
 8000db2:	4d45      	ldr	r5, [pc, #276]	; (8000ec8 <rgb_read+0x13c>)
 8000db4:	4c43      	ldr	r4, [pc, #268]	; (8000ec4 <rgb_read+0x138>)
 8000db6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000dba:	5d19      	ldrb	r1, [r3, r4]
 8000dbc:	3301      	adds	r3, #1
 8000dbe:	2b09      	cmp	r3, #9
 8000dc0:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000dc2:	d1f6      	bne.n	8000db2 <rgb_read+0x26>
 8000dc4:	2001      	movs	r0, #1
 8000dc6:	4621      	mov	r1, r4
 8000dc8:	f7ff ff0e 	bl	8000be8 <rgb_i2cRead>
 8000dcc:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000dd0:	2300      	movs	r3, #0
 8000dd2:	8811      	ldrh	r1, [r2, #0]
 8000dd4:	5ce0      	ldrb	r0, [r4, r3]
 8000dd6:	3301      	adds	r3, #1
 8000dd8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ddc:	2b09      	cmp	r3, #9
 8000dde:	f822 1b02 	strh.w	r1, [r2], #2
 8000de2:	d1f6      	bne.n	8000dd2 <rgb_read+0x46>
 8000de4:	2001      	movs	r0, #1
 8000de6:	4937      	ldr	r1, [pc, #220]	; (8000ec4 <rgb_read+0x138>)
 8000de8:	f7ff fefe 	bl	8000be8 <rgb_i2cRead>
 8000dec:	2300      	movs	r3, #0
 8000dee:	5ce2      	ldrb	r2, [r4, r3]
 8000df0:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000df4:	3301      	adds	r3, #1
 8000df6:	2b09      	cmp	r3, #9
 8000df8:	d1f9      	bne.n	8000dee <rgb_read+0x62>
 8000dfa:	2001      	movs	r0, #1
 8000dfc:	4931      	ldr	r1, [pc, #196]	; (8000ec4 <rgb_read+0x138>)
 8000dfe:	f7ff fef3 	bl	8000be8 <rgb_i2cRead>
 8000e02:	4a32      	ldr	r2, [pc, #200]	; (8000ecc <rgb_read+0x140>)
 8000e04:	2300      	movs	r3, #0
 8000e06:	5ce0      	ldrb	r0, [r4, r3]
 8000e08:	8851      	ldrh	r1, [r2, #2]
 8000e0a:	3301      	adds	r3, #1
 8000e0c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e10:	2b09      	cmp	r3, #9
 8000e12:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000e16:	d1f6      	bne.n	8000e06 <rgb_read+0x7a>
 8000e18:	2001      	movs	r0, #1
 8000e1a:	492a      	ldr	r1, [pc, #168]	; (8000ec4 <rgb_read+0x138>)
 8000e1c:	f7ff fee4 	bl	8000be8 <rgb_i2cRead>
 8000e20:	2300      	movs	r3, #0
 8000e22:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e26:	5ce1      	ldrb	r1, [r4, r3]
 8000e28:	3301      	adds	r3, #1
 8000e2a:	2b09      	cmp	r3, #9
 8000e2c:	8251      	strh	r1, [r2, #18]
 8000e2e:	d1f8      	bne.n	8000e22 <rgb_read+0x96>
 8000e30:	2001      	movs	r0, #1
 8000e32:	4924      	ldr	r1, [pc, #144]	; (8000ec4 <rgb_read+0x138>)
 8000e34:	f7ff fed8 	bl	8000be8 <rgb_i2cRead>
 8000e38:	4a25      	ldr	r2, [pc, #148]	; (8000ed0 <rgb_read+0x144>)
 8000e3a:	2300      	movs	r3, #0
 8000e3c:	8811      	ldrh	r1, [r2, #0]
 8000e3e:	5ce0      	ldrb	r0, [r4, r3]
 8000e40:	3301      	adds	r3, #1
 8000e42:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e46:	2b09      	cmp	r3, #9
 8000e48:	f822 1b02 	strh.w	r1, [r2], #2
 8000e4c:	d1f6      	bne.n	8000e3c <rgb_read+0xb0>
 8000e4e:	2001      	movs	r0, #1
 8000e50:	491c      	ldr	r1, [pc, #112]	; (8000ec4 <rgb_read+0x138>)
 8000e52:	f7ff fec9 	bl	8000be8 <rgb_i2cRead>
 8000e56:	2300      	movs	r3, #0
 8000e58:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e5c:	5ce1      	ldrb	r1, [r4, r3]
 8000e5e:	3301      	adds	r3, #1
 8000e60:	2b09      	cmp	r3, #9
 8000e62:	8491      	strh	r1, [r2, #36]	; 0x24
 8000e64:	d1f8      	bne.n	8000e58 <rgb_read+0xcc>
 8000e66:	2001      	movs	r0, #1
 8000e68:	4916      	ldr	r1, [pc, #88]	; (8000ec4 <rgb_read+0x138>)
 8000e6a:	f7ff febd 	bl	8000be8 <rgb_i2cRead>
 8000e6e:	4a19      	ldr	r2, [pc, #100]	; (8000ed4 <rgb_read+0x148>)
 8000e70:	2300      	movs	r3, #0
 8000e72:	8811      	ldrh	r1, [r2, #0]
 8000e74:	5ce0      	ldrb	r0, [r4, r3]
 8000e76:	3301      	adds	r3, #1
 8000e78:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e7c:	2b09      	cmp	r3, #9
 8000e7e:	f822 1b02 	strh.w	r1, [r2], #2
 8000e82:	d1f6      	bne.n	8000e72 <rgb_read+0xe6>
 8000e84:	2001      	movs	r0, #1
 8000e86:	490f      	ldr	r1, [pc, #60]	; (8000ec4 <rgb_read+0x138>)
 8000e88:	f7ff feae 	bl	8000be8 <rgb_i2cRead>
 8000e8c:	2300      	movs	r3, #0
 8000e8e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e92:	5ce1      	ldrb	r1, [r4, r3]
 8000e94:	3301      	adds	r3, #1
 8000e96:	2b09      	cmp	r3, #9
 8000e98:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000e9c:	d1f7      	bne.n	8000e8e <rgb_read+0x102>
 8000e9e:	2000      	movs	r0, #0
 8000ea0:	4908      	ldr	r1, [pc, #32]	; (8000ec4 <rgb_read+0x138>)
 8000ea2:	f7ff fea1 	bl	8000be8 <rgb_i2cRead>
 8000ea6:	4a0c      	ldr	r2, [pc, #48]	; (8000ed8 <rgb_read+0x14c>)
 8000ea8:	2300      	movs	r3, #0
 8000eaa:	8811      	ldrh	r1, [r2, #0]
 8000eac:	5ce0      	ldrb	r0, [r4, r3]
 8000eae:	3301      	adds	r3, #1
 8000eb0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000eb4:	2b09      	cmp	r3, #9
 8000eb6:	f822 1b02 	strh.w	r1, [r2], #2
 8000eba:	d1f6      	bne.n	8000eaa <rgb_read+0x11e>
 8000ebc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ec0:	f7ff be63 	b.w	8000b8a <rgb_i2cStop>
 8000ec4:	200009fe 	.word	0x200009fe
 8000ec8:	2000034c 	.word	0x2000034c
 8000ecc:	2000034a 	.word	0x2000034a
 8000ed0:	2000035e 	.word	0x2000035e
 8000ed4:	20000370 	.word	0x20000370
 8000ed8:	20000394 	.word	0x20000394

08000edc <line_sensor_init>:
 8000edc:	b538      	push	{r3, r4, r5, lr}
 8000ede:	2064      	movs	r0, #100	; 0x64
 8000ee0:	f001 f94a 	bl	8002178 <timer_delay_ms>
 8000ee4:	2400      	movs	r4, #0
 8000ee6:	f7ff ff11 	bl	8000d0c <rgb_init>
 8000eea:	f7ff ff4f 	bl	8000d8c <rgb_read>
 8000eee:	2072      	movs	r0, #114	; 0x72
 8000ef0:	2192      	movs	r1, #146	; 0x92
 8000ef2:	4a11      	ldr	r2, [pc, #68]	; (8000f38 <line_sensor_init+0x5c>)
 8000ef4:	f7ff feef 	bl	8000cd6 <rgb_i2c_read_reg>
 8000ef8:	4623      	mov	r3, r4
 8000efa:	4a10      	ldr	r2, [pc, #64]	; (8000f3c <line_sensor_init+0x60>)
 8000efc:	1899      	adds	r1, r3, r2
 8000efe:	4615      	mov	r5, r2
 8000f00:	7849      	ldrb	r1, [r1, #1]
 8000f02:	2969      	cmp	r1, #105	; 0x69
 8000f04:	d002      	beq.n	8000f0c <line_sensor_init+0x30>
 8000f06:	2201      	movs	r2, #1
 8000f08:	409a      	lsls	r2, r3
 8000f0a:	4314      	orrs	r4, r2
 8000f0c:	3301      	adds	r3, #1
 8000f0e:	2b09      	cmp	r3, #9
 8000f10:	d1f3      	bne.n	8000efa <line_sensor_init+0x1e>
 8000f12:	2100      	movs	r1, #0
 8000f14:	1868      	adds	r0, r5, r1
 8000f16:	3104      	adds	r1, #4
 8000f18:	2300      	movs	r3, #0
 8000f1a:	2920      	cmp	r1, #32
 8000f1c:	4a07      	ldr	r2, [pc, #28]	; (8000f3c <line_sensor_init+0x60>)
 8000f1e:	60c3      	str	r3, [r0, #12]
 8000f20:	d1f8      	bne.n	8000f14 <line_sensor_init+0x38>
 8000f22:	7013      	strb	r3, [r2, #0]
 8000f24:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 8000f28:	f882 303c 	strb.w	r3, [r2, #60]	; 0x3c
 8000f2c:	6353      	str	r3, [r2, #52]	; 0x34
 8000f2e:	6393      	str	r3, [r2, #56]	; 0x38
 8000f30:	f7ff ff2c 	bl	8000d8c <rgb_read>
 8000f34:	4620      	mov	r0, r4
 8000f36:	bd38      	pop	{r3, r4, r5, pc}
 8000f38:	200003a9 	.word	0x200003a9
 8000f3c:	200003a8 	.word	0x200003a8

08000f40 <line_sensor_read>:
 8000f40:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000f44:	4604      	mov	r4, r0
 8000f46:	f7ff ff21 	bl	8000d8c <rgb_read>
 8000f4a:	2c00      	cmp	r4, #0
 8000f4c:	f040 80ef 	bne.w	800112e <line_sensor_read+0x1ee>
 8000f50:	4a78      	ldr	r2, [pc, #480]	; (8001134 <line_sensor_read+0x1f4>)
 8000f52:	4b79      	ldr	r3, [pc, #484]	; (8001138 <line_sensor_read+0x1f8>)
 8000f54:	6b91      	ldr	r1, [r2, #56]	; 0x38
 8000f56:	f9b3 0058 	ldrsh.w	r0, [r3, #88]	; 0x58
 8000f5a:	2507      	movs	r5, #7
 8000f5c:	fb05 0101 	mla	r1, r5, r1, r0
 8000f60:	2008      	movs	r0, #8
 8000f62:	fb91 f1f0 	sdiv	r1, r1, r0
 8000f66:	6391      	str	r1, [r2, #56]	; 0x38
 8000f68:	4620      	mov	r0, r4
 8000f6a:	4621      	mov	r1, r4
 8000f6c:	4625      	mov	r5, r4
 8000f6e:	4626      	mov	r6, r4
 8000f70:	4627      	mov	r7, r4
 8000f72:	461c      	mov	r4, r3
 8000f74:	f8df c1c8 	ldr.w	ip, [pc, #456]	; 8001140 <line_sensor_read+0x200>
 8000f78:	f8b3 a036 	ldrh.w	sl, [r3, #54]	; 0x36
 8000f7c:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f80:	f8b3 9000 	ldrh.w	r9, [r3]
 8000f84:	f8b3 8012 	ldrh.w	r8, [r3, #18]
 8000f88:	f8b3 b024 	ldrh.w	fp, [r3, #36]	; 0x24
 8000f8c:	ebcc 0a0a 	rsb	sl, ip, sl
 8000f90:	f8df c1b0 	ldr.w	ip, [pc, #432]	; 8001144 <line_sensor_read+0x204>
 8000f94:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f98:	ebcc 0909 	rsb	r9, ip, r9
 8000f9c:	f8df c1a8 	ldr.w	ip, [pc, #424]	; 8001148 <line_sensor_read+0x208>
 8000fa0:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fa4:	ebcc 0808 	rsb	r8, ip, r8
 8000fa8:	f8df c1a0 	ldr.w	ip, [pc, #416]	; 800114c <line_sensor_read+0x20c>
 8000fac:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fb0:	3004      	adds	r0, #4
 8000fb2:	ebcc 0c0b 	rsb	ip, ip, fp
 8000fb6:	fa1f fa8a 	uxth.w	sl, sl
 8000fba:	fa1f f989 	uxth.w	r9, r9
 8000fbe:	fa1f f888 	uxth.w	r8, r8
 8000fc2:	fa1f fc8c 	uxth.w	ip, ip
 8000fc6:	2820      	cmp	r0, #32
 8000fc8:	f8a3 a036 	strh.w	sl, [r3, #54]	; 0x36
 8000fcc:	f8a3 9000 	strh.w	r9, [r3]
 8000fd0:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000fd4:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000fd8:	fa07 f78a 	sxtah	r7, r7, sl
 8000fdc:	fa06 f689 	sxtah	r6, r6, r9
 8000fe0:	fa05 f588 	sxtah	r5, r5, r8
 8000fe4:	fa01 f18c 	sxtah	r1, r1, ip
 8000fe8:	f103 0302 	add.w	r3, r3, #2
 8000fec:	d1c2      	bne.n	8000f74 <line_sensor_read+0x34>
 8000fee:	2308      	movs	r3, #8
 8000ff0:	fb91 fcf3 	sdiv	ip, r1, r3
 8000ff4:	fb97 f7f3 	sdiv	r7, r7, r3
 8000ff8:	fb96 f6f3 	sdiv	r6, r6, r3
 8000ffc:	fb95 f5f3 	sdiv	r5, r5, r3
 8001000:	4b4d      	ldr	r3, [pc, #308]	; (8001138 <line_sensor_read+0x1f8>)
 8001002:	2100      	movs	r1, #0
 8001004:	8ed8      	ldrh	r0, [r3, #54]	; 0x36
 8001006:	1a38      	subs	r0, r7, r0
 8001008:	86d8      	strh	r0, [r3, #54]	; 0x36
 800100a:	5b08      	ldrh	r0, [r1, r4]
 800100c:	1b80      	subs	r0, r0, r6
 800100e:	5308      	strh	r0, [r1, r4]
 8001010:	8a58      	ldrh	r0, [r3, #18]
 8001012:	1b40      	subs	r0, r0, r5
 8001014:	8258      	strh	r0, [r3, #18]
 8001016:	8c98      	ldrh	r0, [r3, #36]	; 0x24
 8001018:	3102      	adds	r1, #2
 800101a:	ebcc 0000 	rsb	r0, ip, r0
 800101e:	2910      	cmp	r1, #16
 8001020:	8498      	strh	r0, [r3, #36]	; 0x24
 8001022:	f103 0302 	add.w	r3, r3, #2
 8001026:	d1ed      	bne.n	8001004 <line_sensor_read+0xc4>
 8001028:	2300      	movs	r3, #0
 800102a:	191d      	adds	r5, r3, r4
 800102c:	eb02 0043 	add.w	r0, r2, r3, lsl #1
 8001030:	f9b5 5036 	ldrsh.w	r5, [r5, #54]	; 0x36
 8001034:	493f      	ldr	r1, [pc, #252]	; (8001134 <line_sensor_read+0x1f4>)
 8001036:	60c5      	str	r5, [r0, #12]
 8001038:	3302      	adds	r3, #2
 800103a:	2b10      	cmp	r3, #16
 800103c:	d1f5      	bne.n	800102a <line_sensor_read+0xea>
 800103e:	698d      	ldr	r5, [r1, #24]
 8001040:	69c8      	ldr	r0, [r1, #28]
 8001042:	1829      	adds	r1, r5, r0
 8001044:	d00d      	beq.n	8001062 <line_sensor_read+0x122>
 8001046:	4c3d      	ldr	r4, [pc, #244]	; (800113c <line_sensor_read+0x1fc>)
 8001048:	f9b4 3008 	ldrsh.w	r3, [r4, #8]
 800104c:	f9b4 6006 	ldrsh.w	r6, [r4, #6]
 8001050:	4343      	muls	r3, r0
 8001052:	fb06 3305 	mla	r3, r6, r5, r3
 8001056:	2402      	movs	r4, #2
 8001058:	fb93 f3f1 	sdiv	r3, r3, r1
 800105c:	fb91 f1f4 	sdiv	r1, r1, r4
 8001060:	e000      	b.n	8001064 <line_sensor_read+0x124>
 8001062:	460b      	mov	r3, r1
 8001064:	6a14      	ldr	r4, [r2, #32]
 8001066:	1826      	adds	r6, r4, r0
 8001068:	d00c      	beq.n	8001084 <line_sensor_read+0x144>
 800106a:	2c96      	cmp	r4, #150	; 0x96
 800106c:	dd0a      	ble.n	8001084 <line_sensor_read+0x144>
 800106e:	4933      	ldr	r1, [pc, #204]	; (800113c <line_sensor_read+0x1fc>)
 8001070:	f9b1 300a 	ldrsh.w	r3, [r1, #10]
 8001074:	f9b1 1008 	ldrsh.w	r1, [r1, #8]
 8001078:	4348      	muls	r0, r1
 800107a:	fb03 0304 	mla	r3, r3, r4, r0
 800107e:	fb93 f3f6 	sdiv	r3, r3, r6
 8001082:	4621      	mov	r1, r4
 8001084:	6950      	ldr	r0, [r2, #20]
 8001086:	1946      	adds	r6, r0, r5
 8001088:	d00c      	beq.n	80010a4 <line_sensor_read+0x164>
 800108a:	2896      	cmp	r0, #150	; 0x96
 800108c:	dd0a      	ble.n	80010a4 <line_sensor_read+0x164>
 800108e:	492b      	ldr	r1, [pc, #172]	; (800113c <line_sensor_read+0x1fc>)
 8001090:	f9b1 3004 	ldrsh.w	r3, [r1, #4]
 8001094:	f9b1 1006 	ldrsh.w	r1, [r1, #6]
 8001098:	434d      	muls	r5, r1
 800109a:	fb03 5300 	mla	r3, r3, r0, r5
 800109e:	fb93 f3f6 	sdiv	r3, r3, r6
 80010a2:	4601      	mov	r1, r0
 80010a4:	6a55      	ldr	r5, [r2, #36]	; 0x24
 80010a6:	192e      	adds	r6, r5, r4
 80010a8:	d00c      	beq.n	80010c4 <line_sensor_read+0x184>
 80010aa:	2d96      	cmp	r5, #150	; 0x96
 80010ac:	dd0a      	ble.n	80010c4 <line_sensor_read+0x184>
 80010ae:	4923      	ldr	r1, [pc, #140]	; (800113c <line_sensor_read+0x1fc>)
 80010b0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80010b4:	f9b1 100a 	ldrsh.w	r1, [r1, #10]
 80010b8:	434c      	muls	r4, r1
 80010ba:	fb03 4305 	mla	r3, r3, r5, r4
 80010be:	fb93 f3f6 	sdiv	r3, r3, r6
 80010c2:	4629      	mov	r1, r5
 80010c4:	6914      	ldr	r4, [r2, #16]
 80010c6:	1825      	adds	r5, r4, r0
 80010c8:	d00c      	beq.n	80010e4 <line_sensor_read+0x1a4>
 80010ca:	2c96      	cmp	r4, #150	; 0x96
 80010cc:	dd0a      	ble.n	80010e4 <line_sensor_read+0x1a4>
 80010ce:	491b      	ldr	r1, [pc, #108]	; (800113c <line_sensor_read+0x1fc>)
 80010d0:	f9b1 3002 	ldrsh.w	r3, [r1, #2]
 80010d4:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
 80010d8:	4348      	muls	r0, r1
 80010da:	fb03 0304 	mla	r3, r3, r4, r0
 80010de:	fb93 f3f5 	sdiv	r3, r3, r5
 80010e2:	4621      	mov	r1, r4
 80010e4:	68d0      	ldr	r0, [r2, #12]
 80010e6:	2896      	cmp	r0, #150	; 0x96
 80010e8:	dd03      	ble.n	80010f2 <line_sensor_read+0x1b2>
 80010ea:	4b14      	ldr	r3, [pc, #80]	; (800113c <line_sensor_read+0x1fc>)
 80010ec:	f9b3 3000 	ldrsh.w	r3, [r3]
 80010f0:	4601      	mov	r1, r0
 80010f2:	6a90      	ldr	r0, [r2, #40]	; 0x28
 80010f4:	2896      	cmp	r0, #150	; 0x96
 80010f6:	dd03      	ble.n	8001100 <line_sensor_read+0x1c0>
 80010f8:	4b10      	ldr	r3, [pc, #64]	; (800113c <line_sensor_read+0x1fc>)
 80010fa:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 80010fe:	e001      	b.n	8001104 <line_sensor_read+0x1c4>
 8001100:	2996      	cmp	r1, #150	; 0x96
 8001102:	dd10      	ble.n	8001126 <line_sensor_read+0x1e6>
 8001104:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001108:	dc05      	bgt.n	8001116 <line_sensor_read+0x1d6>
 800110a:	f06f 01ff 	mvn.w	r1, #255	; 0xff
 800110e:	428b      	cmp	r3, r1
 8001110:	bfb8      	it	lt
 8001112:	460b      	movlt	r3, r1
 8001114:	e001      	b.n	800111a <line_sensor_read+0x1da>
 8001116:	f44f 7380 	mov.w	r3, #256	; 0x100
 800111a:	6353      	str	r3, [r2, #52]	; 0x34
 800111c:	2308      	movs	r3, #8
 800111e:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 8001122:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001126:	4b03      	ldr	r3, [pc, #12]	; (8001134 <line_sensor_read+0x1f4>)
 8001128:	2200      	movs	r2, #0
 800112a:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 800112e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001132:	bf00      	nop
 8001134:	200003a8 	.word	0x200003a8
 8001138:	2000034c 	.word	0x2000034c
 800113c:	2000006c 	.word	0x2000006c
 8001140:	20000000 	.word	0x20000000
 8001144:	2000007c 	.word	0x2000007c
 8001148:	20000048 	.word	0x20000048
 800114c:	20000024 	.word	0x20000024

08001150 <abort_error_>:
 8001150:	b570      	push	{r4, r5, r6, lr}
 8001152:	4605      	mov	r5, r0
 8001154:	460e      	mov	r6, r1
 8001156:	480f      	ldr	r0, [pc, #60]	; (8001194 <abort_error_+0x44>)
 8001158:	4629      	mov	r1, r5
 800115a:	4632      	mov	r2, r6
 800115c:	f7ff f9ba 	bl	80004d4 <printf_>
 8001160:	2400      	movs	r4, #0
 8001162:	1ceb      	adds	r3, r5, #3
 8001164:	429c      	cmp	r4, r3
 8001166:	d20f      	bcs.n	8001188 <abort_error_+0x38>
 8001168:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800116c:	f001 fd3c 	bl	8002be8 <led_on>
 8001170:	2032      	movs	r0, #50	; 0x32
 8001172:	f001 f801 	bl	8002178 <timer_delay_ms>
 8001176:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800117a:	f001 fd47 	bl	8002c0c <led_off>
 800117e:	2064      	movs	r0, #100	; 0x64
 8001180:	f000 fffa 	bl	8002178 <timer_delay_ms>
 8001184:	3401      	adds	r4, #1
 8001186:	e7ec      	b.n	8001162 <abort_error_+0x12>
 8001188:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800118c:	f000 fff4 	bl	8002178 <timer_delay_ms>
 8001190:	e7e1      	b.n	8001156 <abort_error_+0x6>
 8001192:	bf00      	nop
 8001194:	08002d0d 	.word	0x08002d0d

08001198 <telemetry_thread>:
 8001198:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800119a:	4845      	ldr	r0, [pc, #276]	; (80012b0 <telemetry_thread+0x118>)
 800119c:	f7ff f99a 	bl	80004d4 <printf_>
 80011a0:	2400      	movs	r4, #0
 80011a2:	4e44      	ldr	r6, [pc, #272]	; (80012b4 <telemetry_thread+0x11c>)
 80011a4:	4844      	ldr	r0, [pc, #272]	; (80012b8 <telemetry_thread+0x120>)
 80011a6:	19a3      	adds	r3, r4, r6
 80011a8:	3404      	adds	r4, #4
 80011aa:	68d9      	ldr	r1, [r3, #12]
 80011ac:	f7ff f992 	bl	80004d4 <printf_>
 80011b0:	2c20      	cmp	r4, #32
 80011b2:	d1f6      	bne.n	80011a2 <telemetry_thread+0xa>
 80011b4:	2400      	movs	r4, #0
 80011b6:	4d41      	ldr	r5, [pc, #260]	; (80012bc <telemetry_thread+0x124>)
 80011b8:	483f      	ldr	r0, [pc, #252]	; (80012b8 <telemetry_thread+0x120>)
 80011ba:	1963      	adds	r3, r4, r5
 80011bc:	3402      	adds	r4, #2
 80011be:	f9b3 1036 	ldrsh.w	r1, [r3, #54]	; 0x36
 80011c2:	f7ff f987 	bl	80004d4 <printf_>
 80011c6:	2c10      	cmp	r4, #16
 80011c8:	d1f5      	bne.n	80011b6 <telemetry_thread+0x1e>
 80011ca:	2400      	movs	r4, #0
 80011cc:	5f29      	ldrsh	r1, [r5, r4]
 80011ce:	483a      	ldr	r0, [pc, #232]	; (80012b8 <telemetry_thread+0x120>)
 80011d0:	3402      	adds	r4, #2
 80011d2:	f7ff f97f 	bl	80004d4 <printf_>
 80011d6:	2c10      	cmp	r4, #16
 80011d8:	d1f8      	bne.n	80011cc <telemetry_thread+0x34>
 80011da:	2400      	movs	r4, #0
 80011dc:	192b      	adds	r3, r5, r4
 80011de:	4836      	ldr	r0, [pc, #216]	; (80012b8 <telemetry_thread+0x120>)
 80011e0:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 80011e4:	3402      	adds	r4, #2
 80011e6:	f7ff f975 	bl	80004d4 <printf_>
 80011ea:	2c10      	cmp	r4, #16
 80011ec:	d1f6      	bne.n	80011dc <telemetry_thread+0x44>
 80011ee:	2400      	movs	r4, #0
 80011f0:	192b      	adds	r3, r5, r4
 80011f2:	4831      	ldr	r0, [pc, #196]	; (80012b8 <telemetry_thread+0x120>)
 80011f4:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 80011f8:	3402      	adds	r4, #2
 80011fa:	f7ff f96b 	bl	80004d4 <printf_>
 80011fe:	2c10      	cmp	r4, #16
 8001200:	d1f6      	bne.n	80011f0 <telemetry_thread+0x58>
 8001202:	4b2e      	ldr	r3, [pc, #184]	; (80012bc <telemetry_thread+0x124>)
 8001204:	482c      	ldr	r0, [pc, #176]	; (80012b8 <telemetry_thread+0x120>)
 8001206:	f9b3 1058 	ldrsh.w	r1, [r3, #88]	; 0x58
 800120a:	4c2d      	ldr	r4, [pc, #180]	; (80012c0 <telemetry_thread+0x128>)
 800120c:	f7ff f962 	bl	80004d4 <printf_>
 8001210:	4829      	ldr	r0, [pc, #164]	; (80012b8 <telemetry_thread+0x120>)
 8001212:	2196      	movs	r1, #150	; 0x96
 8001214:	f7ff f95e 	bl	80004d4 <printf_>
 8001218:	4827      	ldr	r0, [pc, #156]	; (80012b8 <telemetry_thread+0x120>)
 800121a:	f44f 712f 	mov.w	r1, #700	; 0x2bc
 800121e:	f7ff f959 	bl	80004d4 <printf_>
 8001222:	6b71      	ldr	r1, [r6, #52]	; 0x34
 8001224:	4824      	ldr	r0, [pc, #144]	; (80012b8 <telemetry_thread+0x120>)
 8001226:	f7ff f955 	bl	80004d4 <printf_>
 800122a:	f896 1030 	ldrb.w	r1, [r6, #48]	; 0x30
 800122e:	4822      	ldr	r0, [pc, #136]	; (80012b8 <telemetry_thread+0x120>)
 8001230:	f7ff f950 	bl	80004d4 <printf_>
 8001234:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
 8001238:	f9b4 200e 	ldrsh.w	r2, [r4, #14]
 800123c:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 8001240:	4820      	ldr	r0, [pc, #128]	; (80012c4 <telemetry_thread+0x12c>)
 8001242:	f7ff f947 	bl	80004d4 <printf_>
 8001246:	f9b4 1006 	ldrsh.w	r1, [r4, #6]
 800124a:	f9b4 2008 	ldrsh.w	r2, [r4, #8]
 800124e:	f9b4 300a 	ldrsh.w	r3, [r4, #10]
 8001252:	481c      	ldr	r0, [pc, #112]	; (80012c4 <telemetry_thread+0x12c>)
 8001254:	f7ff f93e 	bl	80004d4 <printf_>
 8001258:	f9b4 1000 	ldrsh.w	r1, [r4]
 800125c:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
 8001260:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
 8001264:	4817      	ldr	r0, [pc, #92]	; (80012c4 <telemetry_thread+0x12c>)
 8001266:	f7ff f935 	bl	80004d4 <printf_>
 800126a:	f9b4 1018 	ldrsh.w	r1, [r4, #24]
 800126e:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 8001272:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 8001276:	4813      	ldr	r0, [pc, #76]	; (80012c4 <telemetry_thread+0x12c>)
 8001278:	f7ff f92c 	bl	80004d4 <printf_>
 800127c:	f241 3388 	movw	r3, #5000	; 0x1388
 8001280:	9300      	str	r3, [sp, #0]
 8001282:	4811      	ldr	r0, [pc, #68]	; (80012c8 <telemetry_thread+0x130>)
 8001284:	2314      	movs	r3, #20
 8001286:	f44f 71a3 	mov.w	r1, #326	; 0x146
 800128a:	f241 12b2 	movw	r2, #4530	; 0x11b2
 800128e:	f7ff f921 	bl	80004d4 <printf_>
 8001292:	f44f 71fa 	mov.w	r1, #500	; 0x1f4
 8001296:	f44f 7248 	mov.w	r2, #800	; 0x320
 800129a:	480c      	ldr	r0, [pc, #48]	; (80012cc <telemetry_thread+0x134>)
 800129c:	f7ff f91a 	bl	80004d4 <printf_>
 80012a0:	480b      	ldr	r0, [pc, #44]	; (80012d0 <telemetry_thread+0x138>)
 80012a2:	f7ff f917 	bl	80004d4 <printf_>
 80012a6:	2064      	movs	r0, #100	; 0x64
 80012a8:	f000 ff66 	bl	8002178 <timer_delay_ms>
 80012ac:	e775      	b.n	800119a <telemetry_thread+0x2>
 80012ae:	bf00      	nop
 80012b0:	08002d1f 	.word	0x08002d1f
 80012b4:	200003a8 	.word	0x200003a8
 80012b8:	08002d2d 	.word	0x08002d2d
 80012bc:	2000034c 	.word	0x2000034c
 80012c0:	2000032c 	.word	0x2000032c
 80012c4:	08002d27 	.word	0x08002d27
 80012c8:	08002d24 	.word	0x08002d24
 80012cc:	08002d2a 	.word	0x08002d2a
 80012d0:	08002d31 	.word	0x08002d31

080012d4 <line_sensor_thread>:
 80012d4:	b508      	push	{r3, lr}
 80012d6:	f7ff fe01 	bl	8000edc <line_sensor_init>
 80012da:	4601      	mov	r1, r0
 80012dc:	b120      	cbz	r0, 80012e8 <line_sensor_thread+0x14>
 80012de:	4b08      	ldr	r3, [pc, #32]	; (8001300 <line_sensor_thread+0x2c>)
 80012e0:	2001      	movs	r0, #1
 80012e2:	6018      	str	r0, [r3, #0]
 80012e4:	f7ff ff34 	bl	8001150 <abort_error_>
 80012e8:	2000      	movs	r0, #0
 80012ea:	2104      	movs	r1, #4
 80012ec:	f000 ff54 	bl	8002198 <event_timer_set_period>
 80012f0:	2000      	movs	r0, #0
 80012f2:	f000 ff67 	bl	80021c4 <event_timer_wait>
 80012f6:	2000      	movs	r0, #0
 80012f8:	f7ff fe22 	bl	8000f40 <line_sensor_read>
 80012fc:	e7f8      	b.n	80012f0 <line_sensor_thread+0x1c>
 80012fe:	bf00      	nop
 8001300:	2000129c 	.word	0x2000129c

08001304 <i2c_sensor_thread>:
 8001304:	b508      	push	{r3, lr}
 8001306:	f7ff fac3 	bl	8000890 <lsm9ds0_init>
 800130a:	4601      	mov	r1, r0
 800130c:	b128      	cbz	r0, 800131a <i2c_sensor_thread+0x16>
 800130e:	4b08      	ldr	r3, [pc, #32]	; (8001330 <i2c_sensor_thread+0x2c>)
 8001310:	2201      	movs	r2, #1
 8001312:	2002      	movs	r0, #2
 8001314:	601a      	str	r2, [r3, #0]
 8001316:	f7ff ff1b 	bl	8001150 <abort_error_>
 800131a:	2001      	movs	r0, #1
 800131c:	210a      	movs	r1, #10
 800131e:	f000 ff3b 	bl	8002198 <event_timer_set_period>
 8001322:	2001      	movs	r0, #1
 8001324:	f000 ff4e 	bl	80021c4 <event_timer_wait>
 8001328:	f7ff fa34 	bl	8000794 <lsm9ds0_read>
 800132c:	e7f9      	b.n	8001322 <i2c_sensor_thread+0x1e>
 800132e:	bf00      	nop
 8001330:	2000129c 	.word	0x2000129c

08001334 <line_follower>:
 8001334:	b570      	push	{r4, r5, r6, lr}
 8001336:	f000 f9a5 	bl	8001684 <line_follower_init>
 800133a:	f000 fb03 	bl	8001944 <obstacle_init>
 800133e:	2002      	movs	r0, #2
 8001340:	2104      	movs	r1, #4
 8001342:	f000 ff29 	bl	8002198 <event_timer_set_period>
 8001346:	f000 ff09 	bl	800215c <timer_get_time>
 800134a:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 800134e:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 8001352:	2400      	movs	r4, #0
 8001354:	4d22      	ldr	r5, [pc, #136]	; (80013e0 <line_follower+0xac>)
 8001356:	2002      	movs	r0, #2
 8001358:	f000 ff34 	bl	80021c4 <event_timer_wait>
 800135c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800135e:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 8001362:	dc04      	bgt.n	800136e <line_follower+0x3a>
 8001364:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8001366:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 800136a:	dc0d      	bgt.n	8001388 <line_follower+0x54>
 800136c:	e017      	b.n	800139e <line_follower+0x6a>
 800136e:	4b1d      	ldr	r3, [pc, #116]	; (80013e4 <line_follower+0xb0>)
 8001370:	f9b3 3000 	ldrsh.w	r3, [r3]
 8001374:	f5b3 5ffa 	cmp.w	r3, #8000	; 0x1f40
 8001378:	ddf4      	ble.n	8001364 <line_follower+0x30>
 800137a:	f001 fc61 	bl	8002c40 <get_mode_jumper>
 800137e:	2800      	cmp	r0, #0
 8001380:	d1f0      	bne.n	8001364 <line_follower+0x30>
 8001382:	f000 fae5 	bl	8001950 <obstacle_main>
 8001386:	e013      	b.n	80013b0 <line_follower+0x7c>
 8001388:	4b16      	ldr	r3, [pc, #88]	; (80013e4 <line_follower+0xb0>)
 800138a:	f9b3 2000 	ldrsh.w	r2, [r3]
 800138e:	f643 2398 	movw	r3, #15000	; 0x3a98
 8001392:	429a      	cmp	r2, r3
 8001394:	dd03      	ble.n	800139e <line_follower+0x6a>
 8001396:	f001 fc53 	bl	8002c40 <get_mode_jumper>
 800139a:	2801      	cmp	r0, #1
 800139c:	d0f1      	beq.n	8001382 <line_follower+0x4e>
 800139e:	f895 3030 	ldrb.w	r3, [r5, #48]	; 0x30
 80013a2:	2b08      	cmp	r3, #8
 80013a4:	d102      	bne.n	80013ac <line_follower+0x78>
 80013a6:	f000 f991 	bl	80016cc <line_follower_main>
 80013aa:	e001      	b.n	80013b0 <line_follower+0x7c>
 80013ac:	f000 fb20 	bl	80019f0 <broken_line_main>
 80013b0:	3401      	adds	r4, #1
 80013b2:	2314      	movs	r3, #20
 80013b4:	fbb4 f2f3 	udiv	r2, r4, r3
 80013b8:	fb03 4312 	mls	r3, r3, r2, r4
 80013bc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80013c0:	b913      	cbnz	r3, 80013c8 <line_follower+0x94>
 80013c2:	f001 fc11 	bl	8002be8 <led_on>
 80013c6:	e001      	b.n	80013cc <line_follower+0x98>
 80013c8:	f001 fc20 	bl	8002c0c <led_off>
 80013cc:	f000 fec6 	bl	800215c <timer_get_time>
 80013d0:	4286      	cmp	r6, r0
 80013d2:	d2bf      	bcs.n	8001354 <line_follower+0x20>
 80013d4:	2000      	movs	r0, #0
 80013d6:	4601      	mov	r1, r0
 80013d8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80013dc:	f001 ba80 	b.w	80028e0 <drv8834_run>
 80013e0:	200003a8 	.word	0x200003a8
 80013e4:	2000032c 	.word	0x2000032c

080013e8 <main_thread>:
 80013e8:	b510      	push	{r4, lr}
 80013ea:	4825      	ldr	r0, [pc, #148]	; (8001480 <main_thread+0x98>)
 80013ec:	4c25      	ldr	r4, [pc, #148]	; (8001484 <main_thread+0x9c>)
 80013ee:	f7ff f871 	bl	80004d4 <printf_>
 80013f2:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80013f6:	f000 febf 	bl	8002178 <timer_delay_ms>
 80013fa:	2300      	movs	r3, #0
 80013fc:	6023      	str	r3, [r4, #0]
 80013fe:	4922      	ldr	r1, [pc, #136]	; (8001488 <main_thread+0xa0>)
 8001400:	4822      	ldr	r0, [pc, #136]	; (800148c <main_thread+0xa4>)
 8001402:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001406:	2306      	movs	r3, #6
 8001408:	f7fe ff40 	bl	800028c <create_thread>
 800140c:	4920      	ldr	r1, [pc, #128]	; (8001490 <main_thread+0xa8>)
 800140e:	4821      	ldr	r0, [pc, #132]	; (8001494 <main_thread+0xac>)
 8001410:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001414:	2306      	movs	r3, #6
 8001416:	f7fe ff39 	bl	800028c <create_thread>
 800141a:	491f      	ldr	r1, [pc, #124]	; (8001498 <main_thread+0xb0>)
 800141c:	481f      	ldr	r0, [pc, #124]	; (800149c <main_thread+0xb4>)
 800141e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001422:	231a      	movs	r3, #26
 8001424:	f7fe ff32 	bl	800028c <create_thread>
 8001428:	f000 fae0 	bl	80019ec <broken_line_init>
 800142c:	f000 fa8a 	bl	8001944 <obstacle_init>
 8001430:	f001 fc06 	bl	8002c40 <get_mode_jumper>
 8001434:	4601      	mov	r1, r0
 8001436:	481a      	ldr	r0, [pc, #104]	; (80014a0 <main_thread+0xb8>)
 8001438:	f7ff f84c 	bl	80004d4 <printf_>
 800143c:	6823      	ldr	r3, [r4, #0]
 800143e:	b13b      	cbz	r3, 8001450 <main_thread+0x68>
 8001440:	4818      	ldr	r0, [pc, #96]	; (80014a4 <main_thread+0xbc>)
 8001442:	f7ff f847 	bl	80004d4 <printf_>
 8001446:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800144a:	f000 fe95 	bl	8002178 <timer_delay_ms>
 800144e:	e7f7      	b.n	8001440 <main_thread+0x58>
 8001450:	f001 fbee 	bl	8002c30 <get_key>
 8001454:	b128      	cbz	r0, 8001462 <main_thread+0x7a>
 8001456:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800145a:	f000 fe8d 	bl	8002178 <timer_delay_ms>
 800145e:	f7ff ff69 	bl	8001334 <line_follower>
 8001462:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001466:	f001 fbbf 	bl	8002be8 <led_on>
 800146a:	2064      	movs	r0, #100	; 0x64
 800146c:	f000 fe84 	bl	8002178 <timer_delay_ms>
 8001470:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001474:	f001 fbca 	bl	8002c0c <led_off>
 8001478:	20c8      	movs	r0, #200	; 0xc8
 800147a:	f000 fe7d 	bl	8002178 <timer_delay_ms>
 800147e:	e7dd      	b.n	800143c <main_thread+0x54>
 8001480:	08002d34 	.word	0x08002d34
 8001484:	2000129c 	.word	0x2000129c
 8001488:	20000c9c 	.word	0x20000c9c
 800148c:	080012d5 	.word	0x080012d5
 8001490:	2000109c 	.word	0x2000109c
 8001494:	08001305 	.word	0x08001305
 8001498:	20000e9c 	.word	0x20000e9c
 800149c:	08001199 	.word	0x08001199
 80014a0:	08002d6f 	.word	0x08002d6f
 80014a4:	08002d7a 	.word	0x08002d7a

080014a8 <q_predictor_init>:
 80014a8:	4b24      	ldr	r3, [pc, #144]	; (800153c <q_predictor_init+0x94>)
 80014aa:	2200      	movs	r2, #0
 80014ac:	4619      	mov	r1, r3
 80014ae:	b570      	push	{r4, r5, r6, lr}
 80014b0:	4608      	mov	r0, r1
 80014b2:	601a      	str	r2, [r3, #0]
 80014b4:	605a      	str	r2, [r3, #4]
 80014b6:	f103 0208 	add.w	r2, r3, #8
 80014ba:	3348      	adds	r3, #72	; 0x48
 80014bc:	2400      	movs	r4, #0
 80014be:	f842 4b04 	str.w	r4, [r2], #4
 80014c2:	429a      	cmp	r2, r3
 80014c4:	d1fa      	bne.n	80014bc <q_predictor_init+0x14>
 80014c6:	2200      	movs	r2, #0
 80014c8:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 80014cc:	2300      	movs	r3, #0
 80014ce:	4e1c      	ldr	r6, [pc, #112]	; (8001540 <q_predictor_init+0x98>)
 80014d0:	4416      	add	r6, r2
 80014d2:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001544 <q_predictor_init+0x9c>
 80014d6:	5ef6      	ldrsh	r6, [r6, r3]
 80014d8:	ee07 6a10 	vmov	s14, r6
 80014dc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80014e0:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 80014e4:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80014e8:	3302      	adds	r3, #2
 80014ea:	2b20      	cmp	r3, #32
 80014ec:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 80014f0:	d1ed      	bne.n	80014ce <q_predictor_init+0x26>
 80014f2:	3220      	adds	r2, #32
 80014f4:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80014f8:	d1e6      	bne.n	80014c8 <q_predictor_init+0x20>
 80014fa:	2300      	movs	r3, #0
 80014fc:	4912      	ldr	r1, [pc, #72]	; (8001548 <q_predictor_init+0xa0>)
 80014fe:	5e59      	ldrsh	r1, [r3, r1]
 8001500:	ee07 1a10 	vmov	s14, r1
 8001504:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001508:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800150c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001510:	3302      	adds	r3, #2
 8001512:	2b10      	cmp	r3, #16
 8001514:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001518:	d1f0      	bne.n	80014fc <q_predictor_init+0x54>
 800151a:	2300      	movs	r3, #0
 800151c:	490b      	ldr	r1, [pc, #44]	; (800154c <q_predictor_init+0xa4>)
 800151e:	5e59      	ldrsh	r1, [r3, r1]
 8001520:	ee07 1a10 	vmov	s14, r1
 8001524:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001528:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800152c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001530:	3302      	adds	r3, #2
 8001532:	2b10      	cmp	r3, #16
 8001534:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8001538:	d1f0      	bne.n	800151c <q_predictor_init+0x74>
 800153a:	bd70      	pop	{r4, r5, r6, pc}
 800153c:	20000a08 	.word	0x20000a08
 8001540:	200000b0 	.word	0x200000b0
 8001544:	447a0000 	.word	0x447a0000
 8001548:	200000a0 	.word	0x200000a0
 800154c:	200001e4 	.word	0x200001e4

08001550 <q_predictor_process>:
 8001550:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8001554:	4b44      	ldr	r3, [pc, #272]	; (8001668 <q_predictor_process+0x118>)
 8001556:	ed2d 8b02 	vpush	{d8}
 800155a:	f1a3 0948 	sub.w	r9, r3, #72	; 0x48
 800155e:	4680      	mov	r8, r0
 8001560:	f109 020c 	add.w	r2, r9, #12
 8001564:	464f      	mov	r7, r9
 8001566:	f853 1c08 	ldr.w	r1, [r3, #-8]
 800156a:	f843 1d04 	str.w	r1, [r3, #-4]!
 800156e:	4293      	cmp	r3, r2
 8001570:	d1f9      	bne.n	8001566 <q_predictor_process+0x16>
 8001572:	4640      	mov	r0, r8
 8001574:	f7ff f860 	bl	8000638 <m_abs>
 8001578:	2500      	movs	r5, #0
 800157a:	eddf 8a3c 	vldr	s17, [pc, #240]	; 800166c <q_predictor_process+0x11c>
 800157e:	60b8      	str	r0, [r7, #8]
 8001580:	462e      	mov	r6, r5
 8001582:	ed9f 8a3b 	vldr	s16, [pc, #236]	; 8001670 <q_predictor_process+0x120>
 8001586:	eb09 1a86 	add.w	sl, r9, r6, lsl #6
 800158a:	2400      	movs	r4, #0
 800158c:	193a      	adds	r2, r7, r4
 800158e:	eb0a 0304 	add.w	r3, sl, r4
 8001592:	ed92 7a02 	vldr	s14, [r2, #8]
 8001596:	edd3 7a12 	vldr	s15, [r3, #72]	; 0x48
 800159a:	ee77 7a67 	vsub.f32	s15, s14, s15
 800159e:	3404      	adds	r4, #4
 80015a0:	ee17 0a90 	vmov	r0, s15
 80015a4:	f7ff f848 	bl	8000638 <m_abs>
 80015a8:	ee07 0a90 	vmov	s15, r0
 80015ac:	2c40      	cmp	r4, #64	; 0x40
 80015ae:	ee38 8a27 	vadd.f32	s16, s16, s15
 80015b2:	d1eb      	bne.n	800158c <q_predictor_process+0x3c>
 80015b4:	eeb4 8ae8 	vcmpe.f32	s16, s17
 80015b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015bc:	bf48      	it	mi
 80015be:	4635      	movmi	r5, r6
 80015c0:	f106 0601 	add.w	r6, r6, #1
 80015c4:	bf58      	it	pl
 80015c6:	eeb0 8a68 	vmovpl.f32	s16, s17
 80015ca:	2e08      	cmp	r6, #8
 80015cc:	d002      	beq.n	80015d4 <q_predictor_process+0x84>
 80015ce:	eef0 8a48 	vmov.f32	s17, s16
 80015d2:	e7d6      	b.n	8001582 <q_predictor_process+0x32>
 80015d4:	eb07 1085 	add.w	r0, r7, r5, lsl #6
 80015d8:	2300      	movs	r3, #0
 80015da:	18f9      	adds	r1, r7, r3
 80015dc:	18c2      	adds	r2, r0, r3
 80015de:	ed91 7a02 	vldr	s14, [r1, #8]
 80015e2:	ed9f 6a24 	vldr	s12, [pc, #144]	; 8001674 <q_predictor_process+0x124>
 80015e6:	edd2 7a12 	vldr	s15, [r2, #72]	; 0x48
 80015ea:	eddf 6a23 	vldr	s13, [pc, #140]	; 8001678 <q_predictor_process+0x128>
 80015ee:	ee27 7a06 	vmul.f32	s14, s14, s12
 80015f2:	ee07 7aa6 	vmla.f32	s14, s15, s13
 80015f6:	3304      	adds	r3, #4
 80015f8:	2b40      	cmp	r3, #64	; 0x40
 80015fa:	4c20      	ldr	r4, [pc, #128]	; (800167c <q_predictor_process+0x12c>)
 80015fc:	ed82 7a12 	vstr	s14, [r2, #72]	; 0x48
 8001600:	d1eb      	bne.n	80015da <q_predictor_process+0x8a>
 8001602:	6823      	ldr	r3, [r4, #0]
 8001604:	6025      	str	r5, [r4, #0]
 8001606:	6063      	str	r3, [r4, #4]
 8001608:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 800160c:	ed93 5a9a 	vldr	s10, [r3, #616]	; 0x268
 8001610:	edd4 7a02 	vldr	s15, [r4, #8]
 8001614:	eddf 5a1a 	vldr	s11, [pc, #104]	; 8001680 <q_predictor_process+0x130>
 8001618:	ee45 7a25 	vmla.f32	s15, s10, s11
 800161c:	359a      	adds	r5, #154	; 0x9a
 800161e:	eb04 0585 	add.w	r5, r4, r5, lsl #2
 8001622:	ed95 7a00 	vldr	s14, [r5]
 8001626:	ee67 7a86 	vmul.f32	s15, s15, s12
 800162a:	ee47 7a26 	vmla.f32	s15, s14, s13
 800162e:	2100      	movs	r1, #0
 8001630:	ee17 0a90 	vmov	r0, s15
 8001634:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 8001638:	edc5 7a00 	vstr	s15, [r5]
 800163c:	f7ff f81a 	bl	8000674 <m_saturate>
 8001640:	6823      	ldr	r3, [r4, #0]
 8001642:	6028      	str	r0, [r5, #0]
 8001644:	eb04 0483 	add.w	r4, r4, r3, lsl #2
 8001648:	4640      	mov	r0, r8
 800164a:	ed94 8a92 	vldr	s16, [r4, #584]	; 0x248
 800164e:	f7fe ffff 	bl	8000650 <m_sgn>
 8001652:	ee07 0a90 	vmov	s15, r0
 8001656:	ee68 7a27 	vmul.f32	s15, s16, s15
 800165a:	ecbd 8b02 	vpop	{d8}
 800165e:	ee17 0a90 	vmov	r0, s15
 8001662:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001666:	bf00      	nop
 8001668:	20000a50 	.word	0x20000a50
 800166c:	43200000 	.word	0x43200000
 8001670:	00000000 	.word	0x00000000
 8001674:	3d000000 	.word	0x3d000000
 8001678:	3f780000 	.word	0x3f780000
 800167c:	20000a08 	.word	0x20000a08
 8001680:	3e99999a 	.word	0x3e99999a

08001684 <line_follower_init>:
 8001684:	b507      	push	{r0, r1, r2, lr}
 8001686:	4b0a      	ldr	r3, [pc, #40]	; (80016b0 <line_follower_init+0x2c>)
 8001688:	4a0a      	ldr	r2, [pc, #40]	; (80016b4 <line_follower_init+0x30>)
 800168a:	480b      	ldr	r0, [pc, #44]	; (80016b8 <line_follower_init+0x34>)
 800168c:	6013      	str	r3, [r2, #0]
 800168e:	4b0b      	ldr	r3, [pc, #44]	; (80016bc <line_follower_init+0x38>)
 8001690:	490b      	ldr	r1, [pc, #44]	; (80016c0 <line_follower_init+0x3c>)
 8001692:	6053      	str	r3, [r2, #4]
 8001694:	2300      	movs	r3, #0
 8001696:	6093      	str	r3, [r2, #8]
 8001698:	4a0a      	ldr	r2, [pc, #40]	; (80016c4 <line_follower_init+0x40>)
 800169a:	9301      	str	r3, [sp, #4]
 800169c:	9200      	str	r2, [sp, #0]
 800169e:	4a0a      	ldr	r2, [pc, #40]	; (80016c8 <line_follower_init+0x44>)
 80016a0:	f7ff f80e 	bl	80006c0 <pid_init>
 80016a4:	b003      	add	sp, #12
 80016a6:	f85d eb04 	ldr.w	lr, [sp], #4
 80016aa:	f7ff befd 	b.w	80014a8 <q_predictor_init>
 80016ae:	bf00      	nop
 80016b0:	3ecccccd 	.word	0x3ecccccd
 80016b4:	20000c90 	.word	0x20000c90
 80016b8:	200014a0 	.word	0x200014a0
 80016bc:	3f4ccccd 	.word	0x3f4ccccd
 80016c0:	42c80000 	.word	0x42c80000
 80016c4:	4090f5c3 	.word	0x4090f5c3
 80016c8:	3ea6e979 	.word	0x3ea6e979

080016cc <line_follower_main>:
 80016cc:	b538      	push	{r3, r4, r5, lr}
 80016ce:	4b35      	ldr	r3, [pc, #212]	; (80017a4 <line_follower_main+0xd8>)
 80016d0:	4c35      	ldr	r4, [pc, #212]	; (80017a8 <line_follower_main+0xdc>)
 80016d2:	ed2d 8b02 	vpush	{d8}
 80016d6:	ed93 8a0d 	vldr	s16, [r3, #52]	; 0x34
 80016da:	eddf 7a34 	vldr	s15, [pc, #208]	; 80017ac <line_follower_main+0xe0>
 80016de:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 80016e2:	f04f 557c 	mov.w	r5, #1056964608	; 0x3f000000
 80016e6:	ee28 8a27 	vmul.f32	s16, s16, s15
 80016ea:	462a      	mov	r2, r5
 80016ec:	2100      	movs	r1, #0
 80016ee:	ee18 0a10 	vmov	r0, s16
 80016f2:	f7ff ff2d 	bl	8001550 <q_predictor_process>
 80016f6:	ee07 0a90 	vmov	s15, r0
 80016fa:	ee37 8ac8 	vsub.f32	s16, s15, s16
 80016fe:	ee18 0a10 	vmov	r0, s16
 8001702:	f7fe ff99 	bl	8000638 <m_abs>
 8001706:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 80017b0 <line_follower_main+0xe4>
 800170a:	ee07 0a90 	vmov	s15, r0
 800170e:	ed9f 6a29 	vldr	s12, [pc, #164]	; 80017b4 <line_follower_main+0xe8>
 8001712:	ee77 5a67 	vsub.f32	s11, s14, s15
 8001716:	edd4 6a00 	vldr	s13, [r4]
 800171a:	ee45 6a86 	vmla.f32	s13, s11, s12
 800171e:	ee16 0a90 	vmov	r0, s13
 8001722:	eddf 6a25 	vldr	s13, [pc, #148]	; 80017b8 <line_follower_main+0xec>
 8001726:	ee07 7ae6 	vmls.f32	s14, s15, s13
 800172a:	ee17 1a10 	vmov	r1, s14
 800172e:	f7fe ffb8 	bl	80006a2 <m_min>
 8001732:	4629      	mov	r1, r5
 8001734:	6862      	ldr	r2, [r4, #4]
 8001736:	6020      	str	r0, [r4, #0]
 8001738:	f7fe ff9c 	bl	8000674 <m_saturate>
 800173c:	4b1f      	ldr	r3, [pc, #124]	; (80017bc <line_follower_main+0xf0>)
 800173e:	6020      	str	r0, [r4, #0]
 8001740:	f9b3 2000 	ldrsh.w	r2, [r3]
 8001744:	4b1e      	ldr	r3, [pc, #120]	; (80017c0 <line_follower_main+0xf4>)
 8001746:	429a      	cmp	r2, r3
 8001748:	bfb8      	it	lt
 800174a:	6025      	strlt	r5, [r4, #0]
 800174c:	f001 fa78 	bl	8002c40 <get_mode_jumper>
 8001750:	2801      	cmp	r0, #1
 8001752:	bf08      	it	eq
 8001754:	4b1b      	ldreq	r3, [pc, #108]	; (80017c4 <line_follower_main+0xf8>)
 8001756:	481c      	ldr	r0, [pc, #112]	; (80017c8 <line_follower_main+0xfc>)
 8001758:	bf08      	it	eq
 800175a:	6023      	streq	r3, [r4, #0]
 800175c:	ee18 1a10 	vmov	r1, s16
 8001760:	f7fe ffde 	bl	8000720 <pid_process>
 8001764:	edd4 6a00 	vldr	s13, [r4]
 8001768:	ee07 0a90 	vmov	s15, r0
 800176c:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80017cc <line_follower_main+0x100>
 8001770:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8001774:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001778:	ee26 6a07 	vmul.f32	s12, s12, s14
 800177c:	ee27 7a87 	vmul.f32	s14, s15, s14
 8001780:	ecbd 8b02 	vpop	{d8}
 8001784:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001788:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800178c:	60a0      	str	r0, [r4, #8]
 800178e:	ee17 1a10 	vmov	r1, s14
 8001792:	ee16 0a10 	vmov	r0, s12
 8001796:	b209      	sxth	r1, r1
 8001798:	b200      	sxth	r0, r0
 800179a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800179e:	f001 b89f 	b.w	80028e0 <drv8834_run>
 80017a2:	bf00      	nop
 80017a4:	200003a8 	.word	0x200003a8
 80017a8:	20000c90 	.word	0x20000c90
 80017ac:	3b800000 	.word	0x3b800000
 80017b0:	3f800000 	.word	0x3f800000
 80017b4:	3ca3d70a 	.word	0x3ca3d70a
 80017b8:	40a00000 	.word	0x40a00000
 80017bc:	2000032c 	.word	0x2000032c
 80017c0:	fffff448 	.word	0xfffff448
 80017c4:	3eb33333 	.word	0x3eb33333
 80017c8:	200014a0 	.word	0x200014a0
 80017cc:	42c80000 	.word	0x42c80000

080017d0 <robot_on_line>:
 80017d0:	4b03      	ldr	r3, [pc, #12]	; (80017e0 <robot_on_line+0x10>)
 80017d2:	f893 0030 	ldrb.w	r0, [r3, #48]	; 0x30
 80017d6:	f1b0 0308 	subs.w	r3, r0, #8
 80017da:	4258      	negs	r0, r3
 80017dc:	4158      	adcs	r0, r3
 80017de:	4770      	bx	lr
 80017e0:	200003a8 	.word	0x200003a8

080017e4 <obstacle_rotate_robot>:
 80017e4:	b538      	push	{r3, r4, r5, lr}
 80017e6:	f44f 65c8 	mov.w	r5, #1600	; 0x640
 80017ea:	ed2d 8b02 	vpush	{d8}
 80017ee:	ed9f 8a1d 	vldr	s16, [pc, #116]	; 8001864 <obstacle_rotate_robot+0x80>
 80017f2:	4345      	muls	r5, r0
 80017f4:	2400      	movs	r4, #0
 80017f6:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80017fa:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80017fe:	ea85 73e5 	eor.w	r3, r5, r5, asr #31
 8001802:	eba3 73e5 	sub.w	r3, r3, r5, asr #31
 8001806:	429a      	cmp	r2, r3
 8001808:	da21      	bge.n	800184e <obstacle_rotate_robot+0x6a>
 800180a:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8001868 <obstacle_rotate_robot+0x84>
 800180e:	eddf 7a17 	vldr	s15, [pc, #92]	; 800186c <obstacle_rotate_robot+0x88>
 8001812:	ee48 7a07 	vmla.f32	s15, s16, s14
 8001816:	4b16      	ldr	r3, [pc, #88]	; (8001870 <obstacle_rotate_robot+0x8c>)
 8001818:	eeb0 8a67 	vmov.f32	s16, s15
 800181c:	eddf 7a15 	vldr	s15, [pc, #84]	; 8001874 <obstacle_rotate_robot+0x90>
 8001820:	ee68 7a27 	vmul.f32	s15, s16, s15
 8001824:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8001828:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800182c:	441c      	add	r4, r3
 800182e:	ee17 3a90 	vmov	r3, s15
 8001832:	2d00      	cmp	r5, #0
 8001834:	b219      	sxth	r1, r3
 8001836:	f1c3 0300 	rsb	r3, r3, #0
 800183a:	bfca      	itet	gt
 800183c:	4608      	movgt	r0, r1
 800183e:	b218      	sxthle	r0, r3
 8001840:	b219      	sxthgt	r1, r3
 8001842:	f001 f84d 	bl	80028e0 <drv8834_run>
 8001846:	200a      	movs	r0, #10
 8001848:	f000 fc96 	bl	8002178 <timer_delay_ms>
 800184c:	e7d3      	b.n	80017f6 <obstacle_rotate_robot+0x12>
 800184e:	2000      	movs	r0, #0
 8001850:	4601      	mov	r1, r0
 8001852:	f001 f845 	bl	80028e0 <drv8834_run>
 8001856:	ecbd 8b02 	vpop	{d8}
 800185a:	2064      	movs	r0, #100	; 0x64
 800185c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001860:	f000 bc8a 	b.w	8002178 <timer_delay_ms>
 8001864:	00000000 	.word	0x00000000
 8001868:	3f4ccccd 	.word	0x3f4ccccd
 800186c:	3e0f5c28 	.word	0x3e0f5c28
 8001870:	2000032c 	.word	0x2000032c
 8001874:	42c80000 	.word	0x42c80000

08001878 <obstacle_go_forward>:
 8001878:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800187c:	4688      	mov	r8, r1
 800187e:	ed2d 8b04 	vpush	{d8-d9}
 8001882:	4616      	mov	r6, r2
 8001884:	4607      	mov	r7, r0
 8001886:	b950      	cbnz	r0, 800189e <obstacle_go_forward+0x26>
 8001888:	2000      	movs	r0, #0
 800188a:	4601      	mov	r1, r0
 800188c:	f001 f828 	bl	80028e0 <drv8834_run>
 8001890:	ecbd 8b04 	vpop	{d8-d9}
 8001894:	2064      	movs	r0, #100	; 0x64
 8001896:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800189a:	f000 bc6d 	b.w	8002178 <timer_delay_ms>
 800189e:	ed9f 8a23 	vldr	s16, [pc, #140]	; 800192c <obstacle_go_forward+0xb4>
 80018a2:	2400      	movs	r4, #0
 80018a4:	eef0 7a48 	vmov.f32	s15, s16
 80018a8:	4625      	mov	r5, r4
 80018aa:	eeb0 9a48 	vmov.f32	s18, s16
 80018ae:	4545      	cmp	r5, r8
 80018b0:	d2ea      	bcs.n	8001888 <obstacle_go_forward+0x10>
 80018b2:	4b1f      	ldr	r3, [pc, #124]	; (8001930 <obstacle_go_forward+0xb8>)
 80018b4:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80018b8:	441c      	add	r4, r3
 80018ba:	ee07 4a10 	vmov	s14, r4
 80018be:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 80018c2:	ed9f 7a1c 	vldr	s14, [pc, #112]	; 8001934 <obstacle_go_forward+0xbc>
 80018c6:	ee79 8a68 	vsub.f32	s17, s18, s17
 80018ca:	350a      	adds	r5, #10
 80018cc:	ee78 7ae7 	vsub.f32	s15, s17, s15
 80018d0:	ee67 7a87 	vmul.f32	s15, s15, s14
 80018d4:	ed9f 7a18 	vldr	s14, [pc, #96]	; 8001938 <obstacle_go_forward+0xc0>
 80018d8:	ee48 7a87 	vmla.f32	s15, s17, s14
 80018dc:	ee07 7a10 	vmov	s14, r7
 80018e0:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 80018e4:	ed9f 7a15 	vldr	s14, [pc, #84]	; 800193c <obstacle_go_forward+0xc4>
 80018e8:	ee26 7a87 	vmul.f32	s14, s13, s14
 80018ec:	eddf 6a14 	vldr	s13, [pc, #80]	; 8001940 <obstacle_go_forward+0xc8>
 80018f0:	ee08 7a26 	vmla.f32	s14, s16, s13
 80018f4:	eeb0 8a47 	vmov.f32	s16, s14
 80018f8:	ee37 7a67 	vsub.f32	s14, s14, s15
 80018fc:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001900:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001904:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001908:	ee17 0a10 	vmov	r0, s14
 800190c:	ee17 1a90 	vmov	r1, s15
 8001910:	b200      	sxth	r0, r0
 8001912:	b209      	sxth	r1, r1
 8001914:	f000 ffe4 	bl	80028e0 <drv8834_run>
 8001918:	200a      	movs	r0, #10
 800191a:	f000 fc2d 	bl	8002178 <timer_delay_ms>
 800191e:	b116      	cbz	r6, 8001926 <obstacle_go_forward+0xae>
 8001920:	47b0      	blx	r6
 8001922:	2800      	cmp	r0, #0
 8001924:	d1b0      	bne.n	8001888 <obstacle_go_forward+0x10>
 8001926:	eef0 7a68 	vmov.f32	s15, s17
 800192a:	e7c0      	b.n	80018ae <obstacle_go_forward+0x36>
 800192c:	00000000 	.word	0x00000000
 8001930:	2000032c 	.word	0x2000032c
 8001934:	3a83126f 	.word	0x3a83126f
 8001938:	399d4952 	.word	0x399d4952
 800193c:	3e4ccccc 	.word	0x3e4ccccc
 8001940:	3f4ccccd 	.word	0x3f4ccccd

08001944 <obstacle_init>:
 8001944:	4b01      	ldr	r3, [pc, #4]	; (800194c <obstacle_init+0x8>)
 8001946:	2200      	movs	r2, #0
 8001948:	601a      	str	r2, [r3, #0]
 800194a:	4770      	bx	lr
 800194c:	200001f4 	.word	0x200001f4

08001950 <obstacle_main>:
 8001950:	4b23      	ldr	r3, [pc, #140]	; (80019e0 <obstacle_main+0x90>)
 8001952:	b510      	push	{r4, lr}
 8001954:	2400      	movs	r4, #0
 8001956:	639c      	str	r4, [r3, #56]	; 0x38
 8001958:	f001 f972 	bl	8002c40 <get_mode_jumper>
 800195c:	4602      	mov	r2, r0
 800195e:	b938      	cbnz	r0, 8001970 <obstacle_main+0x20>
 8001960:	2164      	movs	r1, #100	; 0x64
 8001962:	f7ff ff89 	bl	8001878 <obstacle_go_forward>
 8001966:	20b4      	movs	r0, #180	; 0xb4
 8001968:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800196c:	f7ff bf3a 	b.w	80017e4 <obstacle_rotate_robot>
 8001970:	4620      	mov	r0, r4
 8001972:	2132      	movs	r1, #50	; 0x32
 8001974:	4622      	mov	r2, r4
 8001976:	f7ff ff7f 	bl	8001878 <obstacle_go_forward>
 800197a:	f06f 003b 	mvn.w	r0, #59	; 0x3b
 800197e:	2182      	movs	r1, #130	; 0x82
 8001980:	4622      	mov	r2, r4
 8001982:	f7ff ff79 	bl	8001878 <obstacle_go_forward>
 8001986:	2132      	movs	r1, #50	; 0x32
 8001988:	4622      	mov	r2, r4
 800198a:	4620      	mov	r0, r4
 800198c:	f7ff ff74 	bl	8001878 <obstacle_go_forward>
 8001990:	205a      	movs	r0, #90	; 0x5a
 8001992:	f7ff ff27 	bl	80017e4 <obstacle_rotate_robot>
 8001996:	21fa      	movs	r1, #250	; 0xfa
 8001998:	4622      	mov	r2, r4
 800199a:	203c      	movs	r0, #60	; 0x3c
 800199c:	f7ff ff6c 	bl	8001878 <obstacle_go_forward>
 80019a0:	f06f 0059 	mvn.w	r0, #89	; 0x59
 80019a4:	f7ff ff1e 	bl	80017e4 <obstacle_rotate_robot>
 80019a8:	f44f 71af 	mov.w	r1, #350	; 0x15e
 80019ac:	4622      	mov	r2, r4
 80019ae:	203c      	movs	r0, #60	; 0x3c
 80019b0:	f7ff ff62 	bl	8001878 <obstacle_go_forward>
 80019b4:	f06f 0059 	mvn.w	r0, #89	; 0x59
 80019b8:	f7ff ff14 	bl	80017e4 <obstacle_rotate_robot>
 80019bc:	203c      	movs	r0, #60	; 0x3c
 80019be:	2132      	movs	r1, #50	; 0x32
 80019c0:	4622      	mov	r2, r4
 80019c2:	f7ff ff59 	bl	8001878 <obstacle_go_forward>
 80019c6:	4a07      	ldr	r2, [pc, #28]	; (80019e4 <obstacle_main+0x94>)
 80019c8:	203c      	movs	r0, #60	; 0x3c
 80019ca:	21fa      	movs	r1, #250	; 0xfa
 80019cc:	f7ff ff54 	bl	8001878 <obstacle_go_forward>
 80019d0:	205a      	movs	r0, #90	; 0x5a
 80019d2:	f7ff ff07 	bl	80017e4 <obstacle_rotate_robot>
 80019d6:	4b04      	ldr	r3, [pc, #16]	; (80019e8 <obstacle_main+0x98>)
 80019d8:	681a      	ldr	r2, [r3, #0]
 80019da:	3201      	adds	r2, #1
 80019dc:	601a      	str	r2, [r3, #0]
 80019de:	bd10      	pop	{r4, pc}
 80019e0:	200003a8 	.word	0x200003a8
 80019e4:	080017d1 	.word	0x080017d1
 80019e8:	200001f4 	.word	0x200001f4

080019ec <broken_line_init>:
 80019ec:	4770      	bx	lr
	...

080019f0 <broken_line_main>:
 80019f0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80019f4:	2500      	movs	r5, #0
 80019f6:	462c      	mov	r4, r5
 80019f8:	462f      	mov	r7, r5
 80019fa:	46a8      	mov	r8, r5
 80019fc:	462e      	mov	r6, r5
 80019fe:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 8001af0 <broken_line_main+0x100>
 8001a02:	f899 3030 	ldrb.w	r3, [r9, #48]	; 0x30
 8001a06:	2b08      	cmp	r3, #8
 8001a08:	d06c      	beq.n	8001ae4 <broken_line_main+0xf4>
 8001a0a:	2005      	movs	r0, #5
 8001a0c:	f000 fbb4 	bl	8002178 <timer_delay_ms>
 8001a10:	2f05      	cmp	r7, #5
 8001a12:	d861      	bhi.n	8001ad8 <broken_line_main+0xe8>
 8001a14:	e8df f007 	tbb	[pc, r7]
 8001a18:	38271503 	.word	0x38271503
 8001a1c:	4d4a      	.short	0x4d4a
 8001a1e:	2c00      	cmp	r4, #0
 8001a20:	d145      	bne.n	8001aae <broken_line_main+0xbe>
 8001a22:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 8001a26:	2b00      	cmp	r3, #0
 8001a28:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001a2c:	f04f 0701 	mov.w	r7, #1
 8001a30:	bfd4      	ite	le
 8001a32:	f04f 0832 	movle.w	r8, #50	; 0x32
 8001a36:	f04f 0800 	movgt.w	r8, #0
 8001a3a:	bfd4      	ite	le
 8001a3c:	2600      	movle	r6, #0
 8001a3e:	2632      	movgt	r6, #50	; 0x32
 8001a40:	e04a      	b.n	8001ad8 <broken_line_main+0xe8>
 8001a42:	bba4      	cbnz	r4, 8001aae <broken_line_main+0xbe>
 8001a44:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 8001a48:	2b00      	cmp	r3, #0
 8001a4a:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001a4e:	f04f 0702 	mov.w	r7, #2
 8001a52:	bfd4      	ite	le
 8001a54:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001a58:	f04f 0800 	movgt.w	r8, #0
 8001a5c:	bfd4      	ite	le
 8001a5e:	2600      	movle	r6, #0
 8001a60:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001a64:	e038      	b.n	8001ad8 <broken_line_main+0xe8>
 8001a66:	bb14      	cbnz	r4, 8001aae <broken_line_main+0xbe>
 8001a68:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 8001a6c:	2b00      	cmp	r3, #0
 8001a6e:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001a72:	f04f 0703 	mov.w	r7, #3
 8001a76:	bfd4      	ite	le
 8001a78:	f04f 0800 	movle.w	r8, #0
 8001a7c:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001a80:	bfd4      	ite	le
 8001a82:	2632      	movle	r6, #50	; 0x32
 8001a84:	2600      	movgt	r6, #0
 8001a86:	e027      	b.n	8001ad8 <broken_line_main+0xe8>
 8001a88:	b98c      	cbnz	r4, 8001aae <broken_line_main+0xbe>
 8001a8a:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 8001a8e:	2b00      	cmp	r3, #0
 8001a90:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001a94:	f04f 0704 	mov.w	r7, #4
 8001a98:	bfd4      	ite	le
 8001a9a:	f04f 0800 	movle.w	r8, #0
 8001a9e:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001aa2:	bfd4      	ite	le
 8001aa4:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001aa8:	2600      	movgt	r6, #0
 8001aaa:	e015      	b.n	8001ad8 <broken_line_main+0xe8>
 8001aac:	b16c      	cbz	r4, 8001aca <broken_line_main+0xda>
 8001aae:	3c01      	subs	r4, #1
 8001ab0:	e012      	b.n	8001ad8 <broken_line_main+0xe8>
 8001ab2:	b184      	cbz	r4, 8001ad6 <broken_line_main+0xe6>
 8001ab4:	f241 3387 	movw	r3, #4999	; 0x1387
 8001ab8:	429d      	cmp	r5, r3
 8001aba:	bfd8      	it	le
 8001abc:	3532      	addle	r5, #50	; 0x32
 8001abe:	2664      	movs	r6, #100	; 0x64
 8001ac0:	fb95 f6f6 	sdiv	r6, r5, r6
 8001ac4:	3c01      	subs	r4, #1
 8001ac6:	46b0      	mov	r8, r6
 8001ac8:	e006      	b.n	8001ad8 <broken_line_main+0xe8>
 8001aca:	4625      	mov	r5, r4
 8001acc:	2705      	movs	r7, #5
 8001ace:	2432      	movs	r4, #50	; 0x32
 8001ad0:	46a8      	mov	r8, r5
 8001ad2:	462e      	mov	r6, r5
 8001ad4:	e000      	b.n	8001ad8 <broken_line_main+0xe8>
 8001ad6:	4627      	mov	r7, r4
 8001ad8:	fa0f f088 	sxth.w	r0, r8
 8001adc:	b231      	sxth	r1, r6
 8001ade:	f000 feff 	bl	80028e0 <drv8834_run>
 8001ae2:	e78c      	b.n	80019fe <broken_line_main+0xe>
 8001ae4:	2000      	movs	r0, #0
 8001ae6:	4601      	mov	r1, r0
 8001ae8:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001aec:	f000 bef8 	b.w	80028e0 <drv8834_run>
 8001af0:	200003a8 	.word	0x200003a8

08001af4 <main>:
 8001af4:	b508      	push	{r3, lr}
 8001af6:	f000 ff99 	bl	8002a2c <lib_low_level_init>
 8001afa:	f7fe fd65 	bl	80005c8 <lib_os_init>
 8001afe:	4905      	ldr	r1, [pc, #20]	; (8001b14 <main+0x20>)
 8001b00:	4805      	ldr	r0, [pc, #20]	; (8001b18 <main+0x24>)
 8001b02:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001b06:	2306      	movs	r3, #6
 8001b08:	f7fe fbc0 	bl	800028c <create_thread>
 8001b0c:	f7fe fbb8 	bl	8000280 <kernel_start>
 8001b10:	2000      	movs	r0, #0
 8001b12:	bd08      	pop	{r3, pc}
 8001b14:	200012a0 	.word	0x200012a0
 8001b18:	080013e9 	.word	0x080013e9

08001b1c <RCC_GetClocksFreq>:
 8001b1c:	4ba5      	ldr	r3, [pc, #660]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001b1e:	685a      	ldr	r2, [r3, #4]
 8001b20:	f002 020c 	and.w	r2, r2, #12
 8001b24:	2a04      	cmp	r2, #4
 8001b26:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001b2a:	d005      	beq.n	8001b38 <RCC_GetClocksFreq+0x1c>
 8001b2c:	2a08      	cmp	r2, #8
 8001b2e:	d006      	beq.n	8001b3e <RCC_GetClocksFreq+0x22>
 8001b30:	4ba1      	ldr	r3, [pc, #644]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001b32:	6003      	str	r3, [r0, #0]
 8001b34:	b9ba      	cbnz	r2, 8001b66 <RCC_GetClocksFreq+0x4a>
 8001b36:	e017      	b.n	8001b68 <RCC_GetClocksFreq+0x4c>
 8001b38:	4b9f      	ldr	r3, [pc, #636]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001b3a:	6003      	str	r3, [r0, #0]
 8001b3c:	e013      	b.n	8001b66 <RCC_GetClocksFreq+0x4a>
 8001b3e:	6859      	ldr	r1, [r3, #4]
 8001b40:	685c      	ldr	r4, [r3, #4]
 8001b42:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001b46:	03e2      	lsls	r2, r4, #15
 8001b48:	f101 0102 	add.w	r1, r1, #2
 8001b4c:	d401      	bmi.n	8001b52 <RCC_GetClocksFreq+0x36>
 8001b4e:	4a9b      	ldr	r2, [pc, #620]	; (8001dbc <RCC_GetClocksFreq+0x2a0>)
 8001b50:	e006      	b.n	8001b60 <RCC_GetClocksFreq+0x44>
 8001b52:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001b54:	4b98      	ldr	r3, [pc, #608]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001b56:	f002 020f 	and.w	r2, r2, #15
 8001b5a:	3201      	adds	r2, #1
 8001b5c:	fbb3 f2f2 	udiv	r2, r3, r2
 8001b60:	434a      	muls	r2, r1
 8001b62:	6002      	str	r2, [r0, #0]
 8001b64:	e000      	b.n	8001b68 <RCC_GetClocksFreq+0x4c>
 8001b66:	2200      	movs	r2, #0
 8001b68:	4f92      	ldr	r7, [pc, #584]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001b6a:	4d95      	ldr	r5, [pc, #596]	; (8001dc0 <RCC_GetClocksFreq+0x2a4>)
 8001b6c:	687b      	ldr	r3, [r7, #4]
 8001b6e:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001dc4 <RCC_GetClocksFreq+0x2a8>
 8001b72:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001b76:	5cec      	ldrb	r4, [r5, r3]
 8001b78:	6803      	ldr	r3, [r0, #0]
 8001b7a:	b2e4      	uxtb	r4, r4
 8001b7c:	fa23 f104 	lsr.w	r1, r3, r4
 8001b80:	6041      	str	r1, [r0, #4]
 8001b82:	687e      	ldr	r6, [r7, #4]
 8001b84:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001b88:	5dae      	ldrb	r6, [r5, r6]
 8001b8a:	fa21 f606 	lsr.w	r6, r1, r6
 8001b8e:	6086      	str	r6, [r0, #8]
 8001b90:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001b94:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001b98:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001b9c:	b2ed      	uxtb	r5, r5
 8001b9e:	40e9      	lsrs	r1, r5
 8001ba0:	60c1      	str	r1, [r0, #12]
 8001ba2:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001ba6:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001baa:	f009 0c0f 	and.w	ip, r9, #15
 8001bae:	f019 0f10 	tst.w	r9, #16
 8001bb2:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001bb6:	fa1f fc8c 	uxth.w	ip, ip
 8001bba:	d007      	beq.n	8001bcc <RCC_GetClocksFreq+0xb0>
 8001bbc:	f1bc 0f00 	cmp.w	ip, #0
 8001bc0:	d004      	beq.n	8001bcc <RCC_GetClocksFreq+0xb0>
 8001bc2:	fbb2 fcfc 	udiv	ip, r2, ip
 8001bc6:	f8c0 c010 	str.w	ip, [r0, #16]
 8001bca:	e000      	b.n	8001bce <RCC_GetClocksFreq+0xb2>
 8001bcc:	6103      	str	r3, [r0, #16]
 8001bce:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001bd0:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001bd4:	f00c 070f 	and.w	r7, ip, #15
 8001bd8:	f01c 0f10 	tst.w	ip, #16
 8001bdc:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001be0:	b2bf      	uxth	r7, r7
 8001be2:	d004      	beq.n	8001bee <RCC_GetClocksFreq+0xd2>
 8001be4:	b11f      	cbz	r7, 8001bee <RCC_GetClocksFreq+0xd2>
 8001be6:	fbb2 f7f7 	udiv	r7, r2, r7
 8001bea:	6147      	str	r7, [r0, #20]
 8001bec:	e000      	b.n	8001bf0 <RCC_GetClocksFreq+0xd4>
 8001bee:	6143      	str	r3, [r0, #20]
 8001bf0:	4f70      	ldr	r7, [pc, #448]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001bf2:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001bf6:	f01c 0f10 	tst.w	ip, #16
 8001bfa:	bf0a      	itet	eq
 8001bfc:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001db8 <RCC_GetClocksFreq+0x29c>
 8001c00:	6183      	strne	r3, [r0, #24]
 8001c02:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001c06:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c08:	06bf      	lsls	r7, r7, #26
 8001c0a:	bf56      	itet	pl
 8001c0c:	4f6a      	ldrpl	r7, [pc, #424]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001c0e:	61c3      	strmi	r3, [r0, #28]
 8001c10:	61c7      	strpl	r7, [r0, #28]
 8001c12:	4f68      	ldr	r7, [pc, #416]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001c14:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c18:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001c1c:	bf0a      	itet	eq
 8001c1e:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001db8 <RCC_GetClocksFreq+0x29c>
 8001c22:	6203      	strne	r3, [r0, #32]
 8001c24:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001c28:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c2a:	05ff      	lsls	r7, r7, #23
 8001c2c:	d506      	bpl.n	8001c3c <RCC_GetClocksFreq+0x120>
 8001c2e:	4293      	cmp	r3, r2
 8001c30:	d104      	bne.n	8001c3c <RCC_GetClocksFreq+0x120>
 8001c32:	42a5      	cmp	r5, r4
 8001c34:	d102      	bne.n	8001c3c <RCC_GetClocksFreq+0x120>
 8001c36:	005f      	lsls	r7, r3, #1
 8001c38:	6247      	str	r7, [r0, #36]	; 0x24
 8001c3a:	e000      	b.n	8001c3e <RCC_GetClocksFreq+0x122>
 8001c3c:	6241      	str	r1, [r0, #36]	; 0x24
 8001c3e:	4f5d      	ldr	r7, [pc, #372]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001c40:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c44:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001c48:	d008      	beq.n	8001c5c <RCC_GetClocksFreq+0x140>
 8001c4a:	4293      	cmp	r3, r2
 8001c4c:	d106      	bne.n	8001c5c <RCC_GetClocksFreq+0x140>
 8001c4e:	42a5      	cmp	r5, r4
 8001c50:	d104      	bne.n	8001c5c <RCC_GetClocksFreq+0x140>
 8001c52:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001c56:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001c5a:	e000      	b.n	8001c5e <RCC_GetClocksFreq+0x142>
 8001c5c:	6281      	str	r1, [r0, #40]	; 0x28
 8001c5e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c60:	05bf      	lsls	r7, r7, #22
 8001c62:	d506      	bpl.n	8001c72 <RCC_GetClocksFreq+0x156>
 8001c64:	4293      	cmp	r3, r2
 8001c66:	d104      	bne.n	8001c72 <RCC_GetClocksFreq+0x156>
 8001c68:	42a5      	cmp	r5, r4
 8001c6a:	d102      	bne.n	8001c72 <RCC_GetClocksFreq+0x156>
 8001c6c:	005f      	lsls	r7, r3, #1
 8001c6e:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001c70:	e000      	b.n	8001c74 <RCC_GetClocksFreq+0x158>
 8001c72:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001c74:	4f4f      	ldr	r7, [pc, #316]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001c76:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c7a:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001c7e:	d008      	beq.n	8001c92 <RCC_GetClocksFreq+0x176>
 8001c80:	4293      	cmp	r3, r2
 8001c82:	d106      	bne.n	8001c92 <RCC_GetClocksFreq+0x176>
 8001c84:	42a5      	cmp	r5, r4
 8001c86:	d104      	bne.n	8001c92 <RCC_GetClocksFreq+0x176>
 8001c88:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001c8c:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001c90:	e000      	b.n	8001c94 <RCC_GetClocksFreq+0x178>
 8001c92:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001c94:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c96:	053f      	lsls	r7, r7, #20
 8001c98:	d506      	bpl.n	8001ca8 <RCC_GetClocksFreq+0x18c>
 8001c9a:	4293      	cmp	r3, r2
 8001c9c:	d104      	bne.n	8001ca8 <RCC_GetClocksFreq+0x18c>
 8001c9e:	42a5      	cmp	r5, r4
 8001ca0:	d102      	bne.n	8001ca8 <RCC_GetClocksFreq+0x18c>
 8001ca2:	005f      	lsls	r7, r3, #1
 8001ca4:	6507      	str	r7, [r0, #80]	; 0x50
 8001ca6:	e000      	b.n	8001caa <RCC_GetClocksFreq+0x18e>
 8001ca8:	6501      	str	r1, [r0, #80]	; 0x50
 8001caa:	4f42      	ldr	r7, [pc, #264]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001cac:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001cb0:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001cb4:	d008      	beq.n	8001cc8 <RCC_GetClocksFreq+0x1ac>
 8001cb6:	4293      	cmp	r3, r2
 8001cb8:	d106      	bne.n	8001cc8 <RCC_GetClocksFreq+0x1ac>
 8001cba:	42a5      	cmp	r5, r4
 8001cbc:	d104      	bne.n	8001cc8 <RCC_GetClocksFreq+0x1ac>
 8001cbe:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001cc2:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001cc6:	e000      	b.n	8001cca <RCC_GetClocksFreq+0x1ae>
 8001cc8:	6501      	str	r1, [r0, #80]	; 0x50
 8001cca:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ccc:	043f      	lsls	r7, r7, #16
 8001cce:	d506      	bpl.n	8001cde <RCC_GetClocksFreq+0x1c2>
 8001cd0:	4293      	cmp	r3, r2
 8001cd2:	d104      	bne.n	8001cde <RCC_GetClocksFreq+0x1c2>
 8001cd4:	42a5      	cmp	r5, r4
 8001cd6:	d102      	bne.n	8001cde <RCC_GetClocksFreq+0x1c2>
 8001cd8:	005a      	lsls	r2, r3, #1
 8001cda:	6582      	str	r2, [r0, #88]	; 0x58
 8001cdc:	e000      	b.n	8001ce0 <RCC_GetClocksFreq+0x1c4>
 8001cde:	6581      	str	r1, [r0, #88]	; 0x58
 8001ce0:	4a34      	ldr	r2, [pc, #208]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001ce2:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001ce4:	07a4      	lsls	r4, r4, #30
 8001ce6:	d014      	beq.n	8001d12 <RCC_GetClocksFreq+0x1f6>
 8001ce8:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cea:	f001 0103 	and.w	r1, r1, #3
 8001cee:	2901      	cmp	r1, #1
 8001cf0:	d101      	bne.n	8001cf6 <RCC_GetClocksFreq+0x1da>
 8001cf2:	6383      	str	r3, [r0, #56]	; 0x38
 8001cf4:	e00e      	b.n	8001d14 <RCC_GetClocksFreq+0x1f8>
 8001cf6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cf8:	f001 0103 	and.w	r1, r1, #3
 8001cfc:	2902      	cmp	r1, #2
 8001cfe:	d102      	bne.n	8001d06 <RCC_GetClocksFreq+0x1ea>
 8001d00:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d04:	e005      	b.n	8001d12 <RCC_GetClocksFreq+0x1f6>
 8001d06:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d08:	f001 0103 	and.w	r1, r1, #3
 8001d0c:	2903      	cmp	r1, #3
 8001d0e:	d101      	bne.n	8001d14 <RCC_GetClocksFreq+0x1f8>
 8001d10:	4929      	ldr	r1, [pc, #164]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001d12:	6381      	str	r1, [r0, #56]	; 0x38
 8001d14:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001d16:	4927      	ldr	r1, [pc, #156]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001d18:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001d1c:	d101      	bne.n	8001d22 <RCC_GetClocksFreq+0x206>
 8001d1e:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001d20:	e018      	b.n	8001d54 <RCC_GetClocksFreq+0x238>
 8001d22:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d24:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001d28:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001d2c:	d101      	bne.n	8001d32 <RCC_GetClocksFreq+0x216>
 8001d2e:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001d30:	e010      	b.n	8001d54 <RCC_GetClocksFreq+0x238>
 8001d32:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d34:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001d38:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001d3c:	d102      	bne.n	8001d44 <RCC_GetClocksFreq+0x228>
 8001d3e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001d42:	e006      	b.n	8001d52 <RCC_GetClocksFreq+0x236>
 8001d44:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d46:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001d4a:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001d4e:	d101      	bne.n	8001d54 <RCC_GetClocksFreq+0x238>
 8001d50:	4a19      	ldr	r2, [pc, #100]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001d52:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001d54:	4a17      	ldr	r2, [pc, #92]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001d56:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d58:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001d5c:	d101      	bne.n	8001d62 <RCC_GetClocksFreq+0x246>
 8001d5e:	6406      	str	r6, [r0, #64]	; 0x40
 8001d60:	e018      	b.n	8001d94 <RCC_GetClocksFreq+0x278>
 8001d62:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d64:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001d68:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001d6c:	d101      	bne.n	8001d72 <RCC_GetClocksFreq+0x256>
 8001d6e:	6403      	str	r3, [r0, #64]	; 0x40
 8001d70:	e010      	b.n	8001d94 <RCC_GetClocksFreq+0x278>
 8001d72:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d74:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001d78:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001d7c:	d102      	bne.n	8001d84 <RCC_GetClocksFreq+0x268>
 8001d7e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d82:	e006      	b.n	8001d92 <RCC_GetClocksFreq+0x276>
 8001d84:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d86:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001d8a:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001d8e:	d101      	bne.n	8001d94 <RCC_GetClocksFreq+0x278>
 8001d90:	4909      	ldr	r1, [pc, #36]	; (8001db8 <RCC_GetClocksFreq+0x29c>)
 8001d92:	6401      	str	r1, [r0, #64]	; 0x40
 8001d94:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001d96:	4907      	ldr	r1, [pc, #28]	; (8001db4 <RCC_GetClocksFreq+0x298>)
 8001d98:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001d9c:	d101      	bne.n	8001da2 <RCC_GetClocksFreq+0x286>
 8001d9e:	6446      	str	r6, [r0, #68]	; 0x44
 8001da0:	e023      	b.n	8001dea <RCC_GetClocksFreq+0x2ce>
 8001da2:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001da4:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001da8:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001dac:	d10c      	bne.n	8001dc8 <RCC_GetClocksFreq+0x2ac>
 8001dae:	6443      	str	r3, [r0, #68]	; 0x44
 8001db0:	e01b      	b.n	8001dea <RCC_GetClocksFreq+0x2ce>
 8001db2:	bf00      	nop
 8001db4:	40021000 	.word	0x40021000
 8001db8:	007a1200 	.word	0x007a1200
 8001dbc:	003d0900 	.word	0x003d0900
 8001dc0:	200001d0 	.word	0x200001d0
 8001dc4:	200001b0 	.word	0x200001b0
 8001dc8:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001dca:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001dce:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001dd2:	d102      	bne.n	8001dda <RCC_GetClocksFreq+0x2be>
 8001dd4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001dd8:	e006      	b.n	8001de8 <RCC_GetClocksFreq+0x2cc>
 8001dda:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001ddc:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001de0:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001de4:	d101      	bne.n	8001dea <RCC_GetClocksFreq+0x2ce>
 8001de6:	4a11      	ldr	r2, [pc, #68]	; (8001e2c <RCC_GetClocksFreq+0x310>)
 8001de8:	6442      	str	r2, [r0, #68]	; 0x44
 8001dea:	4a11      	ldr	r2, [pc, #68]	; (8001e30 <RCC_GetClocksFreq+0x314>)
 8001dec:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001dee:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001df2:	d102      	bne.n	8001dfa <RCC_GetClocksFreq+0x2de>
 8001df4:	6486      	str	r6, [r0, #72]	; 0x48
 8001df6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001dfa:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001dfc:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001e00:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001e04:	d00f      	beq.n	8001e26 <RCC_GetClocksFreq+0x30a>
 8001e06:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001e08:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001e0c:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001e10:	d102      	bne.n	8001e18 <RCC_GetClocksFreq+0x2fc>
 8001e12:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e16:	e006      	b.n	8001e26 <RCC_GetClocksFreq+0x30a>
 8001e18:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001e1a:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001e1e:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001e22:	d101      	bne.n	8001e28 <RCC_GetClocksFreq+0x30c>
 8001e24:	4b01      	ldr	r3, [pc, #4]	; (8001e2c <RCC_GetClocksFreq+0x310>)
 8001e26:	6483      	str	r3, [r0, #72]	; 0x48
 8001e28:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001e2c:	007a1200 	.word	0x007a1200
 8001e30:	40021000 	.word	0x40021000

08001e34 <RCC_AHBPeriphClockCmd>:
 8001e34:	bf00      	nop
 8001e36:	bf00      	nop
 8001e38:	4b04      	ldr	r3, [pc, #16]	; (8001e4c <RCC_AHBPeriphClockCmd+0x18>)
 8001e3a:	695a      	ldr	r2, [r3, #20]
 8001e3c:	b109      	cbz	r1, 8001e42 <RCC_AHBPeriphClockCmd+0xe>
 8001e3e:	4310      	orrs	r0, r2
 8001e40:	e001      	b.n	8001e46 <RCC_AHBPeriphClockCmd+0x12>
 8001e42:	ea22 0000 	bic.w	r0, r2, r0
 8001e46:	6158      	str	r0, [r3, #20]
 8001e48:	4770      	bx	lr
 8001e4a:	bf00      	nop
 8001e4c:	40021000 	.word	0x40021000

08001e50 <RCC_APB2PeriphClockCmd>:
 8001e50:	bf00      	nop
 8001e52:	bf00      	nop
 8001e54:	4b04      	ldr	r3, [pc, #16]	; (8001e68 <RCC_APB2PeriphClockCmd+0x18>)
 8001e56:	699a      	ldr	r2, [r3, #24]
 8001e58:	b109      	cbz	r1, 8001e5e <RCC_APB2PeriphClockCmd+0xe>
 8001e5a:	4310      	orrs	r0, r2
 8001e5c:	e001      	b.n	8001e62 <RCC_APB2PeriphClockCmd+0x12>
 8001e5e:	ea22 0000 	bic.w	r0, r2, r0
 8001e62:	6198      	str	r0, [r3, #24]
 8001e64:	4770      	bx	lr
 8001e66:	bf00      	nop
 8001e68:	40021000 	.word	0x40021000

08001e6c <RCC_APB1PeriphClockCmd>:
 8001e6c:	bf00      	nop
 8001e6e:	bf00      	nop
 8001e70:	4b04      	ldr	r3, [pc, #16]	; (8001e84 <RCC_APB1PeriphClockCmd+0x18>)
 8001e72:	69da      	ldr	r2, [r3, #28]
 8001e74:	b109      	cbz	r1, 8001e7a <RCC_APB1PeriphClockCmd+0xe>
 8001e76:	4310      	orrs	r0, r2
 8001e78:	e001      	b.n	8001e7e <RCC_APB1PeriphClockCmd+0x12>
 8001e7a:	ea22 0000 	bic.w	r0, r2, r0
 8001e7e:	61d8      	str	r0, [r3, #28]
 8001e80:	4770      	bx	lr
 8001e82:	bf00      	nop
 8001e84:	40021000 	.word	0x40021000

08001e88 <TIM_TimeBaseInit>:
 8001e88:	bf00      	nop
 8001e8a:	bf00      	nop
 8001e8c:	bf00      	nop
 8001e8e:	4a24      	ldr	r2, [pc, #144]	; (8001f20 <TIM_TimeBaseInit+0x98>)
 8001e90:	8803      	ldrh	r3, [r0, #0]
 8001e92:	4290      	cmp	r0, r2
 8001e94:	b29b      	uxth	r3, r3
 8001e96:	d012      	beq.n	8001ebe <TIM_TimeBaseInit+0x36>
 8001e98:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e9c:	4290      	cmp	r0, r2
 8001e9e:	d00e      	beq.n	8001ebe <TIM_TimeBaseInit+0x36>
 8001ea0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001ea4:	d00b      	beq.n	8001ebe <TIM_TimeBaseInit+0x36>
 8001ea6:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001eaa:	4290      	cmp	r0, r2
 8001eac:	d007      	beq.n	8001ebe <TIM_TimeBaseInit+0x36>
 8001eae:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001eb2:	4290      	cmp	r0, r2
 8001eb4:	d003      	beq.n	8001ebe <TIM_TimeBaseInit+0x36>
 8001eb6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001eba:	4290      	cmp	r0, r2
 8001ebc:	d103      	bne.n	8001ec6 <TIM_TimeBaseInit+0x3e>
 8001ebe:	884a      	ldrh	r2, [r1, #2]
 8001ec0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001ec4:	4313      	orrs	r3, r2
 8001ec6:	4a17      	ldr	r2, [pc, #92]	; (8001f24 <TIM_TimeBaseInit+0x9c>)
 8001ec8:	4290      	cmp	r0, r2
 8001eca:	d008      	beq.n	8001ede <TIM_TimeBaseInit+0x56>
 8001ecc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ed0:	4290      	cmp	r0, r2
 8001ed2:	d004      	beq.n	8001ede <TIM_TimeBaseInit+0x56>
 8001ed4:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001ed8:	890a      	ldrh	r2, [r1, #8]
 8001eda:	b29b      	uxth	r3, r3
 8001edc:	4313      	orrs	r3, r2
 8001ede:	8003      	strh	r3, [r0, #0]
 8001ee0:	684b      	ldr	r3, [r1, #4]
 8001ee2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001ee4:	880b      	ldrh	r3, [r1, #0]
 8001ee6:	8503      	strh	r3, [r0, #40]	; 0x28
 8001ee8:	4b0d      	ldr	r3, [pc, #52]	; (8001f20 <TIM_TimeBaseInit+0x98>)
 8001eea:	4298      	cmp	r0, r3
 8001eec:	d013      	beq.n	8001f16 <TIM_TimeBaseInit+0x8e>
 8001eee:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001ef2:	4298      	cmp	r0, r3
 8001ef4:	d00f      	beq.n	8001f16 <TIM_TimeBaseInit+0x8e>
 8001ef6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001efa:	4298      	cmp	r0, r3
 8001efc:	d00b      	beq.n	8001f16 <TIM_TimeBaseInit+0x8e>
 8001efe:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001f02:	4298      	cmp	r0, r3
 8001f04:	d007      	beq.n	8001f16 <TIM_TimeBaseInit+0x8e>
 8001f06:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001f0a:	4298      	cmp	r0, r3
 8001f0c:	d003      	beq.n	8001f16 <TIM_TimeBaseInit+0x8e>
 8001f0e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001f12:	4298      	cmp	r0, r3
 8001f14:	d101      	bne.n	8001f1a <TIM_TimeBaseInit+0x92>
 8001f16:	894b      	ldrh	r3, [r1, #10]
 8001f18:	8603      	strh	r3, [r0, #48]	; 0x30
 8001f1a:	2301      	movs	r3, #1
 8001f1c:	6143      	str	r3, [r0, #20]
 8001f1e:	4770      	bx	lr
 8001f20:	40012c00 	.word	0x40012c00
 8001f24:	40001000 	.word	0x40001000

08001f28 <TIM_Cmd>:
 8001f28:	bf00      	nop
 8001f2a:	bf00      	nop
 8001f2c:	8803      	ldrh	r3, [r0, #0]
 8001f2e:	b119      	cbz	r1, 8001f38 <TIM_Cmd+0x10>
 8001f30:	b29b      	uxth	r3, r3
 8001f32:	f043 0301 	orr.w	r3, r3, #1
 8001f36:	e003      	b.n	8001f40 <TIM_Cmd+0x18>
 8001f38:	f023 0301 	bic.w	r3, r3, #1
 8001f3c:	041b      	lsls	r3, r3, #16
 8001f3e:	0c1b      	lsrs	r3, r3, #16
 8001f40:	8003      	strh	r3, [r0, #0]
 8001f42:	4770      	bx	lr

08001f44 <TIM_OC1Init>:
 8001f44:	b530      	push	{r4, r5, lr}
 8001f46:	bf00      	nop
 8001f48:	bf00      	nop
 8001f4a:	bf00      	nop
 8001f4c:	bf00      	nop
 8001f4e:	6a03      	ldr	r3, [r0, #32]
 8001f50:	680c      	ldr	r4, [r1, #0]
 8001f52:	f023 0301 	bic.w	r3, r3, #1
 8001f56:	6203      	str	r3, [r0, #32]
 8001f58:	6a03      	ldr	r3, [r0, #32]
 8001f5a:	6842      	ldr	r2, [r0, #4]
 8001f5c:	6985      	ldr	r5, [r0, #24]
 8001f5e:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001f62:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001f66:	432c      	orrs	r4, r5
 8001f68:	898d      	ldrh	r5, [r1, #12]
 8001f6a:	f023 0302 	bic.w	r3, r3, #2
 8001f6e:	432b      	orrs	r3, r5
 8001f70:	888d      	ldrh	r5, [r1, #4]
 8001f72:	432b      	orrs	r3, r5
 8001f74:	4d15      	ldr	r5, [pc, #84]	; (8001fcc <TIM_OC1Init+0x88>)
 8001f76:	42a8      	cmp	r0, r5
 8001f78:	d00f      	beq.n	8001f9a <TIM_OC1Init+0x56>
 8001f7a:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001f7e:	42a8      	cmp	r0, r5
 8001f80:	d00b      	beq.n	8001f9a <TIM_OC1Init+0x56>
 8001f82:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001f86:	42a8      	cmp	r0, r5
 8001f88:	d007      	beq.n	8001f9a <TIM_OC1Init+0x56>
 8001f8a:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001f8e:	42a8      	cmp	r0, r5
 8001f90:	d003      	beq.n	8001f9a <TIM_OC1Init+0x56>
 8001f92:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001f96:	42a8      	cmp	r0, r5
 8001f98:	d111      	bne.n	8001fbe <TIM_OC1Init+0x7a>
 8001f9a:	bf00      	nop
 8001f9c:	bf00      	nop
 8001f9e:	bf00      	nop
 8001fa0:	bf00      	nop
 8001fa2:	89cd      	ldrh	r5, [r1, #14]
 8001fa4:	f023 0308 	bic.w	r3, r3, #8
 8001fa8:	432b      	orrs	r3, r5
 8001faa:	88cd      	ldrh	r5, [r1, #6]
 8001fac:	f023 0304 	bic.w	r3, r3, #4
 8001fb0:	432b      	orrs	r3, r5
 8001fb2:	8a0d      	ldrh	r5, [r1, #16]
 8001fb4:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001fb8:	432a      	orrs	r2, r5
 8001fba:	8a4d      	ldrh	r5, [r1, #18]
 8001fbc:	432a      	orrs	r2, r5
 8001fbe:	6042      	str	r2, [r0, #4]
 8001fc0:	688a      	ldr	r2, [r1, #8]
 8001fc2:	6184      	str	r4, [r0, #24]
 8001fc4:	6342      	str	r2, [r0, #52]	; 0x34
 8001fc6:	6203      	str	r3, [r0, #32]
 8001fc8:	bd30      	pop	{r4, r5, pc}
 8001fca:	bf00      	nop
 8001fcc:	40012c00 	.word	0x40012c00

08001fd0 <TIM_OC2Init>:
 8001fd0:	b570      	push	{r4, r5, r6, lr}
 8001fd2:	bf00      	nop
 8001fd4:	bf00      	nop
 8001fd6:	bf00      	nop
 8001fd8:	bf00      	nop
 8001fda:	6a03      	ldr	r3, [r0, #32]
 8001fdc:	680c      	ldr	r4, [r1, #0]
 8001fde:	898e      	ldrh	r6, [r1, #12]
 8001fe0:	f023 0310 	bic.w	r3, r3, #16
 8001fe4:	6203      	str	r3, [r0, #32]
 8001fe6:	6a05      	ldr	r5, [r0, #32]
 8001fe8:	6842      	ldr	r2, [r0, #4]
 8001fea:	6983      	ldr	r3, [r0, #24]
 8001fec:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001ff0:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001ff4:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001ff8:	888b      	ldrh	r3, [r1, #4]
 8001ffa:	f025 0520 	bic.w	r5, r5, #32
 8001ffe:	4333      	orrs	r3, r6
 8002000:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002004:	4d10      	ldr	r5, [pc, #64]	; (8002048 <TIM_OC2Init+0x78>)
 8002006:	42a8      	cmp	r0, r5
 8002008:	d003      	beq.n	8002012 <TIM_OC2Init+0x42>
 800200a:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 800200e:	42a8      	cmp	r0, r5
 8002010:	d114      	bne.n	800203c <TIM_OC2Init+0x6c>
 8002012:	bf00      	nop
 8002014:	bf00      	nop
 8002016:	bf00      	nop
 8002018:	bf00      	nop
 800201a:	89cd      	ldrh	r5, [r1, #14]
 800201c:	8a0e      	ldrh	r6, [r1, #16]
 800201e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002022:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002026:	88cd      	ldrh	r5, [r1, #6]
 8002028:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800202c:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002030:	8a4d      	ldrh	r5, [r1, #18]
 8002032:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002036:	4335      	orrs	r5, r6
 8002038:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 800203c:	6042      	str	r2, [r0, #4]
 800203e:	688a      	ldr	r2, [r1, #8]
 8002040:	6184      	str	r4, [r0, #24]
 8002042:	6382      	str	r2, [r0, #56]	; 0x38
 8002044:	6203      	str	r3, [r0, #32]
 8002046:	bd70      	pop	{r4, r5, r6, pc}
 8002048:	40012c00 	.word	0x40012c00

0800204c <TIM_CtrlPWMOutputs>:
 800204c:	bf00      	nop
 800204e:	bf00      	nop
 8002050:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002052:	b111      	cbz	r1, 800205a <TIM_CtrlPWMOutputs+0xe>
 8002054:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002058:	e001      	b.n	800205e <TIM_CtrlPWMOutputs+0x12>
 800205a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 800205e:	6443      	str	r3, [r0, #68]	; 0x44
 8002060:	4770      	bx	lr

08002062 <TIM_ClearITPendingBit>:
 8002062:	bf00      	nop
 8002064:	43c9      	mvns	r1, r1
 8002066:	b289      	uxth	r1, r1
 8002068:	6101      	str	r1, [r0, #16]
 800206a:	4770      	bx	lr

0800206c <timer_init>:
 800206c:	b530      	push	{r4, r5, lr}
 800206e:	2300      	movs	r3, #0
 8002070:	b085      	sub	sp, #20
 8002072:	491f      	ldr	r1, [pc, #124]	; (80020f0 <timer_init+0x84>)
 8002074:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002078:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800207c:	491d      	ldr	r1, [pc, #116]	; (80020f4 <timer_init+0x88>)
 800207e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002082:	4a1d      	ldr	r2, [pc, #116]	; (80020f8 <timer_init+0x8c>)
 8002084:	2400      	movs	r4, #0
 8002086:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 800208a:	3301      	adds	r3, #1
 800208c:	2b04      	cmp	r3, #4
 800208e:	4625      	mov	r5, r4
 8002090:	d1ef      	bne.n	8002072 <timer_init+0x6>
 8002092:	4b1a      	ldr	r3, [pc, #104]	; (80020fc <timer_init+0x90>)
 8002094:	2002      	movs	r0, #2
 8002096:	2101      	movs	r1, #1
 8002098:	601c      	str	r4, [r3, #0]
 800209a:	f7ff fee7 	bl	8001e6c <RCC_APB1PeriphClockCmd>
 800209e:	f8ad 4006 	strh.w	r4, [sp, #6]
 80020a2:	f8ad 400c 	strh.w	r4, [sp, #12]
 80020a6:	f8ad 400e 	strh.w	r4, [sp, #14]
 80020aa:	4c15      	ldr	r4, [pc, #84]	; (8002100 <timer_init+0x94>)
 80020ac:	f44f 738c 	mov.w	r3, #280	; 0x118
 80020b0:	f8ad 3004 	strh.w	r3, [sp, #4]
 80020b4:	4620      	mov	r0, r4
 80020b6:	2331      	movs	r3, #49	; 0x31
 80020b8:	a901      	add	r1, sp, #4
 80020ba:	9302      	str	r3, [sp, #8]
 80020bc:	f7ff fee4 	bl	8001e88 <TIM_TimeBaseInit>
 80020c0:	4620      	mov	r0, r4
 80020c2:	2101      	movs	r1, #1
 80020c4:	f7ff ff30 	bl	8001f28 <TIM_Cmd>
 80020c8:	68e3      	ldr	r3, [r4, #12]
 80020ca:	f043 0301 	orr.w	r3, r3, #1
 80020ce:	60e3      	str	r3, [r4, #12]
 80020d0:	231d      	movs	r3, #29
 80020d2:	f88d 3000 	strb.w	r3, [sp]
 80020d6:	4668      	mov	r0, sp
 80020d8:	2301      	movs	r3, #1
 80020da:	f88d 5001 	strb.w	r5, [sp, #1]
 80020de:	f88d 3002 	strb.w	r3, [sp, #2]
 80020e2:	f88d 3003 	strb.w	r3, [sp, #3]
 80020e6:	f000 fc69 	bl	80029bc <NVIC_Init>
 80020ea:	b005      	add	sp, #20
 80020ec:	bd30      	pop	{r4, r5, pc}
 80020ee:	bf00      	nop
 80020f0:	200014dc 	.word	0x200014dc
 80020f4:	200014d0 	.word	0x200014d0
 80020f8:	200014c8 	.word	0x200014c8
 80020fc:	200014d8 	.word	0x200014d8
 8002100:	40000400 	.word	0x40000400

08002104 <TIM3_IRQHandler>:
 8002104:	2300      	movs	r3, #0
 8002106:	4a10      	ldr	r2, [pc, #64]	; (8002148 <TIM3_IRQHandler+0x44>)
 8002108:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 800210c:	b289      	uxth	r1, r1
 800210e:	b129      	cbz	r1, 800211c <TIM3_IRQHandler+0x18>
 8002110:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002114:	b289      	uxth	r1, r1
 8002116:	3901      	subs	r1, #1
 8002118:	b289      	uxth	r1, r1
 800211a:	e007      	b.n	800212c <TIM3_IRQHandler+0x28>
 800211c:	490b      	ldr	r1, [pc, #44]	; (800214c <TIM3_IRQHandler+0x48>)
 800211e:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8002122:	b289      	uxth	r1, r1
 8002124:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002128:	4a09      	ldr	r2, [pc, #36]	; (8002150 <TIM3_IRQHandler+0x4c>)
 800212a:	2101      	movs	r1, #1
 800212c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002130:	3301      	adds	r3, #1
 8002132:	2b04      	cmp	r3, #4
 8002134:	d1e7      	bne.n	8002106 <TIM3_IRQHandler+0x2>
 8002136:	4b07      	ldr	r3, [pc, #28]	; (8002154 <TIM3_IRQHandler+0x50>)
 8002138:	4807      	ldr	r0, [pc, #28]	; (8002158 <TIM3_IRQHandler+0x54>)
 800213a:	681a      	ldr	r2, [r3, #0]
 800213c:	2101      	movs	r1, #1
 800213e:	3201      	adds	r2, #1
 8002140:	601a      	str	r2, [r3, #0]
 8002142:	f7ff bf8e 	b.w	8002062 <TIM_ClearITPendingBit>
 8002146:	bf00      	nop
 8002148:	200014dc 	.word	0x200014dc
 800214c:	200014d0 	.word	0x200014d0
 8002150:	200014c8 	.word	0x200014c8
 8002154:	200014d8 	.word	0x200014d8
 8002158:	40000400 	.word	0x40000400

0800215c <timer_get_time>:
 800215c:	b082      	sub	sp, #8
 800215e:	b672      	cpsid	i
 8002160:	4b04      	ldr	r3, [pc, #16]	; (8002174 <timer_get_time+0x18>)
 8002162:	681b      	ldr	r3, [r3, #0]
 8002164:	9301      	str	r3, [sp, #4]
 8002166:	b662      	cpsie	i
 8002168:	9801      	ldr	r0, [sp, #4]
 800216a:	230a      	movs	r3, #10
 800216c:	fbb0 f0f3 	udiv	r0, r0, r3
 8002170:	b002      	add	sp, #8
 8002172:	4770      	bx	lr
 8002174:	200014d8 	.word	0x200014d8

08002178 <timer_delay_ms>:
 8002178:	b513      	push	{r0, r1, r4, lr}
 800217a:	4604      	mov	r4, r0
 800217c:	f7ff ffee 	bl	800215c <timer_get_time>
 8002180:	4420      	add	r0, r4
 8002182:	9001      	str	r0, [sp, #4]
 8002184:	9c01      	ldr	r4, [sp, #4]
 8002186:	f7ff ffe9 	bl	800215c <timer_get_time>
 800218a:	4284      	cmp	r4, r0
 800218c:	d902      	bls.n	8002194 <timer_delay_ms+0x1c>
 800218e:	f000 fb17 	bl	80027c0 <sleep>
 8002192:	e7f7      	b.n	8002184 <timer_delay_ms+0xc>
 8002194:	b002      	add	sp, #8
 8002196:	bd10      	pop	{r4, pc}

08002198 <event_timer_set_period>:
 8002198:	b672      	cpsid	i
 800219a:	230a      	movs	r3, #10
 800219c:	4359      	muls	r1, r3
 800219e:	4b06      	ldr	r3, [pc, #24]	; (80021b8 <event_timer_set_period+0x20>)
 80021a0:	b289      	uxth	r1, r1
 80021a2:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80021a6:	4b05      	ldr	r3, [pc, #20]	; (80021bc <event_timer_set_period+0x24>)
 80021a8:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80021ac:	4b04      	ldr	r3, [pc, #16]	; (80021c0 <event_timer_set_period+0x28>)
 80021ae:	2200      	movs	r2, #0
 80021b0:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80021b4:	b662      	cpsie	i
 80021b6:	4770      	bx	lr
 80021b8:	200014dc 	.word	0x200014dc
 80021bc:	200014d0 	.word	0x200014d0
 80021c0:	200014c8 	.word	0x200014c8

080021c4 <event_timer_wait>:
 80021c4:	b510      	push	{r4, lr}
 80021c6:	4604      	mov	r4, r0
 80021c8:	4b06      	ldr	r3, [pc, #24]	; (80021e4 <event_timer_wait+0x20>)
 80021ca:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 80021ce:	b292      	uxth	r2, r2
 80021d0:	b912      	cbnz	r2, 80021d8 <event_timer_wait+0x14>
 80021d2:	f000 faf5 	bl	80027c0 <sleep>
 80021d6:	e7f7      	b.n	80021c8 <event_timer_wait+0x4>
 80021d8:	b672      	cpsid	i
 80021da:	2200      	movs	r2, #0
 80021dc:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 80021e0:	b662      	cpsie	i
 80021e2:	bd10      	pop	{r4, pc}
 80021e4:	200014c8 	.word	0x200014c8

080021e8 <USART_Init>:
 80021e8:	b530      	push	{r4, r5, lr}
 80021ea:	4604      	mov	r4, r0
 80021ec:	b099      	sub	sp, #100	; 0x64
 80021ee:	460d      	mov	r5, r1
 80021f0:	bf00      	nop
 80021f2:	bf00      	nop
 80021f4:	bf00      	nop
 80021f6:	bf00      	nop
 80021f8:	bf00      	nop
 80021fa:	bf00      	nop
 80021fc:	bf00      	nop
 80021fe:	6803      	ldr	r3, [r0, #0]
 8002200:	f023 0301 	bic.w	r3, r3, #1
 8002204:	6003      	str	r3, [r0, #0]
 8002206:	6842      	ldr	r2, [r0, #4]
 8002208:	688b      	ldr	r3, [r1, #8]
 800220a:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 800220e:	4313      	orrs	r3, r2
 8002210:	6043      	str	r3, [r0, #4]
 8002212:	686a      	ldr	r2, [r5, #4]
 8002214:	68eb      	ldr	r3, [r5, #12]
 8002216:	6801      	ldr	r1, [r0, #0]
 8002218:	431a      	orrs	r2, r3
 800221a:	692b      	ldr	r3, [r5, #16]
 800221c:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8002220:	f021 010c 	bic.w	r1, r1, #12
 8002224:	4313      	orrs	r3, r2
 8002226:	430b      	orrs	r3, r1
 8002228:	6003      	str	r3, [r0, #0]
 800222a:	6882      	ldr	r2, [r0, #8]
 800222c:	696b      	ldr	r3, [r5, #20]
 800222e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002232:	4313      	orrs	r3, r2
 8002234:	6083      	str	r3, [r0, #8]
 8002236:	a801      	add	r0, sp, #4
 8002238:	f7ff fc70 	bl	8001b1c <RCC_GetClocksFreq>
 800223c:	4b17      	ldr	r3, [pc, #92]	; (800229c <USART_Init+0xb4>)
 800223e:	429c      	cmp	r4, r3
 8002240:	d101      	bne.n	8002246 <USART_Init+0x5e>
 8002242:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002244:	e00e      	b.n	8002264 <USART_Init+0x7c>
 8002246:	4b16      	ldr	r3, [pc, #88]	; (80022a0 <USART_Init+0xb8>)
 8002248:	429c      	cmp	r4, r3
 800224a:	d101      	bne.n	8002250 <USART_Init+0x68>
 800224c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800224e:	e009      	b.n	8002264 <USART_Init+0x7c>
 8002250:	4b14      	ldr	r3, [pc, #80]	; (80022a4 <USART_Init+0xbc>)
 8002252:	429c      	cmp	r4, r3
 8002254:	d101      	bne.n	800225a <USART_Init+0x72>
 8002256:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002258:	e004      	b.n	8002264 <USART_Init+0x7c>
 800225a:	4b13      	ldr	r3, [pc, #76]	; (80022a8 <USART_Init+0xc0>)
 800225c:	429c      	cmp	r4, r3
 800225e:	bf0c      	ite	eq
 8002260:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8002262:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002264:	6823      	ldr	r3, [r4, #0]
 8002266:	6829      	ldr	r1, [r5, #0]
 8002268:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 800226c:	bf18      	it	ne
 800226e:	0052      	lslne	r2, r2, #1
 8002270:	fbb2 f3f1 	udiv	r3, r2, r1
 8002274:	fb01 2213 	mls	r2, r1, r3, r2
 8002278:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 800227c:	6822      	ldr	r2, [r4, #0]
 800227e:	bf28      	it	cs
 8002280:	3301      	addcs	r3, #1
 8002282:	0412      	lsls	r2, r2, #16
 8002284:	d506      	bpl.n	8002294 <USART_Init+0xac>
 8002286:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800228a:	f3c3 0142 	ubfx	r1, r3, #1, #3
 800228e:	401a      	ands	r2, r3
 8002290:	ea41 0302 	orr.w	r3, r1, r2
 8002294:	b29b      	uxth	r3, r3
 8002296:	81a3      	strh	r3, [r4, #12]
 8002298:	b019      	add	sp, #100	; 0x64
 800229a:	bd30      	pop	{r4, r5, pc}
 800229c:	40013800 	.word	0x40013800
 80022a0:	40004400 	.word	0x40004400
 80022a4:	40004800 	.word	0x40004800
 80022a8:	40004c00 	.word	0x40004c00

080022ac <USART_Cmd>:
 80022ac:	bf00      	nop
 80022ae:	bf00      	nop
 80022b0:	6803      	ldr	r3, [r0, #0]
 80022b2:	b111      	cbz	r1, 80022ba <USART_Cmd+0xe>
 80022b4:	f043 0301 	orr.w	r3, r3, #1
 80022b8:	e001      	b.n	80022be <USART_Cmd+0x12>
 80022ba:	f023 0301 	bic.w	r3, r3, #1
 80022be:	6003      	str	r3, [r0, #0]
 80022c0:	4770      	bx	lr

080022c2 <USART_ReceiveData>:
 80022c2:	bf00      	nop
 80022c4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80022c6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80022ca:	4770      	bx	lr

080022cc <USART_ITConfig>:
 80022cc:	b510      	push	{r4, lr}
 80022ce:	bf00      	nop
 80022d0:	bf00      	nop
 80022d2:	bf00      	nop
 80022d4:	f3c1 2307 	ubfx	r3, r1, #8, #8
 80022d8:	2401      	movs	r4, #1
 80022da:	b2c9      	uxtb	r1, r1
 80022dc:	2b02      	cmp	r3, #2
 80022de:	fa04 f101 	lsl.w	r1, r4, r1
 80022e2:	d101      	bne.n	80022e8 <USART_ITConfig+0x1c>
 80022e4:	3004      	adds	r0, #4
 80022e6:	e002      	b.n	80022ee <USART_ITConfig+0x22>
 80022e8:	2b03      	cmp	r3, #3
 80022ea:	bf08      	it	eq
 80022ec:	3008      	addeq	r0, #8
 80022ee:	6803      	ldr	r3, [r0, #0]
 80022f0:	b10a      	cbz	r2, 80022f6 <USART_ITConfig+0x2a>
 80022f2:	4319      	orrs	r1, r3
 80022f4:	e001      	b.n	80022fa <USART_ITConfig+0x2e>
 80022f6:	ea23 0101 	bic.w	r1, r3, r1
 80022fa:	6001      	str	r1, [r0, #0]
 80022fc:	bd10      	pop	{r4, pc}

080022fe <USART_GetITStatus>:
 80022fe:	b510      	push	{r4, lr}
 8002300:	bf00      	nop
 8002302:	bf00      	nop
 8002304:	2401      	movs	r4, #1
 8002306:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800230a:	b2cb      	uxtb	r3, r1
 800230c:	42a2      	cmp	r2, r4
 800230e:	fa04 f303 	lsl.w	r3, r4, r3
 8002312:	d101      	bne.n	8002318 <USART_GetITStatus+0x1a>
 8002314:	6802      	ldr	r2, [r0, #0]
 8002316:	e003      	b.n	8002320 <USART_GetITStatus+0x22>
 8002318:	2a02      	cmp	r2, #2
 800231a:	bf0c      	ite	eq
 800231c:	6842      	ldreq	r2, [r0, #4]
 800231e:	6882      	ldrne	r2, [r0, #8]
 8002320:	4013      	ands	r3, r2
 8002322:	69c2      	ldr	r2, [r0, #28]
 8002324:	b143      	cbz	r3, 8002338 <USART_GetITStatus+0x3a>
 8002326:	2301      	movs	r3, #1
 8002328:	0c09      	lsrs	r1, r1, #16
 800232a:	fa03 f101 	lsl.w	r1, r3, r1
 800232e:	4211      	tst	r1, r2
 8002330:	bf0c      	ite	eq
 8002332:	2000      	moveq	r0, #0
 8002334:	2001      	movne	r0, #1
 8002336:	bd10      	pop	{r4, pc}
 8002338:	4618      	mov	r0, r3
 800233a:	bd10      	pop	{r4, pc}

0800233c <USART_ClearITPendingBit>:
 800233c:	bf00      	nop
 800233e:	bf00      	nop
 8002340:	2301      	movs	r3, #1
 8002342:	0c09      	lsrs	r1, r1, #16
 8002344:	fa03 f101 	lsl.w	r1, r3, r1
 8002348:	6201      	str	r1, [r0, #32]
 800234a:	4770      	bx	lr

0800234c <uart_write>:
 800234c:	4b03      	ldr	r3, [pc, #12]	; (800235c <uart_write+0x10>)
 800234e:	69da      	ldr	r2, [r3, #28]
 8002350:	0612      	lsls	r2, r2, #24
 8002352:	d401      	bmi.n	8002358 <uart_write+0xc>
 8002354:	bf00      	nop
 8002356:	e7f9      	b.n	800234c <uart_write>
 8002358:	8518      	strh	r0, [r3, #40]	; 0x28
 800235a:	4770      	bx	lr
 800235c:	40013800 	.word	0x40013800

08002360 <uart_init>:
 8002360:	b530      	push	{r4, r5, lr}
 8002362:	4b2c      	ldr	r3, [pc, #176]	; (8002414 <uart_init+0xb4>)
 8002364:	4d2c      	ldr	r5, [pc, #176]	; (8002418 <uart_init+0xb8>)
 8002366:	2400      	movs	r4, #0
 8002368:	601c      	str	r4, [r3, #0]
 800236a:	4b2c      	ldr	r3, [pc, #176]	; (800241c <uart_init+0xbc>)
 800236c:	b08b      	sub	sp, #44	; 0x2c
 800236e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002372:	2101      	movs	r1, #1
 8002374:	601c      	str	r4, [r3, #0]
 8002376:	f7ff fd5d 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 800237a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800237e:	2101      	movs	r1, #1
 8002380:	f7ff fd66 	bl	8001e50 <RCC_APB2PeriphClockCmd>
 8002384:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002388:	9302      	str	r3, [sp, #8]
 800238a:	2302      	movs	r3, #2
 800238c:	f88d 300c 	strb.w	r3, [sp, #12]
 8002390:	a902      	add	r1, sp, #8
 8002392:	2303      	movs	r3, #3
 8002394:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002398:	f88d 300d 	strb.w	r3, [sp, #13]
 800239c:	f88d 400e 	strb.w	r4, [sp, #14]
 80023a0:	f88d 400f 	strb.w	r4, [sp, #15]
 80023a4:	f000 fb53 	bl	8002a4e <GPIO_Init>
 80023a8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80023ac:	2109      	movs	r1, #9
 80023ae:	2207      	movs	r2, #7
 80023b0:	f000 fb9b 	bl	8002aea <GPIO_PinAFConfig>
 80023b4:	2207      	movs	r2, #7
 80023b6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80023ba:	210a      	movs	r1, #10
 80023bc:	f000 fb95 	bl	8002aea <GPIO_PinAFConfig>
 80023c0:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80023c4:	9304      	str	r3, [sp, #16]
 80023c6:	4628      	mov	r0, r5
 80023c8:	230c      	movs	r3, #12
 80023ca:	a904      	add	r1, sp, #16
 80023cc:	9308      	str	r3, [sp, #32]
 80023ce:	9405      	str	r4, [sp, #20]
 80023d0:	9406      	str	r4, [sp, #24]
 80023d2:	9407      	str	r4, [sp, #28]
 80023d4:	9409      	str	r4, [sp, #36]	; 0x24
 80023d6:	f7ff ff07 	bl	80021e8 <USART_Init>
 80023da:	4628      	mov	r0, r5
 80023dc:	2101      	movs	r1, #1
 80023de:	f7ff ff65 	bl	80022ac <USART_Cmd>
 80023e2:	2201      	movs	r2, #1
 80023e4:	4628      	mov	r0, r5
 80023e6:	490e      	ldr	r1, [pc, #56]	; (8002420 <uart_init+0xc0>)
 80023e8:	f7ff ff70 	bl	80022cc <USART_ITConfig>
 80023ec:	2325      	movs	r3, #37	; 0x25
 80023ee:	f88d 4005 	strb.w	r4, [sp, #5]
 80023f2:	f88d 4006 	strb.w	r4, [sp, #6]
 80023f6:	a801      	add	r0, sp, #4
 80023f8:	2401      	movs	r4, #1
 80023fa:	f88d 3004 	strb.w	r3, [sp, #4]
 80023fe:	f88d 4007 	strb.w	r4, [sp, #7]
 8002402:	f000 fadb 	bl	80029bc <NVIC_Init>
 8002406:	4628      	mov	r0, r5
 8002408:	4621      	mov	r1, r4
 800240a:	f7ff ff4f 	bl	80022ac <USART_Cmd>
 800240e:	b00b      	add	sp, #44	; 0x2c
 8002410:	bd30      	pop	{r4, r5, pc}
 8002412:	bf00      	nop
 8002414:	200014f4 	.word	0x200014f4
 8002418:	40013800 	.word	0x40013800
 800241c:	200014f8 	.word	0x200014f8
 8002420:	00050105 	.word	0x00050105

08002424 <USART1_IRQHandler>:
 8002424:	b508      	push	{r3, lr}
 8002426:	480d      	ldr	r0, [pc, #52]	; (800245c <USART1_IRQHandler+0x38>)
 8002428:	490d      	ldr	r1, [pc, #52]	; (8002460 <USART1_IRQHandler+0x3c>)
 800242a:	f7ff ff68 	bl	80022fe <USART_GetITStatus>
 800242e:	b178      	cbz	r0, 8002450 <USART1_IRQHandler+0x2c>
 8002430:	480a      	ldr	r0, [pc, #40]	; (800245c <USART1_IRQHandler+0x38>)
 8002432:	f7ff ff46 	bl	80022c2 <USART_ReceiveData>
 8002436:	4b0b      	ldr	r3, [pc, #44]	; (8002464 <USART1_IRQHandler+0x40>)
 8002438:	490b      	ldr	r1, [pc, #44]	; (8002468 <USART1_IRQHandler+0x44>)
 800243a:	681a      	ldr	r2, [r3, #0]
 800243c:	b2c0      	uxtb	r0, r0
 800243e:	5488      	strb	r0, [r1, r2]
 8002440:	681a      	ldr	r2, [r3, #0]
 8002442:	3201      	adds	r2, #1
 8002444:	601a      	str	r2, [r3, #0]
 8002446:	681a      	ldr	r2, [r3, #0]
 8002448:	2a0f      	cmp	r2, #15
 800244a:	bf84      	itt	hi
 800244c:	2200      	movhi	r2, #0
 800244e:	601a      	strhi	r2, [r3, #0]
 8002450:	4802      	ldr	r0, [pc, #8]	; (800245c <USART1_IRQHandler+0x38>)
 8002452:	4903      	ldr	r1, [pc, #12]	; (8002460 <USART1_IRQHandler+0x3c>)
 8002454:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002458:	f7ff bf70 	b.w	800233c <USART_ClearITPendingBit>
 800245c:	40013800 	.word	0x40013800
 8002460:	00050105 	.word	0x00050105
 8002464:	200014f4 	.word	0x200014f4
 8002468:	200014e4 	.word	0x200014e4

0800246c <i2c_delay>:
 800246c:	230b      	movs	r3, #11
 800246e:	3b01      	subs	r3, #1
 8002470:	d001      	beq.n	8002476 <i2c_delay+0xa>
 8002472:	bf00      	nop
 8002474:	e7fb      	b.n	800246e <i2c_delay+0x2>
 8002476:	4770      	bx	lr

08002478 <SetLowSDA>:
 8002478:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800247a:	4d0d      	ldr	r5, [pc, #52]	; (80024b0 <SetLowSDA+0x38>)
 800247c:	2301      	movs	r3, #1
 800247e:	2203      	movs	r2, #3
 8002480:	2480      	movs	r4, #128	; 0x80
 8002482:	f88d 3004 	strb.w	r3, [sp, #4]
 8002486:	f88d 3006 	strb.w	r3, [sp, #6]
 800248a:	4628      	mov	r0, r5
 800248c:	2300      	movs	r3, #0
 800248e:	4669      	mov	r1, sp
 8002490:	f88d 2005 	strb.w	r2, [sp, #5]
 8002494:	f88d 3007 	strb.w	r3, [sp, #7]
 8002498:	9400      	str	r4, [sp, #0]
 800249a:	f000 fad8 	bl	8002a4e <GPIO_Init>
 800249e:	4628      	mov	r0, r5
 80024a0:	4621      	mov	r1, r4
 80024a2:	f000 fb1e 	bl	8002ae2 <GPIO_ResetBits>
 80024a6:	f7ff ffe1 	bl	800246c <i2c_delay>
 80024aa:	b003      	add	sp, #12
 80024ac:	bd30      	pop	{r4, r5, pc}
 80024ae:	bf00      	nop
 80024b0:	48000400 	.word	0x48000400

080024b4 <SetHighSDA>:
 80024b4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80024b6:	4d0d      	ldr	r5, [pc, #52]	; (80024ec <SetHighSDA+0x38>)
 80024b8:	2203      	movs	r2, #3
 80024ba:	2300      	movs	r3, #0
 80024bc:	2480      	movs	r4, #128	; 0x80
 80024be:	f88d 2005 	strb.w	r2, [sp, #5]
 80024c2:	4628      	mov	r0, r5
 80024c4:	2201      	movs	r2, #1
 80024c6:	4669      	mov	r1, sp
 80024c8:	f88d 3004 	strb.w	r3, [sp, #4]
 80024cc:	f88d 2006 	strb.w	r2, [sp, #6]
 80024d0:	f88d 3007 	strb.w	r3, [sp, #7]
 80024d4:	9400      	str	r4, [sp, #0]
 80024d6:	f000 faba 	bl	8002a4e <GPIO_Init>
 80024da:	4628      	mov	r0, r5
 80024dc:	4621      	mov	r1, r4
 80024de:	f000 fafc 	bl	8002ada <GPIO_SetBits>
 80024e2:	f7ff ffc3 	bl	800246c <i2c_delay>
 80024e6:	b003      	add	sp, #12
 80024e8:	bd30      	pop	{r4, r5, pc}
 80024ea:	bf00      	nop
 80024ec:	48000400 	.word	0x48000400

080024f0 <SetLowSCL>:
 80024f0:	b508      	push	{r3, lr}
 80024f2:	4804      	ldr	r0, [pc, #16]	; (8002504 <SetLowSCL+0x14>)
 80024f4:	2140      	movs	r1, #64	; 0x40
 80024f6:	f000 faf4 	bl	8002ae2 <GPIO_ResetBits>
 80024fa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024fe:	f7ff bfb5 	b.w	800246c <i2c_delay>
 8002502:	bf00      	nop
 8002504:	48000400 	.word	0x48000400

08002508 <SetHighSCL>:
 8002508:	b508      	push	{r3, lr}
 800250a:	4804      	ldr	r0, [pc, #16]	; (800251c <SetHighSCL+0x14>)
 800250c:	2140      	movs	r1, #64	; 0x40
 800250e:	f000 fae4 	bl	8002ada <GPIO_SetBits>
 8002512:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002516:	f7ff bfa9 	b.w	800246c <i2c_delay>
 800251a:	bf00      	nop
 800251c:	48000400 	.word	0x48000400

08002520 <i2c_0_init>:
 8002520:	b507      	push	{r0, r1, r2, lr}
 8002522:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002526:	2101      	movs	r1, #1
 8002528:	f7ff fc84 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 800252c:	23c0      	movs	r3, #192	; 0xc0
 800252e:	9300      	str	r3, [sp, #0]
 8002530:	2301      	movs	r3, #1
 8002532:	2203      	movs	r2, #3
 8002534:	480a      	ldr	r0, [pc, #40]	; (8002560 <i2c_0_init+0x40>)
 8002536:	f88d 3004 	strb.w	r3, [sp, #4]
 800253a:	4669      	mov	r1, sp
 800253c:	f88d 3006 	strb.w	r3, [sp, #6]
 8002540:	2300      	movs	r3, #0
 8002542:	f88d 2005 	strb.w	r2, [sp, #5]
 8002546:	f88d 3007 	strb.w	r3, [sp, #7]
 800254a:	f000 fa80 	bl	8002a4e <GPIO_Init>
 800254e:	f7ff ffdb 	bl	8002508 <SetHighSCL>
 8002552:	f7ff ff91 	bl	8002478 <SetLowSDA>
 8002556:	f7ff ffad 	bl	80024b4 <SetHighSDA>
 800255a:	b003      	add	sp, #12
 800255c:	f85d fb04 	ldr.w	pc, [sp], #4
 8002560:	48000400 	.word	0x48000400

08002564 <i2cStart>:
 8002564:	b508      	push	{r3, lr}
 8002566:	f7ff ffcf 	bl	8002508 <SetHighSCL>
 800256a:	f7ff ffa3 	bl	80024b4 <SetHighSDA>
 800256e:	f7ff ffcb 	bl	8002508 <SetHighSCL>
 8002572:	f7ff ff81 	bl	8002478 <SetLowSDA>
 8002576:	f7ff ffbb 	bl	80024f0 <SetLowSCL>
 800257a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800257e:	f7ff bf99 	b.w	80024b4 <SetHighSDA>

08002582 <i2cStop>:
 8002582:	b508      	push	{r3, lr}
 8002584:	f7ff ffb4 	bl	80024f0 <SetLowSCL>
 8002588:	f7ff ff76 	bl	8002478 <SetLowSDA>
 800258c:	f7ff ffbc 	bl	8002508 <SetHighSCL>
 8002590:	f7ff ff72 	bl	8002478 <SetLowSDA>
 8002594:	f7ff ffb8 	bl	8002508 <SetHighSCL>
 8002598:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800259c:	f7ff bf8a 	b.w	80024b4 <SetHighSDA>

080025a0 <i2cWrite>:
 80025a0:	b538      	push	{r3, r4, r5, lr}
 80025a2:	4604      	mov	r4, r0
 80025a4:	2508      	movs	r5, #8
 80025a6:	f7ff ffa3 	bl	80024f0 <SetLowSCL>
 80025aa:	0623      	lsls	r3, r4, #24
 80025ac:	d502      	bpl.n	80025b4 <i2cWrite+0x14>
 80025ae:	f7ff ff81 	bl	80024b4 <SetHighSDA>
 80025b2:	e001      	b.n	80025b8 <i2cWrite+0x18>
 80025b4:	f7ff ff60 	bl	8002478 <SetLowSDA>
 80025b8:	3d01      	subs	r5, #1
 80025ba:	f7ff ffa5 	bl	8002508 <SetHighSCL>
 80025be:	0064      	lsls	r4, r4, #1
 80025c0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80025c4:	b2e4      	uxtb	r4, r4
 80025c6:	d1ee      	bne.n	80025a6 <i2cWrite+0x6>
 80025c8:	f7ff ff92 	bl	80024f0 <SetLowSCL>
 80025cc:	f7ff ff72 	bl	80024b4 <SetHighSDA>
 80025d0:	f7ff ff9a 	bl	8002508 <SetHighSCL>
 80025d4:	4b05      	ldr	r3, [pc, #20]	; (80025ec <i2cWrite+0x4c>)
 80025d6:	8a1c      	ldrh	r4, [r3, #16]
 80025d8:	b2a4      	uxth	r4, r4
 80025da:	f7ff ff89 	bl	80024f0 <SetLowSCL>
 80025de:	f7ff ff45 	bl	800246c <i2c_delay>
 80025e2:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80025e6:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80025ea:	bd38      	pop	{r3, r4, r5, pc}
 80025ec:	48000400 	.word	0x48000400

080025f0 <i2cRead>:
 80025f0:	b570      	push	{r4, r5, r6, lr}
 80025f2:	4606      	mov	r6, r0
 80025f4:	f7ff ff7c 	bl	80024f0 <SetLowSCL>
 80025f8:	f7ff ff5c 	bl	80024b4 <SetHighSDA>
 80025fc:	2508      	movs	r5, #8
 80025fe:	2400      	movs	r4, #0
 8002600:	f7ff ff82 	bl	8002508 <SetHighSCL>
 8002604:	4b0d      	ldr	r3, [pc, #52]	; (800263c <i2cRead+0x4c>)
 8002606:	8a1b      	ldrh	r3, [r3, #16]
 8002608:	0064      	lsls	r4, r4, #1
 800260a:	061a      	lsls	r2, r3, #24
 800260c:	b2e4      	uxtb	r4, r4
 800260e:	bf48      	it	mi
 8002610:	3401      	addmi	r4, #1
 8002612:	f105 35ff 	add.w	r5, r5, #4294967295
 8002616:	bf48      	it	mi
 8002618:	b2e4      	uxtbmi	r4, r4
 800261a:	f7ff ff69 	bl	80024f0 <SetLowSCL>
 800261e:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002622:	d1ed      	bne.n	8002600 <i2cRead+0x10>
 8002624:	b10e      	cbz	r6, 800262a <i2cRead+0x3a>
 8002626:	f7ff ff27 	bl	8002478 <SetLowSDA>
 800262a:	f7ff ff6d 	bl	8002508 <SetHighSCL>
 800262e:	f7ff ff5f 	bl	80024f0 <SetLowSCL>
 8002632:	f7ff ff1b 	bl	800246c <i2c_delay>
 8002636:	4620      	mov	r0, r4
 8002638:	bd70      	pop	{r4, r5, r6, pc}
 800263a:	bf00      	nop
 800263c:	48000400 	.word	0x48000400

08002640 <i2c_write_reg>:
 8002640:	b570      	push	{r4, r5, r6, lr}
 8002642:	4605      	mov	r5, r0
 8002644:	460c      	mov	r4, r1
 8002646:	4616      	mov	r6, r2
 8002648:	f7ff ff8c 	bl	8002564 <i2cStart>
 800264c:	4628      	mov	r0, r5
 800264e:	f7ff ffa7 	bl	80025a0 <i2cWrite>
 8002652:	4620      	mov	r0, r4
 8002654:	f7ff ffa4 	bl	80025a0 <i2cWrite>
 8002658:	4630      	mov	r0, r6
 800265a:	f7ff ffa1 	bl	80025a0 <i2cWrite>
 800265e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002662:	f7ff bf8e 	b.w	8002582 <i2cStop>

08002666 <i2c_read_reg>:
 8002666:	b538      	push	{r3, r4, r5, lr}
 8002668:	4604      	mov	r4, r0
 800266a:	460d      	mov	r5, r1
 800266c:	f7ff ff7a 	bl	8002564 <i2cStart>
 8002670:	4620      	mov	r0, r4
 8002672:	f7ff ff95 	bl	80025a0 <i2cWrite>
 8002676:	4628      	mov	r0, r5
 8002678:	f7ff ff92 	bl	80025a0 <i2cWrite>
 800267c:	f7ff ff72 	bl	8002564 <i2cStart>
 8002680:	f044 0001 	orr.w	r0, r4, #1
 8002684:	f7ff ff8c 	bl	80025a0 <i2cWrite>
 8002688:	2000      	movs	r0, #0
 800268a:	f7ff ffb1 	bl	80025f0 <i2cRead>
 800268e:	4604      	mov	r4, r0
 8002690:	f7ff ff77 	bl	8002582 <i2cStop>
 8002694:	4620      	mov	r0, r4
 8002696:	bd38      	pop	{r3, r4, r5, pc}

08002698 <SystemInit>:
 8002698:	4b3b      	ldr	r3, [pc, #236]	; (8002788 <SystemInit+0xf0>)
 800269a:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800269e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80026a2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80026a6:	4b39      	ldr	r3, [pc, #228]	; (800278c <SystemInit+0xf4>)
 80026a8:	681a      	ldr	r2, [r3, #0]
 80026aa:	f042 0201 	orr.w	r2, r2, #1
 80026ae:	601a      	str	r2, [r3, #0]
 80026b0:	6859      	ldr	r1, [r3, #4]
 80026b2:	4a37      	ldr	r2, [pc, #220]	; (8002790 <SystemInit+0xf8>)
 80026b4:	400a      	ands	r2, r1
 80026b6:	605a      	str	r2, [r3, #4]
 80026b8:	681a      	ldr	r2, [r3, #0]
 80026ba:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80026be:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80026c2:	601a      	str	r2, [r3, #0]
 80026c4:	681a      	ldr	r2, [r3, #0]
 80026c6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80026ca:	601a      	str	r2, [r3, #0]
 80026cc:	685a      	ldr	r2, [r3, #4]
 80026ce:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80026d2:	605a      	str	r2, [r3, #4]
 80026d4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80026d6:	f022 020f 	bic.w	r2, r2, #15
 80026da:	62da      	str	r2, [r3, #44]	; 0x2c
 80026dc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026de:	4a2d      	ldr	r2, [pc, #180]	; (8002794 <SystemInit+0xfc>)
 80026e0:	b082      	sub	sp, #8
 80026e2:	400a      	ands	r2, r1
 80026e4:	631a      	str	r2, [r3, #48]	; 0x30
 80026e6:	2200      	movs	r2, #0
 80026e8:	609a      	str	r2, [r3, #8]
 80026ea:	9200      	str	r2, [sp, #0]
 80026ec:	9201      	str	r2, [sp, #4]
 80026ee:	681a      	ldr	r2, [r3, #0]
 80026f0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80026f4:	601a      	str	r2, [r3, #0]
 80026f6:	4b25      	ldr	r3, [pc, #148]	; (800278c <SystemInit+0xf4>)
 80026f8:	681a      	ldr	r2, [r3, #0]
 80026fa:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80026fe:	9201      	str	r2, [sp, #4]
 8002700:	9a00      	ldr	r2, [sp, #0]
 8002702:	3201      	adds	r2, #1
 8002704:	9200      	str	r2, [sp, #0]
 8002706:	9a01      	ldr	r2, [sp, #4]
 8002708:	b91a      	cbnz	r2, 8002712 <SystemInit+0x7a>
 800270a:	9a00      	ldr	r2, [sp, #0]
 800270c:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002710:	d1f1      	bne.n	80026f6 <SystemInit+0x5e>
 8002712:	681b      	ldr	r3, [r3, #0]
 8002714:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8002718:	bf18      	it	ne
 800271a:	2301      	movne	r3, #1
 800271c:	9301      	str	r3, [sp, #4]
 800271e:	9b01      	ldr	r3, [sp, #4]
 8002720:	2b01      	cmp	r3, #1
 8002722:	d005      	beq.n	8002730 <SystemInit+0x98>
 8002724:	4b18      	ldr	r3, [pc, #96]	; (8002788 <SystemInit+0xf0>)
 8002726:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800272a:	609a      	str	r2, [r3, #8]
 800272c:	b002      	add	sp, #8
 800272e:	4770      	bx	lr
 8002730:	4b19      	ldr	r3, [pc, #100]	; (8002798 <SystemInit+0x100>)
 8002732:	2212      	movs	r2, #18
 8002734:	601a      	str	r2, [r3, #0]
 8002736:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 800273a:	685a      	ldr	r2, [r3, #4]
 800273c:	605a      	str	r2, [r3, #4]
 800273e:	685a      	ldr	r2, [r3, #4]
 8002740:	605a      	str	r2, [r3, #4]
 8002742:	685a      	ldr	r2, [r3, #4]
 8002744:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002748:	605a      	str	r2, [r3, #4]
 800274a:	685a      	ldr	r2, [r3, #4]
 800274c:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002750:	605a      	str	r2, [r3, #4]
 8002752:	685a      	ldr	r2, [r3, #4]
 8002754:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002758:	605a      	str	r2, [r3, #4]
 800275a:	681a      	ldr	r2, [r3, #0]
 800275c:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002760:	601a      	str	r2, [r3, #0]
 8002762:	6819      	ldr	r1, [r3, #0]
 8002764:	4a09      	ldr	r2, [pc, #36]	; (800278c <SystemInit+0xf4>)
 8002766:	0189      	lsls	r1, r1, #6
 8002768:	d5fb      	bpl.n	8002762 <SystemInit+0xca>
 800276a:	6853      	ldr	r3, [r2, #4]
 800276c:	f023 0303 	bic.w	r3, r3, #3
 8002770:	6053      	str	r3, [r2, #4]
 8002772:	6853      	ldr	r3, [r2, #4]
 8002774:	f043 0302 	orr.w	r3, r3, #2
 8002778:	6053      	str	r3, [r2, #4]
 800277a:	4b04      	ldr	r3, [pc, #16]	; (800278c <SystemInit+0xf4>)
 800277c:	685b      	ldr	r3, [r3, #4]
 800277e:	f003 030c 	and.w	r3, r3, #12
 8002782:	2b08      	cmp	r3, #8
 8002784:	d1f9      	bne.n	800277a <SystemInit+0xe2>
 8002786:	e7cd      	b.n	8002724 <SystemInit+0x8c>
 8002788:	e000ed00 	.word	0xe000ed00
 800278c:	40021000 	.word	0x40021000
 8002790:	f87fc00c 	.word	0xf87fc00c
 8002794:	ff00fccc 	.word	0xff00fccc
 8002798:	40022000 	.word	0x40022000

0800279c <sys_tick_init>:
 800279c:	4b05      	ldr	r3, [pc, #20]	; (80027b4 <sys_tick_init+0x18>)
 800279e:	4a06      	ldr	r2, [pc, #24]	; (80027b8 <sys_tick_init+0x1c>)
 80027a0:	605a      	str	r2, [r3, #4]
 80027a2:	4a06      	ldr	r2, [pc, #24]	; (80027bc <sys_tick_init+0x20>)
 80027a4:	21f0      	movs	r1, #240	; 0xf0
 80027a6:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80027aa:	2200      	movs	r2, #0
 80027ac:	609a      	str	r2, [r3, #8]
 80027ae:	2207      	movs	r2, #7
 80027b0:	601a      	str	r2, [r3, #0]
 80027b2:	4770      	bx	lr
 80027b4:	e000e010 	.word	0xe000e010
 80027b8:	00029040 	.word	0x00029040
 80027bc:	e000ed00 	.word	0xe000ed00

080027c0 <sleep>:
 80027c0:	bf30      	wfi
 80027c2:	4770      	bx	lr

080027c4 <sytem_clock_init>:
 80027c4:	f7ff bf68 	b.w	8002698 <SystemInit>

080027c8 <pwm_set>:
 80027c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80027cc:	b086      	sub	sp, #24
 80027ce:	2370      	movs	r3, #112	; 0x70
 80027d0:	9301      	str	r3, [sp, #4]
 80027d2:	2301      	movs	r3, #1
 80027d4:	f8ad 3008 	strh.w	r3, [sp, #8]
 80027d8:	2304      	movs	r3, #4
 80027da:	f8ad 300a 	strh.w	r3, [sp, #10]
 80027de:	4f17      	ldr	r7, [pc, #92]	; (800283c <pwm_set+0x74>)
 80027e0:	4c17      	ldr	r4, [pc, #92]	; (8002840 <pwm_set+0x78>)
 80027e2:	2302      	movs	r3, #2
 80027e4:	f8ad 3010 	strh.w	r3, [sp, #16]
 80027e8:	2300      	movs	r3, #0
 80027ea:	f8ad 3012 	strh.w	r3, [sp, #18]
 80027ee:	f8ad 3016 	strh.w	r3, [sp, #22]
 80027f2:	683b      	ldr	r3, [r7, #0]
 80027f4:	f242 7610 	movw	r6, #10000	; 0x2710
 80027f8:	fbb3 f3f6 	udiv	r3, r3, r6
 80027fc:	3b02      	subs	r3, #2
 80027fe:	4358      	muls	r0, r3
 8002800:	2564      	movs	r5, #100	; 0x64
 8002802:	fbb0 f3f5 	udiv	r3, r0, r5
 8002806:	f44f 7280 	mov.w	r2, #256	; 0x100
 800280a:	4620      	mov	r0, r4
 800280c:	4688      	mov	r8, r1
 800280e:	a901      	add	r1, sp, #4
 8002810:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002814:	9303      	str	r3, [sp, #12]
 8002816:	f7ff fb95 	bl	8001f44 <TIM_OC1Init>
 800281a:	683b      	ldr	r3, [r7, #0]
 800281c:	fbb3 f6f6 	udiv	r6, r3, r6
 8002820:	3e02      	subs	r6, #2
 8002822:	fb06 f808 	mul.w	r8, r6, r8
 8002826:	fbb8 f5f5 	udiv	r5, r8, r5
 800282a:	4620      	mov	r0, r4
 800282c:	a901      	add	r1, sp, #4
 800282e:	9503      	str	r5, [sp, #12]
 8002830:	f7ff fbce 	bl	8001fd0 <TIM_OC2Init>
 8002834:	b006      	add	sp, #24
 8002836:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800283a:	bf00      	nop
 800283c:	200001e0 	.word	0x200001e0
 8002840:	40012c00 	.word	0x40012c00

08002844 <pwm_init>:
 8002844:	b530      	push	{r4, r5, lr}
 8002846:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800284a:	b087      	sub	sp, #28
 800284c:	2101      	movs	r1, #1
 800284e:	f7ff faff 	bl	8001e50 <RCC_APB2PeriphClockCmd>
 8002852:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002856:	2101      	movs	r1, #1
 8002858:	f7ff faec 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 800285c:	4c1d      	ldr	r4, [pc, #116]	; (80028d4 <pwm_init+0x90>)
 800285e:	4d1e      	ldr	r5, [pc, #120]	; (80028d8 <pwm_init+0x94>)
 8002860:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002864:	9301      	str	r3, [sp, #4]
 8002866:	2302      	movs	r3, #2
 8002868:	f88d 3008 	strb.w	r3, [sp, #8]
 800286c:	4620      	mov	r0, r4
 800286e:	2303      	movs	r3, #3
 8002870:	a901      	add	r1, sp, #4
 8002872:	f88d 3009 	strb.w	r3, [sp, #9]
 8002876:	f000 f8ea 	bl	8002a4e <GPIO_Init>
 800287a:	4620      	mov	r0, r4
 800287c:	210d      	movs	r1, #13
 800287e:	2206      	movs	r2, #6
 8002880:	f000 f933 	bl	8002aea <GPIO_PinAFConfig>
 8002884:	4620      	mov	r0, r4
 8002886:	210e      	movs	r1, #14
 8002888:	2206      	movs	r2, #6
 800288a:	f000 f92e 	bl	8002aea <GPIO_PinAFConfig>
 800288e:	4b13      	ldr	r3, [pc, #76]	; (80028dc <pwm_init+0x98>)
 8002890:	681a      	ldr	r2, [r3, #0]
 8002892:	f242 7310 	movw	r3, #10000	; 0x2710
 8002896:	fbb2 f3f3 	udiv	r3, r2, r3
 800289a:	2400      	movs	r4, #0
 800289c:	3b01      	subs	r3, #1
 800289e:	4628      	mov	r0, r5
 80028a0:	a903      	add	r1, sp, #12
 80028a2:	9304      	str	r3, [sp, #16]
 80028a4:	f8ad 400c 	strh.w	r4, [sp, #12]
 80028a8:	f8ad 400e 	strh.w	r4, [sp, #14]
 80028ac:	f8ad 4014 	strh.w	r4, [sp, #20]
 80028b0:	f8ad 4016 	strh.w	r4, [sp, #22]
 80028b4:	f7ff fae8 	bl	8001e88 <TIM_TimeBaseInit>
 80028b8:	4620      	mov	r0, r4
 80028ba:	4621      	mov	r1, r4
 80028bc:	f7ff ff84 	bl	80027c8 <pwm_set>
 80028c0:	4628      	mov	r0, r5
 80028c2:	2101      	movs	r1, #1
 80028c4:	f7ff fb30 	bl	8001f28 <TIM_Cmd>
 80028c8:	4628      	mov	r0, r5
 80028ca:	2101      	movs	r1, #1
 80028cc:	f7ff fbbe 	bl	800204c <TIM_CtrlPWMOutputs>
 80028d0:	b007      	add	sp, #28
 80028d2:	bd30      	pop	{r4, r5, pc}
 80028d4:	48000400 	.word	0x48000400
 80028d8:	40012c00 	.word	0x40012c00
 80028dc:	200001e0 	.word	0x200001e0

080028e0 <drv8834_run>:
 80028e0:	1e02      	subs	r2, r0, #0
 80028e2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80028e6:	dd07      	ble.n	80028f8 <drv8834_run+0x18>
 80028e8:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80028ea:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 80028ee:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 80028f2:	b280      	uxth	r0, r0
 80028f4:	8518      	strh	r0, [r3, #40]	; 0x28
 80028f6:	e005      	b.n	8002904 <drv8834_run+0x24>
 80028f8:	6998      	ldr	r0, [r3, #24]
 80028fa:	4252      	negs	r2, r2
 80028fc:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002900:	6198      	str	r0, [r3, #24]
 8002902:	b212      	sxth	r2, r2
 8002904:	2900      	cmp	r1, #0
 8002906:	4b0c      	ldr	r3, [pc, #48]	; (8002938 <drv8834_run+0x58>)
 8002908:	dd05      	ble.n	8002916 <drv8834_run+0x36>
 800290a:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800290c:	b280      	uxth	r0, r0
 800290e:	f040 0020 	orr.w	r0, r0, #32
 8002912:	8518      	strh	r0, [r3, #40]	; 0x28
 8002914:	e005      	b.n	8002922 <drv8834_run+0x42>
 8002916:	6998      	ldr	r0, [r3, #24]
 8002918:	4249      	negs	r1, r1
 800291a:	f040 0020 	orr.w	r0, r0, #32
 800291e:	6198      	str	r0, [r3, #24]
 8002920:	b209      	sxth	r1, r1
 8002922:	2964      	cmp	r1, #100	; 0x64
 8002924:	bfb4      	ite	lt
 8002926:	4608      	movlt	r0, r1
 8002928:	2064      	movge	r0, #100	; 0x64
 800292a:	2a64      	cmp	r2, #100	; 0x64
 800292c:	bfb4      	ite	lt
 800292e:	4611      	movlt	r1, r2
 8002930:	2164      	movge	r1, #100	; 0x64
 8002932:	f7ff bf49 	b.w	80027c8 <pwm_set>
 8002936:	bf00      	nop
 8002938:	48000400 	.word	0x48000400

0800293c <drv8834_init>:
 800293c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002940:	4f1d      	ldr	r7, [pc, #116]	; (80029b8 <drv8834_init+0x7c>)
 8002942:	2400      	movs	r4, #0
 8002944:	2601      	movs	r6, #1
 8002946:	2503      	movs	r5, #3
 8002948:	f04f 0810 	mov.w	r8, #16
 800294c:	4638      	mov	r0, r7
 800294e:	4669      	mov	r1, sp
 8002950:	f8cd 8000 	str.w	r8, [sp]
 8002954:	f88d 6004 	strb.w	r6, [sp, #4]
 8002958:	f88d 4006 	strb.w	r4, [sp, #6]
 800295c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002960:	f88d 4007 	strb.w	r4, [sp, #7]
 8002964:	f000 f873 	bl	8002a4e <GPIO_Init>
 8002968:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 800296c:	2320      	movs	r3, #32
 800296e:	4638      	mov	r0, r7
 8002970:	4669      	mov	r1, sp
 8002972:	9300      	str	r3, [sp, #0]
 8002974:	f88d 6004 	strb.w	r6, [sp, #4]
 8002978:	f88d 4006 	strb.w	r4, [sp, #6]
 800297c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002980:	f88d 4007 	strb.w	r4, [sp, #7]
 8002984:	f000 f863 	bl	8002a4e <GPIO_Init>
 8002988:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800298c:	4669      	mov	r1, sp
 800298e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002992:	9300      	str	r3, [sp, #0]
 8002994:	f88d 6004 	strb.w	r6, [sp, #4]
 8002998:	f88d 4006 	strb.w	r4, [sp, #6]
 800299c:	f88d 5005 	strb.w	r5, [sp, #5]
 80029a0:	f88d 4007 	strb.w	r4, [sp, #7]
 80029a4:	f000 f853 	bl	8002a4e <GPIO_Init>
 80029a8:	4620      	mov	r0, r4
 80029aa:	4621      	mov	r1, r4
 80029ac:	f7ff ff98 	bl	80028e0 <drv8834_run>
 80029b0:	b002      	add	sp, #8
 80029b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80029b6:	bf00      	nop
 80029b8:	48000400 	.word	0x48000400

080029bc <NVIC_Init>:
 80029bc:	b510      	push	{r4, lr}
 80029be:	bf00      	nop
 80029c0:	bf00      	nop
 80029c2:	bf00      	nop
 80029c4:	78c2      	ldrb	r2, [r0, #3]
 80029c6:	7803      	ldrb	r3, [r0, #0]
 80029c8:	b30a      	cbz	r2, 8002a0e <NVIC_Init+0x52>
 80029ca:	4a16      	ldr	r2, [pc, #88]	; (8002a24 <NVIC_Init+0x68>)
 80029cc:	7844      	ldrb	r4, [r0, #1]
 80029ce:	68d2      	ldr	r2, [r2, #12]
 80029d0:	43d2      	mvns	r2, r2
 80029d2:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80029d6:	f1c2 0104 	rsb	r1, r2, #4
 80029da:	b2c9      	uxtb	r1, r1
 80029dc:	fa04 f101 	lsl.w	r1, r4, r1
 80029e0:	240f      	movs	r4, #15
 80029e2:	fa44 f202 	asr.w	r2, r4, r2
 80029e6:	7884      	ldrb	r4, [r0, #2]
 80029e8:	b2c9      	uxtb	r1, r1
 80029ea:	4022      	ands	r2, r4
 80029ec:	430a      	orrs	r2, r1
 80029ee:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80029f2:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80029f6:	0112      	lsls	r2, r2, #4
 80029f8:	b2d2      	uxtb	r2, r2
 80029fa:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80029fe:	7803      	ldrb	r3, [r0, #0]
 8002a00:	2201      	movs	r2, #1
 8002a02:	0959      	lsrs	r1, r3, #5
 8002a04:	f003 031f 	and.w	r3, r3, #31
 8002a08:	fa02 f303 	lsl.w	r3, r2, r3
 8002a0c:	e006      	b.n	8002a1c <NVIC_Init+0x60>
 8002a0e:	0959      	lsrs	r1, r3, #5
 8002a10:	2201      	movs	r2, #1
 8002a12:	f003 031f 	and.w	r3, r3, #31
 8002a16:	fa02 f303 	lsl.w	r3, r2, r3
 8002a1a:	3120      	adds	r1, #32
 8002a1c:	4a02      	ldr	r2, [pc, #8]	; (8002a28 <NVIC_Init+0x6c>)
 8002a1e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002a22:	bd10      	pop	{r4, pc}
 8002a24:	e000ed00 	.word	0xe000ed00
 8002a28:	e000e100 	.word	0xe000e100

08002a2c <lib_low_level_init>:
 8002a2c:	b508      	push	{r3, lr}
 8002a2e:	f7ff fec9 	bl	80027c4 <sytem_clock_init>
 8002a32:	f000 f871 	bl	8002b18 <gpio_init>
 8002a36:	f7ff fc93 	bl	8002360 <uart_init>
 8002a3a:	f7ff fb17 	bl	800206c <timer_init>
 8002a3e:	f7ff ff01 	bl	8002844 <pwm_init>
 8002a42:	f7ff ff7b 	bl	800293c <drv8834_init>
 8002a46:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002a4a:	f7ff bd69 	b.w	8002520 <i2c_0_init>

08002a4e <GPIO_Init>:
 8002a4e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002a50:	bf00      	nop
 8002a52:	bf00      	nop
 8002a54:	bf00      	nop
 8002a56:	bf00      	nop
 8002a58:	2300      	movs	r3, #0
 8002a5a:	680e      	ldr	r6, [r1, #0]
 8002a5c:	461a      	mov	r2, r3
 8002a5e:	2501      	movs	r5, #1
 8002a60:	4095      	lsls	r5, r2
 8002a62:	ea05 0406 	and.w	r4, r5, r6
 8002a66:	42ac      	cmp	r4, r5
 8002a68:	d131      	bne.n	8002ace <GPIO_Init+0x80>
 8002a6a:	790d      	ldrb	r5, [r1, #4]
 8002a6c:	1e6f      	subs	r7, r5, #1
 8002a6e:	b2ff      	uxtb	r7, r7
 8002a70:	2f01      	cmp	r7, #1
 8002a72:	d81c      	bhi.n	8002aae <GPIO_Init+0x60>
 8002a74:	bf00      	nop
 8002a76:	f04f 0c03 	mov.w	ip, #3
 8002a7a:	6887      	ldr	r7, [r0, #8]
 8002a7c:	fa0c fc03 	lsl.w	ip, ip, r3
 8002a80:	ea27 070c 	bic.w	r7, r7, ip
 8002a84:	6087      	str	r7, [r0, #8]
 8002a86:	f891 c005 	ldrb.w	ip, [r1, #5]
 8002a8a:	6887      	ldr	r7, [r0, #8]
 8002a8c:	fa0c fc03 	lsl.w	ip, ip, r3
 8002a90:	ea4c 0707 	orr.w	r7, ip, r7
 8002a94:	6087      	str	r7, [r0, #8]
 8002a96:	bf00      	nop
 8002a98:	8887      	ldrh	r7, [r0, #4]
 8002a9a:	b2bf      	uxth	r7, r7
 8002a9c:	ea27 0404 	bic.w	r4, r7, r4
 8002aa0:	8084      	strh	r4, [r0, #4]
 8002aa2:	798c      	ldrb	r4, [r1, #6]
 8002aa4:	8887      	ldrh	r7, [r0, #4]
 8002aa6:	4094      	lsls	r4, r2
 8002aa8:	433c      	orrs	r4, r7
 8002aaa:	b2a4      	uxth	r4, r4
 8002aac:	8084      	strh	r4, [r0, #4]
 8002aae:	2403      	movs	r4, #3
 8002ab0:	6807      	ldr	r7, [r0, #0]
 8002ab2:	409c      	lsls	r4, r3
 8002ab4:	43e4      	mvns	r4, r4
 8002ab6:	4027      	ands	r7, r4
 8002ab8:	6007      	str	r7, [r0, #0]
 8002aba:	6807      	ldr	r7, [r0, #0]
 8002abc:	409d      	lsls	r5, r3
 8002abe:	433d      	orrs	r5, r7
 8002ac0:	6005      	str	r5, [r0, #0]
 8002ac2:	68c5      	ldr	r5, [r0, #12]
 8002ac4:	402c      	ands	r4, r5
 8002ac6:	79cd      	ldrb	r5, [r1, #7]
 8002ac8:	409d      	lsls	r5, r3
 8002aca:	432c      	orrs	r4, r5
 8002acc:	60c4      	str	r4, [r0, #12]
 8002ace:	3201      	adds	r2, #1
 8002ad0:	2a10      	cmp	r2, #16
 8002ad2:	f103 0302 	add.w	r3, r3, #2
 8002ad6:	d1c2      	bne.n	8002a5e <GPIO_Init+0x10>
 8002ad8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002ada <GPIO_SetBits>:
 8002ada:	bf00      	nop
 8002adc:	bf00      	nop
 8002ade:	6181      	str	r1, [r0, #24]
 8002ae0:	4770      	bx	lr

08002ae2 <GPIO_ResetBits>:
 8002ae2:	bf00      	nop
 8002ae4:	bf00      	nop
 8002ae6:	8501      	strh	r1, [r0, #40]	; 0x28
 8002ae8:	4770      	bx	lr

08002aea <GPIO_PinAFConfig>:
 8002aea:	b510      	push	{r4, lr}
 8002aec:	bf00      	nop
 8002aee:	bf00      	nop
 8002af0:	bf00      	nop
 8002af2:	f001 0307 	and.w	r3, r1, #7
 8002af6:	08c9      	lsrs	r1, r1, #3
 8002af8:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002afc:	009b      	lsls	r3, r3, #2
 8002afe:	6a04      	ldr	r4, [r0, #32]
 8002b00:	210f      	movs	r1, #15
 8002b02:	4099      	lsls	r1, r3
 8002b04:	ea24 0101 	bic.w	r1, r4, r1
 8002b08:	6201      	str	r1, [r0, #32]
 8002b0a:	6a01      	ldr	r1, [r0, #32]
 8002b0c:	fa02 f303 	lsl.w	r3, r2, r3
 8002b10:	430b      	orrs	r3, r1
 8002b12:	6203      	str	r3, [r0, #32]
 8002b14:	bd10      	pop	{r4, pc}
	...

08002b18 <gpio_init>:
 8002b18:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002b1c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002b20:	2101      	movs	r1, #1
 8002b22:	f7ff f987 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 8002b26:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002b2a:	2101      	movs	r1, #1
 8002b2c:	f7ff f982 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 8002b30:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002b34:	2101      	movs	r1, #1
 8002b36:	f7ff f97d 	bl	8001e34 <RCC_AHBPeriphClockCmd>
 8002b3a:	2400      	movs	r4, #0
 8002b3c:	2503      	movs	r5, #3
 8002b3e:	2601      	movs	r6, #1
 8002b40:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8002b44:	4669      	mov	r1, sp
 8002b46:	4825      	ldr	r0, [pc, #148]	; (8002bdc <gpio_init+0xc4>)
 8002b48:	f8cd 8000 	str.w	r8, [sp]
 8002b4c:	f88d 6004 	strb.w	r6, [sp, #4]
 8002b50:	f88d 4006 	strb.w	r4, [sp, #6]
 8002b54:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b58:	f88d 4007 	strb.w	r4, [sp, #7]
 8002b5c:	f7ff ff77 	bl	8002a4e <GPIO_Init>
 8002b60:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8002b64:	4669      	mov	r1, sp
 8002b66:	481e      	ldr	r0, [pc, #120]	; (8002be0 <gpio_init+0xc8>)
 8002b68:	9300      	str	r3, [sp, #0]
 8002b6a:	f88d 6004 	strb.w	r6, [sp, #4]
 8002b6e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002b72:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b76:	f88d 4007 	strb.w	r4, [sp, #7]
 8002b7a:	f7ff ff68 	bl	8002a4e <GPIO_Init>
 8002b7e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002b82:	4669      	mov	r1, sp
 8002b84:	4815      	ldr	r0, [pc, #84]	; (8002bdc <gpio_init+0xc4>)
 8002b86:	9300      	str	r3, [sp, #0]
 8002b88:	4f16      	ldr	r7, [pc, #88]	; (8002be4 <gpio_init+0xcc>)
 8002b8a:	f88d 4004 	strb.w	r4, [sp, #4]
 8002b8e:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b92:	f88d 4007 	strb.w	r4, [sp, #7]
 8002b96:	f7ff ff5a 	bl	8002a4e <GPIO_Init>
 8002b9a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002b9e:	9300      	str	r3, [sp, #0]
 8002ba0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002ba4:	2302      	movs	r3, #2
 8002ba6:	4669      	mov	r1, sp
 8002ba8:	f88d 3007 	strb.w	r3, [sp, #7]
 8002bac:	603c      	str	r4, [r7, #0]
 8002bae:	f88d 4004 	strb.w	r4, [sp, #4]
 8002bb2:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bb6:	f7ff ff4a 	bl	8002a4e <GPIO_Init>
 8002bba:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002bbe:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002bc2:	8a1b      	ldrh	r3, [r3, #16]
 8002bc4:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002bc8:	4b04      	ldr	r3, [pc, #16]	; (8002bdc <gpio_init+0xc4>)
 8002bca:	bf18      	it	ne
 8002bcc:	603e      	strne	r6, [r7, #0]
 8002bce:	f8c3 8018 	str.w	r8, [r3, #24]
 8002bd2:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
 8002bd6:	b002      	add	sp, #8
 8002bd8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002bdc:	48000400 	.word	0x48000400
 8002be0:	48000800 	.word	0x48000800
 8002be4:	200014fc 	.word	0x200014fc

08002be8 <led_on>:
 8002be8:	0402      	lsls	r2, r0, #16
 8002bea:	d503      	bpl.n	8002bf4 <led_on+0xc>
 8002bec:	4b05      	ldr	r3, [pc, #20]	; (8002c04 <led_on+0x1c>)
 8002bee:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002bf2:	619a      	str	r2, [r3, #24]
 8002bf4:	0483      	lsls	r3, r0, #18
 8002bf6:	d503      	bpl.n	8002c00 <led_on+0x18>
 8002bf8:	4b03      	ldr	r3, [pc, #12]	; (8002c08 <led_on+0x20>)
 8002bfa:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002bfe:	851a      	strh	r2, [r3, #40]	; 0x28
 8002c00:	4770      	bx	lr
 8002c02:	bf00      	nop
 8002c04:	48000400 	.word	0x48000400
 8002c08:	48000800 	.word	0x48000800

08002c0c <led_off>:
 8002c0c:	0403      	lsls	r3, r0, #16
 8002c0e:	d503      	bpl.n	8002c18 <led_off+0xc>
 8002c10:	4b05      	ldr	r3, [pc, #20]	; (8002c28 <led_off+0x1c>)
 8002c12:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002c16:	851a      	strh	r2, [r3, #40]	; 0x28
 8002c18:	0481      	lsls	r1, r0, #18
 8002c1a:	d503      	bpl.n	8002c24 <led_off+0x18>
 8002c1c:	4b03      	ldr	r3, [pc, #12]	; (8002c2c <led_off+0x20>)
 8002c1e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002c22:	619a      	str	r2, [r3, #24]
 8002c24:	4770      	bx	lr
 8002c26:	bf00      	nop
 8002c28:	48000400 	.word	0x48000400
 8002c2c:	48000800 	.word	0x48000800

08002c30 <get_key>:
 8002c30:	4b02      	ldr	r3, [pc, #8]	; (8002c3c <get_key+0xc>)
 8002c32:	8a18      	ldrh	r0, [r3, #16]
 8002c34:	43c0      	mvns	r0, r0
 8002c36:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002c3a:	4770      	bx	lr
 8002c3c:	48000400 	.word	0x48000400

08002c40 <get_mode_jumper>:
 8002c40:	4b01      	ldr	r3, [pc, #4]	; (8002c48 <get_mode_jumper+0x8>)
 8002c42:	6818      	ldr	r0, [r3, #0]
 8002c44:	4770      	bx	lr
 8002c46:	bf00      	nop
 8002c48:	200014fc 	.word	0x200014fc

08002c4c <Default_Handler>:
 8002c4c:	4668      	mov	r0, sp
 8002c4e:	f020 0107 	bic.w	r1, r0, #7
 8002c52:	468d      	mov	sp, r1
 8002c54:	bf00      	nop
 8002c56:	e7fd      	b.n	8002c54 <Default_Handler+0x8>

08002c58 <HardFault_Handler>:
 8002c58:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002c5c:	f7ff ffc4 	bl	8002be8 <led_on>
 8002c60:	4b06      	ldr	r3, [pc, #24]	; (8002c7c <HardFault_Handler+0x24>)
 8002c62:	3b01      	subs	r3, #1
 8002c64:	d001      	beq.n	8002c6a <HardFault_Handler+0x12>
 8002c66:	bf00      	nop
 8002c68:	e7fb      	b.n	8002c62 <HardFault_Handler+0xa>
 8002c6a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002c6e:	f7ff ffcd 	bl	8002c0c <led_off>
 8002c72:	4b02      	ldr	r3, [pc, #8]	; (8002c7c <HardFault_Handler+0x24>)
 8002c74:	3b01      	subs	r3, #1
 8002c76:	d0ef      	beq.n	8002c58 <HardFault_Handler>
 8002c78:	bf00      	nop
 8002c7a:	e7fb      	b.n	8002c74 <HardFault_Handler+0x1c>
 8002c7c:	00989681 	.word	0x00989681

08002c80 <_reset_init>:
 8002c80:	4a0e      	ldr	r2, [pc, #56]	; (8002cbc <_reset_init+0x3c>)
 8002c82:	480f      	ldr	r0, [pc, #60]	; (8002cc0 <_reset_init+0x40>)
 8002c84:	1a80      	subs	r0, r0, r2
 8002c86:	1080      	asrs	r0, r0, #2
 8002c88:	2300      	movs	r3, #0
 8002c8a:	4283      	cmp	r3, r0
 8002c8c:	d006      	beq.n	8002c9c <_reset_init+0x1c>
 8002c8e:	490d      	ldr	r1, [pc, #52]	; (8002cc4 <_reset_init+0x44>)
 8002c90:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002c94:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002c98:	3301      	adds	r3, #1
 8002c9a:	e7f6      	b.n	8002c8a <_reset_init+0xa>
 8002c9c:	4b0a      	ldr	r3, [pc, #40]	; (8002cc8 <_reset_init+0x48>)
 8002c9e:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002ca2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002ca6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002caa:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002cae:	685a      	ldr	r2, [r3, #4]
 8002cb0:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002cb4:	605a      	str	r2, [r3, #4]
 8002cb6:	f7fe bf1d 	b.w	8001af4 <main>
 8002cba:	bf00      	nop
 8002cbc:	20000000 	.word	0x20000000
 8002cc0:	200001e4 	.word	0x200001e4
 8002cc4:	08002d90 	.word	0x08002d90
 8002cc8:	e000ed00 	.word	0xe000ed00

08002ccc <_init>:
 8002ccc:	e1a0c00d 	mov	ip, sp
 8002cd0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002cd4:	e24cb004 	sub	fp, ip, #4
 8002cd8:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002cdc:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002ce0:	e12fff1e 	bx	lr

08002ce4 <_fini>:
 8002ce4:	e1a0c00d 	mov	ip, sp
 8002ce8:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002cec:	e24cb004 	sub	fp, ip, #4
 8002cf0:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002cf4:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002cf8:	e12fff1e 	bx	lr
 8002cfc:	69647473 	.word	0x69647473
 8002d00:	6e69206f 	.word	0x6e69206f
 8002d04:	64207469 	.word	0x64207469
 8002d08:	0a656e6f 	.word	0x0a656e6f
 8002d0c:	00          	.byte	0x00
 8002d0d:	65          	.byte	0x65
 8002d0e:	7272      	.short	0x7272
 8002d10:	6320726f 	.word	0x6320726f
 8002d14:	2065646f 	.word	0x2065646f
 8002d18:	253a7525 	.word	0x253a7525
 8002d1c:	0a75      	.short	0x0a75
 8002d1e:	00          	.byte	0x00
 8002d1f:	3e          	.byte	0x3e
 8002d20:	000a3e3e 	.word	0x000a3e3e
 8002d24:	25206925 	.word	0x25206925
 8002d28:	69252069 	.word	0x69252069
 8002d2c:	20692520 	.word	0x20692520
 8002d30:	000a0a00 	.word	0x000a0a00
 8002d34:	6c65770a 	.word	0x6c65770a
 8002d38:	656d6f63 	.word	0x656d6f63
 8002d3c:	206f7420 	.word	0x206f7420
 8002d40:	757a7553 	.word	0x757a7553
 8002d44:	534f6168 	.word	0x534f6168
 8002d48:	5e5f5e20 	.word	0x5e5f5e20
 8002d4c:	302e3220 	.word	0x302e3220
 8002d50:	420a362e 	.word	0x420a362e
 8002d54:	444c4955 	.word	0x444c4955
 8002d58:	72704120 	.word	0x72704120
 8002d5c:	20393220 	.word	0x20393220
 8002d60:	36313032 	.word	0x36313032
 8002d64:	3a363120 	.word	0x3a363120
 8002d68:	353a3132 	.word	0x353a3132
 8002d6c:	6d000a34 	.word	0x6d000a34
 8002d70:	2065646f 	.word	0x2065646f
 8002d74:	7525203d 	.word	0x7525203d
 8002d78:	7973000a 	.word	0x7973000a
 8002d7c:	6d657473 	.word	0x6d657473
 8002d80:	6f626120 	.word	0x6f626120
 8002d84:	64657472 	.word	0x64657472
 8002d88:	0000000a 	.word	0x0000000a

08002d8c <__EH_FRAME_BEGIN__>:
 8002d8c:	00000000                                ....
