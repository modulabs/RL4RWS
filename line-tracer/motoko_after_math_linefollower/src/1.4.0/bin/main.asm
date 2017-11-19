
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
 80001a0:	200001ac 	.word	0x200001ac
 80001a4:	20000164 	.word	0x20000164

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f002 f8af 	bl	800230c <sleep>
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
 800020c:	20000164 	.word	0x20000164
 8000210:	200001ac 	.word	0x200001ac

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
 8000254:	200001ac 	.word	0x200001ac
 8000258:	20000164 	.word	0x20000164

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
 800027c:	200001ac 	.word	0x200001ac

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f002 f831 	bl	80022e8 <sys_tick_init>
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
 80002f8:	20000164 	.word	0x20000164
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
 8000334:	20000164 	.word	0x20000164
 8000338:	200001ac 	.word	0x200001ac
 800033c:	080001a9 	.word	0x080001a9
 8000340:	200001b0 	.word	0x200001b0

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
 8000384:	20000164 	.word	0x20000164

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
 80003a8:	20000164 	.word	0x20000164

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
 80003d8:	20000230 	.word	0x20000230
 80003dc:	20000248 	.word	0x20000248

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 fd53 	bl	8001e98 <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	20000288 	.word	0x20000288

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
 8000424:	20000294 	.word	0x20000294

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
 8000574:	20000290 	.word	0x20000290

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
 80005b4:	20000288 	.word	0x20000288
 80005b8:	2000028c 	.word	0x2000028c
 80005bc:	20000294 	.word	0x20000294
 80005c0:	20000290 	.word	0x20000290
 80005c4:	08002820 	.word	0x08002820

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

08000638 <lsm9ds0_read>:
 8000638:	b538      	push	{r3, r4, r5, lr}
 800063a:	2128      	movs	r1, #40	; 0x28
 800063c:	20d4      	movs	r0, #212	; 0xd4
 800063e:	f001 fdb8 	bl	80021b2 <i2c_read_reg>
 8000642:	2129      	movs	r1, #41	; 0x29
 8000644:	4605      	mov	r5, r0
 8000646:	20d4      	movs	r0, #212	; 0xd4
 8000648:	f001 fdb3 	bl	80021b2 <i2c_read_reg>
 800064c:	4c38      	ldr	r4, [pc, #224]	; (8000730 <lsm9ds0_read+0xf8>)
 800064e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000652:	81a0      	strh	r0, [r4, #12]
 8000654:	212a      	movs	r1, #42	; 0x2a
 8000656:	20d4      	movs	r0, #212	; 0xd4
 8000658:	f001 fdab 	bl	80021b2 <i2c_read_reg>
 800065c:	212b      	movs	r1, #43	; 0x2b
 800065e:	4605      	mov	r5, r0
 8000660:	20d4      	movs	r0, #212	; 0xd4
 8000662:	f001 fda6 	bl	80021b2 <i2c_read_reg>
 8000666:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800066a:	81e0      	strh	r0, [r4, #14]
 800066c:	212c      	movs	r1, #44	; 0x2c
 800066e:	20d4      	movs	r0, #212	; 0xd4
 8000670:	f001 fd9f 	bl	80021b2 <i2c_read_reg>
 8000674:	212d      	movs	r1, #45	; 0x2d
 8000676:	4605      	mov	r5, r0
 8000678:	20d4      	movs	r0, #212	; 0xd4
 800067a:	f001 fd9a 	bl	80021b2 <i2c_read_reg>
 800067e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000682:	8220      	strh	r0, [r4, #16]
 8000684:	2108      	movs	r1, #8
 8000686:	203c      	movs	r0, #60	; 0x3c
 8000688:	f001 fd93 	bl	80021b2 <i2c_read_reg>
 800068c:	2109      	movs	r1, #9
 800068e:	4605      	mov	r5, r0
 8000690:	203c      	movs	r0, #60	; 0x3c
 8000692:	f001 fd8e 	bl	80021b2 <i2c_read_reg>
 8000696:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800069a:	80e0      	strh	r0, [r4, #6]
 800069c:	210a      	movs	r1, #10
 800069e:	203c      	movs	r0, #60	; 0x3c
 80006a0:	f001 fd87 	bl	80021b2 <i2c_read_reg>
 80006a4:	210b      	movs	r1, #11
 80006a6:	4605      	mov	r5, r0
 80006a8:	203c      	movs	r0, #60	; 0x3c
 80006aa:	f001 fd82 	bl	80021b2 <i2c_read_reg>
 80006ae:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006b2:	8120      	strh	r0, [r4, #8]
 80006b4:	210c      	movs	r1, #12
 80006b6:	203c      	movs	r0, #60	; 0x3c
 80006b8:	f001 fd7b 	bl	80021b2 <i2c_read_reg>
 80006bc:	210d      	movs	r1, #13
 80006be:	4605      	mov	r5, r0
 80006c0:	203c      	movs	r0, #60	; 0x3c
 80006c2:	f001 fd76 	bl	80021b2 <i2c_read_reg>
 80006c6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ca:	8160      	strh	r0, [r4, #10]
 80006cc:	2128      	movs	r1, #40	; 0x28
 80006ce:	203c      	movs	r0, #60	; 0x3c
 80006d0:	f001 fd6f 	bl	80021b2 <i2c_read_reg>
 80006d4:	2129      	movs	r1, #41	; 0x29
 80006d6:	4605      	mov	r5, r0
 80006d8:	203c      	movs	r0, #60	; 0x3c
 80006da:	f001 fd6a 	bl	80021b2 <i2c_read_reg>
 80006de:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006e2:	8020      	strh	r0, [r4, #0]
 80006e4:	212a      	movs	r1, #42	; 0x2a
 80006e6:	203c      	movs	r0, #60	; 0x3c
 80006e8:	f001 fd63 	bl	80021b2 <i2c_read_reg>
 80006ec:	212b      	movs	r1, #43	; 0x2b
 80006ee:	4605      	mov	r5, r0
 80006f0:	203c      	movs	r0, #60	; 0x3c
 80006f2:	f001 fd5e 	bl	80021b2 <i2c_read_reg>
 80006f6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006fa:	8060      	strh	r0, [r4, #2]
 80006fc:	212c      	movs	r1, #44	; 0x2c
 80006fe:	203c      	movs	r0, #60	; 0x3c
 8000700:	f001 fd57 	bl	80021b2 <i2c_read_reg>
 8000704:	212d      	movs	r1, #45	; 0x2d
 8000706:	4605      	mov	r5, r0
 8000708:	203c      	movs	r0, #60	; 0x3c
 800070a:	f001 fd52 	bl	80021b2 <i2c_read_reg>
 800070e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000712:	80a0      	strh	r0, [r4, #4]
 8000714:	2105      	movs	r1, #5
 8000716:	203c      	movs	r0, #60	; 0x3c
 8000718:	f001 fd4b 	bl	80021b2 <i2c_read_reg>
 800071c:	2106      	movs	r1, #6
 800071e:	4605      	mov	r5, r0
 8000720:	203c      	movs	r0, #60	; 0x3c
 8000722:	f001 fd46 	bl	80021b2 <i2c_read_reg>
 8000726:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800072a:	8320      	strh	r0, [r4, #24]
 800072c:	bd38      	pop	{r3, r4, r5, pc}
 800072e:	bf00      	nop
 8000730:	20000298 	.word	0x20000298

08000734 <lsm9ds0_init>:
 8000734:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000738:	4d34      	ldr	r5, [pc, #208]	; (800080c <lsm9ds0_init+0xd8>)
 800073a:	2400      	movs	r4, #0
 800073c:	20d4      	movs	r0, #212	; 0xd4
 800073e:	210f      	movs	r1, #15
 8000740:	802c      	strh	r4, [r5, #0]
 8000742:	806c      	strh	r4, [r5, #2]
 8000744:	80ac      	strh	r4, [r5, #4]
 8000746:	80ec      	strh	r4, [r5, #6]
 8000748:	812c      	strh	r4, [r5, #8]
 800074a:	816c      	strh	r4, [r5, #10]
 800074c:	81ac      	strh	r4, [r5, #12]
 800074e:	81ec      	strh	r4, [r5, #14]
 8000750:	822c      	strh	r4, [r5, #16]
 8000752:	826c      	strh	r4, [r5, #18]
 8000754:	82ac      	strh	r4, [r5, #20]
 8000756:	82ec      	strh	r4, [r5, #22]
 8000758:	832c      	strh	r4, [r5, #24]
 800075a:	f001 fd2a 	bl	80021b2 <i2c_read_reg>
 800075e:	28d4      	cmp	r0, #212	; 0xd4
 8000760:	4606      	mov	r6, r0
 8000762:	d14e      	bne.n	8000802 <lsm9ds0_init+0xce>
 8000764:	203c      	movs	r0, #60	; 0x3c
 8000766:	210f      	movs	r1, #15
 8000768:	f001 fd23 	bl	80021b2 <i2c_read_reg>
 800076c:	2849      	cmp	r0, #73	; 0x49
 800076e:	bf18      	it	ne
 8000770:	2602      	movne	r6, #2
 8000772:	d147      	bne.n	8000804 <lsm9ds0_init+0xd0>
 8000774:	4630      	mov	r0, r6
 8000776:	2120      	movs	r1, #32
 8000778:	22ff      	movs	r2, #255	; 0xff
 800077a:	f001 fd07 	bl	800218c <i2c_write_reg>
 800077e:	4630      	mov	r0, r6
 8000780:	2123      	movs	r1, #35	; 0x23
 8000782:	2218      	movs	r2, #24
 8000784:	f001 fd02 	bl	800218c <i2c_write_reg>
 8000788:	203c      	movs	r0, #60	; 0x3c
 800078a:	211f      	movs	r1, #31
 800078c:	4622      	mov	r2, r4
 800078e:	f001 fcfd 	bl	800218c <i2c_write_reg>
 8000792:	203c      	movs	r0, #60	; 0x3c
 8000794:	2120      	movs	r1, #32
 8000796:	2267      	movs	r2, #103	; 0x67
 8000798:	f001 fcf8 	bl	800218c <i2c_write_reg>
 800079c:	203c      	movs	r0, #60	; 0x3c
 800079e:	2121      	movs	r1, #33	; 0x21
 80007a0:	4622      	mov	r2, r4
 80007a2:	f001 fcf3 	bl	800218c <i2c_write_reg>
 80007a6:	203c      	movs	r0, #60	; 0x3c
 80007a8:	2124      	movs	r1, #36	; 0x24
 80007aa:	22f4      	movs	r2, #244	; 0xf4
 80007ac:	f001 fcee 	bl	800218c <i2c_write_reg>
 80007b0:	203c      	movs	r0, #60	; 0x3c
 80007b2:	2125      	movs	r1, #37	; 0x25
 80007b4:	4622      	mov	r2, r4
 80007b6:	f001 fce9 	bl	800218c <i2c_write_reg>
 80007ba:	203c      	movs	r0, #60	; 0x3c
 80007bc:	2126      	movs	r1, #38	; 0x26
 80007be:	2280      	movs	r2, #128	; 0x80
 80007c0:	f001 fce4 	bl	800218c <i2c_write_reg>
 80007c4:	f7ff ff38 	bl	8000638 <lsm9ds0_read>
 80007c8:	2664      	movs	r6, #100	; 0x64
 80007ca:	4627      	mov	r7, r4
 80007cc:	46a0      	mov	r8, r4
 80007ce:	f7ff ff33 	bl	8000638 <lsm9ds0_read>
 80007d2:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 80007d6:	4b0d      	ldr	r3, [pc, #52]	; (800080c <lsm9ds0_init+0xd8>)
 80007d8:	4490      	add	r8, r2
 80007da:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 80007de:	4417      	add	r7, r2
 80007e0:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 80007e4:	3e01      	subs	r6, #1
 80007e6:	4414      	add	r4, r2
 80007e8:	d1f1      	bne.n	80007ce <lsm9ds0_init+0x9a>
 80007ea:	2264      	movs	r2, #100	; 0x64
 80007ec:	fb98 f8f2 	sdiv	r8, r8, r2
 80007f0:	fb97 f7f2 	sdiv	r7, r7, r2
 80007f4:	fb94 f4f2 	sdiv	r4, r4, r2
 80007f8:	f8a3 8012 	strh.w	r8, [r3, #18]
 80007fc:	829f      	strh	r7, [r3, #20]
 80007fe:	82dc      	strh	r4, [r3, #22]
 8000800:	e000      	b.n	8000804 <lsm9ds0_init+0xd0>
 8000802:	2601      	movs	r6, #1
 8000804:	4630      	mov	r0, r6
 8000806:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800080a:	bf00      	nop
 800080c:	20000298 	.word	0x20000298

08000810 <m_abs>:
 8000810:	ee07 0a90 	vmov	s15, r0
 8000814:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000818:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800081c:	bf48      	it	mi
 800081e:	eef1 7a67 	vnegmi.f32	s15, s15
 8000822:	ee17 0a90 	vmov	r0, s15
 8000826:	4770      	bx	lr

08000828 <m_saturate>:
 8000828:	ee07 0a90 	vmov	s15, r0
 800082c:	ee06 1a90 	vmov	s13, r1
 8000830:	eef4 7a66 	vcmp.f32	s15, s13
 8000834:	ee07 2a10 	vmov	s14, r2
 8000838:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800083c:	bf48      	it	mi
 800083e:	eef0 7a66 	vmovmi.f32	s15, s13
 8000842:	eef4 7a47 	vcmp.f32	s15, s14
 8000846:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800084a:	bfcc      	ite	gt
 800084c:	ee17 0a10 	vmovgt	r0, s14
 8000850:	ee17 0a90 	vmovle	r0, s15
 8000854:	4770      	bx	lr

08000856 <m_min>:
 8000856:	ee07 0a10 	vmov	s14, r0
 800085a:	ee07 1a90 	vmov	s15, r1
 800085e:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000862:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000866:	bf54      	ite	pl
 8000868:	ee17 0a90 	vmovpl	r0, s15
 800086c:	ee17 0a10 	vmovmi	r0, s14
 8000870:	4770      	bx	lr
	...

08000874 <TIM2_IRQHandler>:
 8000874:	4b21      	ldr	r3, [pc, #132]	; (80008fc <TIM2_IRQHandler+0x88>)
 8000876:	4a22      	ldr	r2, [pc, #136]	; (8000900 <TIM2_IRQHandler+0x8c>)
 8000878:	6819      	ldr	r1, [r3, #0]
 800087a:	2901      	cmp	r1, #1
 800087c:	b510      	push	{r4, lr}
 800087e:	d011      	beq.n	80008a4 <TIM2_IRQHandler+0x30>
 8000880:	d306      	bcc.n	8000890 <TIM2_IRQHandler+0x1c>
 8000882:	2902      	cmp	r1, #2
 8000884:	d113      	bne.n	80008ae <TIM2_IRQHandler+0x3a>
 8000886:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800088a:	8511      	strh	r1, [r2, #40]	; 0x28
 800088c:	2204      	movs	r2, #4
 800088e:	e023      	b.n	80008d8 <TIM2_IRQHandler+0x64>
 8000890:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000894:	8511      	strh	r1, [r2, #40]	; 0x28
 8000896:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800089a:	6191      	str	r1, [r2, #24]
 800089c:	2201      	movs	r2, #1
 800089e:	601a      	str	r2, [r3, #0]
 80008a0:	609a      	str	r2, [r3, #8]
 80008a2:	e023      	b.n	80008ec <TIM2_IRQHandler+0x78>
 80008a4:	f44f 7180 	mov.w	r1, #256	; 0x100
 80008a8:	6191      	str	r1, [r2, #24]
 80008aa:	2202      	movs	r2, #2
 80008ac:	e014      	b.n	80008d8 <TIM2_IRQHandler+0x64>
 80008ae:	f011 0f01 	tst.w	r1, #1
 80008b2:	4814      	ldr	r0, [pc, #80]	; (8000904 <TIM2_IRQHandler+0x90>)
 80008b4:	f101 0401 	add.w	r4, r1, #1
 80008b8:	d010      	beq.n	80008dc <TIM2_IRQHandler+0x68>
 80008ba:	3904      	subs	r1, #4
 80008bc:	f021 0101 	bic.w	r1, r1, #1
 80008c0:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80008c2:	4419      	add	r1, r3
 80008c4:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80008c8:	8288      	strh	r0, [r1, #20]
 80008ca:	f44f 7180 	mov.w	r1, #256	; 0x100
 80008ce:	8511      	strh	r1, [r2, #40]	; 0x28
 80008d0:	d201      	bcs.n	80008d6 <TIM2_IRQHandler+0x62>
 80008d2:	601c      	str	r4, [r3, #0]
 80008d4:	e00a      	b.n	80008ec <TIM2_IRQHandler+0x78>
 80008d6:	2200      	movs	r2, #0
 80008d8:	601a      	str	r2, [r3, #0]
 80008da:	e007      	b.n	80008ec <TIM2_IRQHandler+0x78>
 80008dc:	f44f 7180 	mov.w	r1, #256	; 0x100
 80008e0:	6191      	str	r1, [r2, #24]
 80008e2:	601c      	str	r4, [r3, #0]
 80008e4:	6883      	ldr	r3, [r0, #8]
 80008e6:	f043 0304 	orr.w	r3, r3, #4
 80008ea:	6083      	str	r3, [r0, #8]
 80008ec:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80008f0:	2101      	movs	r1, #1
 80008f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80008f6:	f001 b95a 	b.w	8001bae <TIM_ClearITPendingBit>
 80008fa:	bf00      	nop
 80008fc:	200002b4 	.word	0x200002b4
 8000900:	48000400 	.word	0x48000400
 8000904:	50000500 	.word	0x50000500

08000908 <rgb_i2c_delay>:
 8000908:	bf00      	nop
 800090a:	4770      	bx	lr

0800090c <RGBSetLowSDA>:
 800090c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800090e:	4f15      	ldr	r7, [pc, #84]	; (8000964 <RGBSetLowSDA+0x58>)
 8000910:	783b      	ldrb	r3, [r7, #0]
 8000912:	2401      	movs	r4, #1
 8000914:	2603      	movs	r6, #3
 8000916:	2500      	movs	r5, #0
 8000918:	4669      	mov	r1, sp
 800091a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800091e:	9300      	str	r3, [sp, #0]
 8000920:	f88d 5007 	strb.w	r5, [sp, #7]
 8000924:	f88d 4004 	strb.w	r4, [sp, #4]
 8000928:	f88d 6005 	strb.w	r6, [sp, #5]
 800092c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000930:	f001 fe3f 	bl	80025b2 <GPIO_Init>
 8000934:	783a      	ldrb	r2, [r7, #0]
 8000936:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800093a:	4669      	mov	r1, sp
 800093c:	851a      	strh	r2, [r3, #40]	; 0x28
 800093e:	f88d 5007 	strb.w	r5, [sp, #7]
 8000942:	4d09      	ldr	r5, [pc, #36]	; (8000968 <RGBSetLowSDA+0x5c>)
 8000944:	9400      	str	r4, [sp, #0]
 8000946:	4628      	mov	r0, r5
 8000948:	f88d 4004 	strb.w	r4, [sp, #4]
 800094c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000950:	f88d 4006 	strb.w	r4, [sp, #6]
 8000954:	f001 fe2d 	bl	80025b2 <GPIO_Init>
 8000958:	852c      	strh	r4, [r5, #40]	; 0x28
 800095a:	f7ff ffd5 	bl	8000908 <rgb_i2c_delay>
 800095e:	b003      	add	sp, #12
 8000960:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000962:	bf00      	nop
 8000964:	20000522 	.word	0x20000522
 8000968:	48000400 	.word	0x48000400

0800096c <RGBSetHighSDA>:
 800096c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800096e:	4d13      	ldr	r5, [pc, #76]	; (80009bc <RGBSetHighSDA+0x50>)
 8000970:	782b      	ldrb	r3, [r5, #0]
 8000972:	2400      	movs	r4, #0
 8000974:	2603      	movs	r6, #3
 8000976:	4669      	mov	r1, sp
 8000978:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800097c:	9300      	str	r3, [sp, #0]
 800097e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000982:	f88d 4007 	strb.w	r4, [sp, #7]
 8000986:	f88d 6005 	strb.w	r6, [sp, #5]
 800098a:	f001 fe12 	bl	80025b2 <GPIO_Init>
 800098e:	782a      	ldrb	r2, [r5, #0]
 8000990:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000994:	2501      	movs	r5, #1
 8000996:	619a      	str	r2, [r3, #24]
 8000998:	f88d 4004 	strb.w	r4, [sp, #4]
 800099c:	f88d 4007 	strb.w	r4, [sp, #7]
 80009a0:	4c07      	ldr	r4, [pc, #28]	; (80009c0 <RGBSetHighSDA+0x54>)
 80009a2:	9500      	str	r5, [sp, #0]
 80009a4:	4620      	mov	r0, r4
 80009a6:	4669      	mov	r1, sp
 80009a8:	f88d 6005 	strb.w	r6, [sp, #5]
 80009ac:	f001 fe01 	bl	80025b2 <GPIO_Init>
 80009b0:	61a5      	str	r5, [r4, #24]
 80009b2:	f7ff ffa9 	bl	8000908 <rgb_i2c_delay>
 80009b6:	b002      	add	sp, #8
 80009b8:	bd70      	pop	{r4, r5, r6, pc}
 80009ba:	bf00      	nop
 80009bc:	20000522 	.word	0x20000522
 80009c0:	48000400 	.word	0x48000400

080009c4 <RGBSetLowSCL>:
 80009c4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80009c8:	f44f 7280 	mov.w	r2, #256	; 0x100
 80009cc:	851a      	strh	r2, [r3, #40]	; 0x28
 80009ce:	f7ff bf9b 	b.w	8000908 <rgb_i2c_delay>

080009d2 <RGBSetHighSCL>:
 80009d2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80009d6:	f44f 7280 	mov.w	r2, #256	; 0x100
 80009da:	619a      	str	r2, [r3, #24]
 80009dc:	f7ff bf94 	b.w	8000908 <rgb_i2c_delay>

080009e0 <rgb_i2c_init>:
 80009e0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80009e2:	4f1f      	ldr	r7, [pc, #124]	; (8000a60 <rgb_i2c_init+0x80>)
 80009e4:	2400      	movs	r4, #0
 80009e6:	2501      	movs	r5, #1
 80009e8:	2603      	movs	r6, #3
 80009ea:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009ee:	4669      	mov	r1, sp
 80009f0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80009f4:	9300      	str	r3, [sp, #0]
 80009f6:	f88d 4006 	strb.w	r4, [sp, #6]
 80009fa:	f88d 4007 	strb.w	r4, [sp, #7]
 80009fe:	f88d 5004 	strb.w	r5, [sp, #4]
 8000a02:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a06:	f001 fdd4 	bl	80025b2 <GPIO_Init>
 8000a0a:	783b      	ldrb	r3, [r7, #0]
 8000a0c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a10:	4669      	mov	r1, sp
 8000a12:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a16:	9300      	str	r3, [sp, #0]
 8000a18:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a1c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a20:	f001 fdc7 	bl	80025b2 <GPIO_Init>
 8000a24:	7839      	ldrb	r1, [r7, #0]
 8000a26:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a2a:	f001 fe08 	bl	800263e <GPIO_SetBits>
 8000a2e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a32:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a36:	4c0b      	ldr	r4, [pc, #44]	; (8000a64 <rgb_i2c_init+0x84>)
 8000a38:	9500      	str	r5, [sp, #0]
 8000a3a:	4620      	mov	r0, r4
 8000a3c:	4669      	mov	r1, sp
 8000a3e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a42:	f001 fdb6 	bl	80025b2 <GPIO_Init>
 8000a46:	4620      	mov	r0, r4
 8000a48:	4629      	mov	r1, r5
 8000a4a:	f001 fdf8 	bl	800263e <GPIO_SetBits>
 8000a4e:	f7ff ffc0 	bl	80009d2 <RGBSetHighSCL>
 8000a52:	f7ff ff5b 	bl	800090c <RGBSetLowSDA>
 8000a56:	f7ff ff89 	bl	800096c <RGBSetHighSDA>
 8000a5a:	b003      	add	sp, #12
 8000a5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a5e:	bf00      	nop
 8000a60:	20000522 	.word	0x20000522
 8000a64:	48000400 	.word	0x48000400

08000a68 <rgb_i2cStart>:
 8000a68:	b508      	push	{r3, lr}
 8000a6a:	f7ff ffb2 	bl	80009d2 <RGBSetHighSCL>
 8000a6e:	f7ff ff7d 	bl	800096c <RGBSetHighSDA>
 8000a72:	f7ff ffae 	bl	80009d2 <RGBSetHighSCL>
 8000a76:	f7ff ff49 	bl	800090c <RGBSetLowSDA>
 8000a7a:	f7ff ffa3 	bl	80009c4 <RGBSetLowSCL>
 8000a7e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000a82:	f7ff bf73 	b.w	800096c <RGBSetHighSDA>

08000a86 <rgb_i2cStop>:
 8000a86:	b508      	push	{r3, lr}
 8000a88:	f7ff ff9c 	bl	80009c4 <RGBSetLowSCL>
 8000a8c:	f7ff ff3e 	bl	800090c <RGBSetLowSDA>
 8000a90:	f7ff ff9f 	bl	80009d2 <RGBSetHighSCL>
 8000a94:	f7ff ff3a 	bl	800090c <RGBSetLowSDA>
 8000a98:	f7ff ff9b 	bl	80009d2 <RGBSetHighSCL>
 8000a9c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000aa0:	f7ff bf64 	b.w	800096c <RGBSetHighSDA>

08000aa4 <rgb_i2cWrite>:
 8000aa4:	b538      	push	{r3, r4, r5, lr}
 8000aa6:	4604      	mov	r4, r0
 8000aa8:	2508      	movs	r5, #8
 8000aaa:	f7ff ff8b 	bl	80009c4 <RGBSetLowSCL>
 8000aae:	0623      	lsls	r3, r4, #24
 8000ab0:	d502      	bpl.n	8000ab8 <rgb_i2cWrite+0x14>
 8000ab2:	f7ff ff5b 	bl	800096c <RGBSetHighSDA>
 8000ab6:	e001      	b.n	8000abc <rgb_i2cWrite+0x18>
 8000ab8:	f7ff ff28 	bl	800090c <RGBSetLowSDA>
 8000abc:	3d01      	subs	r5, #1
 8000abe:	f7ff ff88 	bl	80009d2 <RGBSetHighSCL>
 8000ac2:	0064      	lsls	r4, r4, #1
 8000ac4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ac8:	b2e4      	uxtb	r4, r4
 8000aca:	d1ee      	bne.n	8000aaa <rgb_i2cWrite+0x6>
 8000acc:	f7ff ff7a 	bl	80009c4 <RGBSetLowSCL>
 8000ad0:	f7ff ff4c 	bl	800096c <RGBSetHighSDA>
 8000ad4:	f7ff ff7d 	bl	80009d2 <RGBSetHighSCL>
 8000ad8:	f7ff ff74 	bl	80009c4 <RGBSetLowSCL>
 8000adc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ae0:	f7ff bf12 	b.w	8000908 <rgb_i2c_delay>

08000ae4 <rgb_i2cRead>:
 8000ae4:	b570      	push	{r4, r5, r6, lr}
 8000ae6:	2300      	movs	r3, #0
 8000ae8:	4606      	mov	r6, r0
 8000aea:	460c      	mov	r4, r1
 8000aec:	2200      	movs	r2, #0
 8000aee:	54e2      	strb	r2, [r4, r3]
 8000af0:	3301      	adds	r3, #1
 8000af2:	2b09      	cmp	r3, #9
 8000af4:	d1fa      	bne.n	8000aec <rgb_i2cRead+0x8>
 8000af6:	f7ff ff65 	bl	80009c4 <RGBSetLowSCL>
 8000afa:	f7ff ff37 	bl	800096c <RGBSetHighSDA>
 8000afe:	2508      	movs	r5, #8
 8000b00:	2300      	movs	r3, #0
 8000b02:	5ce2      	ldrb	r2, [r4, r3]
 8000b04:	0052      	lsls	r2, r2, #1
 8000b06:	54e2      	strb	r2, [r4, r3]
 8000b08:	3301      	adds	r3, #1
 8000b0a:	2b09      	cmp	r3, #9
 8000b0c:	d1f9      	bne.n	8000b02 <rgb_i2cRead+0x1e>
 8000b0e:	f7ff ff60 	bl	80009d2 <RGBSetHighSCL>
 8000b12:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000b16:	8a1b      	ldrh	r3, [r3, #16]
 8000b18:	b29b      	uxth	r3, r3
 8000b1a:	07d8      	lsls	r0, r3, #31
 8000b1c:	d503      	bpl.n	8000b26 <rgb_i2cRead+0x42>
 8000b1e:	7822      	ldrb	r2, [r4, #0]
 8000b20:	f042 0201 	orr.w	r2, r2, #1
 8000b24:	7022      	strb	r2, [r4, #0]
 8000b26:	0799      	lsls	r1, r3, #30
 8000b28:	d503      	bpl.n	8000b32 <rgb_i2cRead+0x4e>
 8000b2a:	7862      	ldrb	r2, [r4, #1]
 8000b2c:	f042 0201 	orr.w	r2, r2, #1
 8000b30:	7062      	strb	r2, [r4, #1]
 8000b32:	075a      	lsls	r2, r3, #29
 8000b34:	d503      	bpl.n	8000b3e <rgb_i2cRead+0x5a>
 8000b36:	78a2      	ldrb	r2, [r4, #2]
 8000b38:	f042 0201 	orr.w	r2, r2, #1
 8000b3c:	70a2      	strb	r2, [r4, #2]
 8000b3e:	0718      	lsls	r0, r3, #28
 8000b40:	d503      	bpl.n	8000b4a <rgb_i2cRead+0x66>
 8000b42:	78e2      	ldrb	r2, [r4, #3]
 8000b44:	f042 0201 	orr.w	r2, r2, #1
 8000b48:	70e2      	strb	r2, [r4, #3]
 8000b4a:	06d9      	lsls	r1, r3, #27
 8000b4c:	d503      	bpl.n	8000b56 <rgb_i2cRead+0x72>
 8000b4e:	7922      	ldrb	r2, [r4, #4]
 8000b50:	f042 0201 	orr.w	r2, r2, #1
 8000b54:	7122      	strb	r2, [r4, #4]
 8000b56:	069a      	lsls	r2, r3, #26
 8000b58:	d503      	bpl.n	8000b62 <rgb_i2cRead+0x7e>
 8000b5a:	7962      	ldrb	r2, [r4, #5]
 8000b5c:	f042 0201 	orr.w	r2, r2, #1
 8000b60:	7162      	strb	r2, [r4, #5]
 8000b62:	0658      	lsls	r0, r3, #25
 8000b64:	d503      	bpl.n	8000b6e <rgb_i2cRead+0x8a>
 8000b66:	79a2      	ldrb	r2, [r4, #6]
 8000b68:	f042 0201 	orr.w	r2, r2, #1
 8000b6c:	71a2      	strb	r2, [r4, #6]
 8000b6e:	0619      	lsls	r1, r3, #24
 8000b70:	d503      	bpl.n	8000b7a <rgb_i2cRead+0x96>
 8000b72:	79e3      	ldrb	r3, [r4, #7]
 8000b74:	f043 0301 	orr.w	r3, r3, #1
 8000b78:	71e3      	strb	r3, [r4, #7]
 8000b7a:	4b0b      	ldr	r3, [pc, #44]	; (8000ba8 <rgb_i2cRead+0xc4>)
 8000b7c:	8a1b      	ldrh	r3, [r3, #16]
 8000b7e:	07da      	lsls	r2, r3, #31
 8000b80:	d503      	bpl.n	8000b8a <rgb_i2cRead+0xa6>
 8000b82:	7a23      	ldrb	r3, [r4, #8]
 8000b84:	f043 0301 	orr.w	r3, r3, #1
 8000b88:	7223      	strb	r3, [r4, #8]
 8000b8a:	f7ff ff1b 	bl	80009c4 <RGBSetLowSCL>
 8000b8e:	3d01      	subs	r5, #1
 8000b90:	d1b6      	bne.n	8000b00 <rgb_i2cRead+0x1c>
 8000b92:	b10e      	cbz	r6, 8000b98 <rgb_i2cRead+0xb4>
 8000b94:	f7ff feba 	bl	800090c <RGBSetLowSDA>
 8000b98:	f7ff ff1b 	bl	80009d2 <RGBSetHighSCL>
 8000b9c:	f7ff ff12 	bl	80009c4 <RGBSetLowSCL>
 8000ba0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ba4:	f7ff beb0 	b.w	8000908 <rgb_i2c_delay>
 8000ba8:	48000400 	.word	0x48000400

08000bac <rgb_i2c_write_reg>:
 8000bac:	b570      	push	{r4, r5, r6, lr}
 8000bae:	4605      	mov	r5, r0
 8000bb0:	460c      	mov	r4, r1
 8000bb2:	4616      	mov	r6, r2
 8000bb4:	f7ff ff58 	bl	8000a68 <rgb_i2cStart>
 8000bb8:	4628      	mov	r0, r5
 8000bba:	f7ff ff73 	bl	8000aa4 <rgb_i2cWrite>
 8000bbe:	4620      	mov	r0, r4
 8000bc0:	f7ff ff70 	bl	8000aa4 <rgb_i2cWrite>
 8000bc4:	4630      	mov	r0, r6
 8000bc6:	f7ff ff6d 	bl	8000aa4 <rgb_i2cWrite>
 8000bca:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000bce:	f7ff bf5a 	b.w	8000a86 <rgb_i2cStop>

08000bd2 <rgb_i2c_read_reg>:
 8000bd2:	b570      	push	{r4, r5, r6, lr}
 8000bd4:	4604      	mov	r4, r0
 8000bd6:	460d      	mov	r5, r1
 8000bd8:	4616      	mov	r6, r2
 8000bda:	f7ff ff45 	bl	8000a68 <rgb_i2cStart>
 8000bde:	4620      	mov	r0, r4
 8000be0:	f7ff ff60 	bl	8000aa4 <rgb_i2cWrite>
 8000be4:	4628      	mov	r0, r5
 8000be6:	f7ff ff5d 	bl	8000aa4 <rgb_i2cWrite>
 8000bea:	f7ff ff3d 	bl	8000a68 <rgb_i2cStart>
 8000bee:	f044 0001 	orr.w	r0, r4, #1
 8000bf2:	f7ff ff57 	bl	8000aa4 <rgb_i2cWrite>
 8000bf6:	4631      	mov	r1, r6
 8000bf8:	2000      	movs	r0, #0
 8000bfa:	f7ff ff73 	bl	8000ae4 <rgb_i2cRead>
 8000bfe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c02:	f7ff bf40 	b.w	8000a86 <rgb_i2cStop>
	...

08000c08 <rgb_init>:
 8000c08:	4b1d      	ldr	r3, [pc, #116]	; (8000c80 <rgb_init+0x78>)
 8000c0a:	b570      	push	{r4, r5, r6, lr}
 8000c0c:	2409      	movs	r4, #9
 8000c0e:	2200      	movs	r2, #0
 8000c10:	3c01      	subs	r4, #1
 8000c12:	801a      	strh	r2, [r3, #0]
 8000c14:	825a      	strh	r2, [r3, #18]
 8000c16:	849a      	strh	r2, [r3, #36]	; 0x24
 8000c18:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000c1c:	86da      	strh	r2, [r3, #54]	; 0x36
 8000c1e:	f103 0302 	add.w	r3, r3, #2
 8000c22:	d1f4      	bne.n	8000c0e <rgb_init+0x6>
 8000c24:	4d17      	ldr	r5, [pc, #92]	; (8000c84 <rgb_init+0x7c>)
 8000c26:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000c2a:	802e      	strh	r6, [r5, #0]
 8000c2c:	f7ff fed8 	bl	80009e0 <rgb_i2c_init>
 8000c30:	2072      	movs	r0, #114	; 0x72
 8000c32:	2181      	movs	r1, #129	; 0x81
 8000c34:	22ff      	movs	r2, #255	; 0xff
 8000c36:	f7ff ffb9 	bl	8000bac <rgb_i2c_write_reg>
 8000c3a:	2072      	movs	r0, #114	; 0x72
 8000c3c:	2183      	movs	r1, #131	; 0x83
 8000c3e:	22ff      	movs	r2, #255	; 0xff
 8000c40:	f7ff ffb4 	bl	8000bac <rgb_i2c_write_reg>
 8000c44:	2072      	movs	r0, #114	; 0x72
 8000c46:	218d      	movs	r1, #141	; 0x8d
 8000c48:	4622      	mov	r2, r4
 8000c4a:	f7ff ffaf 	bl	8000bac <rgb_i2c_write_reg>
 8000c4e:	2072      	movs	r0, #114	; 0x72
 8000c50:	2180      	movs	r1, #128	; 0x80
 8000c52:	2203      	movs	r2, #3
 8000c54:	f7ff ffaa 	bl	8000bac <rgb_i2c_write_reg>
 8000c58:	2072      	movs	r0, #114	; 0x72
 8000c5a:	218f      	movs	r1, #143	; 0x8f
 8000c5c:	2223      	movs	r2, #35	; 0x23
 8000c5e:	f7ff ffa5 	bl	8000bac <rgb_i2c_write_reg>
 8000c62:	f7ff fe83 	bl	800096c <RGBSetHighSDA>
 8000c66:	2072      	movs	r0, #114	; 0x72
 8000c68:	2180      	movs	r1, #128	; 0x80
 8000c6a:	2207      	movs	r2, #7
 8000c6c:	802c      	strh	r4, [r5, #0]
 8000c6e:	f7ff ff9d 	bl	8000bac <rgb_i2c_write_reg>
 8000c72:	2072      	movs	r0, #114	; 0x72
 8000c74:	218e      	movs	r1, #142	; 0x8e
 8000c76:	2208      	movs	r2, #8
 8000c78:	f7ff ff98 	bl	8000bac <rgb_i2c_write_reg>
 8000c7c:	802e      	strh	r6, [r5, #0]
 8000c7e:	bd70      	pop	{r4, r5, r6, pc}
 8000c80:	200004c8 	.word	0x200004c8
 8000c84:	20000522 	.word	0x20000522

08000c88 <rgb_read>:
 8000c88:	b538      	push	{r3, r4, r5, lr}
 8000c8a:	f7ff feed 	bl	8000a68 <rgb_i2cStart>
 8000c8e:	2072      	movs	r0, #114	; 0x72
 8000c90:	f7ff ff08 	bl	8000aa4 <rgb_i2cWrite>
 8000c94:	20b4      	movs	r0, #180	; 0xb4
 8000c96:	f7ff ff05 	bl	8000aa4 <rgb_i2cWrite>
 8000c9a:	f7ff fee5 	bl	8000a68 <rgb_i2cStart>
 8000c9e:	2073      	movs	r0, #115	; 0x73
 8000ca0:	f7ff ff00 	bl	8000aa4 <rgb_i2cWrite>
 8000ca4:	2001      	movs	r0, #1
 8000ca6:	4946      	ldr	r1, [pc, #280]	; (8000dc0 <rgb_read+0x138>)
 8000ca8:	f7ff ff1c 	bl	8000ae4 <rgb_i2cRead>
 8000cac:	2300      	movs	r3, #0
 8000cae:	4d45      	ldr	r5, [pc, #276]	; (8000dc4 <rgb_read+0x13c>)
 8000cb0:	4c43      	ldr	r4, [pc, #268]	; (8000dc0 <rgb_read+0x138>)
 8000cb2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000cb6:	5d19      	ldrb	r1, [r3, r4]
 8000cb8:	3301      	adds	r3, #1
 8000cba:	2b09      	cmp	r3, #9
 8000cbc:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000cbe:	d1f6      	bne.n	8000cae <rgb_read+0x26>
 8000cc0:	2001      	movs	r0, #1
 8000cc2:	4621      	mov	r1, r4
 8000cc4:	f7ff ff0e 	bl	8000ae4 <rgb_i2cRead>
 8000cc8:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000ccc:	2300      	movs	r3, #0
 8000cce:	8811      	ldrh	r1, [r2, #0]
 8000cd0:	5ce0      	ldrb	r0, [r4, r3]
 8000cd2:	3301      	adds	r3, #1
 8000cd4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000cd8:	2b09      	cmp	r3, #9
 8000cda:	f822 1b02 	strh.w	r1, [r2], #2
 8000cde:	d1f6      	bne.n	8000cce <rgb_read+0x46>
 8000ce0:	2001      	movs	r0, #1
 8000ce2:	4937      	ldr	r1, [pc, #220]	; (8000dc0 <rgb_read+0x138>)
 8000ce4:	f7ff fefe 	bl	8000ae4 <rgb_i2cRead>
 8000ce8:	2300      	movs	r3, #0
 8000cea:	5ce2      	ldrb	r2, [r4, r3]
 8000cec:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000cf0:	3301      	adds	r3, #1
 8000cf2:	2b09      	cmp	r3, #9
 8000cf4:	d1f9      	bne.n	8000cea <rgb_read+0x62>
 8000cf6:	2001      	movs	r0, #1
 8000cf8:	4931      	ldr	r1, [pc, #196]	; (8000dc0 <rgb_read+0x138>)
 8000cfa:	f7ff fef3 	bl	8000ae4 <rgb_i2cRead>
 8000cfe:	4a32      	ldr	r2, [pc, #200]	; (8000dc8 <rgb_read+0x140>)
 8000d00:	2300      	movs	r3, #0
 8000d02:	5ce0      	ldrb	r0, [r4, r3]
 8000d04:	8851      	ldrh	r1, [r2, #2]
 8000d06:	3301      	adds	r3, #1
 8000d08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000d0c:	2b09      	cmp	r3, #9
 8000d0e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000d12:	d1f6      	bne.n	8000d02 <rgb_read+0x7a>
 8000d14:	2001      	movs	r0, #1
 8000d16:	492a      	ldr	r1, [pc, #168]	; (8000dc0 <rgb_read+0x138>)
 8000d18:	f7ff fee4 	bl	8000ae4 <rgb_i2cRead>
 8000d1c:	2300      	movs	r3, #0
 8000d1e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000d22:	5ce1      	ldrb	r1, [r4, r3]
 8000d24:	3301      	adds	r3, #1
 8000d26:	2b09      	cmp	r3, #9
 8000d28:	8251      	strh	r1, [r2, #18]
 8000d2a:	d1f8      	bne.n	8000d1e <rgb_read+0x96>
 8000d2c:	2001      	movs	r0, #1
 8000d2e:	4924      	ldr	r1, [pc, #144]	; (8000dc0 <rgb_read+0x138>)
 8000d30:	f7ff fed8 	bl	8000ae4 <rgb_i2cRead>
 8000d34:	4a25      	ldr	r2, [pc, #148]	; (8000dcc <rgb_read+0x144>)
 8000d36:	2300      	movs	r3, #0
 8000d38:	8811      	ldrh	r1, [r2, #0]
 8000d3a:	5ce0      	ldrb	r0, [r4, r3]
 8000d3c:	3301      	adds	r3, #1
 8000d3e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000d42:	2b09      	cmp	r3, #9
 8000d44:	f822 1b02 	strh.w	r1, [r2], #2
 8000d48:	d1f6      	bne.n	8000d38 <rgb_read+0xb0>
 8000d4a:	2001      	movs	r0, #1
 8000d4c:	491c      	ldr	r1, [pc, #112]	; (8000dc0 <rgb_read+0x138>)
 8000d4e:	f7ff fec9 	bl	8000ae4 <rgb_i2cRead>
 8000d52:	2300      	movs	r3, #0
 8000d54:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000d58:	5ce1      	ldrb	r1, [r4, r3]
 8000d5a:	3301      	adds	r3, #1
 8000d5c:	2b09      	cmp	r3, #9
 8000d5e:	8491      	strh	r1, [r2, #36]	; 0x24
 8000d60:	d1f8      	bne.n	8000d54 <rgb_read+0xcc>
 8000d62:	2001      	movs	r0, #1
 8000d64:	4916      	ldr	r1, [pc, #88]	; (8000dc0 <rgb_read+0x138>)
 8000d66:	f7ff febd 	bl	8000ae4 <rgb_i2cRead>
 8000d6a:	4a19      	ldr	r2, [pc, #100]	; (8000dd0 <rgb_read+0x148>)
 8000d6c:	2300      	movs	r3, #0
 8000d6e:	8811      	ldrh	r1, [r2, #0]
 8000d70:	5ce0      	ldrb	r0, [r4, r3]
 8000d72:	3301      	adds	r3, #1
 8000d74:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000d78:	2b09      	cmp	r3, #9
 8000d7a:	f822 1b02 	strh.w	r1, [r2], #2
 8000d7e:	d1f6      	bne.n	8000d6e <rgb_read+0xe6>
 8000d80:	2001      	movs	r0, #1
 8000d82:	490f      	ldr	r1, [pc, #60]	; (8000dc0 <rgb_read+0x138>)
 8000d84:	f7ff feae 	bl	8000ae4 <rgb_i2cRead>
 8000d88:	2300      	movs	r3, #0
 8000d8a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000d8e:	5ce1      	ldrb	r1, [r4, r3]
 8000d90:	3301      	adds	r3, #1
 8000d92:	2b09      	cmp	r3, #9
 8000d94:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000d98:	d1f7      	bne.n	8000d8a <rgb_read+0x102>
 8000d9a:	2000      	movs	r0, #0
 8000d9c:	4908      	ldr	r1, [pc, #32]	; (8000dc0 <rgb_read+0x138>)
 8000d9e:	f7ff fea1 	bl	8000ae4 <rgb_i2cRead>
 8000da2:	4a0c      	ldr	r2, [pc, #48]	; (8000dd4 <rgb_read+0x14c>)
 8000da4:	2300      	movs	r3, #0
 8000da6:	8811      	ldrh	r1, [r2, #0]
 8000da8:	5ce0      	ldrb	r0, [r4, r3]
 8000daa:	3301      	adds	r3, #1
 8000dac:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000db0:	2b09      	cmp	r3, #9
 8000db2:	f822 1b02 	strh.w	r1, [r2], #2
 8000db6:	d1f6      	bne.n	8000da6 <rgb_read+0x11e>
 8000db8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000dbc:	f7ff be63 	b.w	8000a86 <rgb_i2cStop>
 8000dc0:	20000524 	.word	0x20000524
 8000dc4:	200004c8 	.word	0x200004c8
 8000dc8:	200004c6 	.word	0x200004c6
 8000dcc:	200004da 	.word	0x200004da
 8000dd0:	200004ec 	.word	0x200004ec
 8000dd4:	20000510 	.word	0x20000510

08000dd8 <line_sensor_init>:
 8000dd8:	b538      	push	{r3, r4, r5, lr}
 8000dda:	f7ff ff15 	bl	8000c08 <rgb_init>
 8000dde:	f7ff ff53 	bl	8000c88 <rgb_read>
 8000de2:	2072      	movs	r0, #114	; 0x72
 8000de4:	2192      	movs	r1, #146	; 0x92
 8000de6:	4a11      	ldr	r2, [pc, #68]	; (8000e2c <line_sensor_init+0x54>)
 8000de8:	f7ff fef3 	bl	8000bd2 <rgb_i2c_read_reg>
 8000dec:	2000      	movs	r0, #0
 8000dee:	4603      	mov	r3, r0
 8000df0:	490f      	ldr	r1, [pc, #60]	; (8000e30 <line_sensor_init+0x58>)
 8000df2:	185a      	adds	r2, r3, r1
 8000df4:	7852      	ldrb	r2, [r2, #1]
 8000df6:	2a69      	cmp	r2, #105	; 0x69
 8000df8:	d002      	beq.n	8000e00 <line_sensor_init+0x28>
 8000dfa:	2201      	movs	r2, #1
 8000dfc:	409a      	lsls	r2, r3
 8000dfe:	4310      	orrs	r0, r2
 8000e00:	3301      	adds	r3, #1
 8000e02:	2b09      	cmp	r3, #9
 8000e04:	d1f4      	bne.n	8000df0 <line_sensor_init+0x18>
 8000e06:	4a0b      	ldr	r2, [pc, #44]	; (8000e34 <line_sensor_init+0x5c>)
 8000e08:	2300      	movs	r3, #0
 8000e0a:	700b      	strb	r3, [r1, #0]
 8000e0c:	f102 0512 	add.w	r5, r2, #18
 8000e10:	2300      	movs	r3, #0
 8000e12:	f822 3f02 	strh.w	r3, [r2, #2]!
 8000e16:	42aa      	cmp	r2, r5
 8000e18:	8253      	strh	r3, [r2, #18]
 8000e1a:	8493      	strh	r3, [r2, #36]	; 0x24
 8000e1c:	d1f8      	bne.n	8000e10 <line_sensor_init+0x38>
 8000e1e:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
 8000e22:	f881 304c 	strb.w	r3, [r1, #76]	; 0x4c
 8000e26:	644b      	str	r3, [r1, #68]	; 0x44
 8000e28:	648b      	str	r3, [r1, #72]	; 0x48
 8000e2a:	bd38      	pop	{r3, r4, r5, pc}
 8000e2c:	20000531 	.word	0x20000531
 8000e30:	20000530 	.word	0x20000530
 8000e34:	20000538 	.word	0x20000538

08000e38 <line_sensor_filter>:
 8000e38:	b570      	push	{r4, r5, r6, lr}
 8000e3a:	4b5d      	ldr	r3, [pc, #372]	; (8000fb0 <line_sensor_filter+0x178>)
 8000e3c:	f103 0212 	add.w	r2, r3, #18
 8000e40:	f933 0f02 	ldrsh.w	r0, [r3, #2]!
 8000e44:	f933 1c12 	ldrsh.w	r1, [r3, #-18]
 8000e48:	4293      	cmp	r3, r2
 8000e4a:	ebc1 0100 	rsb	r1, r1, r0
 8000e4e:	8259      	strh	r1, [r3, #18]
 8000e50:	d1f6      	bne.n	8000e40 <line_sensor_filter+0x8>
 8000e52:	4958      	ldr	r1, [pc, #352]	; (8000fb4 <line_sensor_filter+0x17c>)
 8000e54:	4a58      	ldr	r2, [pc, #352]	; (8000fb8 <line_sensor_filter+0x180>)
 8000e56:	6c8b      	ldr	r3, [r1, #72]	; 0x48
 8000e58:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000e5c:	f9b1 4036 	ldrsh.w	r4, [r1, #54]	; 0x36
 8000e60:	2007      	movs	r0, #7
 8000e62:	fb00 2303 	mla	r3, r0, r3, r2
 8000e66:	2208      	movs	r2, #8
 8000e68:	fb93 f3f2 	sdiv	r3, r3, r2
 8000e6c:	f9b1 2034 	ldrsh.w	r2, [r1, #52]	; 0x34
 8000e70:	f9b1 002e 	ldrsh.w	r0, [r1, #46]	; 0x2e
 8000e74:	648b      	str	r3, [r1, #72]	; 0x48
 8000e76:	f512 7f96 	cmn.w	r2, #300	; 0x12c
 8000e7a:	bfaa      	itet	ge
 8000e7c:	4602      	movge	r2, r0
 8000e7e:	2303      	movlt	r3, #3
 8000e80:	2300      	movge	r3, #0
 8000e82:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000e86:	bfb8      	it	lt
 8000e88:	4622      	movlt	r2, r4
 8000e8a:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000e8e:	bfb8      	it	lt
 8000e90:	2304      	movlt	r3, #4
 8000e92:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000e96:	bfb8      	it	lt
 8000e98:	4622      	movlt	r2, r4
 8000e9a:	f9b1 4038 	ldrsh.w	r4, [r1, #56]	; 0x38
 8000e9e:	bfb8      	it	lt
 8000ea0:	2302      	movlt	r3, #2
 8000ea2:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000ea6:	bfb8      	it	lt
 8000ea8:	4622      	movlt	r2, r4
 8000eaa:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000eae:	bfb8      	it	lt
 8000eb0:	2305      	movlt	r3, #5
 8000eb2:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000eb6:	bfb8      	it	lt
 8000eb8:	4622      	movlt	r2, r4
 8000eba:	f9b1 403a 	ldrsh.w	r4, [r1, #58]	; 0x3a
 8000ebe:	bfb8      	it	lt
 8000ec0:	2301      	movlt	r3, #1
 8000ec2:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000ec6:	bfb8      	it	lt
 8000ec8:	4622      	movlt	r2, r4
 8000eca:	f9b1 403c 	ldrsh.w	r4, [r1, #60]	; 0x3c
 8000ece:	bfb8      	it	lt
 8000ed0:	2306      	movlt	r3, #6
 8000ed2:	4605      	mov	r5, r0
 8000ed4:	f515 7f96 	cmn.w	r5, #300	; 0x12c
 8000ed8:	bfb8      	it	lt
 8000eda:	2300      	movlt	r3, #0
 8000edc:	f510 7f96 	cmn.w	r0, #300	; 0x12c
 8000ee0:	bfa8      	it	ge
 8000ee2:	4610      	movge	r0, r2
 8000ee4:	f514 7f96 	cmn.w	r4, #300	; 0x12c
 8000ee8:	4a32      	ldr	r2, [pc, #200]	; (8000fb4 <line_sensor_filter+0x17c>)
 8000eea:	db32      	blt.n	8000f52 <line_sensor_filter+0x11a>
 8000eec:	f510 7f96 	cmn.w	r0, #300	; 0x12c
 8000ef0:	dc5a      	bgt.n	8000fa8 <line_sensor_filter+0x170>
 8000ef2:	2b00      	cmp	r3, #0
 8000ef4:	d055      	beq.n	8000fa2 <line_sensor_filter+0x16a>
 8000ef6:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000efa:	4632      	mov	r2, r6
 8000efc:	f9b6 6030 	ldrsh.w	r6, [r6, #48]	; 0x30
 8000f00:	f9b2 202c 	ldrsh.w	r2, [r2, #44]	; 0x2c
 8000f04:	1e5d      	subs	r5, r3, #1
 8000f06:	4296      	cmp	r6, r2
 8000f08:	f103 0401 	add.w	r4, r3, #1
 8000f0c:	bfa8      	it	ge
 8000f0e:	462c      	movge	r4, r5
 8000f10:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000f14:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000f18:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000f1c:	f9b4 502e 	ldrsh.w	r5, [r4, #46]	; 0x2e
 8000f20:	f9b3 302e 	ldrsh.w	r3, [r3, #46]	; 0x2e
 8000f24:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000f28:	441d      	add	r5, r3
 8000f2a:	fb94 f3f5 	sdiv	r3, r4, r5
 8000f2e:	f1c3 0420 	rsb	r4, r3, #32
 8000f32:	bfac      	ite	ge
 8000f34:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000f38:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000f3c:	4344      	muls	r4, r0
 8000f3e:	fb03 4402 	mla	r4, r3, r2, r4
 8000f42:	2520      	movs	r5, #32
 8000f44:	fb94 f4f5 	sdiv	r4, r4, r5
 8000f48:	3cda      	subs	r4, #218	; 0xda
 8000f4a:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000f4e:	644c      	str	r4, [r1, #68]	; 0x44
 8000f50:	dd24      	ble.n	8000f9c <line_sensor_filter+0x164>
 8000f52:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000f56:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000f5a:	2b07      	cmp	r3, #7
 8000f5c:	d803      	bhi.n	8000f66 <line_sensor_filter+0x12e>
 8000f5e:	4a15      	ldr	r2, [pc, #84]	; (8000fb4 <line_sensor_filter+0x17c>)
 8000f60:	3301      	adds	r3, #1
 8000f62:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000f66:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000f6a:	4d12      	ldr	r5, [pc, #72]	; (8000fb4 <line_sensor_filter+0x17c>)
 8000f6c:	2b08      	cmp	r3, #8
 8000f6e:	d109      	bne.n	8000f84 <line_sensor_filter+0x14c>
 8000f70:	f7ff f974 	bl	800025c <sched_off>
 8000f74:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000f78:	646c      	str	r4, [r5, #68]	; 0x44
 8000f7a:	f043 0303 	orr.w	r3, r3, #3
 8000f7e:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000f82:	e007      	b.n	8000f94 <line_sensor_filter+0x15c>
 8000f84:	f7ff f96a 	bl	800025c <sched_off>
 8000f88:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000f8c:	f023 0301 	bic.w	r3, r3, #1
 8000f90:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000f94:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000f98:	f7ff b962 	b.w	8000260 <sched_on>
 8000f9c:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000fa0:	dad9      	bge.n	8000f56 <line_sensor_filter+0x11e>
 8000fa2:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000fa6:	e7d6      	b.n	8000f56 <line_sensor_filter+0x11e>
 8000fa8:	2300      	movs	r3, #0
 8000faa:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000fae:	bd70      	pop	{r4, r5, r6, pc}
 8000fb0:	2000054a 	.word	0x2000054a
 8000fb4:	20000530 	.word	0x20000530
 8000fb8:	200004c8 	.word	0x200004c8

08000fbc <line_sensor_read>:
 8000fbc:	b538      	push	{r3, r4, r5, lr}
 8000fbe:	f7ff fe63 	bl	8000c88 <rgb_read>
 8000fc2:	4b16      	ldr	r3, [pc, #88]	; (800101c <line_sensor_read+0x60>)
 8000fc4:	2200      	movs	r2, #0
 8000fc6:	4618      	mov	r0, r3
 8000fc8:	5e84      	ldrsh	r4, [r0, r2]
 8000fca:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000fce:	428c      	cmp	r4, r1
 8000fd0:	bfdc      	itt	le
 8000fd2:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000fd6:	5284      	strhle	r4, [r0, r2]
 8000fd8:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000fdc:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000fde:	428c      	cmp	r4, r1
 8000fe0:	bfdc      	itt	le
 8000fe2:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000fe6:	825c      	strhle	r4, [r3, #18]
 8000fe8:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000fec:	428c      	cmp	r4, r1
 8000fee:	bfd8      	it	le
 8000ff0:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000ff4:	4c0a      	ldr	r4, [pc, #40]	; (8001020 <line_sensor_read+0x64>)
 8000ff6:	bfd8      	it	le
 8000ff8:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000ffa:	490a      	ldr	r1, [pc, #40]	; (8001024 <line_sensor_read+0x68>)
 8000ffc:	5b14      	ldrh	r4, [r2, r4]
 8000ffe:	4411      	add	r1, r2
 8001000:	1b2c      	subs	r4, r5, r4
 8001002:	3202      	adds	r2, #2
 8001004:	838c      	strh	r4, [r1, #28]
 8001006:	2a10      	cmp	r2, #16
 8001008:	f44f 6480 	mov.w	r4, #1024	; 0x400
 800100c:	814c      	strh	r4, [r1, #10]
 800100e:	f103 0302 	add.w	r3, r3, #2
 8001012:	d1d9      	bne.n	8000fc8 <line_sensor_read+0xc>
 8001014:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001018:	f7ff bf0e 	b.w	8000e38 <line_sensor_filter>
 800101c:	200004c8 	.word	0x200004c8
 8001020:	20000000 	.word	0x20000000
 8001024:	20000530 	.word	0x20000530

08001028 <abort_error_>:
 8001028:	b570      	push	{r4, r5, r6, lr}
 800102a:	4605      	mov	r5, r0
 800102c:	460e      	mov	r6, r1
 800102e:	480f      	ldr	r0, [pc, #60]	; (800106c <abort_error_+0x44>)
 8001030:	4629      	mov	r1, r5
 8001032:	4632      	mov	r2, r6
 8001034:	f7ff fa4e 	bl	80004d4 <printf_>
 8001038:	2400      	movs	r4, #0
 800103a:	1ceb      	adds	r3, r5, #3
 800103c:	429c      	cmp	r4, r3
 800103e:	d20f      	bcs.n	8001060 <abort_error_+0x38>
 8001040:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001044:	f001 fb68 	bl	8002718 <led_on>
 8001048:	2032      	movs	r0, #50	; 0x32
 800104a:	f000 fe3b 	bl	8001cc4 <timer_delay_ms>
 800104e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001052:	f001 fb73 	bl	800273c <led_off>
 8001056:	2064      	movs	r0, #100	; 0x64
 8001058:	f000 fe34 	bl	8001cc4 <timer_delay_ms>
 800105c:	3401      	adds	r4, #1
 800105e:	e7ec      	b.n	800103a <abort_error_+0x12>
 8001060:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001064:	f000 fe2e 	bl	8001cc4 <timer_delay_ms>
 8001068:	e7e1      	b.n	800102e <abort_error_+0x6>
 800106a:	bf00      	nop
 800106c:	08002831 	.word	0x08002831

08001070 <line_sensor_thread>:
 8001070:	b508      	push	{r3, lr}
 8001072:	f7ff feb1 	bl	8000dd8 <line_sensor_init>
 8001076:	4601      	mov	r1, r0
 8001078:	b120      	cbz	r0, 8001084 <line_sensor_thread+0x14>
 800107a:	4b07      	ldr	r3, [pc, #28]	; (8001098 <line_sensor_thread+0x28>)
 800107c:	2001      	movs	r0, #1
 800107e:	6018      	str	r0, [r3, #0]
 8001080:	f7ff ffd2 	bl	8001028 <abort_error_>
 8001084:	2000      	movs	r0, #0
 8001086:	2104      	movs	r1, #4
 8001088:	f000 fe2c 	bl	8001ce4 <event_timer_set_period>
 800108c:	2000      	movs	r0, #0
 800108e:	f000 fe3f 	bl	8001d10 <event_timer_wait>
 8001092:	f7ff ff93 	bl	8000fbc <line_sensor_read>
 8001096:	e7f9      	b.n	800108c <line_sensor_thread+0x1c>
 8001098:	20000c14 	.word	0x20000c14

0800109c <i2c_sensor_thread>:
 800109c:	b508      	push	{r3, lr}
 800109e:	f7ff fb49 	bl	8000734 <lsm9ds0_init>
 80010a2:	4601      	mov	r1, r0
 80010a4:	b128      	cbz	r0, 80010b2 <i2c_sensor_thread+0x16>
 80010a6:	4b08      	ldr	r3, [pc, #32]	; (80010c8 <i2c_sensor_thread+0x2c>)
 80010a8:	2201      	movs	r2, #1
 80010aa:	2002      	movs	r0, #2
 80010ac:	601a      	str	r2, [r3, #0]
 80010ae:	f7ff ffbb 	bl	8001028 <abort_error_>
 80010b2:	2001      	movs	r0, #1
 80010b4:	210a      	movs	r1, #10
 80010b6:	f000 fe15 	bl	8001ce4 <event_timer_set_period>
 80010ba:	2001      	movs	r0, #1
 80010bc:	f000 fe28 	bl	8001d10 <event_timer_wait>
 80010c0:	f7ff faba 	bl	8000638 <lsm9ds0_read>
 80010c4:	e7f9      	b.n	80010ba <i2c_sensor_thread+0x1e>
 80010c6:	bf00      	nop
 80010c8:	20000c14 	.word	0x20000c14

080010cc <line_follower>:
 80010cc:	b538      	push	{r3, r4, r5, lr}
 80010ce:	f000 f945 	bl	800135c <line_follower_init>
 80010d2:	2002      	movs	r0, #2
 80010d4:	2104      	movs	r1, #4
 80010d6:	f000 fe05 	bl	8001ce4 <event_timer_set_period>
 80010da:	f000 fde5 	bl	8001ca8 <timer_get_time>
 80010de:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 80010e2:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 80010e6:	2400      	movs	r4, #0
 80010e8:	2002      	movs	r0, #2
 80010ea:	f000 fe11 	bl	8001d10 <event_timer_wait>
 80010ee:	4b14      	ldr	r3, [pc, #80]	; (8001140 <line_follower+0x74>)
 80010f0:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 80010f2:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 80010f6:	dd02      	ble.n	80010fe <line_follower+0x32>
 80010f8:	f000 fa1b 	bl	8001532 <obstacle_main>
 80010fc:	e008      	b.n	8001110 <line_follower+0x44>
 80010fe:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
 8001102:	2b08      	cmp	r3, #8
 8001104:	d102      	bne.n	800110c <line_follower+0x40>
 8001106:	f000 f94b 	bl	80013a0 <line_follower_main>
 800110a:	e001      	b.n	8001110 <line_follower+0x44>
 800110c:	f000 fa16 	bl	800153c <broken_line_main>
 8001110:	3401      	adds	r4, #1
 8001112:	2314      	movs	r3, #20
 8001114:	fbb4 f2f3 	udiv	r2, r4, r3
 8001118:	fb03 4312 	mls	r3, r3, r2, r4
 800111c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001120:	b913      	cbnz	r3, 8001128 <line_follower+0x5c>
 8001122:	f001 faf9 	bl	8002718 <led_on>
 8001126:	e001      	b.n	800112c <line_follower+0x60>
 8001128:	f001 fb08 	bl	800273c <led_off>
 800112c:	f000 fdbc 	bl	8001ca8 <timer_get_time>
 8001130:	4285      	cmp	r5, r0
 8001132:	d2d9      	bcs.n	80010e8 <line_follower+0x1c>
 8001134:	2000      	movs	r0, #0
 8001136:	4601      	mov	r1, r0
 8001138:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800113c:	f001 b976 	b.w	800242c <drv8834_run>
 8001140:	20000530 	.word	0x20000530

08001144 <main_thread>:
 8001144:	b510      	push	{r4, lr}
 8001146:	481f      	ldr	r0, [pc, #124]	; (80011c4 <main_thread+0x80>)
 8001148:	4c1f      	ldr	r4, [pc, #124]	; (80011c8 <main_thread+0x84>)
 800114a:	f7ff f9c3 	bl	80004d4 <printf_>
 800114e:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001152:	f000 fdb7 	bl	8001cc4 <timer_delay_ms>
 8001156:	2300      	movs	r3, #0
 8001158:	6023      	str	r3, [r4, #0]
 800115a:	491c      	ldr	r1, [pc, #112]	; (80011cc <main_thread+0x88>)
 800115c:	481c      	ldr	r0, [pc, #112]	; (80011d0 <main_thread+0x8c>)
 800115e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001162:	2306      	movs	r3, #6
 8001164:	f7ff f892 	bl	800028c <create_thread>
 8001168:	491a      	ldr	r1, [pc, #104]	; (80011d4 <main_thread+0x90>)
 800116a:	481b      	ldr	r0, [pc, #108]	; (80011d8 <main_thread+0x94>)
 800116c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001170:	2306      	movs	r3, #6
 8001172:	f7ff f88b 	bl	800028c <create_thread>
 8001176:	f000 f9e0 	bl	800153a <broken_line_init>
 800117a:	f000 f9d9 	bl	8001530 <obstacle_init>
 800117e:	6823      	ldr	r3, [r4, #0]
 8001180:	b13b      	cbz	r3, 8001192 <main_thread+0x4e>
 8001182:	4816      	ldr	r0, [pc, #88]	; (80011dc <main_thread+0x98>)
 8001184:	f7ff f9a6 	bl	80004d4 <printf_>
 8001188:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800118c:	f000 fd9a 	bl	8001cc4 <timer_delay_ms>
 8001190:	e7f7      	b.n	8001182 <main_thread+0x3e>
 8001192:	f001 fae5 	bl	8002760 <get_key>
 8001196:	b128      	cbz	r0, 80011a4 <main_thread+0x60>
 8001198:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800119c:	f000 fd92 	bl	8001cc4 <timer_delay_ms>
 80011a0:	f7ff ff94 	bl	80010cc <line_follower>
 80011a4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80011a8:	f001 fab6 	bl	8002718 <led_on>
 80011ac:	2064      	movs	r0, #100	; 0x64
 80011ae:	f000 fd89 	bl	8001cc4 <timer_delay_ms>
 80011b2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80011b6:	f001 fac1 	bl	800273c <led_off>
 80011ba:	20c8      	movs	r0, #200	; 0xc8
 80011bc:	f000 fd82 	bl	8001cc4 <timer_delay_ms>
 80011c0:	e7dd      	b.n	800117e <main_thread+0x3a>
 80011c2:	bf00      	nop
 80011c4:	08002843 	.word	0x08002843
 80011c8:	20000c14 	.word	0x20000c14
 80011cc:	20000814 	.word	0x20000814
 80011d0:	08001071 	.word	0x08001071
 80011d4:	20000a14 	.word	0x20000a14
 80011d8:	0800109d 	.word	0x0800109d
 80011dc:	0800287e 	.word	0x0800287e

080011e0 <q_predictor_init>:
 80011e0:	4b24      	ldr	r3, [pc, #144]	; (8001274 <q_predictor_init+0x94>)
 80011e2:	2200      	movs	r2, #0
 80011e4:	4619      	mov	r1, r3
 80011e6:	b570      	push	{r4, r5, r6, lr}
 80011e8:	4608      	mov	r0, r1
 80011ea:	601a      	str	r2, [r3, #0]
 80011ec:	605a      	str	r2, [r3, #4]
 80011ee:	f103 0208 	add.w	r2, r3, #8
 80011f2:	3348      	adds	r3, #72	; 0x48
 80011f4:	2400      	movs	r4, #0
 80011f6:	f842 4b04 	str.w	r4, [r2], #4
 80011fa:	429a      	cmp	r2, r3
 80011fc:	d1fa      	bne.n	80011f4 <q_predictor_init+0x14>
 80011fe:	2200      	movs	r2, #0
 8001200:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001204:	2300      	movs	r3, #0
 8001206:	4e1c      	ldr	r6, [pc, #112]	; (8001278 <q_predictor_init+0x98>)
 8001208:	4416      	add	r6, r2
 800120a:	eddf 7a1c 	vldr	s15, [pc, #112]	; 800127c <q_predictor_init+0x9c>
 800120e:	5ef6      	ldrsh	r6, [r6, r3]
 8001210:	ee07 6a10 	vmov	s14, r6
 8001214:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001218:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 800121c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001220:	3302      	adds	r3, #2
 8001222:	2b20      	cmp	r3, #32
 8001224:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8001228:	d1ed      	bne.n	8001206 <q_predictor_init+0x26>
 800122a:	3220      	adds	r2, #32
 800122c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8001230:	d1e6      	bne.n	8001200 <q_predictor_init+0x20>
 8001232:	2300      	movs	r3, #0
 8001234:	4912      	ldr	r1, [pc, #72]	; (8001280 <q_predictor_init+0xa0>)
 8001236:	5e59      	ldrsh	r1, [r3, r1]
 8001238:	ee07 1a10 	vmov	s14, r1
 800123c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001240:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001244:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001248:	3302      	adds	r3, #2
 800124a:	2b10      	cmp	r3, #16
 800124c:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001250:	d1f0      	bne.n	8001234 <q_predictor_init+0x54>
 8001252:	2300      	movs	r3, #0
 8001254:	490b      	ldr	r1, [pc, #44]	; (8001284 <q_predictor_init+0xa4>)
 8001256:	5e59      	ldrsh	r1, [r3, r1]
 8001258:	ee07 1a10 	vmov	s14, r1
 800125c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001260:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001264:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001268:	3302      	adds	r3, #2
 800126a:	2b10      	cmp	r3, #16
 800126c:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8001270:	d1f0      	bne.n	8001254 <q_predictor_init+0x74>
 8001272:	bd70      	pop	{r4, r5, r6, pc}
 8001274:	20000580 	.word	0x20000580
 8001278:	20000010 	.word	0x20000010
 800127c:	447a0000 	.word	0x447a0000
 8001280:	20000154 	.word	0x20000154
 8001284:	20000144 	.word	0x20000144

08001288 <pid_init>:
 8001288:	ee06 2a10 	vmov	s12, r2
 800128c:	ee05 3a90 	vmov	s11, r3
 8001290:	eddd 7a00 	vldr	s15, [sp]
 8001294:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001298:	ed9d 7a01 	vldr	s14, [sp, #4]
 800129c:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80012a0:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80012a4:	ee76 6a87 	vadd.f32	s13, s13, s14
 80012a8:	eeb1 6a46 	vneg.f32	s12, s12
 80012ac:	edc0 6a04 	vstr	s13, [r0, #16]
 80012b0:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80012e4 <pid_init+0x5c>
 80012b4:	ee36 6a65 	vsub.f32	s12, s12, s11
 80012b8:	ee67 6a26 	vmul.f32	s13, s14, s13
 80012bc:	2200      	movs	r2, #0
 80012be:	ee36 6a66 	vsub.f32	s12, s12, s13
 80012c2:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80012c6:	eeb1 7a47 	vneg.f32	s14, s14
 80012ca:	6002      	str	r2, [r0, #0]
 80012cc:	6042      	str	r2, [r0, #4]
 80012ce:	6082      	str	r2, [r0, #8]
 80012d0:	60c2      	str	r2, [r0, #12]
 80012d2:	ed80 6a05 	vstr	s12, [r0, #20]
 80012d6:	edc0 7a06 	vstr	s15, [r0, #24]
 80012da:	ed80 7a07 	vstr	s14, [r0, #28]
 80012de:	6202      	str	r2, [r0, #32]
 80012e0:	6241      	str	r1, [r0, #36]	; 0x24
 80012e2:	4770      	bx	lr
 80012e4:	40400000 	.word	0x40400000

080012e8 <pid_process>:
 80012e8:	edd0 7a08 	vldr	s15, [r0, #32]
 80012ec:	ee05 1a90 	vmov	s11, r1
 80012f0:	ed90 5a04 	vldr	s10, [r0, #16]
 80012f4:	ee45 7a85 	vmla.f32	s15, s11, s10
 80012f8:	ed90 6a00 	vldr	s12, [r0]
 80012fc:	edd0 5a05 	vldr	s11, [r0, #20]
 8001300:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001304:	edd0 6a01 	vldr	s13, [r0, #4]
 8001308:	ed80 6a01 	vstr	s12, [r0, #4]
 800130c:	ed90 6a06 	vldr	s12, [r0, #24]
 8001310:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001314:	ed90 7a02 	vldr	s14, [r0, #8]
 8001318:	edc0 6a02 	vstr	s13, [r0, #8]
 800131c:	edd0 6a07 	vldr	s13, [r0, #28]
 8001320:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001324:	ed80 7a03 	vstr	s14, [r0, #12]
 8001328:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 800132c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001330:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001334:	edc0 7a08 	vstr	s15, [r0, #32]
 8001338:	bfc8      	it	gt
 800133a:	ed80 7a08 	vstrgt	s14, [r0, #32]
 800133e:	edd0 7a08 	vldr	s15, [r0, #32]
 8001342:	eeb1 7a47 	vneg.f32	s14, s14
 8001346:	eef4 7ac7 	vcmpe.f32	s15, s14
 800134a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800134e:	bf48      	it	mi
 8001350:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001354:	6001      	str	r1, [r0, #0]
 8001356:	6a00      	ldr	r0, [r0, #32]
 8001358:	4770      	bx	lr
	...

0800135c <line_follower_init>:
 800135c:	b507      	push	{r0, r1, r2, lr}
 800135e:	4a0b      	ldr	r2, [pc, #44]	; (800138c <line_follower_init+0x30>)
 8001360:	480b      	ldr	r0, [pc, #44]	; (8001390 <line_follower_init+0x34>)
 8001362:	490c      	ldr	r1, [pc, #48]	; (8001394 <line_follower_init+0x38>)
 8001364:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8001368:	6013      	str	r3, [r2, #0]
 800136a:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 800136e:	6053      	str	r3, [r2, #4]
 8001370:	2300      	movs	r3, #0
 8001372:	6093      	str	r3, [r2, #8]
 8001374:	4a08      	ldr	r2, [pc, #32]	; (8001398 <line_follower_init+0x3c>)
 8001376:	9301      	str	r3, [sp, #4]
 8001378:	9200      	str	r2, [sp, #0]
 800137a:	4a08      	ldr	r2, [pc, #32]	; (800139c <line_follower_init+0x40>)
 800137c:	f7ff ff84 	bl	8001288 <pid_init>
 8001380:	b003      	add	sp, #12
 8001382:	f85d eb04 	ldr.w	lr, [sp], #4
 8001386:	f7ff bf2b 	b.w	80011e0 <q_predictor_init>
 800138a:	bf00      	nop
 800138c:	20000808 	.word	0x20000808
 8001390:	20000e18 	.word	0x20000e18
 8001394:	42c80000 	.word	0x42c80000
 8001398:	41287ae1 	.word	0x41287ae1
 800139c:	3ea6e979 	.word	0x3ea6e979

080013a0 <line_follower_main>:
 80013a0:	b510      	push	{r4, lr}
 80013a2:	4b2b      	ldr	r3, [pc, #172]	; (8001450 <line_follower_main+0xb0>)
 80013a4:	4c2b      	ldr	r4, [pc, #172]	; (8001454 <line_follower_main+0xb4>)
 80013a6:	ed93 7a11 	vldr	s14, [r3, #68]	; 0x44
 80013aa:	ed2d 8b04 	vpush	{d8-d9}
 80013ae:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013b2:	eddf 7a29 	vldr	s15, [pc, #164]	; 8001458 <line_follower_main+0xb8>
 80013b6:	ed9f 8a29 	vldr	s16, [pc, #164]	; 800145c <line_follower_main+0xbc>
 80013ba:	ee07 8a67 	vmls.f32	s16, s14, s15
 80013be:	edd4 8a00 	vldr	s17, [r4]
 80013c2:	ee18 0a10 	vmov	r0, s16
 80013c6:	f7ff fa23 	bl	8000810 <m_abs>
 80013ca:	ed9f 9a25 	vldr	s18, [pc, #148]	; 8001460 <line_follower_main+0xc0>
 80013ce:	ee07 0a90 	vmov	s15, r0
 80013d2:	ee39 7a67 	vsub.f32	s14, s18, s15
 80013d6:	eddf 7a23 	vldr	s15, [pc, #140]	; 8001464 <line_follower_main+0xc4>
 80013da:	ee18 0a10 	vmov	r0, s16
 80013de:	ee47 8a27 	vmla.f32	s17, s14, s15
 80013e2:	f7ff fa15 	bl	8000810 <m_abs>
 80013e6:	ee07 0a90 	vmov	s15, r0
 80013ea:	ee39 9a67 	vsub.f32	s18, s18, s15
 80013ee:	ee18 0a90 	vmov	r0, s17
 80013f2:	ee19 1a10 	vmov	r1, s18
 80013f6:	f7ff fa2e 	bl	8000856 <m_min>
 80013fa:	6862      	ldr	r2, [r4, #4]
 80013fc:	6020      	str	r0, [r4, #0]
 80013fe:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8001402:	f7ff fa11 	bl	8000828 <m_saturate>
 8001406:	ee18 1a10 	vmov	r1, s16
 800140a:	6020      	str	r0, [r4, #0]
 800140c:	4816      	ldr	r0, [pc, #88]	; (8001468 <line_follower_main+0xc8>)
 800140e:	f7ff ff6b 	bl	80012e8 <pid_process>
 8001412:	edd4 6a00 	vldr	s13, [r4]
 8001416:	ee07 0a90 	vmov	s15, r0
 800141a:	ed9f 7a14 	vldr	s14, [pc, #80]	; 800146c <line_follower_main+0xcc>
 800141e:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8001422:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001426:	ee26 6a07 	vmul.f32	s12, s12, s14
 800142a:	ee27 7a87 	vmul.f32	s14, s15, s14
 800142e:	ecbd 8b04 	vpop	{d8-d9}
 8001432:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001436:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800143a:	60a0      	str	r0, [r4, #8]
 800143c:	ee17 1a10 	vmov	r1, s14
 8001440:	ee16 0a10 	vmov	r0, s12
 8001444:	b209      	sxth	r1, r1
 8001446:	b200      	sxth	r0, r0
 8001448:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800144c:	f000 bfee 	b.w	800242c <drv8834_run>
 8001450:	20000530 	.word	0x20000530
 8001454:	20000808 	.word	0x20000808
 8001458:	3b800000 	.word	0x3b800000
 800145c:	00000000 	.word	0x00000000
 8001460:	3f800000 	.word	0x3f800000
 8001464:	3ca3d70a 	.word	0x3ca3d70a
 8001468:	20000e18 	.word	0x20000e18
 800146c:	42c80000 	.word	0x42c80000

08001470 <obstacle_go_forward>:
 8001470:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001472:	460f      	mov	r7, r1
 8001474:	ed2d 8b04 	vpush	{d8-d9}
 8001478:	4606      	mov	r6, r0
 800147a:	b950      	cbnz	r0, 8001492 <obstacle_go_forward+0x22>
 800147c:	2000      	movs	r0, #0
 800147e:	4601      	mov	r1, r0
 8001480:	f000 ffd4 	bl	800242c <drv8834_run>
 8001484:	ecbd 8b04 	vpop	{d8-d9}
 8001488:	2064      	movs	r0, #100	; 0x64
 800148a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800148e:	f000 bc19 	b.w	8001cc4 <timer_delay_ms>
 8001492:	ed9f 8a21 	vldr	s16, [pc, #132]	; 8001518 <obstacle_go_forward+0xa8>
 8001496:	2400      	movs	r4, #0
 8001498:	eef0 7a48 	vmov.f32	s15, s16
 800149c:	4625      	mov	r5, r4
 800149e:	eeb0 9a48 	vmov.f32	s18, s16
 80014a2:	42bd      	cmp	r5, r7
 80014a4:	d2ea      	bcs.n	800147c <obstacle_go_forward+0xc>
 80014a6:	4b1d      	ldr	r3, [pc, #116]	; (800151c <obstacle_go_forward+0xac>)
 80014a8:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80014ac:	441c      	add	r4, r3
 80014ae:	ee07 4a10 	vmov	s14, r4
 80014b2:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 80014b6:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001520 <obstacle_go_forward+0xb0>
 80014ba:	ee79 8a68 	vsub.f32	s17, s18, s17
 80014be:	350a      	adds	r5, #10
 80014c0:	ee78 7ae7 	vsub.f32	s15, s17, s15
 80014c4:	ee67 7a87 	vmul.f32	s15, s15, s14
 80014c8:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8001524 <obstacle_go_forward+0xb4>
 80014cc:	ee48 7a87 	vmla.f32	s15, s17, s14
 80014d0:	ee07 6a10 	vmov	s14, r6
 80014d4:	eef8 6a47 	vcvt.f32.u32	s13, s14
 80014d8:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8001528 <obstacle_go_forward+0xb8>
 80014dc:	ee26 7a87 	vmul.f32	s14, s13, s14
 80014e0:	eddf 6a12 	vldr	s13, [pc, #72]	; 800152c <obstacle_go_forward+0xbc>
 80014e4:	ee08 7a26 	vmla.f32	s14, s16, s13
 80014e8:	eeb0 8a47 	vmov.f32	s16, s14
 80014ec:	ee37 7a67 	vsub.f32	s14, s14, s15
 80014f0:	ee78 7a27 	vadd.f32	s15, s16, s15
 80014f4:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80014f8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80014fc:	ee17 0a10 	vmov	r0, s14
 8001500:	ee17 1a90 	vmov	r1, s15
 8001504:	b200      	sxth	r0, r0
 8001506:	b209      	sxth	r1, r1
 8001508:	f000 ff90 	bl	800242c <drv8834_run>
 800150c:	200a      	movs	r0, #10
 800150e:	f000 fbd9 	bl	8001cc4 <timer_delay_ms>
 8001512:	eef0 7a68 	vmov.f32	s15, s17
 8001516:	e7c4      	b.n	80014a2 <obstacle_go_forward+0x32>
 8001518:	00000000 	.word	0x00000000
 800151c:	20000298 	.word	0x20000298
 8001520:	3a83126f 	.word	0x3a83126f
 8001524:	399d4952 	.word	0x399d4952
 8001528:	3e4ccccc 	.word	0x3e4ccccc
 800152c:	3f4ccccd 	.word	0x3f4ccccd

08001530 <obstacle_init>:
 8001530:	4770      	bx	lr

08001532 <obstacle_main>:
 8001532:	2000      	movs	r0, #0
 8001534:	2164      	movs	r1, #100	; 0x64
 8001536:	f7ff bf9b 	b.w	8001470 <obstacle_go_forward>

0800153a <broken_line_init>:
 800153a:	4770      	bx	lr

0800153c <broken_line_main>:
 800153c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001540:	2500      	movs	r5, #0
 8001542:	462c      	mov	r4, r5
 8001544:	462f      	mov	r7, r5
 8001546:	46a8      	mov	r8, r5
 8001548:	462e      	mov	r6, r5
 800154a:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 800163c <broken_line_main+0x100>
 800154e:	f899 3040 	ldrb.w	r3, [r9, #64]	; 0x40
 8001552:	2b08      	cmp	r3, #8
 8001554:	d06c      	beq.n	8001630 <broken_line_main+0xf4>
 8001556:	2005      	movs	r0, #5
 8001558:	f000 fbb4 	bl	8001cc4 <timer_delay_ms>
 800155c:	2f05      	cmp	r7, #5
 800155e:	d861      	bhi.n	8001624 <broken_line_main+0xe8>
 8001560:	e8df f007 	tbb	[pc, r7]
 8001564:	38271503 	.word	0x38271503
 8001568:	4d4a      	.short	0x4d4a
 800156a:	2c00      	cmp	r4, #0
 800156c:	d145      	bne.n	80015fa <broken_line_main+0xbe>
 800156e:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001572:	2b00      	cmp	r3, #0
 8001574:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001578:	f04f 0701 	mov.w	r7, #1
 800157c:	bfd4      	ite	le
 800157e:	f04f 0832 	movle.w	r8, #50	; 0x32
 8001582:	f04f 0800 	movgt.w	r8, #0
 8001586:	bfd4      	ite	le
 8001588:	2600      	movle	r6, #0
 800158a:	2632      	movgt	r6, #50	; 0x32
 800158c:	e04a      	b.n	8001624 <broken_line_main+0xe8>
 800158e:	bba4      	cbnz	r4, 80015fa <broken_line_main+0xbe>
 8001590:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001594:	2b00      	cmp	r3, #0
 8001596:	f04f 0450 	mov.w	r4, #80	; 0x50
 800159a:	f04f 0702 	mov.w	r7, #2
 800159e:	bfd4      	ite	le
 80015a0:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 80015a4:	f04f 0800 	movgt.w	r8, #0
 80015a8:	bfd4      	ite	le
 80015aa:	2600      	movle	r6, #0
 80015ac:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 80015b0:	e038      	b.n	8001624 <broken_line_main+0xe8>
 80015b2:	bb14      	cbnz	r4, 80015fa <broken_line_main+0xbe>
 80015b4:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80015b8:	2b00      	cmp	r3, #0
 80015ba:	f04f 0450 	mov.w	r4, #80	; 0x50
 80015be:	f04f 0703 	mov.w	r7, #3
 80015c2:	bfd4      	ite	le
 80015c4:	f04f 0800 	movle.w	r8, #0
 80015c8:	f04f 0832 	movgt.w	r8, #50	; 0x32
 80015cc:	bfd4      	ite	le
 80015ce:	2632      	movle	r6, #50	; 0x32
 80015d0:	2600      	movgt	r6, #0
 80015d2:	e027      	b.n	8001624 <broken_line_main+0xe8>
 80015d4:	b98c      	cbnz	r4, 80015fa <broken_line_main+0xbe>
 80015d6:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80015da:	2b00      	cmp	r3, #0
 80015dc:	f04f 0450 	mov.w	r4, #80	; 0x50
 80015e0:	f04f 0704 	mov.w	r7, #4
 80015e4:	bfd4      	ite	le
 80015e6:	f04f 0800 	movle.w	r8, #0
 80015ea:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 80015ee:	bfd4      	ite	le
 80015f0:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 80015f4:	2600      	movgt	r6, #0
 80015f6:	e015      	b.n	8001624 <broken_line_main+0xe8>
 80015f8:	b16c      	cbz	r4, 8001616 <broken_line_main+0xda>
 80015fa:	3c01      	subs	r4, #1
 80015fc:	e012      	b.n	8001624 <broken_line_main+0xe8>
 80015fe:	b184      	cbz	r4, 8001622 <broken_line_main+0xe6>
 8001600:	f241 3387 	movw	r3, #4999	; 0x1387
 8001604:	429d      	cmp	r5, r3
 8001606:	bfd8      	it	le
 8001608:	3532      	addle	r5, #50	; 0x32
 800160a:	2664      	movs	r6, #100	; 0x64
 800160c:	fb95 f6f6 	sdiv	r6, r5, r6
 8001610:	3c01      	subs	r4, #1
 8001612:	46b0      	mov	r8, r6
 8001614:	e006      	b.n	8001624 <broken_line_main+0xe8>
 8001616:	4625      	mov	r5, r4
 8001618:	2705      	movs	r7, #5
 800161a:	2428      	movs	r4, #40	; 0x28
 800161c:	46a8      	mov	r8, r5
 800161e:	462e      	mov	r6, r5
 8001620:	e000      	b.n	8001624 <broken_line_main+0xe8>
 8001622:	4627      	mov	r7, r4
 8001624:	fa0f f088 	sxth.w	r0, r8
 8001628:	b231      	sxth	r1, r6
 800162a:	f000 feff 	bl	800242c <drv8834_run>
 800162e:	e78c      	b.n	800154a <broken_line_main+0xe>
 8001630:	2000      	movs	r0, #0
 8001632:	4601      	mov	r1, r0
 8001634:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001638:	f000 bef8 	b.w	800242c <drv8834_run>
 800163c:	20000530 	.word	0x20000530

08001640 <main>:
 8001640:	b508      	push	{r3, lr}
 8001642:	f000 ffa5 	bl	8002590 <lib_low_level_init>
 8001646:	f7fe ffbf 	bl	80005c8 <lib_os_init>
 800164a:	4905      	ldr	r1, [pc, #20]	; (8001660 <main+0x20>)
 800164c:	4805      	ldr	r0, [pc, #20]	; (8001664 <main+0x24>)
 800164e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001652:	2306      	movs	r3, #6
 8001654:	f7fe fe1a 	bl	800028c <create_thread>
 8001658:	f7fe fe12 	bl	8000280 <kernel_start>
 800165c:	2000      	movs	r0, #0
 800165e:	bd08      	pop	{r3, pc}
 8001660:	20000c18 	.word	0x20000c18
 8001664:	08001145 	.word	0x08001145

08001668 <RCC_GetClocksFreq>:
 8001668:	4ba5      	ldr	r3, [pc, #660]	; (8001900 <RCC_GetClocksFreq+0x298>)
 800166a:	685a      	ldr	r2, [r3, #4]
 800166c:	f002 020c 	and.w	r2, r2, #12
 8001670:	2a04      	cmp	r2, #4
 8001672:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001676:	d005      	beq.n	8001684 <RCC_GetClocksFreq+0x1c>
 8001678:	2a08      	cmp	r2, #8
 800167a:	d006      	beq.n	800168a <RCC_GetClocksFreq+0x22>
 800167c:	4ba1      	ldr	r3, [pc, #644]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 800167e:	6003      	str	r3, [r0, #0]
 8001680:	b9ba      	cbnz	r2, 80016b2 <RCC_GetClocksFreq+0x4a>
 8001682:	e017      	b.n	80016b4 <RCC_GetClocksFreq+0x4c>
 8001684:	4b9f      	ldr	r3, [pc, #636]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 8001686:	6003      	str	r3, [r0, #0]
 8001688:	e013      	b.n	80016b2 <RCC_GetClocksFreq+0x4a>
 800168a:	6859      	ldr	r1, [r3, #4]
 800168c:	685c      	ldr	r4, [r3, #4]
 800168e:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001692:	03e2      	lsls	r2, r4, #15
 8001694:	f101 0102 	add.w	r1, r1, #2
 8001698:	d401      	bmi.n	800169e <RCC_GetClocksFreq+0x36>
 800169a:	4a9b      	ldr	r2, [pc, #620]	; (8001908 <RCC_GetClocksFreq+0x2a0>)
 800169c:	e006      	b.n	80016ac <RCC_GetClocksFreq+0x44>
 800169e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80016a0:	4b98      	ldr	r3, [pc, #608]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 80016a2:	f002 020f 	and.w	r2, r2, #15
 80016a6:	3201      	adds	r2, #1
 80016a8:	fbb3 f2f2 	udiv	r2, r3, r2
 80016ac:	434a      	muls	r2, r1
 80016ae:	6002      	str	r2, [r0, #0]
 80016b0:	e000      	b.n	80016b4 <RCC_GetClocksFreq+0x4c>
 80016b2:	2200      	movs	r2, #0
 80016b4:	4f92      	ldr	r7, [pc, #584]	; (8001900 <RCC_GetClocksFreq+0x298>)
 80016b6:	4d95      	ldr	r5, [pc, #596]	; (800190c <RCC_GetClocksFreq+0x2a4>)
 80016b8:	687b      	ldr	r3, [r7, #4]
 80016ba:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001910 <RCC_GetClocksFreq+0x2a8>
 80016be:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80016c2:	5cec      	ldrb	r4, [r5, r3]
 80016c4:	6803      	ldr	r3, [r0, #0]
 80016c6:	b2e4      	uxtb	r4, r4
 80016c8:	fa23 f104 	lsr.w	r1, r3, r4
 80016cc:	6041      	str	r1, [r0, #4]
 80016ce:	687e      	ldr	r6, [r7, #4]
 80016d0:	f3c6 2602 	ubfx	r6, r6, #8, #3
 80016d4:	5dae      	ldrb	r6, [r5, r6]
 80016d6:	fa21 f606 	lsr.w	r6, r1, r6
 80016da:	6086      	str	r6, [r0, #8]
 80016dc:	f8d7 c004 	ldr.w	ip, [r7, #4]
 80016e0:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 80016e4:	f815 500c 	ldrb.w	r5, [r5, ip]
 80016e8:	b2ed      	uxtb	r5, r5
 80016ea:	40e9      	lsrs	r1, r5
 80016ec:	60c1      	str	r1, [r0, #12]
 80016ee:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 80016f2:	f3c9 1904 	ubfx	r9, r9, #4, #5
 80016f6:	f009 0c0f 	and.w	ip, r9, #15
 80016fa:	f019 0f10 	tst.w	r9, #16
 80016fe:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001702:	fa1f fc8c 	uxth.w	ip, ip
 8001706:	d007      	beq.n	8001718 <RCC_GetClocksFreq+0xb0>
 8001708:	f1bc 0f00 	cmp.w	ip, #0
 800170c:	d004      	beq.n	8001718 <RCC_GetClocksFreq+0xb0>
 800170e:	fbb2 fcfc 	udiv	ip, r2, ip
 8001712:	f8c0 c010 	str.w	ip, [r0, #16]
 8001716:	e000      	b.n	800171a <RCC_GetClocksFreq+0xb2>
 8001718:	6103      	str	r3, [r0, #16]
 800171a:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 800171c:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001720:	f00c 070f 	and.w	r7, ip, #15
 8001724:	f01c 0f10 	tst.w	ip, #16
 8001728:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 800172c:	b2bf      	uxth	r7, r7
 800172e:	d004      	beq.n	800173a <RCC_GetClocksFreq+0xd2>
 8001730:	b11f      	cbz	r7, 800173a <RCC_GetClocksFreq+0xd2>
 8001732:	fbb2 f7f7 	udiv	r7, r2, r7
 8001736:	6147      	str	r7, [r0, #20]
 8001738:	e000      	b.n	800173c <RCC_GetClocksFreq+0xd4>
 800173a:	6143      	str	r3, [r0, #20]
 800173c:	4f70      	ldr	r7, [pc, #448]	; (8001900 <RCC_GetClocksFreq+0x298>)
 800173e:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001742:	f01c 0f10 	tst.w	ip, #16
 8001746:	bf0a      	itet	eq
 8001748:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001904 <RCC_GetClocksFreq+0x29c>
 800174c:	6183      	strne	r3, [r0, #24]
 800174e:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001752:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001754:	06bf      	lsls	r7, r7, #26
 8001756:	bf56      	itet	pl
 8001758:	4f6a      	ldrpl	r7, [pc, #424]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 800175a:	61c3      	strmi	r3, [r0, #28]
 800175c:	61c7      	strpl	r7, [r0, #28]
 800175e:	4f68      	ldr	r7, [pc, #416]	; (8001900 <RCC_GetClocksFreq+0x298>)
 8001760:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001764:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001768:	bf0a      	itet	eq
 800176a:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001904 <RCC_GetClocksFreq+0x29c>
 800176e:	6203      	strne	r3, [r0, #32]
 8001770:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001774:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001776:	05ff      	lsls	r7, r7, #23
 8001778:	d506      	bpl.n	8001788 <RCC_GetClocksFreq+0x120>
 800177a:	4293      	cmp	r3, r2
 800177c:	d104      	bne.n	8001788 <RCC_GetClocksFreq+0x120>
 800177e:	42a5      	cmp	r5, r4
 8001780:	d102      	bne.n	8001788 <RCC_GetClocksFreq+0x120>
 8001782:	005f      	lsls	r7, r3, #1
 8001784:	6247      	str	r7, [r0, #36]	; 0x24
 8001786:	e000      	b.n	800178a <RCC_GetClocksFreq+0x122>
 8001788:	6241      	str	r1, [r0, #36]	; 0x24
 800178a:	4f5d      	ldr	r7, [pc, #372]	; (8001900 <RCC_GetClocksFreq+0x298>)
 800178c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001790:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001794:	d008      	beq.n	80017a8 <RCC_GetClocksFreq+0x140>
 8001796:	4293      	cmp	r3, r2
 8001798:	d106      	bne.n	80017a8 <RCC_GetClocksFreq+0x140>
 800179a:	42a5      	cmp	r5, r4
 800179c:	d104      	bne.n	80017a8 <RCC_GetClocksFreq+0x140>
 800179e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80017a2:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 80017a6:	e000      	b.n	80017aa <RCC_GetClocksFreq+0x142>
 80017a8:	6281      	str	r1, [r0, #40]	; 0x28
 80017aa:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80017ac:	05bf      	lsls	r7, r7, #22
 80017ae:	d506      	bpl.n	80017be <RCC_GetClocksFreq+0x156>
 80017b0:	4293      	cmp	r3, r2
 80017b2:	d104      	bne.n	80017be <RCC_GetClocksFreq+0x156>
 80017b4:	42a5      	cmp	r5, r4
 80017b6:	d102      	bne.n	80017be <RCC_GetClocksFreq+0x156>
 80017b8:	005f      	lsls	r7, r3, #1
 80017ba:	62c7      	str	r7, [r0, #44]	; 0x2c
 80017bc:	e000      	b.n	80017c0 <RCC_GetClocksFreq+0x158>
 80017be:	62c1      	str	r1, [r0, #44]	; 0x2c
 80017c0:	4f4f      	ldr	r7, [pc, #316]	; (8001900 <RCC_GetClocksFreq+0x298>)
 80017c2:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80017c6:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 80017ca:	d008      	beq.n	80017de <RCC_GetClocksFreq+0x176>
 80017cc:	4293      	cmp	r3, r2
 80017ce:	d106      	bne.n	80017de <RCC_GetClocksFreq+0x176>
 80017d0:	42a5      	cmp	r5, r4
 80017d2:	d104      	bne.n	80017de <RCC_GetClocksFreq+0x176>
 80017d4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80017d8:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 80017dc:	e000      	b.n	80017e0 <RCC_GetClocksFreq+0x178>
 80017de:	64c1      	str	r1, [r0, #76]	; 0x4c
 80017e0:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80017e2:	053f      	lsls	r7, r7, #20
 80017e4:	d506      	bpl.n	80017f4 <RCC_GetClocksFreq+0x18c>
 80017e6:	4293      	cmp	r3, r2
 80017e8:	d104      	bne.n	80017f4 <RCC_GetClocksFreq+0x18c>
 80017ea:	42a5      	cmp	r5, r4
 80017ec:	d102      	bne.n	80017f4 <RCC_GetClocksFreq+0x18c>
 80017ee:	005f      	lsls	r7, r3, #1
 80017f0:	6507      	str	r7, [r0, #80]	; 0x50
 80017f2:	e000      	b.n	80017f6 <RCC_GetClocksFreq+0x18e>
 80017f4:	6501      	str	r1, [r0, #80]	; 0x50
 80017f6:	4f42      	ldr	r7, [pc, #264]	; (8001900 <RCC_GetClocksFreq+0x298>)
 80017f8:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80017fc:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001800:	d008      	beq.n	8001814 <RCC_GetClocksFreq+0x1ac>
 8001802:	4293      	cmp	r3, r2
 8001804:	d106      	bne.n	8001814 <RCC_GetClocksFreq+0x1ac>
 8001806:	42a5      	cmp	r5, r4
 8001808:	d104      	bne.n	8001814 <RCC_GetClocksFreq+0x1ac>
 800180a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800180e:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001812:	e000      	b.n	8001816 <RCC_GetClocksFreq+0x1ae>
 8001814:	6501      	str	r1, [r0, #80]	; 0x50
 8001816:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001818:	043f      	lsls	r7, r7, #16
 800181a:	d506      	bpl.n	800182a <RCC_GetClocksFreq+0x1c2>
 800181c:	4293      	cmp	r3, r2
 800181e:	d104      	bne.n	800182a <RCC_GetClocksFreq+0x1c2>
 8001820:	42a5      	cmp	r5, r4
 8001822:	d102      	bne.n	800182a <RCC_GetClocksFreq+0x1c2>
 8001824:	005a      	lsls	r2, r3, #1
 8001826:	6582      	str	r2, [r0, #88]	; 0x58
 8001828:	e000      	b.n	800182c <RCC_GetClocksFreq+0x1c4>
 800182a:	6581      	str	r1, [r0, #88]	; 0x58
 800182c:	4a34      	ldr	r2, [pc, #208]	; (8001900 <RCC_GetClocksFreq+0x298>)
 800182e:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001830:	07a4      	lsls	r4, r4, #30
 8001832:	d014      	beq.n	800185e <RCC_GetClocksFreq+0x1f6>
 8001834:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001836:	f001 0103 	and.w	r1, r1, #3
 800183a:	2901      	cmp	r1, #1
 800183c:	d101      	bne.n	8001842 <RCC_GetClocksFreq+0x1da>
 800183e:	6383      	str	r3, [r0, #56]	; 0x38
 8001840:	e00e      	b.n	8001860 <RCC_GetClocksFreq+0x1f8>
 8001842:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001844:	f001 0103 	and.w	r1, r1, #3
 8001848:	2902      	cmp	r1, #2
 800184a:	d102      	bne.n	8001852 <RCC_GetClocksFreq+0x1ea>
 800184c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001850:	e005      	b.n	800185e <RCC_GetClocksFreq+0x1f6>
 8001852:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001854:	f001 0103 	and.w	r1, r1, #3
 8001858:	2903      	cmp	r1, #3
 800185a:	d101      	bne.n	8001860 <RCC_GetClocksFreq+0x1f8>
 800185c:	4929      	ldr	r1, [pc, #164]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 800185e:	6381      	str	r1, [r0, #56]	; 0x38
 8001860:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001862:	4927      	ldr	r1, [pc, #156]	; (8001900 <RCC_GetClocksFreq+0x298>)
 8001864:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001868:	d101      	bne.n	800186e <RCC_GetClocksFreq+0x206>
 800186a:	63c6      	str	r6, [r0, #60]	; 0x3c
 800186c:	e018      	b.n	80018a0 <RCC_GetClocksFreq+0x238>
 800186e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001870:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001874:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001878:	d101      	bne.n	800187e <RCC_GetClocksFreq+0x216>
 800187a:	63c3      	str	r3, [r0, #60]	; 0x3c
 800187c:	e010      	b.n	80018a0 <RCC_GetClocksFreq+0x238>
 800187e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001880:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001884:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001888:	d102      	bne.n	8001890 <RCC_GetClocksFreq+0x228>
 800188a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800188e:	e006      	b.n	800189e <RCC_GetClocksFreq+0x236>
 8001890:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001892:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001896:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 800189a:	d101      	bne.n	80018a0 <RCC_GetClocksFreq+0x238>
 800189c:	4a19      	ldr	r2, [pc, #100]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 800189e:	63c2      	str	r2, [r0, #60]	; 0x3c
 80018a0:	4a17      	ldr	r2, [pc, #92]	; (8001900 <RCC_GetClocksFreq+0x298>)
 80018a2:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018a4:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80018a8:	d101      	bne.n	80018ae <RCC_GetClocksFreq+0x246>
 80018aa:	6406      	str	r6, [r0, #64]	; 0x40
 80018ac:	e018      	b.n	80018e0 <RCC_GetClocksFreq+0x278>
 80018ae:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018b0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80018b4:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80018b8:	d101      	bne.n	80018be <RCC_GetClocksFreq+0x256>
 80018ba:	6403      	str	r3, [r0, #64]	; 0x40
 80018bc:	e010      	b.n	80018e0 <RCC_GetClocksFreq+0x278>
 80018be:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018c0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80018c4:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80018c8:	d102      	bne.n	80018d0 <RCC_GetClocksFreq+0x268>
 80018ca:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80018ce:	e006      	b.n	80018de <RCC_GetClocksFreq+0x276>
 80018d0:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018d2:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80018d6:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 80018da:	d101      	bne.n	80018e0 <RCC_GetClocksFreq+0x278>
 80018dc:	4909      	ldr	r1, [pc, #36]	; (8001904 <RCC_GetClocksFreq+0x29c>)
 80018de:	6401      	str	r1, [r0, #64]	; 0x40
 80018e0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80018e2:	4907      	ldr	r1, [pc, #28]	; (8001900 <RCC_GetClocksFreq+0x298>)
 80018e4:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 80018e8:	d101      	bne.n	80018ee <RCC_GetClocksFreq+0x286>
 80018ea:	6446      	str	r6, [r0, #68]	; 0x44
 80018ec:	e023      	b.n	8001936 <RCC_GetClocksFreq+0x2ce>
 80018ee:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80018f0:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 80018f4:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 80018f8:	d10c      	bne.n	8001914 <RCC_GetClocksFreq+0x2ac>
 80018fa:	6443      	str	r3, [r0, #68]	; 0x44
 80018fc:	e01b      	b.n	8001936 <RCC_GetClocksFreq+0x2ce>
 80018fe:	bf00      	nop
 8001900:	40021000 	.word	0x40021000
 8001904:	007a1200 	.word	0x007a1200
 8001908:	003d0900 	.word	0x003d0900
 800190c:	20000130 	.word	0x20000130
 8001910:	20000110 	.word	0x20000110
 8001914:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001916:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 800191a:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 800191e:	d102      	bne.n	8001926 <RCC_GetClocksFreq+0x2be>
 8001920:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001924:	e006      	b.n	8001934 <RCC_GetClocksFreq+0x2cc>
 8001926:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001928:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 800192c:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001930:	d101      	bne.n	8001936 <RCC_GetClocksFreq+0x2ce>
 8001932:	4a11      	ldr	r2, [pc, #68]	; (8001978 <RCC_GetClocksFreq+0x310>)
 8001934:	6442      	str	r2, [r0, #68]	; 0x44
 8001936:	4a11      	ldr	r2, [pc, #68]	; (800197c <RCC_GetClocksFreq+0x314>)
 8001938:	6b11      	ldr	r1, [r2, #48]	; 0x30
 800193a:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800193e:	d102      	bne.n	8001946 <RCC_GetClocksFreq+0x2de>
 8001940:	6486      	str	r6, [r0, #72]	; 0x48
 8001942:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001946:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001948:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 800194c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001950:	d00f      	beq.n	8001972 <RCC_GetClocksFreq+0x30a>
 8001952:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001954:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001958:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 800195c:	d102      	bne.n	8001964 <RCC_GetClocksFreq+0x2fc>
 800195e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001962:	e006      	b.n	8001972 <RCC_GetClocksFreq+0x30a>
 8001964:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001966:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800196a:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800196e:	d101      	bne.n	8001974 <RCC_GetClocksFreq+0x30c>
 8001970:	4b01      	ldr	r3, [pc, #4]	; (8001978 <RCC_GetClocksFreq+0x310>)
 8001972:	6483      	str	r3, [r0, #72]	; 0x48
 8001974:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001978:	007a1200 	.word	0x007a1200
 800197c:	40021000 	.word	0x40021000

08001980 <RCC_AHBPeriphClockCmd>:
 8001980:	bf00      	nop
 8001982:	bf00      	nop
 8001984:	4b04      	ldr	r3, [pc, #16]	; (8001998 <RCC_AHBPeriphClockCmd+0x18>)
 8001986:	695a      	ldr	r2, [r3, #20]
 8001988:	b109      	cbz	r1, 800198e <RCC_AHBPeriphClockCmd+0xe>
 800198a:	4310      	orrs	r0, r2
 800198c:	e001      	b.n	8001992 <RCC_AHBPeriphClockCmd+0x12>
 800198e:	ea22 0000 	bic.w	r0, r2, r0
 8001992:	6158      	str	r0, [r3, #20]
 8001994:	4770      	bx	lr
 8001996:	bf00      	nop
 8001998:	40021000 	.word	0x40021000

0800199c <RCC_APB2PeriphClockCmd>:
 800199c:	bf00      	nop
 800199e:	bf00      	nop
 80019a0:	4b04      	ldr	r3, [pc, #16]	; (80019b4 <RCC_APB2PeriphClockCmd+0x18>)
 80019a2:	699a      	ldr	r2, [r3, #24]
 80019a4:	b109      	cbz	r1, 80019aa <RCC_APB2PeriphClockCmd+0xe>
 80019a6:	4310      	orrs	r0, r2
 80019a8:	e001      	b.n	80019ae <RCC_APB2PeriphClockCmd+0x12>
 80019aa:	ea22 0000 	bic.w	r0, r2, r0
 80019ae:	6198      	str	r0, [r3, #24]
 80019b0:	4770      	bx	lr
 80019b2:	bf00      	nop
 80019b4:	40021000 	.word	0x40021000

080019b8 <RCC_APB1PeriphClockCmd>:
 80019b8:	bf00      	nop
 80019ba:	bf00      	nop
 80019bc:	4b04      	ldr	r3, [pc, #16]	; (80019d0 <RCC_APB1PeriphClockCmd+0x18>)
 80019be:	69da      	ldr	r2, [r3, #28]
 80019c0:	b109      	cbz	r1, 80019c6 <RCC_APB1PeriphClockCmd+0xe>
 80019c2:	4310      	orrs	r0, r2
 80019c4:	e001      	b.n	80019ca <RCC_APB1PeriphClockCmd+0x12>
 80019c6:	ea22 0000 	bic.w	r0, r2, r0
 80019ca:	61d8      	str	r0, [r3, #28]
 80019cc:	4770      	bx	lr
 80019ce:	bf00      	nop
 80019d0:	40021000 	.word	0x40021000

080019d4 <TIM_TimeBaseInit>:
 80019d4:	bf00      	nop
 80019d6:	bf00      	nop
 80019d8:	bf00      	nop
 80019da:	4a24      	ldr	r2, [pc, #144]	; (8001a6c <TIM_TimeBaseInit+0x98>)
 80019dc:	8803      	ldrh	r3, [r0, #0]
 80019de:	4290      	cmp	r0, r2
 80019e0:	b29b      	uxth	r3, r3
 80019e2:	d012      	beq.n	8001a0a <TIM_TimeBaseInit+0x36>
 80019e4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80019e8:	4290      	cmp	r0, r2
 80019ea:	d00e      	beq.n	8001a0a <TIM_TimeBaseInit+0x36>
 80019ec:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80019f0:	d00b      	beq.n	8001a0a <TIM_TimeBaseInit+0x36>
 80019f2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80019f6:	4290      	cmp	r0, r2
 80019f8:	d007      	beq.n	8001a0a <TIM_TimeBaseInit+0x36>
 80019fa:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80019fe:	4290      	cmp	r0, r2
 8001a00:	d003      	beq.n	8001a0a <TIM_TimeBaseInit+0x36>
 8001a02:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001a06:	4290      	cmp	r0, r2
 8001a08:	d103      	bne.n	8001a12 <TIM_TimeBaseInit+0x3e>
 8001a0a:	884a      	ldrh	r2, [r1, #2]
 8001a0c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001a10:	4313      	orrs	r3, r2
 8001a12:	4a17      	ldr	r2, [pc, #92]	; (8001a70 <TIM_TimeBaseInit+0x9c>)
 8001a14:	4290      	cmp	r0, r2
 8001a16:	d008      	beq.n	8001a2a <TIM_TimeBaseInit+0x56>
 8001a18:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001a1c:	4290      	cmp	r0, r2
 8001a1e:	d004      	beq.n	8001a2a <TIM_TimeBaseInit+0x56>
 8001a20:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001a24:	890a      	ldrh	r2, [r1, #8]
 8001a26:	b29b      	uxth	r3, r3
 8001a28:	4313      	orrs	r3, r2
 8001a2a:	8003      	strh	r3, [r0, #0]
 8001a2c:	684b      	ldr	r3, [r1, #4]
 8001a2e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001a30:	880b      	ldrh	r3, [r1, #0]
 8001a32:	8503      	strh	r3, [r0, #40]	; 0x28
 8001a34:	4b0d      	ldr	r3, [pc, #52]	; (8001a6c <TIM_TimeBaseInit+0x98>)
 8001a36:	4298      	cmp	r0, r3
 8001a38:	d013      	beq.n	8001a62 <TIM_TimeBaseInit+0x8e>
 8001a3a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a3e:	4298      	cmp	r0, r3
 8001a40:	d00f      	beq.n	8001a62 <TIM_TimeBaseInit+0x8e>
 8001a42:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001a46:	4298      	cmp	r0, r3
 8001a48:	d00b      	beq.n	8001a62 <TIM_TimeBaseInit+0x8e>
 8001a4a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a4e:	4298      	cmp	r0, r3
 8001a50:	d007      	beq.n	8001a62 <TIM_TimeBaseInit+0x8e>
 8001a52:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a56:	4298      	cmp	r0, r3
 8001a58:	d003      	beq.n	8001a62 <TIM_TimeBaseInit+0x8e>
 8001a5a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a5e:	4298      	cmp	r0, r3
 8001a60:	d101      	bne.n	8001a66 <TIM_TimeBaseInit+0x92>
 8001a62:	894b      	ldrh	r3, [r1, #10]
 8001a64:	8603      	strh	r3, [r0, #48]	; 0x30
 8001a66:	2301      	movs	r3, #1
 8001a68:	6143      	str	r3, [r0, #20]
 8001a6a:	4770      	bx	lr
 8001a6c:	40012c00 	.word	0x40012c00
 8001a70:	40001000 	.word	0x40001000

08001a74 <TIM_Cmd>:
 8001a74:	bf00      	nop
 8001a76:	bf00      	nop
 8001a78:	8803      	ldrh	r3, [r0, #0]
 8001a7a:	b119      	cbz	r1, 8001a84 <TIM_Cmd+0x10>
 8001a7c:	b29b      	uxth	r3, r3
 8001a7e:	f043 0301 	orr.w	r3, r3, #1
 8001a82:	e003      	b.n	8001a8c <TIM_Cmd+0x18>
 8001a84:	f023 0301 	bic.w	r3, r3, #1
 8001a88:	041b      	lsls	r3, r3, #16
 8001a8a:	0c1b      	lsrs	r3, r3, #16
 8001a8c:	8003      	strh	r3, [r0, #0]
 8001a8e:	4770      	bx	lr

08001a90 <TIM_OC1Init>:
 8001a90:	b530      	push	{r4, r5, lr}
 8001a92:	bf00      	nop
 8001a94:	bf00      	nop
 8001a96:	bf00      	nop
 8001a98:	bf00      	nop
 8001a9a:	6a03      	ldr	r3, [r0, #32]
 8001a9c:	680c      	ldr	r4, [r1, #0]
 8001a9e:	f023 0301 	bic.w	r3, r3, #1
 8001aa2:	6203      	str	r3, [r0, #32]
 8001aa4:	6a03      	ldr	r3, [r0, #32]
 8001aa6:	6842      	ldr	r2, [r0, #4]
 8001aa8:	6985      	ldr	r5, [r0, #24]
 8001aaa:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001aae:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001ab2:	432c      	orrs	r4, r5
 8001ab4:	898d      	ldrh	r5, [r1, #12]
 8001ab6:	f023 0302 	bic.w	r3, r3, #2
 8001aba:	432b      	orrs	r3, r5
 8001abc:	888d      	ldrh	r5, [r1, #4]
 8001abe:	432b      	orrs	r3, r5
 8001ac0:	4d15      	ldr	r5, [pc, #84]	; (8001b18 <TIM_OC1Init+0x88>)
 8001ac2:	42a8      	cmp	r0, r5
 8001ac4:	d00f      	beq.n	8001ae6 <TIM_OC1Init+0x56>
 8001ac6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001aca:	42a8      	cmp	r0, r5
 8001acc:	d00b      	beq.n	8001ae6 <TIM_OC1Init+0x56>
 8001ace:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001ad2:	42a8      	cmp	r0, r5
 8001ad4:	d007      	beq.n	8001ae6 <TIM_OC1Init+0x56>
 8001ad6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001ada:	42a8      	cmp	r0, r5
 8001adc:	d003      	beq.n	8001ae6 <TIM_OC1Init+0x56>
 8001ade:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001ae2:	42a8      	cmp	r0, r5
 8001ae4:	d111      	bne.n	8001b0a <TIM_OC1Init+0x7a>
 8001ae6:	bf00      	nop
 8001ae8:	bf00      	nop
 8001aea:	bf00      	nop
 8001aec:	bf00      	nop
 8001aee:	89cd      	ldrh	r5, [r1, #14]
 8001af0:	f023 0308 	bic.w	r3, r3, #8
 8001af4:	432b      	orrs	r3, r5
 8001af6:	88cd      	ldrh	r5, [r1, #6]
 8001af8:	f023 0304 	bic.w	r3, r3, #4
 8001afc:	432b      	orrs	r3, r5
 8001afe:	8a0d      	ldrh	r5, [r1, #16]
 8001b00:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001b04:	432a      	orrs	r2, r5
 8001b06:	8a4d      	ldrh	r5, [r1, #18]
 8001b08:	432a      	orrs	r2, r5
 8001b0a:	6042      	str	r2, [r0, #4]
 8001b0c:	688a      	ldr	r2, [r1, #8]
 8001b0e:	6184      	str	r4, [r0, #24]
 8001b10:	6342      	str	r2, [r0, #52]	; 0x34
 8001b12:	6203      	str	r3, [r0, #32]
 8001b14:	bd30      	pop	{r4, r5, pc}
 8001b16:	bf00      	nop
 8001b18:	40012c00 	.word	0x40012c00

08001b1c <TIM_OC2Init>:
 8001b1c:	b570      	push	{r4, r5, r6, lr}
 8001b1e:	bf00      	nop
 8001b20:	bf00      	nop
 8001b22:	bf00      	nop
 8001b24:	bf00      	nop
 8001b26:	6a03      	ldr	r3, [r0, #32]
 8001b28:	680c      	ldr	r4, [r1, #0]
 8001b2a:	898e      	ldrh	r6, [r1, #12]
 8001b2c:	f023 0310 	bic.w	r3, r3, #16
 8001b30:	6203      	str	r3, [r0, #32]
 8001b32:	6a05      	ldr	r5, [r0, #32]
 8001b34:	6842      	ldr	r2, [r0, #4]
 8001b36:	6983      	ldr	r3, [r0, #24]
 8001b38:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001b3c:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001b40:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001b44:	888b      	ldrh	r3, [r1, #4]
 8001b46:	f025 0520 	bic.w	r5, r5, #32
 8001b4a:	4333      	orrs	r3, r6
 8001b4c:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001b50:	4d10      	ldr	r5, [pc, #64]	; (8001b94 <TIM_OC2Init+0x78>)
 8001b52:	42a8      	cmp	r0, r5
 8001b54:	d003      	beq.n	8001b5e <TIM_OC2Init+0x42>
 8001b56:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001b5a:	42a8      	cmp	r0, r5
 8001b5c:	d114      	bne.n	8001b88 <TIM_OC2Init+0x6c>
 8001b5e:	bf00      	nop
 8001b60:	bf00      	nop
 8001b62:	bf00      	nop
 8001b64:	bf00      	nop
 8001b66:	89cd      	ldrh	r5, [r1, #14]
 8001b68:	8a0e      	ldrh	r6, [r1, #16]
 8001b6a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001b6e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001b72:	88cd      	ldrh	r5, [r1, #6]
 8001b74:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001b78:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001b7c:	8a4d      	ldrh	r5, [r1, #18]
 8001b7e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001b82:	4335      	orrs	r5, r6
 8001b84:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001b88:	6042      	str	r2, [r0, #4]
 8001b8a:	688a      	ldr	r2, [r1, #8]
 8001b8c:	6184      	str	r4, [r0, #24]
 8001b8e:	6382      	str	r2, [r0, #56]	; 0x38
 8001b90:	6203      	str	r3, [r0, #32]
 8001b92:	bd70      	pop	{r4, r5, r6, pc}
 8001b94:	40012c00 	.word	0x40012c00

08001b98 <TIM_CtrlPWMOutputs>:
 8001b98:	bf00      	nop
 8001b9a:	bf00      	nop
 8001b9c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001b9e:	b111      	cbz	r1, 8001ba6 <TIM_CtrlPWMOutputs+0xe>
 8001ba0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001ba4:	e001      	b.n	8001baa <TIM_CtrlPWMOutputs+0x12>
 8001ba6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001baa:	6443      	str	r3, [r0, #68]	; 0x44
 8001bac:	4770      	bx	lr

08001bae <TIM_ClearITPendingBit>:
 8001bae:	bf00      	nop
 8001bb0:	43c9      	mvns	r1, r1
 8001bb2:	b289      	uxth	r1, r1
 8001bb4:	6101      	str	r1, [r0, #16]
 8001bb6:	4770      	bx	lr

08001bb8 <timer_init>:
 8001bb8:	b530      	push	{r4, r5, lr}
 8001bba:	2300      	movs	r3, #0
 8001bbc:	b085      	sub	sp, #20
 8001bbe:	491f      	ldr	r1, [pc, #124]	; (8001c3c <timer_init+0x84>)
 8001bc0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001bc4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001bc8:	491d      	ldr	r1, [pc, #116]	; (8001c40 <timer_init+0x88>)
 8001bca:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001bce:	4a1d      	ldr	r2, [pc, #116]	; (8001c44 <timer_init+0x8c>)
 8001bd0:	2400      	movs	r4, #0
 8001bd2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001bd6:	3301      	adds	r3, #1
 8001bd8:	2b04      	cmp	r3, #4
 8001bda:	4625      	mov	r5, r4
 8001bdc:	d1ef      	bne.n	8001bbe <timer_init+0x6>
 8001bde:	4b1a      	ldr	r3, [pc, #104]	; (8001c48 <timer_init+0x90>)
 8001be0:	2002      	movs	r0, #2
 8001be2:	2101      	movs	r1, #1
 8001be4:	601c      	str	r4, [r3, #0]
 8001be6:	f7ff fee7 	bl	80019b8 <RCC_APB1PeriphClockCmd>
 8001bea:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001bee:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001bf2:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001bf6:	4c15      	ldr	r4, [pc, #84]	; (8001c4c <timer_init+0x94>)
 8001bf8:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001bfc:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001c00:	4620      	mov	r0, r4
 8001c02:	2331      	movs	r3, #49	; 0x31
 8001c04:	a901      	add	r1, sp, #4
 8001c06:	9302      	str	r3, [sp, #8]
 8001c08:	f7ff fee4 	bl	80019d4 <TIM_TimeBaseInit>
 8001c0c:	4620      	mov	r0, r4
 8001c0e:	2101      	movs	r1, #1
 8001c10:	f7ff ff30 	bl	8001a74 <TIM_Cmd>
 8001c14:	68e3      	ldr	r3, [r4, #12]
 8001c16:	f043 0301 	orr.w	r3, r3, #1
 8001c1a:	60e3      	str	r3, [r4, #12]
 8001c1c:	231d      	movs	r3, #29
 8001c1e:	f88d 3000 	strb.w	r3, [sp]
 8001c22:	4668      	mov	r0, sp
 8001c24:	2301      	movs	r3, #1
 8001c26:	f88d 5001 	strb.w	r5, [sp, #1]
 8001c2a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001c2e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001c32:	f000 fc75 	bl	8002520 <NVIC_Init>
 8001c36:	b005      	add	sp, #20
 8001c38:	bd30      	pop	{r4, r5, pc}
 8001c3a:	bf00      	nop
 8001c3c:	20000e54 	.word	0x20000e54
 8001c40:	20000e48 	.word	0x20000e48
 8001c44:	20000e40 	.word	0x20000e40
 8001c48:	20000e50 	.word	0x20000e50
 8001c4c:	40000400 	.word	0x40000400

08001c50 <TIM3_IRQHandler>:
 8001c50:	2300      	movs	r3, #0
 8001c52:	4a10      	ldr	r2, [pc, #64]	; (8001c94 <TIM3_IRQHandler+0x44>)
 8001c54:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001c58:	b289      	uxth	r1, r1
 8001c5a:	b129      	cbz	r1, 8001c68 <TIM3_IRQHandler+0x18>
 8001c5c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001c60:	b289      	uxth	r1, r1
 8001c62:	3901      	subs	r1, #1
 8001c64:	b289      	uxth	r1, r1
 8001c66:	e007      	b.n	8001c78 <TIM3_IRQHandler+0x28>
 8001c68:	490b      	ldr	r1, [pc, #44]	; (8001c98 <TIM3_IRQHandler+0x48>)
 8001c6a:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001c6e:	b289      	uxth	r1, r1
 8001c70:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001c74:	4a09      	ldr	r2, [pc, #36]	; (8001c9c <TIM3_IRQHandler+0x4c>)
 8001c76:	2101      	movs	r1, #1
 8001c78:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001c7c:	3301      	adds	r3, #1
 8001c7e:	2b04      	cmp	r3, #4
 8001c80:	d1e7      	bne.n	8001c52 <TIM3_IRQHandler+0x2>
 8001c82:	4b07      	ldr	r3, [pc, #28]	; (8001ca0 <TIM3_IRQHandler+0x50>)
 8001c84:	4807      	ldr	r0, [pc, #28]	; (8001ca4 <TIM3_IRQHandler+0x54>)
 8001c86:	681a      	ldr	r2, [r3, #0]
 8001c88:	2101      	movs	r1, #1
 8001c8a:	3201      	adds	r2, #1
 8001c8c:	601a      	str	r2, [r3, #0]
 8001c8e:	f7ff bf8e 	b.w	8001bae <TIM_ClearITPendingBit>
 8001c92:	bf00      	nop
 8001c94:	20000e54 	.word	0x20000e54
 8001c98:	20000e48 	.word	0x20000e48
 8001c9c:	20000e40 	.word	0x20000e40
 8001ca0:	20000e50 	.word	0x20000e50
 8001ca4:	40000400 	.word	0x40000400

08001ca8 <timer_get_time>:
 8001ca8:	b082      	sub	sp, #8
 8001caa:	b672      	cpsid	i
 8001cac:	4b04      	ldr	r3, [pc, #16]	; (8001cc0 <timer_get_time+0x18>)
 8001cae:	681b      	ldr	r3, [r3, #0]
 8001cb0:	9301      	str	r3, [sp, #4]
 8001cb2:	b662      	cpsie	i
 8001cb4:	9801      	ldr	r0, [sp, #4]
 8001cb6:	230a      	movs	r3, #10
 8001cb8:	fbb0 f0f3 	udiv	r0, r0, r3
 8001cbc:	b002      	add	sp, #8
 8001cbe:	4770      	bx	lr
 8001cc0:	20000e50 	.word	0x20000e50

08001cc4 <timer_delay_ms>:
 8001cc4:	b513      	push	{r0, r1, r4, lr}
 8001cc6:	4604      	mov	r4, r0
 8001cc8:	f7ff ffee 	bl	8001ca8 <timer_get_time>
 8001ccc:	4420      	add	r0, r4
 8001cce:	9001      	str	r0, [sp, #4]
 8001cd0:	9c01      	ldr	r4, [sp, #4]
 8001cd2:	f7ff ffe9 	bl	8001ca8 <timer_get_time>
 8001cd6:	4284      	cmp	r4, r0
 8001cd8:	d902      	bls.n	8001ce0 <timer_delay_ms+0x1c>
 8001cda:	f000 fb17 	bl	800230c <sleep>
 8001cde:	e7f7      	b.n	8001cd0 <timer_delay_ms+0xc>
 8001ce0:	b002      	add	sp, #8
 8001ce2:	bd10      	pop	{r4, pc}

08001ce4 <event_timer_set_period>:
 8001ce4:	b672      	cpsid	i
 8001ce6:	230a      	movs	r3, #10
 8001ce8:	4359      	muls	r1, r3
 8001cea:	4b06      	ldr	r3, [pc, #24]	; (8001d04 <event_timer_set_period+0x20>)
 8001cec:	b289      	uxth	r1, r1
 8001cee:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001cf2:	4b05      	ldr	r3, [pc, #20]	; (8001d08 <event_timer_set_period+0x24>)
 8001cf4:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001cf8:	4b04      	ldr	r3, [pc, #16]	; (8001d0c <event_timer_set_period+0x28>)
 8001cfa:	2200      	movs	r2, #0
 8001cfc:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001d00:	b662      	cpsie	i
 8001d02:	4770      	bx	lr
 8001d04:	20000e54 	.word	0x20000e54
 8001d08:	20000e48 	.word	0x20000e48
 8001d0c:	20000e40 	.word	0x20000e40

08001d10 <event_timer_wait>:
 8001d10:	b510      	push	{r4, lr}
 8001d12:	4604      	mov	r4, r0
 8001d14:	4b06      	ldr	r3, [pc, #24]	; (8001d30 <event_timer_wait+0x20>)
 8001d16:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001d1a:	b292      	uxth	r2, r2
 8001d1c:	b912      	cbnz	r2, 8001d24 <event_timer_wait+0x14>
 8001d1e:	f000 faf5 	bl	800230c <sleep>
 8001d22:	e7f7      	b.n	8001d14 <event_timer_wait+0x4>
 8001d24:	b672      	cpsid	i
 8001d26:	2200      	movs	r2, #0
 8001d28:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001d2c:	b662      	cpsie	i
 8001d2e:	bd10      	pop	{r4, pc}
 8001d30:	20000e40 	.word	0x20000e40

08001d34 <USART_Init>:
 8001d34:	b530      	push	{r4, r5, lr}
 8001d36:	4604      	mov	r4, r0
 8001d38:	b099      	sub	sp, #100	; 0x64
 8001d3a:	460d      	mov	r5, r1
 8001d3c:	bf00      	nop
 8001d3e:	bf00      	nop
 8001d40:	bf00      	nop
 8001d42:	bf00      	nop
 8001d44:	bf00      	nop
 8001d46:	bf00      	nop
 8001d48:	bf00      	nop
 8001d4a:	6803      	ldr	r3, [r0, #0]
 8001d4c:	f023 0301 	bic.w	r3, r3, #1
 8001d50:	6003      	str	r3, [r0, #0]
 8001d52:	6842      	ldr	r2, [r0, #4]
 8001d54:	688b      	ldr	r3, [r1, #8]
 8001d56:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001d5a:	4313      	orrs	r3, r2
 8001d5c:	6043      	str	r3, [r0, #4]
 8001d5e:	686a      	ldr	r2, [r5, #4]
 8001d60:	68eb      	ldr	r3, [r5, #12]
 8001d62:	6801      	ldr	r1, [r0, #0]
 8001d64:	431a      	orrs	r2, r3
 8001d66:	692b      	ldr	r3, [r5, #16]
 8001d68:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001d6c:	f021 010c 	bic.w	r1, r1, #12
 8001d70:	4313      	orrs	r3, r2
 8001d72:	430b      	orrs	r3, r1
 8001d74:	6003      	str	r3, [r0, #0]
 8001d76:	6882      	ldr	r2, [r0, #8]
 8001d78:	696b      	ldr	r3, [r5, #20]
 8001d7a:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001d7e:	4313      	orrs	r3, r2
 8001d80:	6083      	str	r3, [r0, #8]
 8001d82:	a801      	add	r0, sp, #4
 8001d84:	f7ff fc70 	bl	8001668 <RCC_GetClocksFreq>
 8001d88:	4b17      	ldr	r3, [pc, #92]	; (8001de8 <USART_Init+0xb4>)
 8001d8a:	429c      	cmp	r4, r3
 8001d8c:	d101      	bne.n	8001d92 <USART_Init+0x5e>
 8001d8e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001d90:	e00e      	b.n	8001db0 <USART_Init+0x7c>
 8001d92:	4b16      	ldr	r3, [pc, #88]	; (8001dec <USART_Init+0xb8>)
 8001d94:	429c      	cmp	r4, r3
 8001d96:	d101      	bne.n	8001d9c <USART_Init+0x68>
 8001d98:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001d9a:	e009      	b.n	8001db0 <USART_Init+0x7c>
 8001d9c:	4b14      	ldr	r3, [pc, #80]	; (8001df0 <USART_Init+0xbc>)
 8001d9e:	429c      	cmp	r4, r3
 8001da0:	d101      	bne.n	8001da6 <USART_Init+0x72>
 8001da2:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001da4:	e004      	b.n	8001db0 <USART_Init+0x7c>
 8001da6:	4b13      	ldr	r3, [pc, #76]	; (8001df4 <USART_Init+0xc0>)
 8001da8:	429c      	cmp	r4, r3
 8001daa:	bf0c      	ite	eq
 8001dac:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8001dae:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8001db0:	6823      	ldr	r3, [r4, #0]
 8001db2:	6829      	ldr	r1, [r5, #0]
 8001db4:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001db8:	bf18      	it	ne
 8001dba:	0052      	lslne	r2, r2, #1
 8001dbc:	fbb2 f3f1 	udiv	r3, r2, r1
 8001dc0:	fb01 2213 	mls	r2, r1, r3, r2
 8001dc4:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001dc8:	6822      	ldr	r2, [r4, #0]
 8001dca:	bf28      	it	cs
 8001dcc:	3301      	addcs	r3, #1
 8001dce:	0412      	lsls	r2, r2, #16
 8001dd0:	d506      	bpl.n	8001de0 <USART_Init+0xac>
 8001dd2:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8001dd6:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001dda:	401a      	ands	r2, r3
 8001ddc:	ea41 0302 	orr.w	r3, r1, r2
 8001de0:	b29b      	uxth	r3, r3
 8001de2:	81a3      	strh	r3, [r4, #12]
 8001de4:	b019      	add	sp, #100	; 0x64
 8001de6:	bd30      	pop	{r4, r5, pc}
 8001de8:	40013800 	.word	0x40013800
 8001dec:	40004400 	.word	0x40004400
 8001df0:	40004800 	.word	0x40004800
 8001df4:	40004c00 	.word	0x40004c00

08001df8 <USART_Cmd>:
 8001df8:	bf00      	nop
 8001dfa:	bf00      	nop
 8001dfc:	6803      	ldr	r3, [r0, #0]
 8001dfe:	b111      	cbz	r1, 8001e06 <USART_Cmd+0xe>
 8001e00:	f043 0301 	orr.w	r3, r3, #1
 8001e04:	e001      	b.n	8001e0a <USART_Cmd+0x12>
 8001e06:	f023 0301 	bic.w	r3, r3, #1
 8001e0a:	6003      	str	r3, [r0, #0]
 8001e0c:	4770      	bx	lr

08001e0e <USART_ReceiveData>:
 8001e0e:	bf00      	nop
 8001e10:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001e12:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001e16:	4770      	bx	lr

08001e18 <USART_ITConfig>:
 8001e18:	b510      	push	{r4, lr}
 8001e1a:	bf00      	nop
 8001e1c:	bf00      	nop
 8001e1e:	bf00      	nop
 8001e20:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8001e24:	2401      	movs	r4, #1
 8001e26:	b2c9      	uxtb	r1, r1
 8001e28:	2b02      	cmp	r3, #2
 8001e2a:	fa04 f101 	lsl.w	r1, r4, r1
 8001e2e:	d101      	bne.n	8001e34 <USART_ITConfig+0x1c>
 8001e30:	3004      	adds	r0, #4
 8001e32:	e002      	b.n	8001e3a <USART_ITConfig+0x22>
 8001e34:	2b03      	cmp	r3, #3
 8001e36:	bf08      	it	eq
 8001e38:	3008      	addeq	r0, #8
 8001e3a:	6803      	ldr	r3, [r0, #0]
 8001e3c:	b10a      	cbz	r2, 8001e42 <USART_ITConfig+0x2a>
 8001e3e:	4319      	orrs	r1, r3
 8001e40:	e001      	b.n	8001e46 <USART_ITConfig+0x2e>
 8001e42:	ea23 0101 	bic.w	r1, r3, r1
 8001e46:	6001      	str	r1, [r0, #0]
 8001e48:	bd10      	pop	{r4, pc}

08001e4a <USART_GetITStatus>:
 8001e4a:	b510      	push	{r4, lr}
 8001e4c:	bf00      	nop
 8001e4e:	bf00      	nop
 8001e50:	2401      	movs	r4, #1
 8001e52:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001e56:	b2cb      	uxtb	r3, r1
 8001e58:	42a2      	cmp	r2, r4
 8001e5a:	fa04 f303 	lsl.w	r3, r4, r3
 8001e5e:	d101      	bne.n	8001e64 <USART_GetITStatus+0x1a>
 8001e60:	6802      	ldr	r2, [r0, #0]
 8001e62:	e003      	b.n	8001e6c <USART_GetITStatus+0x22>
 8001e64:	2a02      	cmp	r2, #2
 8001e66:	bf0c      	ite	eq
 8001e68:	6842      	ldreq	r2, [r0, #4]
 8001e6a:	6882      	ldrne	r2, [r0, #8]
 8001e6c:	4013      	ands	r3, r2
 8001e6e:	69c2      	ldr	r2, [r0, #28]
 8001e70:	b143      	cbz	r3, 8001e84 <USART_GetITStatus+0x3a>
 8001e72:	2301      	movs	r3, #1
 8001e74:	0c09      	lsrs	r1, r1, #16
 8001e76:	fa03 f101 	lsl.w	r1, r3, r1
 8001e7a:	4211      	tst	r1, r2
 8001e7c:	bf0c      	ite	eq
 8001e7e:	2000      	moveq	r0, #0
 8001e80:	2001      	movne	r0, #1
 8001e82:	bd10      	pop	{r4, pc}
 8001e84:	4618      	mov	r0, r3
 8001e86:	bd10      	pop	{r4, pc}

08001e88 <USART_ClearITPendingBit>:
 8001e88:	bf00      	nop
 8001e8a:	bf00      	nop
 8001e8c:	2301      	movs	r3, #1
 8001e8e:	0c09      	lsrs	r1, r1, #16
 8001e90:	fa03 f101 	lsl.w	r1, r3, r1
 8001e94:	6201      	str	r1, [r0, #32]
 8001e96:	4770      	bx	lr

08001e98 <uart_write>:
 8001e98:	4b03      	ldr	r3, [pc, #12]	; (8001ea8 <uart_write+0x10>)
 8001e9a:	69da      	ldr	r2, [r3, #28]
 8001e9c:	0612      	lsls	r2, r2, #24
 8001e9e:	d401      	bmi.n	8001ea4 <uart_write+0xc>
 8001ea0:	bf00      	nop
 8001ea2:	e7f9      	b.n	8001e98 <uart_write>
 8001ea4:	8518      	strh	r0, [r3, #40]	; 0x28
 8001ea6:	4770      	bx	lr
 8001ea8:	40013800 	.word	0x40013800

08001eac <uart_init>:
 8001eac:	b530      	push	{r4, r5, lr}
 8001eae:	4b2c      	ldr	r3, [pc, #176]	; (8001f60 <uart_init+0xb4>)
 8001eb0:	4d2c      	ldr	r5, [pc, #176]	; (8001f64 <uart_init+0xb8>)
 8001eb2:	2400      	movs	r4, #0
 8001eb4:	601c      	str	r4, [r3, #0]
 8001eb6:	4b2c      	ldr	r3, [pc, #176]	; (8001f68 <uart_init+0xbc>)
 8001eb8:	b08b      	sub	sp, #44	; 0x2c
 8001eba:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001ebe:	2101      	movs	r1, #1
 8001ec0:	601c      	str	r4, [r3, #0]
 8001ec2:	f7ff fd5d 	bl	8001980 <RCC_AHBPeriphClockCmd>
 8001ec6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001eca:	2101      	movs	r1, #1
 8001ecc:	f7ff fd66 	bl	800199c <RCC_APB2PeriphClockCmd>
 8001ed0:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001ed4:	9302      	str	r3, [sp, #8]
 8001ed6:	2302      	movs	r3, #2
 8001ed8:	f88d 300c 	strb.w	r3, [sp, #12]
 8001edc:	a902      	add	r1, sp, #8
 8001ede:	2303      	movs	r3, #3
 8001ee0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ee4:	f88d 300d 	strb.w	r3, [sp, #13]
 8001ee8:	f88d 400e 	strb.w	r4, [sp, #14]
 8001eec:	f88d 400f 	strb.w	r4, [sp, #15]
 8001ef0:	f000 fb5f 	bl	80025b2 <GPIO_Init>
 8001ef4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ef8:	2109      	movs	r1, #9
 8001efa:	2207      	movs	r2, #7
 8001efc:	f000 fba7 	bl	800264e <GPIO_PinAFConfig>
 8001f00:	2207      	movs	r2, #7
 8001f02:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001f06:	210a      	movs	r1, #10
 8001f08:	f000 fba1 	bl	800264e <GPIO_PinAFConfig>
 8001f0c:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001f10:	9304      	str	r3, [sp, #16]
 8001f12:	4628      	mov	r0, r5
 8001f14:	230c      	movs	r3, #12
 8001f16:	a904      	add	r1, sp, #16
 8001f18:	9308      	str	r3, [sp, #32]
 8001f1a:	9405      	str	r4, [sp, #20]
 8001f1c:	9406      	str	r4, [sp, #24]
 8001f1e:	9407      	str	r4, [sp, #28]
 8001f20:	9409      	str	r4, [sp, #36]	; 0x24
 8001f22:	f7ff ff07 	bl	8001d34 <USART_Init>
 8001f26:	4628      	mov	r0, r5
 8001f28:	2101      	movs	r1, #1
 8001f2a:	f7ff ff65 	bl	8001df8 <USART_Cmd>
 8001f2e:	2201      	movs	r2, #1
 8001f30:	4628      	mov	r0, r5
 8001f32:	490e      	ldr	r1, [pc, #56]	; (8001f6c <uart_init+0xc0>)
 8001f34:	f7ff ff70 	bl	8001e18 <USART_ITConfig>
 8001f38:	2325      	movs	r3, #37	; 0x25
 8001f3a:	f88d 4005 	strb.w	r4, [sp, #5]
 8001f3e:	f88d 4006 	strb.w	r4, [sp, #6]
 8001f42:	a801      	add	r0, sp, #4
 8001f44:	2401      	movs	r4, #1
 8001f46:	f88d 3004 	strb.w	r3, [sp, #4]
 8001f4a:	f88d 4007 	strb.w	r4, [sp, #7]
 8001f4e:	f000 fae7 	bl	8002520 <NVIC_Init>
 8001f52:	4628      	mov	r0, r5
 8001f54:	4621      	mov	r1, r4
 8001f56:	f7ff ff4f 	bl	8001df8 <USART_Cmd>
 8001f5a:	b00b      	add	sp, #44	; 0x2c
 8001f5c:	bd30      	pop	{r4, r5, pc}
 8001f5e:	bf00      	nop
 8001f60:	20000e6c 	.word	0x20000e6c
 8001f64:	40013800 	.word	0x40013800
 8001f68:	20000e70 	.word	0x20000e70
 8001f6c:	00050105 	.word	0x00050105

08001f70 <USART1_IRQHandler>:
 8001f70:	b508      	push	{r3, lr}
 8001f72:	480d      	ldr	r0, [pc, #52]	; (8001fa8 <USART1_IRQHandler+0x38>)
 8001f74:	490d      	ldr	r1, [pc, #52]	; (8001fac <USART1_IRQHandler+0x3c>)
 8001f76:	f7ff ff68 	bl	8001e4a <USART_GetITStatus>
 8001f7a:	b178      	cbz	r0, 8001f9c <USART1_IRQHandler+0x2c>
 8001f7c:	480a      	ldr	r0, [pc, #40]	; (8001fa8 <USART1_IRQHandler+0x38>)
 8001f7e:	f7ff ff46 	bl	8001e0e <USART_ReceiveData>
 8001f82:	4b0b      	ldr	r3, [pc, #44]	; (8001fb0 <USART1_IRQHandler+0x40>)
 8001f84:	490b      	ldr	r1, [pc, #44]	; (8001fb4 <USART1_IRQHandler+0x44>)
 8001f86:	681a      	ldr	r2, [r3, #0]
 8001f88:	b2c0      	uxtb	r0, r0
 8001f8a:	5488      	strb	r0, [r1, r2]
 8001f8c:	681a      	ldr	r2, [r3, #0]
 8001f8e:	3201      	adds	r2, #1
 8001f90:	601a      	str	r2, [r3, #0]
 8001f92:	681a      	ldr	r2, [r3, #0]
 8001f94:	2a0f      	cmp	r2, #15
 8001f96:	bf84      	itt	hi
 8001f98:	2200      	movhi	r2, #0
 8001f9a:	601a      	strhi	r2, [r3, #0]
 8001f9c:	4802      	ldr	r0, [pc, #8]	; (8001fa8 <USART1_IRQHandler+0x38>)
 8001f9e:	4903      	ldr	r1, [pc, #12]	; (8001fac <USART1_IRQHandler+0x3c>)
 8001fa0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001fa4:	f7ff bf70 	b.w	8001e88 <USART_ClearITPendingBit>
 8001fa8:	40013800 	.word	0x40013800
 8001fac:	00050105 	.word	0x00050105
 8001fb0:	20000e6c 	.word	0x20000e6c
 8001fb4:	20000e5c 	.word	0x20000e5c

08001fb8 <i2c_delay>:
 8001fb8:	230b      	movs	r3, #11
 8001fba:	3b01      	subs	r3, #1
 8001fbc:	d001      	beq.n	8001fc2 <i2c_delay+0xa>
 8001fbe:	bf00      	nop
 8001fc0:	e7fb      	b.n	8001fba <i2c_delay+0x2>
 8001fc2:	4770      	bx	lr

08001fc4 <SetLowSDA>:
 8001fc4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001fc6:	4d0d      	ldr	r5, [pc, #52]	; (8001ffc <SetLowSDA+0x38>)
 8001fc8:	2301      	movs	r3, #1
 8001fca:	2203      	movs	r2, #3
 8001fcc:	2480      	movs	r4, #128	; 0x80
 8001fce:	f88d 3004 	strb.w	r3, [sp, #4]
 8001fd2:	f88d 3006 	strb.w	r3, [sp, #6]
 8001fd6:	4628      	mov	r0, r5
 8001fd8:	2300      	movs	r3, #0
 8001fda:	4669      	mov	r1, sp
 8001fdc:	f88d 2005 	strb.w	r2, [sp, #5]
 8001fe0:	f88d 3007 	strb.w	r3, [sp, #7]
 8001fe4:	9400      	str	r4, [sp, #0]
 8001fe6:	f000 fae4 	bl	80025b2 <GPIO_Init>
 8001fea:	4628      	mov	r0, r5
 8001fec:	4621      	mov	r1, r4
 8001fee:	f000 fb2a 	bl	8002646 <GPIO_ResetBits>
 8001ff2:	f7ff ffe1 	bl	8001fb8 <i2c_delay>
 8001ff6:	b003      	add	sp, #12
 8001ff8:	bd30      	pop	{r4, r5, pc}
 8001ffa:	bf00      	nop
 8001ffc:	48000400 	.word	0x48000400

08002000 <SetHighSDA>:
 8002000:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002002:	4d0d      	ldr	r5, [pc, #52]	; (8002038 <SetHighSDA+0x38>)
 8002004:	2203      	movs	r2, #3
 8002006:	2300      	movs	r3, #0
 8002008:	2480      	movs	r4, #128	; 0x80
 800200a:	f88d 2005 	strb.w	r2, [sp, #5]
 800200e:	4628      	mov	r0, r5
 8002010:	2201      	movs	r2, #1
 8002012:	4669      	mov	r1, sp
 8002014:	f88d 3004 	strb.w	r3, [sp, #4]
 8002018:	f88d 2006 	strb.w	r2, [sp, #6]
 800201c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002020:	9400      	str	r4, [sp, #0]
 8002022:	f000 fac6 	bl	80025b2 <GPIO_Init>
 8002026:	4628      	mov	r0, r5
 8002028:	4621      	mov	r1, r4
 800202a:	f000 fb08 	bl	800263e <GPIO_SetBits>
 800202e:	f7ff ffc3 	bl	8001fb8 <i2c_delay>
 8002032:	b003      	add	sp, #12
 8002034:	bd30      	pop	{r4, r5, pc}
 8002036:	bf00      	nop
 8002038:	48000400 	.word	0x48000400

0800203c <SetLowSCL>:
 800203c:	b508      	push	{r3, lr}
 800203e:	4804      	ldr	r0, [pc, #16]	; (8002050 <SetLowSCL+0x14>)
 8002040:	2140      	movs	r1, #64	; 0x40
 8002042:	f000 fb00 	bl	8002646 <GPIO_ResetBits>
 8002046:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800204a:	f7ff bfb5 	b.w	8001fb8 <i2c_delay>
 800204e:	bf00      	nop
 8002050:	48000400 	.word	0x48000400

08002054 <SetHighSCL>:
 8002054:	b508      	push	{r3, lr}
 8002056:	4804      	ldr	r0, [pc, #16]	; (8002068 <SetHighSCL+0x14>)
 8002058:	2140      	movs	r1, #64	; 0x40
 800205a:	f000 faf0 	bl	800263e <GPIO_SetBits>
 800205e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002062:	f7ff bfa9 	b.w	8001fb8 <i2c_delay>
 8002066:	bf00      	nop
 8002068:	48000400 	.word	0x48000400

0800206c <i2c_0_init>:
 800206c:	b507      	push	{r0, r1, r2, lr}
 800206e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002072:	2101      	movs	r1, #1
 8002074:	f7ff fc84 	bl	8001980 <RCC_AHBPeriphClockCmd>
 8002078:	23c0      	movs	r3, #192	; 0xc0
 800207a:	9300      	str	r3, [sp, #0]
 800207c:	2301      	movs	r3, #1
 800207e:	2203      	movs	r2, #3
 8002080:	480a      	ldr	r0, [pc, #40]	; (80020ac <i2c_0_init+0x40>)
 8002082:	f88d 3004 	strb.w	r3, [sp, #4]
 8002086:	4669      	mov	r1, sp
 8002088:	f88d 3006 	strb.w	r3, [sp, #6]
 800208c:	2300      	movs	r3, #0
 800208e:	f88d 2005 	strb.w	r2, [sp, #5]
 8002092:	f88d 3007 	strb.w	r3, [sp, #7]
 8002096:	f000 fa8c 	bl	80025b2 <GPIO_Init>
 800209a:	f7ff ffdb 	bl	8002054 <SetHighSCL>
 800209e:	f7ff ff91 	bl	8001fc4 <SetLowSDA>
 80020a2:	f7ff ffad 	bl	8002000 <SetHighSDA>
 80020a6:	b003      	add	sp, #12
 80020a8:	f85d fb04 	ldr.w	pc, [sp], #4
 80020ac:	48000400 	.word	0x48000400

080020b0 <i2cStart>:
 80020b0:	b508      	push	{r3, lr}
 80020b2:	f7ff ffcf 	bl	8002054 <SetHighSCL>
 80020b6:	f7ff ffa3 	bl	8002000 <SetHighSDA>
 80020ba:	f7ff ffcb 	bl	8002054 <SetHighSCL>
 80020be:	f7ff ff81 	bl	8001fc4 <SetLowSDA>
 80020c2:	f7ff ffbb 	bl	800203c <SetLowSCL>
 80020c6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020ca:	f7ff bf99 	b.w	8002000 <SetHighSDA>

080020ce <i2cStop>:
 80020ce:	b508      	push	{r3, lr}
 80020d0:	f7ff ffb4 	bl	800203c <SetLowSCL>
 80020d4:	f7ff ff76 	bl	8001fc4 <SetLowSDA>
 80020d8:	f7ff ffbc 	bl	8002054 <SetHighSCL>
 80020dc:	f7ff ff72 	bl	8001fc4 <SetLowSDA>
 80020e0:	f7ff ffb8 	bl	8002054 <SetHighSCL>
 80020e4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020e8:	f7ff bf8a 	b.w	8002000 <SetHighSDA>

080020ec <i2cWrite>:
 80020ec:	b538      	push	{r3, r4, r5, lr}
 80020ee:	4604      	mov	r4, r0
 80020f0:	2508      	movs	r5, #8
 80020f2:	f7ff ffa3 	bl	800203c <SetLowSCL>
 80020f6:	0623      	lsls	r3, r4, #24
 80020f8:	d502      	bpl.n	8002100 <i2cWrite+0x14>
 80020fa:	f7ff ff81 	bl	8002000 <SetHighSDA>
 80020fe:	e001      	b.n	8002104 <i2cWrite+0x18>
 8002100:	f7ff ff60 	bl	8001fc4 <SetLowSDA>
 8002104:	3d01      	subs	r5, #1
 8002106:	f7ff ffa5 	bl	8002054 <SetHighSCL>
 800210a:	0064      	lsls	r4, r4, #1
 800210c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002110:	b2e4      	uxtb	r4, r4
 8002112:	d1ee      	bne.n	80020f2 <i2cWrite+0x6>
 8002114:	f7ff ff92 	bl	800203c <SetLowSCL>
 8002118:	f7ff ff72 	bl	8002000 <SetHighSDA>
 800211c:	f7ff ff9a 	bl	8002054 <SetHighSCL>
 8002120:	4b05      	ldr	r3, [pc, #20]	; (8002138 <i2cWrite+0x4c>)
 8002122:	8a1c      	ldrh	r4, [r3, #16]
 8002124:	b2a4      	uxth	r4, r4
 8002126:	f7ff ff89 	bl	800203c <SetLowSCL>
 800212a:	f7ff ff45 	bl	8001fb8 <i2c_delay>
 800212e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002132:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002136:	bd38      	pop	{r3, r4, r5, pc}
 8002138:	48000400 	.word	0x48000400

0800213c <i2cRead>:
 800213c:	b570      	push	{r4, r5, r6, lr}
 800213e:	4606      	mov	r6, r0
 8002140:	f7ff ff7c 	bl	800203c <SetLowSCL>
 8002144:	f7ff ff5c 	bl	8002000 <SetHighSDA>
 8002148:	2508      	movs	r5, #8
 800214a:	2400      	movs	r4, #0
 800214c:	f7ff ff82 	bl	8002054 <SetHighSCL>
 8002150:	4b0d      	ldr	r3, [pc, #52]	; (8002188 <i2cRead+0x4c>)
 8002152:	8a1b      	ldrh	r3, [r3, #16]
 8002154:	0064      	lsls	r4, r4, #1
 8002156:	061a      	lsls	r2, r3, #24
 8002158:	b2e4      	uxtb	r4, r4
 800215a:	bf48      	it	mi
 800215c:	3401      	addmi	r4, #1
 800215e:	f105 35ff 	add.w	r5, r5, #4294967295
 8002162:	bf48      	it	mi
 8002164:	b2e4      	uxtbmi	r4, r4
 8002166:	f7ff ff69 	bl	800203c <SetLowSCL>
 800216a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800216e:	d1ed      	bne.n	800214c <i2cRead+0x10>
 8002170:	b10e      	cbz	r6, 8002176 <i2cRead+0x3a>
 8002172:	f7ff ff27 	bl	8001fc4 <SetLowSDA>
 8002176:	f7ff ff6d 	bl	8002054 <SetHighSCL>
 800217a:	f7ff ff5f 	bl	800203c <SetLowSCL>
 800217e:	f7ff ff1b 	bl	8001fb8 <i2c_delay>
 8002182:	4620      	mov	r0, r4
 8002184:	bd70      	pop	{r4, r5, r6, pc}
 8002186:	bf00      	nop
 8002188:	48000400 	.word	0x48000400

0800218c <i2c_write_reg>:
 800218c:	b570      	push	{r4, r5, r6, lr}
 800218e:	4605      	mov	r5, r0
 8002190:	460c      	mov	r4, r1
 8002192:	4616      	mov	r6, r2
 8002194:	f7ff ff8c 	bl	80020b0 <i2cStart>
 8002198:	4628      	mov	r0, r5
 800219a:	f7ff ffa7 	bl	80020ec <i2cWrite>
 800219e:	4620      	mov	r0, r4
 80021a0:	f7ff ffa4 	bl	80020ec <i2cWrite>
 80021a4:	4630      	mov	r0, r6
 80021a6:	f7ff ffa1 	bl	80020ec <i2cWrite>
 80021aa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80021ae:	f7ff bf8e 	b.w	80020ce <i2cStop>

080021b2 <i2c_read_reg>:
 80021b2:	b538      	push	{r3, r4, r5, lr}
 80021b4:	4604      	mov	r4, r0
 80021b6:	460d      	mov	r5, r1
 80021b8:	f7ff ff7a 	bl	80020b0 <i2cStart>
 80021bc:	4620      	mov	r0, r4
 80021be:	f7ff ff95 	bl	80020ec <i2cWrite>
 80021c2:	4628      	mov	r0, r5
 80021c4:	f7ff ff92 	bl	80020ec <i2cWrite>
 80021c8:	f7ff ff72 	bl	80020b0 <i2cStart>
 80021cc:	f044 0001 	orr.w	r0, r4, #1
 80021d0:	f7ff ff8c 	bl	80020ec <i2cWrite>
 80021d4:	2000      	movs	r0, #0
 80021d6:	f7ff ffb1 	bl	800213c <i2cRead>
 80021da:	4604      	mov	r4, r0
 80021dc:	f7ff ff77 	bl	80020ce <i2cStop>
 80021e0:	4620      	mov	r0, r4
 80021e2:	bd38      	pop	{r3, r4, r5, pc}

080021e4 <SystemInit>:
 80021e4:	4b3b      	ldr	r3, [pc, #236]	; (80022d4 <SystemInit+0xf0>)
 80021e6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80021ea:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80021ee:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80021f2:	4b39      	ldr	r3, [pc, #228]	; (80022d8 <SystemInit+0xf4>)
 80021f4:	681a      	ldr	r2, [r3, #0]
 80021f6:	f042 0201 	orr.w	r2, r2, #1
 80021fa:	601a      	str	r2, [r3, #0]
 80021fc:	6859      	ldr	r1, [r3, #4]
 80021fe:	4a37      	ldr	r2, [pc, #220]	; (80022dc <SystemInit+0xf8>)
 8002200:	400a      	ands	r2, r1
 8002202:	605a      	str	r2, [r3, #4]
 8002204:	681a      	ldr	r2, [r3, #0]
 8002206:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800220a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800220e:	601a      	str	r2, [r3, #0]
 8002210:	681a      	ldr	r2, [r3, #0]
 8002212:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002216:	601a      	str	r2, [r3, #0]
 8002218:	685a      	ldr	r2, [r3, #4]
 800221a:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800221e:	605a      	str	r2, [r3, #4]
 8002220:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002222:	f022 020f 	bic.w	r2, r2, #15
 8002226:	62da      	str	r2, [r3, #44]	; 0x2c
 8002228:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800222a:	4a2d      	ldr	r2, [pc, #180]	; (80022e0 <SystemInit+0xfc>)
 800222c:	b082      	sub	sp, #8
 800222e:	400a      	ands	r2, r1
 8002230:	631a      	str	r2, [r3, #48]	; 0x30
 8002232:	2200      	movs	r2, #0
 8002234:	609a      	str	r2, [r3, #8]
 8002236:	9200      	str	r2, [sp, #0]
 8002238:	9201      	str	r2, [sp, #4]
 800223a:	681a      	ldr	r2, [r3, #0]
 800223c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002240:	601a      	str	r2, [r3, #0]
 8002242:	4b25      	ldr	r3, [pc, #148]	; (80022d8 <SystemInit+0xf4>)
 8002244:	681a      	ldr	r2, [r3, #0]
 8002246:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800224a:	9201      	str	r2, [sp, #4]
 800224c:	9a00      	ldr	r2, [sp, #0]
 800224e:	3201      	adds	r2, #1
 8002250:	9200      	str	r2, [sp, #0]
 8002252:	9a01      	ldr	r2, [sp, #4]
 8002254:	b91a      	cbnz	r2, 800225e <SystemInit+0x7a>
 8002256:	9a00      	ldr	r2, [sp, #0]
 8002258:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800225c:	d1f1      	bne.n	8002242 <SystemInit+0x5e>
 800225e:	681b      	ldr	r3, [r3, #0]
 8002260:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8002264:	bf18      	it	ne
 8002266:	2301      	movne	r3, #1
 8002268:	9301      	str	r3, [sp, #4]
 800226a:	9b01      	ldr	r3, [sp, #4]
 800226c:	2b01      	cmp	r3, #1
 800226e:	d005      	beq.n	800227c <SystemInit+0x98>
 8002270:	4b18      	ldr	r3, [pc, #96]	; (80022d4 <SystemInit+0xf0>)
 8002272:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002276:	609a      	str	r2, [r3, #8]
 8002278:	b002      	add	sp, #8
 800227a:	4770      	bx	lr
 800227c:	4b19      	ldr	r3, [pc, #100]	; (80022e4 <SystemInit+0x100>)
 800227e:	2212      	movs	r2, #18
 8002280:	601a      	str	r2, [r3, #0]
 8002282:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8002286:	685a      	ldr	r2, [r3, #4]
 8002288:	605a      	str	r2, [r3, #4]
 800228a:	685a      	ldr	r2, [r3, #4]
 800228c:	605a      	str	r2, [r3, #4]
 800228e:	685a      	ldr	r2, [r3, #4]
 8002290:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002294:	605a      	str	r2, [r3, #4]
 8002296:	685a      	ldr	r2, [r3, #4]
 8002298:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800229c:	605a      	str	r2, [r3, #4]
 800229e:	685a      	ldr	r2, [r3, #4]
 80022a0:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80022a4:	605a      	str	r2, [r3, #4]
 80022a6:	681a      	ldr	r2, [r3, #0]
 80022a8:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80022ac:	601a      	str	r2, [r3, #0]
 80022ae:	6819      	ldr	r1, [r3, #0]
 80022b0:	4a09      	ldr	r2, [pc, #36]	; (80022d8 <SystemInit+0xf4>)
 80022b2:	0189      	lsls	r1, r1, #6
 80022b4:	d5fb      	bpl.n	80022ae <SystemInit+0xca>
 80022b6:	6853      	ldr	r3, [r2, #4]
 80022b8:	f023 0303 	bic.w	r3, r3, #3
 80022bc:	6053      	str	r3, [r2, #4]
 80022be:	6853      	ldr	r3, [r2, #4]
 80022c0:	f043 0302 	orr.w	r3, r3, #2
 80022c4:	6053      	str	r3, [r2, #4]
 80022c6:	4b04      	ldr	r3, [pc, #16]	; (80022d8 <SystemInit+0xf4>)
 80022c8:	685b      	ldr	r3, [r3, #4]
 80022ca:	f003 030c 	and.w	r3, r3, #12
 80022ce:	2b08      	cmp	r3, #8
 80022d0:	d1f9      	bne.n	80022c6 <SystemInit+0xe2>
 80022d2:	e7cd      	b.n	8002270 <SystemInit+0x8c>
 80022d4:	e000ed00 	.word	0xe000ed00
 80022d8:	40021000 	.word	0x40021000
 80022dc:	f87fc00c 	.word	0xf87fc00c
 80022e0:	ff00fccc 	.word	0xff00fccc
 80022e4:	40022000 	.word	0x40022000

080022e8 <sys_tick_init>:
 80022e8:	4b05      	ldr	r3, [pc, #20]	; (8002300 <sys_tick_init+0x18>)
 80022ea:	4a06      	ldr	r2, [pc, #24]	; (8002304 <sys_tick_init+0x1c>)
 80022ec:	605a      	str	r2, [r3, #4]
 80022ee:	4a06      	ldr	r2, [pc, #24]	; (8002308 <sys_tick_init+0x20>)
 80022f0:	21f0      	movs	r1, #240	; 0xf0
 80022f2:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80022f6:	2200      	movs	r2, #0
 80022f8:	609a      	str	r2, [r3, #8]
 80022fa:	2207      	movs	r2, #7
 80022fc:	601a      	str	r2, [r3, #0]
 80022fe:	4770      	bx	lr
 8002300:	e000e010 	.word	0xe000e010
 8002304:	00029040 	.word	0x00029040
 8002308:	e000ed00 	.word	0xe000ed00

0800230c <sleep>:
 800230c:	bf30      	wfi
 800230e:	4770      	bx	lr

08002310 <sytem_clock_init>:
 8002310:	f7ff bf68 	b.w	80021e4 <SystemInit>

08002314 <pwm_set>:
 8002314:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002318:	b086      	sub	sp, #24
 800231a:	2370      	movs	r3, #112	; 0x70
 800231c:	9301      	str	r3, [sp, #4]
 800231e:	2301      	movs	r3, #1
 8002320:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002324:	2304      	movs	r3, #4
 8002326:	f8ad 300a 	strh.w	r3, [sp, #10]
 800232a:	4f17      	ldr	r7, [pc, #92]	; (8002388 <pwm_set+0x74>)
 800232c:	4c17      	ldr	r4, [pc, #92]	; (800238c <pwm_set+0x78>)
 800232e:	2302      	movs	r3, #2
 8002330:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002334:	2300      	movs	r3, #0
 8002336:	f8ad 3012 	strh.w	r3, [sp, #18]
 800233a:	f8ad 3016 	strh.w	r3, [sp, #22]
 800233e:	683b      	ldr	r3, [r7, #0]
 8002340:	f242 7610 	movw	r6, #10000	; 0x2710
 8002344:	fbb3 f3f6 	udiv	r3, r3, r6
 8002348:	3b02      	subs	r3, #2
 800234a:	4358      	muls	r0, r3
 800234c:	2564      	movs	r5, #100	; 0x64
 800234e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002352:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002356:	4620      	mov	r0, r4
 8002358:	4688      	mov	r8, r1
 800235a:	a901      	add	r1, sp, #4
 800235c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002360:	9303      	str	r3, [sp, #12]
 8002362:	f7ff fb95 	bl	8001a90 <TIM_OC1Init>
 8002366:	683b      	ldr	r3, [r7, #0]
 8002368:	fbb3 f6f6 	udiv	r6, r3, r6
 800236c:	3e02      	subs	r6, #2
 800236e:	fb06 f808 	mul.w	r8, r6, r8
 8002372:	fbb8 f5f5 	udiv	r5, r8, r5
 8002376:	4620      	mov	r0, r4
 8002378:	a901      	add	r1, sp, #4
 800237a:	9503      	str	r5, [sp, #12]
 800237c:	f7ff fbce 	bl	8001b1c <TIM_OC2Init>
 8002380:	b006      	add	sp, #24
 8002382:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002386:	bf00      	nop
 8002388:	20000140 	.word	0x20000140
 800238c:	40012c00 	.word	0x40012c00

08002390 <pwm_init>:
 8002390:	b530      	push	{r4, r5, lr}
 8002392:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002396:	b087      	sub	sp, #28
 8002398:	2101      	movs	r1, #1
 800239a:	f7ff faff 	bl	800199c <RCC_APB2PeriphClockCmd>
 800239e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80023a2:	2101      	movs	r1, #1
 80023a4:	f7ff faec 	bl	8001980 <RCC_AHBPeriphClockCmd>
 80023a8:	4c1d      	ldr	r4, [pc, #116]	; (8002420 <pwm_init+0x90>)
 80023aa:	4d1e      	ldr	r5, [pc, #120]	; (8002424 <pwm_init+0x94>)
 80023ac:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80023b0:	9301      	str	r3, [sp, #4]
 80023b2:	2302      	movs	r3, #2
 80023b4:	f88d 3008 	strb.w	r3, [sp, #8]
 80023b8:	4620      	mov	r0, r4
 80023ba:	2303      	movs	r3, #3
 80023bc:	a901      	add	r1, sp, #4
 80023be:	f88d 3009 	strb.w	r3, [sp, #9]
 80023c2:	f000 f8f6 	bl	80025b2 <GPIO_Init>
 80023c6:	4620      	mov	r0, r4
 80023c8:	210d      	movs	r1, #13
 80023ca:	2206      	movs	r2, #6
 80023cc:	f000 f93f 	bl	800264e <GPIO_PinAFConfig>
 80023d0:	4620      	mov	r0, r4
 80023d2:	210e      	movs	r1, #14
 80023d4:	2206      	movs	r2, #6
 80023d6:	f000 f93a 	bl	800264e <GPIO_PinAFConfig>
 80023da:	4b13      	ldr	r3, [pc, #76]	; (8002428 <pwm_init+0x98>)
 80023dc:	681a      	ldr	r2, [r3, #0]
 80023de:	f242 7310 	movw	r3, #10000	; 0x2710
 80023e2:	fbb2 f3f3 	udiv	r3, r2, r3
 80023e6:	2400      	movs	r4, #0
 80023e8:	3b01      	subs	r3, #1
 80023ea:	4628      	mov	r0, r5
 80023ec:	a903      	add	r1, sp, #12
 80023ee:	9304      	str	r3, [sp, #16]
 80023f0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80023f4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80023f8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80023fc:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002400:	f7ff fae8 	bl	80019d4 <TIM_TimeBaseInit>
 8002404:	4620      	mov	r0, r4
 8002406:	4621      	mov	r1, r4
 8002408:	f7ff ff84 	bl	8002314 <pwm_set>
 800240c:	4628      	mov	r0, r5
 800240e:	2101      	movs	r1, #1
 8002410:	f7ff fb30 	bl	8001a74 <TIM_Cmd>
 8002414:	4628      	mov	r0, r5
 8002416:	2101      	movs	r1, #1
 8002418:	f7ff fbbe 	bl	8001b98 <TIM_CtrlPWMOutputs>
 800241c:	b007      	add	sp, #28
 800241e:	bd30      	pop	{r4, r5, pc}
 8002420:	48000400 	.word	0x48000400
 8002424:	40012c00 	.word	0x40012c00
 8002428:	20000140 	.word	0x20000140

0800242c <drv8834_run>:
 800242c:	1e02      	subs	r2, r0, #0
 800242e:	4b1a      	ldr	r3, [pc, #104]	; (8002498 <drv8834_run+0x6c>)
 8002430:	dd09      	ble.n	8002446 <drv8834_run+0x1a>
 8002432:	6998      	ldr	r0, [r3, #24]
 8002434:	f040 0008 	orr.w	r0, r0, #8
 8002438:	6198      	str	r0, [r3, #24]
 800243a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800243e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002442:	6198      	str	r0, [r3, #24]
 8002444:	e00b      	b.n	800245e <drv8834_run+0x32>
 8002446:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002448:	b280      	uxth	r0, r0
 800244a:	f040 0008 	orr.w	r0, r0, #8
 800244e:	8518      	strh	r0, [r3, #40]	; 0x28
 8002450:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002454:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002458:	4252      	negs	r2, r2
 800245a:	8518      	strh	r0, [r3, #40]	; 0x28
 800245c:	b212      	sxth	r2, r2
 800245e:	2900      	cmp	r1, #0
 8002460:	4b0d      	ldr	r3, [pc, #52]	; (8002498 <drv8834_run+0x6c>)
 8002462:	dd05      	ble.n	8002470 <drv8834_run+0x44>
 8002464:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002466:	b280      	uxth	r0, r0
 8002468:	f040 0020 	orr.w	r0, r0, #32
 800246c:	8518      	strh	r0, [r3, #40]	; 0x28
 800246e:	e005      	b.n	800247c <drv8834_run+0x50>
 8002470:	6998      	ldr	r0, [r3, #24]
 8002472:	4249      	negs	r1, r1
 8002474:	f040 0020 	orr.w	r0, r0, #32
 8002478:	6198      	str	r0, [r3, #24]
 800247a:	b209      	sxth	r1, r1
 800247c:	2964      	cmp	r1, #100	; 0x64
 800247e:	bfb4      	ite	lt
 8002480:	4608      	movlt	r0, r1
 8002482:	2064      	movge	r0, #100	; 0x64
 8002484:	2a64      	cmp	r2, #100	; 0x64
 8002486:	bfa8      	it	ge
 8002488:	2264      	movge	r2, #100	; 0x64
 800248a:	f1c0 0064 	rsb	r0, r0, #100	; 0x64
 800248e:	f1c2 0164 	rsb	r1, r2, #100	; 0x64
 8002492:	f7ff bf3f 	b.w	8002314 <pwm_set>
 8002496:	bf00      	nop
 8002498:	48000400 	.word	0x48000400

0800249c <drv8834_init>:
 800249c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800249e:	4d1f      	ldr	r5, [pc, #124]	; (800251c <drv8834_init+0x80>)
 80024a0:	2400      	movs	r4, #0
 80024a2:	2603      	movs	r6, #3
 80024a4:	2338      	movs	r3, #56	; 0x38
 80024a6:	2701      	movs	r7, #1
 80024a8:	4628      	mov	r0, r5
 80024aa:	4669      	mov	r1, sp
 80024ac:	9300      	str	r3, [sp, #0]
 80024ae:	f88d 7004 	strb.w	r7, [sp, #4]
 80024b2:	f88d 4006 	strb.w	r4, [sp, #6]
 80024b6:	f88d 6005 	strb.w	r6, [sp, #5]
 80024ba:	f88d 4007 	strb.w	r4, [sp, #7]
 80024be:	f000 f878 	bl	80025b2 <GPIO_Init>
 80024c2:	2308      	movs	r3, #8
 80024c4:	9300      	str	r3, [sp, #0]
 80024c6:	4628      	mov	r0, r5
 80024c8:	2302      	movs	r3, #2
 80024ca:	4669      	mov	r1, sp
 80024cc:	f88d 3004 	strb.w	r3, [sp, #4]
 80024d0:	f88d 4006 	strb.w	r4, [sp, #6]
 80024d4:	f88d 6005 	strb.w	r6, [sp, #5]
 80024d8:	f88d 4007 	strb.w	r4, [sp, #7]
 80024dc:	f000 f869 	bl	80025b2 <GPIO_Init>
 80024e0:	220f      	movs	r2, #15
 80024e2:	4628      	mov	r0, r5
 80024e4:	4631      	mov	r1, r6
 80024e6:	f000 f8b2 	bl	800264e <GPIO_PinAFConfig>
 80024ea:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80024ee:	4669      	mov	r1, sp
 80024f0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80024f4:	9300      	str	r3, [sp, #0]
 80024f6:	f88d 7004 	strb.w	r7, [sp, #4]
 80024fa:	f88d 4006 	strb.w	r4, [sp, #6]
 80024fe:	f88d 6005 	strb.w	r6, [sp, #5]
 8002502:	f88d 4007 	strb.w	r4, [sp, #7]
 8002506:	f000 f854 	bl	80025b2 <GPIO_Init>
 800250a:	2310      	movs	r3, #16
 800250c:	852b      	strh	r3, [r5, #40]	; 0x28
 800250e:	4620      	mov	r0, r4
 8002510:	4621      	mov	r1, r4
 8002512:	f7ff ff8b 	bl	800242c <drv8834_run>
 8002516:	b003      	add	sp, #12
 8002518:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800251a:	bf00      	nop
 800251c:	48000400 	.word	0x48000400

08002520 <NVIC_Init>:
 8002520:	b510      	push	{r4, lr}
 8002522:	bf00      	nop
 8002524:	bf00      	nop
 8002526:	bf00      	nop
 8002528:	78c2      	ldrb	r2, [r0, #3]
 800252a:	7803      	ldrb	r3, [r0, #0]
 800252c:	b30a      	cbz	r2, 8002572 <NVIC_Init+0x52>
 800252e:	4a16      	ldr	r2, [pc, #88]	; (8002588 <NVIC_Init+0x68>)
 8002530:	7844      	ldrb	r4, [r0, #1]
 8002532:	68d2      	ldr	r2, [r2, #12]
 8002534:	43d2      	mvns	r2, r2
 8002536:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800253a:	f1c2 0104 	rsb	r1, r2, #4
 800253e:	b2c9      	uxtb	r1, r1
 8002540:	fa04 f101 	lsl.w	r1, r4, r1
 8002544:	240f      	movs	r4, #15
 8002546:	fa44 f202 	asr.w	r2, r4, r2
 800254a:	7884      	ldrb	r4, [r0, #2]
 800254c:	b2c9      	uxtb	r1, r1
 800254e:	4022      	ands	r2, r4
 8002550:	430a      	orrs	r2, r1
 8002552:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002556:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800255a:	0112      	lsls	r2, r2, #4
 800255c:	b2d2      	uxtb	r2, r2
 800255e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002562:	7803      	ldrb	r3, [r0, #0]
 8002564:	2201      	movs	r2, #1
 8002566:	0959      	lsrs	r1, r3, #5
 8002568:	f003 031f 	and.w	r3, r3, #31
 800256c:	fa02 f303 	lsl.w	r3, r2, r3
 8002570:	e006      	b.n	8002580 <NVIC_Init+0x60>
 8002572:	0959      	lsrs	r1, r3, #5
 8002574:	2201      	movs	r2, #1
 8002576:	f003 031f 	and.w	r3, r3, #31
 800257a:	fa02 f303 	lsl.w	r3, r2, r3
 800257e:	3120      	adds	r1, #32
 8002580:	4a02      	ldr	r2, [pc, #8]	; (800258c <NVIC_Init+0x6c>)
 8002582:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002586:	bd10      	pop	{r4, pc}
 8002588:	e000ed00 	.word	0xe000ed00
 800258c:	e000e100 	.word	0xe000e100

08002590 <lib_low_level_init>:
 8002590:	b508      	push	{r3, lr}
 8002592:	f7ff febd 	bl	8002310 <sytem_clock_init>
 8002596:	f000 f871 	bl	800267c <gpio_init>
 800259a:	f7ff fc87 	bl	8001eac <uart_init>
 800259e:	f7ff fb0b 	bl	8001bb8 <timer_init>
 80025a2:	f7ff fef5 	bl	8002390 <pwm_init>
 80025a6:	f7ff ff79 	bl	800249c <drv8834_init>
 80025aa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025ae:	f7ff bd5d 	b.w	800206c <i2c_0_init>

080025b2 <GPIO_Init>:
 80025b2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80025b4:	bf00      	nop
 80025b6:	bf00      	nop
 80025b8:	bf00      	nop
 80025ba:	bf00      	nop
 80025bc:	2300      	movs	r3, #0
 80025be:	680e      	ldr	r6, [r1, #0]
 80025c0:	461a      	mov	r2, r3
 80025c2:	2501      	movs	r5, #1
 80025c4:	4095      	lsls	r5, r2
 80025c6:	ea05 0406 	and.w	r4, r5, r6
 80025ca:	42ac      	cmp	r4, r5
 80025cc:	d131      	bne.n	8002632 <GPIO_Init+0x80>
 80025ce:	790d      	ldrb	r5, [r1, #4]
 80025d0:	1e6f      	subs	r7, r5, #1
 80025d2:	b2ff      	uxtb	r7, r7
 80025d4:	2f01      	cmp	r7, #1
 80025d6:	d81c      	bhi.n	8002612 <GPIO_Init+0x60>
 80025d8:	bf00      	nop
 80025da:	f04f 0c03 	mov.w	ip, #3
 80025de:	6887      	ldr	r7, [r0, #8]
 80025e0:	fa0c fc03 	lsl.w	ip, ip, r3
 80025e4:	ea27 070c 	bic.w	r7, r7, ip
 80025e8:	6087      	str	r7, [r0, #8]
 80025ea:	f891 c005 	ldrb.w	ip, [r1, #5]
 80025ee:	6887      	ldr	r7, [r0, #8]
 80025f0:	fa0c fc03 	lsl.w	ip, ip, r3
 80025f4:	ea4c 0707 	orr.w	r7, ip, r7
 80025f8:	6087      	str	r7, [r0, #8]
 80025fa:	bf00      	nop
 80025fc:	8887      	ldrh	r7, [r0, #4]
 80025fe:	b2bf      	uxth	r7, r7
 8002600:	ea27 0404 	bic.w	r4, r7, r4
 8002604:	8084      	strh	r4, [r0, #4]
 8002606:	798c      	ldrb	r4, [r1, #6]
 8002608:	8887      	ldrh	r7, [r0, #4]
 800260a:	4094      	lsls	r4, r2
 800260c:	433c      	orrs	r4, r7
 800260e:	b2a4      	uxth	r4, r4
 8002610:	8084      	strh	r4, [r0, #4]
 8002612:	2403      	movs	r4, #3
 8002614:	6807      	ldr	r7, [r0, #0]
 8002616:	409c      	lsls	r4, r3
 8002618:	43e4      	mvns	r4, r4
 800261a:	4027      	ands	r7, r4
 800261c:	6007      	str	r7, [r0, #0]
 800261e:	6807      	ldr	r7, [r0, #0]
 8002620:	409d      	lsls	r5, r3
 8002622:	433d      	orrs	r5, r7
 8002624:	6005      	str	r5, [r0, #0]
 8002626:	68c5      	ldr	r5, [r0, #12]
 8002628:	402c      	ands	r4, r5
 800262a:	79cd      	ldrb	r5, [r1, #7]
 800262c:	409d      	lsls	r5, r3
 800262e:	432c      	orrs	r4, r5
 8002630:	60c4      	str	r4, [r0, #12]
 8002632:	3201      	adds	r2, #1
 8002634:	2a10      	cmp	r2, #16
 8002636:	f103 0302 	add.w	r3, r3, #2
 800263a:	d1c2      	bne.n	80025c2 <GPIO_Init+0x10>
 800263c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800263e <GPIO_SetBits>:
 800263e:	bf00      	nop
 8002640:	bf00      	nop
 8002642:	6181      	str	r1, [r0, #24]
 8002644:	4770      	bx	lr

08002646 <GPIO_ResetBits>:
 8002646:	bf00      	nop
 8002648:	bf00      	nop
 800264a:	8501      	strh	r1, [r0, #40]	; 0x28
 800264c:	4770      	bx	lr

0800264e <GPIO_PinAFConfig>:
 800264e:	b510      	push	{r4, lr}
 8002650:	bf00      	nop
 8002652:	bf00      	nop
 8002654:	bf00      	nop
 8002656:	f001 0307 	and.w	r3, r1, #7
 800265a:	08c9      	lsrs	r1, r1, #3
 800265c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002660:	009b      	lsls	r3, r3, #2
 8002662:	6a04      	ldr	r4, [r0, #32]
 8002664:	210f      	movs	r1, #15
 8002666:	4099      	lsls	r1, r3
 8002668:	ea24 0101 	bic.w	r1, r4, r1
 800266c:	6201      	str	r1, [r0, #32]
 800266e:	6a01      	ldr	r1, [r0, #32]
 8002670:	fa02 f303 	lsl.w	r3, r2, r3
 8002674:	430b      	orrs	r3, r1
 8002676:	6203      	str	r3, [r0, #32]
 8002678:	bd10      	pop	{r4, pc}
	...

0800267c <gpio_init>:
 800267c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002680:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002684:	2101      	movs	r1, #1
 8002686:	f7ff f97b 	bl	8001980 <RCC_AHBPeriphClockCmd>
 800268a:	4d21      	ldr	r5, [pc, #132]	; (8002710 <gpio_init+0x94>)
 800268c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002690:	2101      	movs	r1, #1
 8002692:	f7ff f975 	bl	8001980 <RCC_AHBPeriphClockCmd>
 8002696:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 800269a:	2101      	movs	r1, #1
 800269c:	f7ff f970 	bl	8001980 <RCC_AHBPeriphClockCmd>
 80026a0:	2400      	movs	r4, #0
 80026a2:	2603      	movs	r6, #3
 80026a4:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 80026a8:	2701      	movs	r7, #1
 80026aa:	4628      	mov	r0, r5
 80026ac:	4669      	mov	r1, sp
 80026ae:	f88d 7004 	strb.w	r7, [sp, #4]
 80026b2:	f8cd 9000 	str.w	r9, [sp]
 80026b6:	f88d 4006 	strb.w	r4, [sp, #6]
 80026ba:	f88d 6005 	strb.w	r6, [sp, #5]
 80026be:	f88d 4007 	strb.w	r4, [sp, #7]
 80026c2:	f7ff ff76 	bl	80025b2 <GPIO_Init>
 80026c6:	f88d 7004 	strb.w	r7, [sp, #4]
 80026ca:	4f12      	ldr	r7, [pc, #72]	; (8002714 <gpio_init+0x98>)
 80026cc:	f88d 4006 	strb.w	r4, [sp, #6]
 80026d0:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 80026d4:	4638      	mov	r0, r7
 80026d6:	4669      	mov	r1, sp
 80026d8:	f8cd 8000 	str.w	r8, [sp]
 80026dc:	f88d 6005 	strb.w	r6, [sp, #5]
 80026e0:	f88d 4007 	strb.w	r4, [sp, #7]
 80026e4:	f7ff ff65 	bl	80025b2 <GPIO_Init>
 80026e8:	f44f 7300 	mov.w	r3, #512	; 0x200
 80026ec:	4628      	mov	r0, r5
 80026ee:	4669      	mov	r1, sp
 80026f0:	9300      	str	r3, [sp, #0]
 80026f2:	f88d 4004 	strb.w	r4, [sp, #4]
 80026f6:	f88d 6005 	strb.w	r6, [sp, #5]
 80026fa:	f88d 4007 	strb.w	r4, [sp, #7]
 80026fe:	f7ff ff58 	bl	80025b2 <GPIO_Init>
 8002702:	f8c5 9018 	str.w	r9, [r5, #24]
 8002706:	f8c7 8018 	str.w	r8, [r7, #24]
 800270a:	b003      	add	sp, #12
 800270c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002710:	48000400 	.word	0x48000400
 8002714:	48000800 	.word	0x48000800

08002718 <led_on>:
 8002718:	0402      	lsls	r2, r0, #16
 800271a:	d503      	bpl.n	8002724 <led_on+0xc>
 800271c:	4b05      	ldr	r3, [pc, #20]	; (8002734 <led_on+0x1c>)
 800271e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002722:	619a      	str	r2, [r3, #24]
 8002724:	0483      	lsls	r3, r0, #18
 8002726:	d503      	bpl.n	8002730 <led_on+0x18>
 8002728:	4b03      	ldr	r3, [pc, #12]	; (8002738 <led_on+0x20>)
 800272a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800272e:	851a      	strh	r2, [r3, #40]	; 0x28
 8002730:	4770      	bx	lr
 8002732:	bf00      	nop
 8002734:	48000400 	.word	0x48000400
 8002738:	48000800 	.word	0x48000800

0800273c <led_off>:
 800273c:	0403      	lsls	r3, r0, #16
 800273e:	d503      	bpl.n	8002748 <led_off+0xc>
 8002740:	4b05      	ldr	r3, [pc, #20]	; (8002758 <led_off+0x1c>)
 8002742:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002746:	851a      	strh	r2, [r3, #40]	; 0x28
 8002748:	0481      	lsls	r1, r0, #18
 800274a:	d503      	bpl.n	8002754 <led_off+0x18>
 800274c:	4b03      	ldr	r3, [pc, #12]	; (800275c <led_off+0x20>)
 800274e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002752:	619a      	str	r2, [r3, #24]
 8002754:	4770      	bx	lr
 8002756:	bf00      	nop
 8002758:	48000400 	.word	0x48000400
 800275c:	48000800 	.word	0x48000800

08002760 <get_key>:
 8002760:	4b02      	ldr	r3, [pc, #8]	; (800276c <get_key+0xc>)
 8002762:	8a18      	ldrh	r0, [r3, #16]
 8002764:	43c0      	mvns	r0, r0
 8002766:	f400 7000 	and.w	r0, r0, #512	; 0x200
 800276a:	4770      	bx	lr
 800276c:	48000400 	.word	0x48000400

08002770 <Default_Handler>:
 8002770:	4668      	mov	r0, sp
 8002772:	f020 0107 	bic.w	r1, r0, #7
 8002776:	468d      	mov	sp, r1
 8002778:	bf00      	nop
 800277a:	e7fd      	b.n	8002778 <Default_Handler+0x8>

0800277c <HardFault_Handler>:
 800277c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002780:	f7ff ffca 	bl	8002718 <led_on>
 8002784:	4b06      	ldr	r3, [pc, #24]	; (80027a0 <HardFault_Handler+0x24>)
 8002786:	3b01      	subs	r3, #1
 8002788:	d001      	beq.n	800278e <HardFault_Handler+0x12>
 800278a:	bf00      	nop
 800278c:	e7fb      	b.n	8002786 <HardFault_Handler+0xa>
 800278e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002792:	f7ff ffd3 	bl	800273c <led_off>
 8002796:	4b02      	ldr	r3, [pc, #8]	; (80027a0 <HardFault_Handler+0x24>)
 8002798:	3b01      	subs	r3, #1
 800279a:	d0ef      	beq.n	800277c <HardFault_Handler>
 800279c:	bf00      	nop
 800279e:	e7fb      	b.n	8002798 <HardFault_Handler+0x1c>
 80027a0:	00989681 	.word	0x00989681

080027a4 <_reset_init>:
 80027a4:	4a0e      	ldr	r2, [pc, #56]	; (80027e0 <_reset_init+0x3c>)
 80027a6:	480f      	ldr	r0, [pc, #60]	; (80027e4 <_reset_init+0x40>)
 80027a8:	1a80      	subs	r0, r0, r2
 80027aa:	1080      	asrs	r0, r0, #2
 80027ac:	2300      	movs	r3, #0
 80027ae:	4283      	cmp	r3, r0
 80027b0:	d006      	beq.n	80027c0 <_reset_init+0x1c>
 80027b2:	490d      	ldr	r1, [pc, #52]	; (80027e8 <_reset_init+0x44>)
 80027b4:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 80027b8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80027bc:	3301      	adds	r3, #1
 80027be:	e7f6      	b.n	80027ae <_reset_init+0xa>
 80027c0:	4b0a      	ldr	r3, [pc, #40]	; (80027ec <_reset_init+0x48>)
 80027c2:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80027c6:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80027ca:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80027ce:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80027d2:	685a      	ldr	r2, [r3, #4]
 80027d4:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80027d8:	605a      	str	r2, [r3, #4]
 80027da:	f7fe bf31 	b.w	8001640 <main>
 80027de:	bf00      	nop
 80027e0:	20000000 	.word	0x20000000
 80027e4:	20000144 	.word	0x20000144
 80027e8:	08002894 	.word	0x08002894
 80027ec:	e000ed00 	.word	0xe000ed00

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
 8002831:	65          	.byte	0x65
 8002832:	7272      	.short	0x7272
 8002834:	6320726f 	.word	0x6320726f
 8002838:	2065646f 	.word	0x2065646f
 800283c:	253a7525 	.word	0x253a7525
 8002840:	0a75      	.short	0x0a75
 8002842:	00          	.byte	0x00
 8002843:	0a          	.byte	0x0a
 8002844:	636c6577 	.word	0x636c6577
 8002848:	20656d6f 	.word	0x20656d6f
 800284c:	53206f74 	.word	0x53206f74
 8002850:	68757a75 	.word	0x68757a75
 8002854:	20534f61 	.word	0x20534f61
 8002858:	205e5f5e 	.word	0x205e5f5e
 800285c:	2e302e32 	.word	0x2e302e32
 8002860:	55420a36 	.word	0x55420a36
 8002864:	20444c49 	.word	0x20444c49
 8002868:	2072614d 	.word	0x2072614d
 800286c:	32203120 	.word	0x32203120
 8002870:	20363130 	.word	0x20363130
 8002874:	303a3431 	.word	0x303a3431
 8002878:	34333a34 	.word	0x34333a34
 800287c:	7973000a 	.word	0x7973000a
 8002880:	6d657473 	.word	0x6d657473
 8002884:	6f626120 	.word	0x6f626120
 8002888:	64657472 	.word	0x64657472
 800288c:	0000000a 	.word	0x0000000a

08002890 <__EH_FRAME_BEGIN__>:
 8002890:	00000000                                ....
