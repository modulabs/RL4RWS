
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN6CRobot14get_error_typeEv>:
 8000188:	6dc0      	ldr	r0, [r0, #92]	; 0x5c
 800018a:	4770      	bx	lr

0800018c <_ZN6CRobot14get_error_codeEv>:
 800018c:	6d80      	ldr	r0, [r0, #88]	; 0x58
 800018e:	4770      	bx	lr

08000190 <_ZN6CRobot13set_configureE15sRobotConfigure>:
 8000190:	b084      	sub	sp, #16
 8000192:	b530      	push	{r4, r5, lr}
 8000194:	ac04      	add	r4, sp, #16
 8000196:	e884 000e 	stmia.w	r4, {r1, r2, r3}
 800019a:	4605      	mov	r5, r0
 800019c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
 800019e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 80001a0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
 80001a2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 80001a4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
 80001a8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 80001ac:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80001b0:	b004      	add	sp, #16
 80001b2:	4770      	bx	lr

080001b4 <_ZN6CRobot19get_robot_configureEv>:
 80001b4:	4770      	bx	lr

080001b6 <_ZN6CRobot24get_line_position_sensorEv>:
 80001b6:	3030      	adds	r0, #48	; 0x30
 80001b8:	4770      	bx	lr

080001ba <_ZN6CRobot28get_obstacle_position_sensorEv>:
 80001ba:	3040      	adds	r0, #64	; 0x40
 80001bc:	4770      	bx	lr

080001be <_ZN6CRobot14get_imu_sensorEv>:
 80001be:	3048      	adds	r0, #72	; 0x48
 80001c0:	4770      	bx	lr

080001c2 <_ZN6CRobot10set_motorsEii>:
 80001c2:	4608      	mov	r0, r1
 80001c4:	4611      	mov	r1, r2
 80001c6:	f002 bcbd 	b.w	8002b44 <drv8834_run>

080001ca <_ZN6CRobot9reset_imuEv>:
 80001ca:	2300      	movs	r3, #0
 80001cc:	6483      	str	r3, [r0, #72]	; 0x48
 80001ce:	64c3      	str	r3, [r0, #76]	; 0x4c
 80001d0:	6503      	str	r3, [r0, #80]	; 0x50
 80001d2:	4770      	bx	lr

080001d4 <_ZN6CRobot16line_sensor_readEv>:
 80001d4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80001d6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80001da:	4604      	mov	r4, r0
 80001dc:	ebc3 05c3 	rsb	r5, r3, r3, lsl #3
 80001e0:	f001 fd22 	bl	8001c28 <rgb_get>
 80001e4:	f9b0 2058 	ldrsh.w	r2, [r0, #88]	; 0x58
 80001e8:	18ab      	adds	r3, r5, r2
 80001ea:	2208      	movs	r2, #8
 80001ec:	fb93 f3f2 	sdiv	r3, r3, r2
 80001f0:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
 80001f4:	6463      	str	r3, [r4, #68]	; 0x44
 80001f6:	4293      	cmp	r3, r2
 80001f8:	f04f 0600 	mov.w	r6, #0
 80001fc:	bfcc      	ite	gt
 80001fe:	2301      	movgt	r3, #1
 8000200:	2300      	movle	r3, #0
 8000202:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 8000206:	4637      	mov	r7, r6
 8000208:	46b0      	mov	r8, r6
 800020a:	46b1      	mov	r9, r6
 800020c:	4635      	mov	r5, r6
 800020e:	f001 fd0b 	bl	8001c28 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b88      	ldr	r3, [pc, #544]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fd00 	bl	8001c28 <rgb_get>
 8000228:	4b85      	ldr	r3, [pc, #532]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fcf6 	bl	8001c28 <rgb_get>
 800023c:	4b81      	ldr	r3, [pc, #516]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fced 	bl	8001c28 <rgb_get>
 800024e:	4b7e      	ldr	r3, [pc, #504]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fce4 	bl	8001c28 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fcdd 	bl	8001c28 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fcd8 	bl	8001c28 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fcd1 	bl	8001c28 <rgb_get>
 8000286:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800028a:	3501      	adds	r5, #1
 800028c:	f9b0 3024 	ldrsh.w	r3, [r0, #36]	; 0x24
 8000290:	2d08      	cmp	r5, #8
 8000292:	441e      	add	r6, r3
 8000294:	d1bb      	bne.n	800020e <_ZN6CRobot16line_sensor_readEv+0x3a>
 8000296:	fb99 f9f5 	sdiv	r9, r9, r5
 800029a:	fb98 f8f5 	sdiv	r8, r8, r5
 800029e:	fb97 f7f5 	sdiv	r7, r7, r5
 80002a2:	fb96 f5f5 	sdiv	r5, r6, r5
 80002a6:	2600      	movs	r6, #0
 80002a8:	f001 fcbe 	bl	8001c28 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fcbb 	bl	8001c28 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fcaf 	bl	8001c28 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fcac 	bl	8001c28 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fca4 	bl	8001c28 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fca1 	bl	8001c28 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fc96 	bl	8001c28 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fc93 	bl	8001c28 <rgb_get>
 8000302:	f106 0310 	add.w	r3, r6, #16
 8000306:	005b      	lsls	r3, r3, #1
 8000308:	4418      	add	r0, r3
 800030a:	449a      	add	sl, r3
 800030c:	8883      	ldrh	r3, [r0, #4]
 800030e:	3601      	adds	r6, #1
 8000310:	1b5b      	subs	r3, r3, r5
 8000312:	2e08      	cmp	r6, #8
 8000314:	f8aa 3004 	strh.w	r3, [sl, #4]
 8000318:	d1c6      	bne.n	80002a8 <_ZN6CRobot16line_sensor_readEv+0xd4>
 800031a:	f104 0668 	add.w	r6, r4, #104	; 0x68
 800031e:	2500      	movs	r5, #0
 8000320:	f001 fc82 	bl	8001c28 <rgb_get>
 8000324:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000328:	3501      	adds	r5, #1
 800032a:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 800032e:	f846 3f04 	str.w	r3, [r6, #4]!
 8000332:	2d08      	cmp	r5, #8
 8000334:	d1f4      	bne.n	8000320 <_ZN6CRobot16line_sensor_readEv+0x14c>
 8000336:	6fe6      	ldr	r6, [r4, #124]	; 0x7c
 8000338:	f8d4 e078 	ldr.w	lr, [r4, #120]	; 0x78
 800033c:	f8d4 7080 	ldr.w	r7, [r4, #128]	; 0x80
 8000340:	f9b4 5000 	ldrsh.w	r5, [r4]
 8000344:	eb1e 0206 	adds.w	r2, lr, r6
 8000348:	bf1f      	itttt	ne
 800034a:	4b40      	ldrne	r3, [pc, #256]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 800034c:	f9b3 1006 	ldrshne.w	r1, [r3, #6]
 8000350:	f9b3 3008 	ldrshne.w	r3, [r3, #8]
 8000354:	4373      	mulne	r3, r6
 8000356:	bf17      	itett	ne
 8000358:	fb01 330e 	mlane	r3, r1, lr, r3
 800035c:	4613      	moveq	r3, r2
 800035e:	fb93 f3f2 	sdivne	r3, r3, r2
 8000362:	2102      	movne	r1, #2
 8000364:	bf18      	it	ne
 8000366:	fb92 f2f1 	sdivne	r2, r2, r1
 800036a:	19b9      	adds	r1, r7, r6
 800036c:	d00c      	beq.n	8000388 <_ZN6CRobot16line_sensor_readEv+0x1b4>
 800036e:	42af      	cmp	r7, r5
 8000370:	dd0a      	ble.n	8000388 <_ZN6CRobot16line_sensor_readEv+0x1b4>
 8000372:	4b36      	ldr	r3, [pc, #216]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 8000374:	f9b3 0008 	ldrsh.w	r0, [r3, #8]
 8000378:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 800037c:	4370      	muls	r0, r6
 800037e:	fb02 0007 	mla	r0, r2, r7, r0
 8000382:	463a      	mov	r2, r7
 8000384:	fb90 f3f1 	sdiv	r3, r0, r1
 8000388:	6f66      	ldr	r6, [r4, #116]	; 0x74
 800038a:	eb16 0c0e 	adds.w	ip, r6, lr
 800038e:	d00d      	beq.n	80003ac <_ZN6CRobot16line_sensor_readEv+0x1d8>
 8000390:	42ae      	cmp	r6, r5
 8000392:	dd0b      	ble.n	80003ac <_ZN6CRobot16line_sensor_readEv+0x1d8>
 8000394:	4b2d      	ldr	r3, [pc, #180]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 8000396:	f9b3 1006 	ldrsh.w	r1, [r3, #6]
 800039a:	f9b3 0004 	ldrsh.w	r0, [r3, #4]
 800039e:	fb01 f10e 	mul.w	r1, r1, lr
 80003a2:	4632      	mov	r2, r6
 80003a4:	fb00 1106 	mla	r1, r0, r6, r1
 80003a8:	fb91 f3fc 	sdiv	r3, r1, ip
 80003ac:	f8d4 1084 	ldr.w	r1, [r4, #132]	; 0x84
 80003b0:	eb11 0e07 	adds.w	lr, r1, r7
 80003b4:	d00c      	beq.n	80003d0 <_ZN6CRobot16line_sensor_readEv+0x1fc>
 80003b6:	42a9      	cmp	r1, r5
 80003b8:	dd0a      	ble.n	80003d0 <_ZN6CRobot16line_sensor_readEv+0x1fc>
 80003ba:	4b24      	ldr	r3, [pc, #144]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 80003bc:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 80003c0:	f9b3 000c 	ldrsh.w	r0, [r3, #12]
 80003c4:	437a      	muls	r2, r7
 80003c6:	fb00 2201 	mla	r2, r0, r1, r2
 80003ca:	fb92 f3fe 	sdiv	r3, r2, lr
 80003ce:	460a      	mov	r2, r1
 80003d0:	6f21      	ldr	r1, [r4, #112]	; 0x70
 80003d2:	1988      	adds	r0, r1, r6
 80003d4:	d00c      	beq.n	80003f0 <_ZN6CRobot16line_sensor_readEv+0x21c>
 80003d6:	42a9      	cmp	r1, r5
 80003d8:	dd0a      	ble.n	80003f0 <_ZN6CRobot16line_sensor_readEv+0x21c>
 80003da:	4b1c      	ldr	r3, [pc, #112]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 80003dc:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
 80003e0:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
 80003e4:	4373      	muls	r3, r6
 80003e6:	fb02 3301 	mla	r3, r2, r1, r3
 80003ea:	460a      	mov	r2, r1
 80003ec:	fb93 f3f0 	sdiv	r3, r3, r0
 80003f0:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
 80003f2:	42a9      	cmp	r1, r5
 80003f4:	bfc4      	itt	gt
 80003f6:	4b15      	ldrgt	r3, [pc, #84]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 80003f8:	460a      	movgt	r2, r1
 80003fa:	f8d4 1088 	ldr.w	r1, [r4, #136]	; 0x88
 80003fe:	bfc8      	it	gt
 8000400:	f9b3 3000 	ldrshgt.w	r3, [r3]
 8000404:	42a9      	cmp	r1, r5
 8000406:	dd03      	ble.n	8000410 <_ZN6CRobot16line_sensor_readEv+0x23c>
 8000408:	4b10      	ldr	r3, [pc, #64]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 800040a:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 800040e:	e001      	b.n	8000414 <_ZN6CRobot16line_sensor_readEv+0x240>
 8000410:	42aa      	cmp	r2, r5
 8000412:	dd0d      	ble.n	8000430 <_ZN6CRobot16line_sensor_readEv+0x25c>
 8000414:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000418:	dc05      	bgt.n	8000426 <_ZN6CRobot16line_sensor_readEv+0x252>
 800041a:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 800041e:	4293      	cmp	r3, r2
 8000420:	bfb8      	it	lt
 8000422:	4613      	movlt	r3, r2
 8000424:	e001      	b.n	800042a <_ZN6CRobot16line_sensor_readEv+0x256>
 8000426:	f44f 7380 	mov.w	r3, #256	; 0x100
 800042a:	6363      	str	r3, [r4, #52]	; 0x34
 800042c:	2301      	movs	r3, #1
 800042e:	e000      	b.n	8000432 <_ZN6CRobot16line_sensor_readEv+0x25e>
 8000430:	2300      	movs	r3, #0
 8000432:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8000436:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800043a:	bf00      	nop
 800043c:	20000010 	.word	0x20000010
 8000440:	2000007c 	.word	0x2000007c
 8000444:	20000058 	.word	0x20000058
 8000448:	20000034 	.word	0x20000034
 800044c:	20000000 	.word	0x20000000

08000450 <_ZN6CRobot19process_rgb_sensorsEv>:
 8000450:	b510      	push	{r4, lr}
 8000452:	4604      	mov	r4, r0
 8000454:	f001 fbec 	bl	8001c30 <rgb_read>
 8000458:	4620      	mov	r0, r4
 800045a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045e:	f7ff beb9 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

08000462 <_ZN6CRobot16line_sensor_initEv>:
 8000462:	b538      	push	{r3, r4, r5, lr}
 8000464:	4604      	mov	r4, r0
 8000466:	2500      	movs	r5, #0
 8000468:	f001 fb9c 	bl	8001ba4 <rgb_init>
 800046c:	f001 fbe0 	bl	8001c30 <rgb_read>
 8000470:	2192      	movs	r1, #146	; 0x92
 8000472:	2072      	movs	r0, #114	; 0x72
 8000474:	f104 0260 	add.w	r2, r4, #96	; 0x60
 8000478:	f001 fb79 	bl	8001b6e <rgb_i2c_read_reg>
 800047c:	f104 015f 	add.w	r1, r4, #95	; 0x5f
 8000480:	462b      	mov	r3, r5
 8000482:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 8000486:	2a69      	cmp	r2, #105	; 0x69
 8000488:	bf1c      	itt	ne
 800048a:	2201      	movne	r2, #1
 800048c:	409a      	lslne	r2, r3
 800048e:	f103 0301 	add.w	r3, r3, #1
 8000492:	bf18      	it	ne
 8000494:	4315      	orrne	r5, r2
 8000496:	2b09      	cmp	r3, #9
 8000498:	d1f3      	bne.n	8000482 <_ZN6CRobot16line_sensor_initEv+0x20>
 800049a:	f104 0368 	add.w	r3, r4, #104	; 0x68
 800049e:	f104 0288 	add.w	r2, r4, #136	; 0x88
 80004a2:	2100      	movs	r1, #0
 80004a4:	f843 1f04 	str.w	r1, [r3, #4]!
 80004a8:	4293      	cmp	r3, r2
 80004aa:	d1fa      	bne.n	80004a2 <_ZN6CRobot16line_sensor_initEv+0x40>
 80004ac:	4620      	mov	r0, r4
 80004ae:	f7ff fe91 	bl	80001d4 <_ZN6CRobot16line_sensor_readEv>
 80004b2:	4628      	mov	r0, r5
 80004b4:	bd38      	pop	{r3, r4, r5, pc}

080004b6 <_ZN6CRobot12lsm9ds0_readEv>:
 80004b6:	b538      	push	{r3, r4, r5, lr}
 80004b8:	2128      	movs	r1, #40	; 0x28
 80004ba:	4604      	mov	r4, r0
 80004bc:	20d4      	movs	r0, #212	; 0xd4
 80004be:	f002 fa04 	bl	80028ca <i2c_read_reg>
 80004c2:	2129      	movs	r1, #41	; 0x29
 80004c4:	4605      	mov	r5, r0
 80004c6:	20d4      	movs	r0, #212	; 0xd4
 80004c8:	f002 f9ff 	bl	80028ca <i2c_read_reg>
 80004cc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004d0:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 80004d4:	212a      	movs	r1, #42	; 0x2a
 80004d6:	20d4      	movs	r0, #212	; 0xd4
 80004d8:	f002 f9f7 	bl	80028ca <i2c_read_reg>
 80004dc:	212b      	movs	r1, #43	; 0x2b
 80004de:	4605      	mov	r5, r0
 80004e0:	20d4      	movs	r0, #212	; 0xd4
 80004e2:	f002 f9f2 	bl	80028ca <i2c_read_reg>
 80004e6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004ea:	f8a4 009a 	strh.w	r0, [r4, #154]	; 0x9a
 80004ee:	212c      	movs	r1, #44	; 0x2c
 80004f0:	20d4      	movs	r0, #212	; 0xd4
 80004f2:	f002 f9ea 	bl	80028ca <i2c_read_reg>
 80004f6:	212d      	movs	r1, #45	; 0x2d
 80004f8:	4605      	mov	r5, r0
 80004fa:	20d4      	movs	r0, #212	; 0xd4
 80004fc:	f002 f9e5 	bl	80028ca <i2c_read_reg>
 8000500:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000504:	f8a4 009c 	strh.w	r0, [r4, #156]	; 0x9c
 8000508:	2108      	movs	r1, #8
 800050a:	203c      	movs	r0, #60	; 0x3c
 800050c:	f002 f9dd 	bl	80028ca <i2c_read_reg>
 8000510:	2109      	movs	r1, #9
 8000512:	4605      	mov	r5, r0
 8000514:	203c      	movs	r0, #60	; 0x3c
 8000516:	f002 f9d8 	bl	80028ca <i2c_read_reg>
 800051a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000522:	210a      	movs	r1, #10
 8000524:	203c      	movs	r0, #60	; 0x3c
 8000526:	f002 f9d0 	bl	80028ca <i2c_read_reg>
 800052a:	210b      	movs	r1, #11
 800052c:	4605      	mov	r5, r0
 800052e:	203c      	movs	r0, #60	; 0x3c
 8000530:	f002 f9cb 	bl	80028ca <i2c_read_reg>
 8000534:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000538:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 800053c:	210c      	movs	r1, #12
 800053e:	203c      	movs	r0, #60	; 0x3c
 8000540:	f002 f9c3 	bl	80028ca <i2c_read_reg>
 8000544:	210d      	movs	r1, #13
 8000546:	4605      	mov	r5, r0
 8000548:	203c      	movs	r0, #60	; 0x3c
 800054a:	f002 f9be 	bl	80028ca <i2c_read_reg>
 800054e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000552:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 8000556:	2128      	movs	r1, #40	; 0x28
 8000558:	203c      	movs	r0, #60	; 0x3c
 800055a:	f002 f9b6 	bl	80028ca <i2c_read_reg>
 800055e:	2129      	movs	r1, #41	; 0x29
 8000560:	4605      	mov	r5, r0
 8000562:	203c      	movs	r0, #60	; 0x3c
 8000564:	f002 f9b1 	bl	80028ca <i2c_read_reg>
 8000568:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800056c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 8000570:	212a      	movs	r1, #42	; 0x2a
 8000572:	203c      	movs	r0, #60	; 0x3c
 8000574:	f002 f9a9 	bl	80028ca <i2c_read_reg>
 8000578:	212b      	movs	r1, #43	; 0x2b
 800057a:	4605      	mov	r5, r0
 800057c:	203c      	movs	r0, #60	; 0x3c
 800057e:	f002 f9a4 	bl	80028ca <i2c_read_reg>
 8000582:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000586:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800058a:	212c      	movs	r1, #44	; 0x2c
 800058c:	203c      	movs	r0, #60	; 0x3c
 800058e:	f002 f99c 	bl	80028ca <i2c_read_reg>
 8000592:	212d      	movs	r1, #45	; 0x2d
 8000594:	4605      	mov	r5, r0
 8000596:	203c      	movs	r0, #60	; 0x3c
 8000598:	f002 f997 	bl	80028ca <i2c_read_reg>
 800059c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005a0:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 80005a4:	2105      	movs	r1, #5
 80005a6:	203c      	movs	r0, #60	; 0x3c
 80005a8:	f002 f98f 	bl	80028ca <i2c_read_reg>
 80005ac:	2106      	movs	r1, #6
 80005ae:	4605      	mov	r5, r0
 80005b0:	203c      	movs	r0, #60	; 0x3c
 80005b2:	f002 f98a 	bl	80028ca <i2c_read_reg>
 80005b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005ba:	f8a4 00ac 	strh.w	r0, [r4, #172]	; 0xac
 80005be:	bd38      	pop	{r3, r4, r5, pc}

080005c0 <_ZN6CRobot18process_imu_sensorEv>:
 80005c0:	b510      	push	{r4, lr}
 80005c2:	4604      	mov	r4, r0
 80005c4:	f7ff ff77 	bl	80004b6 <_ZN6CRobot12lsm9ds0_readEv>
 80005c8:	f9b4 3098 	ldrsh.w	r3, [r4, #152]	; 0x98
 80005cc:	f8d4 20a0 	ldr.w	r2, [r4, #160]	; 0xa0
 80005d0:	1a9a      	subs	r2, r3, r2
 80005d2:	6ca3      	ldr	r3, [r4, #72]	; 0x48
 80005d4:	2164      	movs	r1, #100	; 0x64
 80005d6:	fb92 f2f1 	sdiv	r2, r2, r1
 80005da:	441a      	add	r2, r3
 80005dc:	64a2      	str	r2, [r4, #72]	; 0x48
 80005de:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
 80005e2:	f9b4 209a 	ldrsh.w	r2, [r4, #154]	; 0x9a
 80005e6:	1ad2      	subs	r2, r2, r3
 80005e8:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 80005ea:	fb92 f2f1 	sdiv	r2, r2, r1
 80005ee:	441a      	add	r2, r3
 80005f0:	64e2      	str	r2, [r4, #76]	; 0x4c
 80005f2:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
 80005f6:	f9b4 209c 	ldrsh.w	r2, [r4, #156]	; 0x9c
 80005fa:	1ad3      	subs	r3, r2, r3
 80005fc:	6d22      	ldr	r2, [r4, #80]	; 0x50
 80005fe:	fb93 f3f1 	sdiv	r3, r3, r1
 8000602:	4413      	add	r3, r2
 8000604:	6523      	str	r3, [r4, #80]	; 0x50
 8000606:	f9b4 308c 	ldrsh.w	r3, [r4, #140]	; 0x8c
 800060a:	6563      	str	r3, [r4, #84]	; 0x54
 800060c:	bd10      	pop	{r4, pc}

0800060e <_ZN6CRobot12lsm9ds0_initEv>:
 800060e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000612:	210f      	movs	r1, #15
 8000614:	4604      	mov	r4, r0
 8000616:	20d4      	movs	r0, #212	; 0xd4
 8000618:	f002 f957 	bl	80028ca <i2c_read_reg>
 800061c:	28d4      	cmp	r0, #212	; 0xd4
 800061e:	4605      	mov	r5, r0
 8000620:	d164      	bne.n	80006ec <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000622:	203c      	movs	r0, #60	; 0x3c
 8000624:	210f      	movs	r1, #15
 8000626:	f002 f950 	bl	80028ca <i2c_read_reg>
 800062a:	2849      	cmp	r0, #73	; 0x49
 800062c:	d160      	bne.n	80006f0 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 800062e:	4628      	mov	r0, r5
 8000630:	2120      	movs	r1, #32
 8000632:	22ff      	movs	r2, #255	; 0xff
 8000634:	f002 f936 	bl	80028a4 <i2c_write_reg>
 8000638:	4628      	mov	r0, r5
 800063a:	2123      	movs	r1, #35	; 0x23
 800063c:	2210      	movs	r2, #16
 800063e:	f002 f931 	bl	80028a4 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	211f      	movs	r1, #31
 8000646:	2200      	movs	r2, #0
 8000648:	f002 f92c 	bl	80028a4 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2120      	movs	r1, #32
 8000650:	2267      	movs	r2, #103	; 0x67
 8000652:	f002 f927 	bl	80028a4 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2121      	movs	r1, #33	; 0x21
 800065a:	2200      	movs	r2, #0
 800065c:	f002 f922 	bl	80028a4 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2124      	movs	r1, #36	; 0x24
 8000664:	22f4      	movs	r2, #244	; 0xf4
 8000666:	f002 f91d 	bl	80028a4 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2125      	movs	r1, #37	; 0x25
 800066e:	2200      	movs	r2, #0
 8000670:	f002 f918 	bl	80028a4 <i2c_write_reg>
 8000674:	203c      	movs	r0, #60	; 0x3c
 8000676:	2126      	movs	r1, #38	; 0x26
 8000678:	2280      	movs	r2, #128	; 0x80
 800067a:	f002 f913 	bl	80028a4 <i2c_write_reg>
 800067e:	4620      	mov	r0, r4
 8000680:	f7ff ff19 	bl	80004b6 <_ZN6CRobot12lsm9ds0_readEv>
 8000684:	2600      	movs	r6, #0
 8000686:	2540      	movs	r5, #64	; 0x40
 8000688:	4637      	mov	r7, r6
 800068a:	46b0      	mov	r8, r6
 800068c:	4620      	mov	r0, r4
 800068e:	f7ff ff12 	bl	80004b6 <_ZN6CRobot12lsm9ds0_readEv>
 8000692:	f9b4 3098 	ldrsh.w	r3, [r4, #152]	; 0x98
 8000696:	4498      	add	r8, r3
 8000698:	f9b4 309a 	ldrsh.w	r3, [r4, #154]	; 0x9a
 800069c:	441f      	add	r7, r3
 800069e:	f9b4 309c 	ldrsh.w	r3, [r4, #156]	; 0x9c
 80006a2:	3d01      	subs	r5, #1
 80006a4:	441e      	add	r6, r3
 80006a6:	d1f1      	bne.n	800068c <_ZN6CRobot12lsm9ds0_initEv+0x7e>
 80006a8:	2240      	movs	r2, #64	; 0x40
 80006aa:	f8a4 508c 	strh.w	r5, [r4, #140]	; 0x8c
 80006ae:	fb98 f3f2 	sdiv	r3, r8, r2
 80006b2:	fb97 f7f2 	sdiv	r7, r7, r2
 80006b6:	fb96 f6f2 	sdiv	r6, r6, r2
 80006ba:	f8c4 30a0 	str.w	r3, [r4, #160]	; 0xa0
 80006be:	f8c4 70a4 	str.w	r7, [r4, #164]	; 0xa4
 80006c2:	f8c4 60a8 	str.w	r6, [r4, #168]	; 0xa8
 80006c6:	f8a4 508e 	strh.w	r5, [r4, #142]	; 0x8e
 80006ca:	f8a4 5090 	strh.w	r5, [r4, #144]	; 0x90
 80006ce:	f8a4 5092 	strh.w	r5, [r4, #146]	; 0x92
 80006d2:	f8a4 5094 	strh.w	r5, [r4, #148]	; 0x94
 80006d6:	f8a4 5096 	strh.w	r5, [r4, #150]	; 0x96
 80006da:	f8a4 5098 	strh.w	r5, [r4, #152]	; 0x98
 80006de:	f8a4 509a 	strh.w	r5, [r4, #154]	; 0x9a
 80006e2:	f8a4 509c 	strh.w	r5, [r4, #156]	; 0x9c
 80006e6:	f8a4 50ac 	strh.w	r5, [r4, #172]	; 0xac
 80006ea:	e002      	b.n	80006f2 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006ec:	2501      	movs	r5, #1
 80006ee:	e000      	b.n	80006f2 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006f0:	2502      	movs	r5, #2
 80006f2:	4628      	mov	r0, r5
 80006f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080006f8 <_ZN6CRobot4initEv>:
 80006f8:	2300      	movs	r3, #0
 80006fa:	b510      	push	{r4, lr}
 80006fc:	6583      	str	r3, [r0, #88]	; 0x58
 80006fe:	65c3      	str	r3, [r0, #92]	; 0x5c
 8000700:	4604      	mov	r4, r0
 8000702:	f7ff feae 	bl	8000462 <_ZN6CRobot16line_sensor_initEv>
 8000706:	b110      	cbz	r0, 800070e <_ZN6CRobot4initEv+0x16>
 8000708:	65a0      	str	r0, [r4, #88]	; 0x58
 800070a:	2302      	movs	r3, #2
 800070c:	e00d      	b.n	800072a <_ZN6CRobot4initEv+0x32>
 800070e:	f884 0030 	strb.w	r0, [r4, #48]	; 0x30
 8000712:	6360      	str	r0, [r4, #52]	; 0x34
 8000714:	63a0      	str	r0, [r4, #56]	; 0x38
 8000716:	63e0      	str	r0, [r4, #60]	; 0x3c
 8000718:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 800071c:	6460      	str	r0, [r4, #68]	; 0x44
 800071e:	4620      	mov	r0, r4
 8000720:	f7ff ff75 	bl	800060e <_ZN6CRobot12lsm9ds0_initEv>
 8000724:	b118      	cbz	r0, 800072e <_ZN6CRobot4initEv+0x36>
 8000726:	65a0      	str	r0, [r4, #88]	; 0x58
 8000728:	2303      	movs	r3, #3
 800072a:	65e3      	str	r3, [r4, #92]	; 0x5c
 800072c:	bd10      	pop	{r4, pc}
 800072e:	64a0      	str	r0, [r4, #72]	; 0x48
 8000730:	64e0      	str	r0, [r4, #76]	; 0x4c
 8000732:	6520      	str	r0, [r4, #80]	; 0x50
 8000734:	bd10      	pop	{r4, pc}
	...

08000738 <abort_error_>:
 8000738:	b570      	push	{r4, r5, r6, lr}
 800073a:	4605      	mov	r5, r0
 800073c:	460e      	mov	r6, r1
 800073e:	480f      	ldr	r0, [pc, #60]	; (800077c <abort_error_+0x44>)
 8000740:	4629      	mov	r1, r5
 8000742:	4632      	mov	r2, r6
 8000744:	f000 fec6 	bl	80014d4 <printf_>
 8000748:	2400      	movs	r4, #0
 800074a:	1ceb      	adds	r3, r5, #3
 800074c:	429c      	cmp	r4, r3
 800074e:	d20f      	bcs.n	8000770 <abort_error_+0x38>
 8000750:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000754:	f002 fba6 	bl	8002ea4 <led_on>
 8000758:	2032      	movs	r0, #50	; 0x32
 800075a:	f001 fe3b 	bl	80023d4 <timer_delay_ms>
 800075e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000762:	f002 fba9 	bl	8002eb8 <led_off>
 8000766:	2064      	movs	r0, #100	; 0x64
 8000768:	f001 fe34 	bl	80023d4 <timer_delay_ms>
 800076c:	3401      	adds	r4, #1
 800076e:	e7ec      	b.n	800074a <abort_error_+0x12>
 8000770:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000774:	f001 fe2e 	bl	80023d4 <timer_delay_ms>
 8000778:	e7e1      	b.n	800073e <abort_error_+0x6>
 800077a:	bf00      	nop
 800077c:	08004b30 	.word	0x08004b30

08000780 <_Z13robot_on_linev>:
 8000780:	b508      	push	{r3, lr}
 8000782:	4b04      	ldr	r3, [pc, #16]	; (8000794 <_Z13robot_on_linev+0x14>)
 8000784:	6818      	ldr	r0, [r3, #0]
 8000786:	f7ff fd16 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 800078a:	7800      	ldrb	r0, [r0, #0]
 800078c:	1e43      	subs	r3, r0, #1
 800078e:	4258      	negs	r0, r3
 8000790:	4158      	adcs	r0, r3
 8000792:	bd08      	pop	{r3, pc}
 8000794:	2000052c 	.word	0x2000052c

08000798 <_ZN9CObstacle4initEP6CRobot>:
 8000798:	b121      	cbz	r1, 80007a4 <_ZN9CObstacle4initEP6CRobot+0xc>
 800079a:	2300      	movs	r3, #0
 800079c:	6003      	str	r3, [r0, #0]
 800079e:	4b02      	ldr	r3, [pc, #8]	; (80007a8 <_ZN9CObstacle4initEP6CRobot+0x10>)
 80007a0:	6041      	str	r1, [r0, #4]
 80007a2:	6019      	str	r1, [r3, #0]
 80007a4:	4770      	bx	lr
 80007a6:	bf00      	nop
 80007a8:	2000052c 	.word	0x2000052c

080007ac <_ZN9CObstacle12rotate_robotEi>:
 80007ac:	b538      	push	{r3, r4, r5, lr}
 80007ae:	4605      	mov	r5, r0
 80007b0:	ed2d 8b02 	vpush	{d8}
 80007b4:	f240 644a 	movw	r4, #1610	; 0x64a
 80007b8:	6840      	ldr	r0, [r0, #4]
 80007ba:	ed9f 8a22 	vldr	s16, [pc, #136]	; 8000844 <_ZN9CObstacle12rotate_robotEi+0x98>
 80007be:	434c      	muls	r4, r1
 80007c0:	215a      	movs	r1, #90	; 0x5a
 80007c2:	fb94 f4f1 	sdiv	r4, r4, r1
 80007c6:	f7ff fd00 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80007ca:	6868      	ldr	r0, [r5, #4]
 80007cc:	f7ff fcf7 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007d0:	6883      	ldr	r3, [r0, #8]
 80007d2:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80007d6:	2b00      	cmp	r3, #0
 80007d8:	bfb8      	it	lt
 80007da:	425b      	neglt	r3, r3
 80007dc:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80007e0:	4293      	cmp	r3, r2
 80007e2:	da22      	bge.n	800082a <_ZN9CObstacle12rotate_robotEi+0x7e>
 80007e4:	eddf 7a18 	vldr	s15, [pc, #96]	; 8000848 <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007e8:	6868      	ldr	r0, [r5, #4]
 80007ea:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007ee:	eddf 7a17 	vldr	s15, [pc, #92]	; 800084c <_ZN9CObstacle12rotate_robotEi+0xa0>
 80007f2:	eeb4 8a67 	vcmp.f32	s16, s15
 80007f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007fa:	bfc8      	it	gt
 80007fc:	eeb0 8a67 	vmovgt.f32	s16, s15
 8000800:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000850 <_ZN9CObstacle12rotate_robotEi+0xa4>
 8000804:	ee68 7a27 	vmul.f32	s15, s16, s15
 8000808:	2c00      	cmp	r4, #0
 800080a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800080e:	ee17 3a90 	vmov	r3, s15
 8000812:	f1c3 0200 	rsb	r2, r3, #0
 8000816:	bfd6      	itet	le
 8000818:	4611      	movle	r1, r2
 800081a:	4619      	movgt	r1, r3
 800081c:	461a      	movle	r2, r3
 800081e:	f7ff fcd0 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000822:	200a      	movs	r0, #10
 8000824:	f001 fdd6 	bl	80023d4 <timer_delay_ms>
 8000828:	e7cf      	b.n	80007ca <_ZN9CObstacle12rotate_robotEi+0x1e>
 800082a:	2100      	movs	r1, #0
 800082c:	6868      	ldr	r0, [r5, #4]
 800082e:	460a      	mov	r2, r1
 8000830:	f7ff fcc7 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000834:	ecbd 8b02 	vpop	{d8}
 8000838:	20c8      	movs	r0, #200	; 0xc8
 800083a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800083e:	f001 bdc9 	b.w	80023d4 <timer_delay_ms>
 8000842:	bf00      	nop
 8000844:	00000000 	.word	0x00000000
 8000848:	3c23d70a 	.word	0x3c23d70a
 800084c:	3e4ccccd 	.word	0x3e4ccccd
 8000850:	42c80000 	.word	0x42c80000

08000854 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000854:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000858:	460c      	mov	r4, r1
 800085a:	ed2d 8b06 	vpush	{d8-d10}
 800085e:	4605      	mov	r5, r0
 8000860:	4617      	mov	r7, r2
 8000862:	461e      	mov	r6, r3
 8000864:	f001 fda8 	bl	80023b8 <timer_get_time>
 8000868:	ee07 4a90 	vmov	s15, r4
 800086c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000870:	4680      	mov	r8, r0
 8000872:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000876:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800087a:	bf48      	it	mi
 800087c:	4264      	negmi	r4, r4
 800087e:	6868      	ldr	r0, [r5, #4]
 8000880:	bf4c      	ite	mi
 8000882:	eddf 9a31 	vldrmi	s19, [pc, #196]	; 8000948 <_ZN9CObstacle10go_forwardEijPFhvE+0xf4>
 8000886:	eddf 9a31 	vldrpl	s19, [pc, #196]	; 800094c <_ZN9CObstacle10go_forwardEijPFhvE+0xf8>
 800088a:	f7ff fc9e 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800088e:	2c00      	cmp	r4, #0
 8000890:	d04f      	beq.n	8000932 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 8000892:	eddf 8a2f 	vldr	s17, [pc, #188]	; 8000950 <_ZN9CObstacle10go_forwardEijPFhvE+0xfc>
 8000896:	eeb0 8a68 	vmov.f32	s16, s17
 800089a:	eeb0 aa68 	vmov.f32	s20, s17
 800089e:	e004      	b.n	80008aa <_ZN9CObstacle10go_forwardEijPFhvE+0x56>
 80008a0:	200a      	movs	r0, #10
 80008a2:	f001 fd97 	bl	80023d4 <timer_delay_ms>
 80008a6:	eeb0 8a49 	vmov.f32	s16, s18
 80008aa:	f001 fd85 	bl	80023b8 <timer_get_time>
 80008ae:	eb08 0307 	add.w	r3, r8, r7
 80008b2:	4298      	cmp	r0, r3
 80008b4:	d23d      	bcs.n	8000932 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 80008b6:	6868      	ldr	r0, [r5, #4]
 80008b8:	f7ff fc81 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80008bc:	ed90 9a02 	vldr	s18, [r0, #8]
 80008c0:	eddf 7a24 	vldr	s15, [pc, #144]	; 8000954 <_ZN9CObstacle10go_forwardEijPFhvE+0x100>
 80008c4:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8000958 <_ZN9CObstacle10go_forwardEijPFhvE+0x104>
 80008c8:	6868      	ldr	r0, [r5, #4]
 80008ca:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80008ce:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80008d2:	ee39 8a48 	vsub.f32	s16, s18, s16
 80008d6:	ee28 8a27 	vmul.f32	s16, s16, s15
 80008da:	eddf 7a20 	vldr	s15, [pc, #128]	; 800095c <_ZN9CObstacle10go_forwardEijPFhvE+0x108>
 80008de:	ee09 8a27 	vmla.f32	s16, s18, s15
 80008e2:	ee07 4a90 	vmov	s15, r4
 80008e6:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 80008ea:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000960 <_ZN9CObstacle10go_forwardEijPFhvE+0x10c>
 80008ee:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80008f2:	ee48 7a87 	vmla.f32	s15, s17, s14
 80008f6:	eef4 7ae6 	vcmpe.f32	s15, s13
 80008fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008fe:	eef0 8a67 	vmov.f32	s17, s15
 8000902:	bf48      	it	mi
 8000904:	ee77 8a87 	vaddmi.f32	s17, s15, s14
 8000908:	ee69 7aa8 	vmul.f32	s15, s19, s17
 800090c:	ee37 7ac8 	vsub.f32	s14, s15, s16
 8000910:	ee37 8a88 	vadd.f32	s16, s15, s16
 8000914:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000918:	ee17 1a90 	vmov	r1, s15
 800091c:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 8000920:	ee17 2a90 	vmov	r2, s15
 8000924:	f7ff fc4d 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000928:	2e00      	cmp	r6, #0
 800092a:	d0b9      	beq.n	80008a0 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 800092c:	47b0      	blx	r6
 800092e:	2800      	cmp	r0, #0
 8000930:	d0b6      	beq.n	80008a0 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000932:	2000      	movs	r0, #0
 8000934:	4601      	mov	r1, r0
 8000936:	f002 f905 	bl	8002b44 <drv8834_run>
 800093a:	ecbd 8b06 	vpop	{d8-d10}
 800093e:	2064      	movs	r0, #100	; 0x64
 8000940:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000944:	f001 bd46 	b.w	80023d4 <timer_delay_ms>
 8000948:	bf800000 	.word	0xbf800000
 800094c:	3f800000 	.word	0x3f800000
 8000950:	00000000 	.word	0x00000000
 8000954:	3dcccccd 	.word	0x3dcccccd
 8000958:	3f4ccccd 	.word	0x3f4ccccd
 800095c:	3cf5c28f 	.word	0x3cf5c28f
 8000960:	3e4ccccc 	.word	0x3e4ccccc

08000964 <_ZN9CObstacle18go_forward_encoderEijPFhvE>:
 8000964:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000966:	1e0d      	subs	r5, r1, #0
 8000968:	ed2d 8b06 	vpush	{d8-d10}
 800096c:	bfb8      	it	lt
 800096e:	426d      	neglt	r5, r5
 8000970:	4606      	mov	r6, r0
 8000972:	6840      	ldr	r0, [r0, #4]
 8000974:	bfb4      	ite	lt
 8000976:	eddf 9a3e 	vldrlt	s19, [pc, #248]	; 8000a70 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x10c>
 800097a:	eddf 9a3e 	vldrge	s19, [pc, #248]	; 8000a74 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x110>
 800097e:	4614      	mov	r4, r2
 8000980:	461f      	mov	r7, r3
 8000982:	f7ff fc22 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000986:	f002 facd 	bl	8002f24 <encoder_get_distance>
 800098a:	b955      	cbnz	r5, 80009a2 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3e>
 800098c:	2000      	movs	r0, #0
 800098e:	4601      	mov	r1, r0
 8000990:	f002 f8d8 	bl	8002b44 <drv8834_run>
 8000994:	ecbd 8b06 	vpop	{d8-d10}
 8000998:	2064      	movs	r0, #100	; 0x64
 800099a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800099e:	f001 bd19 	b.w	80023d4 <timer_delay_ms>
 80009a2:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000a78 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x114>
 80009a6:	4404      	add	r4, r0
 80009a8:	eef0 8a48 	vmov.f32	s17, s16
 80009ac:	eeb0 aa48 	vmov.f32	s20, s16
 80009b0:	f002 fab8 	bl	8002f24 <encoder_get_distance>
 80009b4:	42a0      	cmp	r0, r4
 80009b6:	d2e9      	bcs.n	800098c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 80009b8:	6870      	ldr	r0, [r6, #4]
 80009ba:	f7ff fc00 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80009be:	ed90 9a02 	vldr	s18, [r0, #8]
 80009c2:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8000a7c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x118>
 80009c6:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80009ca:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80009ce:	ee79 8a68 	vsub.f32	s17, s18, s17
 80009d2:	ee68 8aa7 	vmul.f32	s17, s17, s15
 80009d6:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8000a80 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x11c>
 80009da:	ee49 8a27 	vmla.f32	s17, s18, s15
 80009de:	f002 faa1 	bl	8002f24 <encoder_get_distance>
 80009e2:	1a20      	subs	r0, r4, r0
 80009e4:	ee07 0a90 	vmov	s15, r0
 80009e8:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80009ec:	ee17 0a90 	vmov	r0, s15
 80009f0:	f000 fe5c 	bl	80016ac <m_abs>
 80009f4:	eddf 7a23 	vldr	s15, [pc, #140]	; 8000a84 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x120>
 80009f8:	ee07 0a10 	vmov	s14, r0
 80009fc:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000a00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a04:	d525      	bpl.n	8000a52 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 8000a06:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000a88 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x124>
 8000a0a:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000a0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a12:	dd1e      	ble.n	8000a52 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 8000a14:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000a8c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a18:	ee38 8a67 	vsub.f32	s16, s16, s15
 8000a1c:	ee69 7a88 	vmul.f32	s15, s19, s16
 8000a20:	6870      	ldr	r0, [r6, #4]
 8000a22:	ee37 7ae8 	vsub.f32	s14, s15, s17
 8000a26:	ee77 8aa8 	vadd.f32	s17, s15, s17
 8000a2a:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000a2e:	ee17 1a90 	vmov	r1, s15
 8000a32:	eefd 7ae8 	vcvt.s32.f32	s15, s17
 8000a36:	ee17 2a90 	vmov	r2, s15
 8000a3a:	f7ff fbc2 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000a3e:	b117      	cbz	r7, 8000a46 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe2>
 8000a40:	47b8      	blx	r7
 8000a42:	2800      	cmp	r0, #0
 8000a44:	d1a2      	bne.n	800098c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 8000a46:	200a      	movs	r0, #10
 8000a48:	f001 fcc4 	bl	80023d4 <timer_delay_ms>
 8000a4c:	eef0 8a49 	vmov.f32	s17, s18
 8000a50:	e7ae      	b.n	80009b0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x4c>
 8000a52:	ee07 5a90 	vmov	s15, r5
 8000a56:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000a5a:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000a5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a62:	d5db      	bpl.n	8000a1c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a64:	eddf 7a09 	vldr	s15, [pc, #36]	; 8000a8c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a68:	ee38 8a27 	vadd.f32	s16, s16, s15
 8000a6c:	e7d6      	b.n	8000a1c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a6e:	bf00      	nop
 8000a70:	bf800000 	.word	0xbf800000
 8000a74:	3f800000 	.word	0x3f800000
 8000a78:	00000000 	.word	0x00000000
 8000a7c:	3dcccccd 	.word	0x3dcccccd
 8000a80:	3cf5c28f 	.word	0x3cf5c28f
 8000a84:	42200000 	.word	0x42200000
 8000a88:	428c0000 	.word	0x428c0000
 8000a8c:	40000000 	.word	0x40000000

08000a90 <_ZN9CObstacle7processEv>:
 8000a90:	2100      	movs	r1, #0
 8000a92:	b510      	push	{r4, lr}
 8000a94:	460b      	mov	r3, r1
 8000a96:	4604      	mov	r4, r0
 8000a98:	2232      	movs	r2, #50	; 0x32
 8000a9a:	f7ff fedb 	bl	8000854 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000a9e:	4620      	mov	r0, r4
 8000aa0:	221e      	movs	r2, #30
 8000aa2:	2300      	movs	r3, #0
 8000aa4:	f06f 0131 	mvn.w	r1, #49	; 0x31
 8000aa8:	f7ff ff5c 	bl	8000964 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000aac:	4620      	mov	r0, r4
 8000aae:	215a      	movs	r1, #90	; 0x5a
 8000ab0:	f7ff fe7c 	bl	80007ac <_ZN9CObstacle12rotate_robotEi>
 8000ab4:	4620      	mov	r0, r4
 8000ab6:	226c      	movs	r2, #108	; 0x6c
 8000ab8:	2300      	movs	r3, #0
 8000aba:	215a      	movs	r1, #90	; 0x5a
 8000abc:	f7ff ff52 	bl	8000964 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ac0:	4620      	mov	r0, r4
 8000ac2:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000ac6:	f7ff fe71 	bl	80007ac <_ZN9CObstacle12rotate_robotEi>
 8000aca:	4620      	mov	r0, r4
 8000acc:	f44f 72af 	mov.w	r2, #350	; 0x15e
 8000ad0:	2300      	movs	r3, #0
 8000ad2:	215a      	movs	r1, #90	; 0x5a
 8000ad4:	f7ff ff46 	bl	8000964 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ad8:	4620      	mov	r0, r4
 8000ada:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000ade:	f7ff fe65 	bl	80007ac <_ZN9CObstacle12rotate_robotEi>
 8000ae2:	4620      	mov	r0, r4
 8000ae4:	215a      	movs	r1, #90	; 0x5a
 8000ae6:	2278      	movs	r2, #120	; 0x78
 8000ae8:	4b04      	ldr	r3, [pc, #16]	; (8000afc <_ZN9CObstacle7processEv+0x6c>)
 8000aea:	f7ff ff3b 	bl	8000964 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000aee:	4620      	mov	r0, r4
 8000af0:	215a      	movs	r1, #90	; 0x5a
 8000af2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000af6:	f7ff be59 	b.w	80007ac <_ZN9CObstacle12rotate_robotEi>
 8000afa:	bf00      	nop
 8000afc:	08000781 	.word	0x08000781

08000b00 <_ZN4CMap4initEP6CRobot>:
 8000b00:	b111      	cbz	r1, 8000b08 <_ZN4CMap4initEP6CRobot+0x8>
 8000b02:	2300      	movs	r3, #0
 8000b04:	6041      	str	r1, [r0, #4]
 8000b06:	6003      	str	r3, [r0, #0]
 8000b08:	4770      	bx	lr

08000b0a <_ZN4CMap10save_stateE6sStatej>:
 8000b0a:	b507      	push	{r0, r1, r2, lr}
 8000b0c:	ab02      	add	r3, sp, #8
 8000b0e:	0090      	lsls	r0, r2, #2
 8000b10:	f843 1d04 	str.w	r1, [r3, #-4]!
 8000b14:	2204      	movs	r2, #4
 8000b16:	4619      	mov	r1, r3
 8000b18:	f000 fdac 	bl	8001674 <log_write>
 8000b1c:	b003      	add	sp, #12
 8000b1e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000b24 <_ZN4CMap10add_to_mapEv>:
 8000b24:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000b26:	4604      	mov	r4, r0
 8000b28:	6840      	ldr	r0, [r0, #4]
 8000b2a:	f7ff fb44 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000b2e:	2100      	movs	r1, #0
 8000b30:	6845      	ldr	r5, [r0, #4]
 8000b32:	460a      	mov	r2, r1
 8000b34:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000b38:	4b12      	ldr	r3, [pc, #72]	; (8000b84 <_ZN4CMap10add_to_mapEv+0x60>)
 8000b3a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000b3e:	1aeb      	subs	r3, r5, r3
 8000b40:	2b00      	cmp	r3, #0
 8000b42:	bfb8      	it	lt
 8000b44:	425b      	neglt	r3, r3
 8000b46:	4283      	cmp	r3, r0
 8000b48:	bfb8      	it	lt
 8000b4a:	4611      	movlt	r1, r2
 8000b4c:	f102 0201 	add.w	r2, r2, #1
 8000b50:	bfb8      	it	lt
 8000b52:	4618      	movlt	r0, r3
 8000b54:	2a0a      	cmp	r2, #10
 8000b56:	d1ef      	bne.n	8000b38 <_ZN4CMap10add_to_mapEv+0x14>
 8000b58:	2818      	cmp	r0, #24
 8000b5a:	dc11      	bgt.n	8000b80 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b5c:	6823      	ldr	r3, [r4, #0]
 8000b5e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000b62:	d20d      	bcs.n	8000b80 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b64:	f88d 1004 	strb.w	r1, [sp, #4]
 8000b68:	f002 f9dc 	bl	8002f24 <encoder_get_distance>
 8000b6c:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000b70:	9901      	ldr	r1, [sp, #4]
 8000b72:	6822      	ldr	r2, [r4, #0]
 8000b74:	4620      	mov	r0, r4
 8000b76:	f7ff ffc8 	bl	8000b0a <_ZN4CMap10save_stateE6sStatej>
 8000b7a:	6823      	ldr	r3, [r4, #0]
 8000b7c:	3301      	adds	r3, #1
 8000b7e:	6023      	str	r3, [r4, #0]
 8000b80:	b003      	add	sp, #12
 8000b82:	bd30      	pop	{r4, r5, pc}
 8000b84:	200000a0 	.word	0x200000a0

08000b88 <_Z18line_sensor_threadv>:
 8000b88:	b508      	push	{r3, lr}
 8000b8a:	2000      	movs	r0, #0
 8000b8c:	2104      	movs	r1, #4
 8000b8e:	f001 fc31 	bl	80023f4 <event_timer_set_period>
 8000b92:	2000      	movs	r0, #0
 8000b94:	f001 fc46 	bl	8002424 <event_timer_wait>
 8000b98:	4801      	ldr	r0, [pc, #4]	; (8000ba0 <_Z18line_sensor_threadv+0x18>)
 8000b9a:	f7ff fc59 	bl	8000450 <_ZN6CRobot19process_rgb_sensorsEv>
 8000b9e:	e7f8      	b.n	8000b92 <_Z18line_sensor_threadv+0xa>
 8000ba0:	2000094c 	.word	0x2000094c

08000ba4 <_Z17imu_sensor_threadv>:
 8000ba4:	b508      	push	{r3, lr}
 8000ba6:	2001      	movs	r0, #1
 8000ba8:	210a      	movs	r1, #10
 8000baa:	f001 fc23 	bl	80023f4 <event_timer_set_period>
 8000bae:	2001      	movs	r0, #1
 8000bb0:	f001 fc38 	bl	8002424 <event_timer_wait>
 8000bb4:	4805      	ldr	r0, [pc, #20]	; (8000bcc <_Z17imu_sensor_threadv+0x28>)
 8000bb6:	f7ff fd03 	bl	80005c0 <_ZN6CRobot18process_imu_sensorEv>
 8000bba:	4b05      	ldr	r3, [pc, #20]	; (8000bd0 <_Z17imu_sensor_threadv+0x2c>)
 8000bbc:	681b      	ldr	r3, [r3, #0]
 8000bbe:	2b00      	cmp	r3, #0
 8000bc0:	d0f5      	beq.n	8000bae <_Z17imu_sensor_threadv+0xa>
 8000bc2:	4804      	ldr	r0, [pc, #16]	; (8000bd4 <_Z17imu_sensor_threadv+0x30>)
 8000bc4:	f7ff ffae 	bl	8000b24 <_ZN4CMap10add_to_mapEv>
 8000bc8:	e7f1      	b.n	8000bae <_Z17imu_sensor_threadv+0xa>
 8000bca:	bf00      	nop
 8000bcc:	2000094c 	.word	0x2000094c
 8000bd0:	20000a40 	.word	0x20000a40
 8000bd4:	2000053c 	.word	0x2000053c

08000bd8 <_Z13line_followerv>:
 8000bd8:	b510      	push	{r4, lr}
 8000bda:	2002      	movs	r0, #2
 8000bdc:	2104      	movs	r1, #4
 8000bde:	f001 fc09 	bl	80023f4 <event_timer_set_period>
 8000be2:	2400      	movs	r4, #0
 8000be4:	2002      	movs	r0, #2
 8000be6:	f001 fc1d 	bl	8002424 <event_timer_wait>
 8000bea:	4818      	ldr	r0, [pc, #96]	; (8000c4c <_Z13line_followerv+0x74>)
 8000bec:	f7ff fae5 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000bf0:	7803      	ldrb	r3, [r0, #0]
 8000bf2:	2b01      	cmp	r3, #1
 8000bf4:	d11b      	bne.n	8000c2e <_Z13line_followerv+0x56>
 8000bf6:	4815      	ldr	r0, [pc, #84]	; (8000c4c <_Z13line_followerv+0x74>)
 8000bf8:	f7ff fae1 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000bfc:	68c0      	ldr	r0, [r0, #12]
 8000bfe:	f000 fd61 	bl	80016c4 <m_abs_int>
 8000c02:	f640 63d8 	movw	r3, #3800	; 0xed8
 8000c06:	4298      	cmp	r0, r3
 8000c08:	dd11      	ble.n	8000c2e <_Z13line_followerv+0x56>
 8000c0a:	4811      	ldr	r0, [pc, #68]	; (8000c50 <_Z13line_followerv+0x78>)
 8000c0c:	f7ff ff40 	bl	8000a90 <_ZN9CObstacle7processEv>
 8000c10:	3401      	adds	r4, #1
 8000c12:	2214      	movs	r2, #20
 8000c14:	fbb4 f3f2 	udiv	r3, r4, r2
 8000c18:	fb02 4313 	mls	r3, r2, r3, r4
 8000c1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000c20:	b913      	cbnz	r3, 8000c28 <_Z13line_followerv+0x50>
 8000c22:	f002 f93f 	bl	8002ea4 <led_on>
 8000c26:	e7dd      	b.n	8000be4 <_Z13line_followerv+0xc>
 8000c28:	f002 f946 	bl	8002eb8 <led_off>
 8000c2c:	e7da      	b.n	8000be4 <_Z13line_followerv+0xc>
 8000c2e:	4807      	ldr	r0, [pc, #28]	; (8000c4c <_Z13line_followerv+0x74>)
 8000c30:	f7ff fac1 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000c34:	7803      	ldrb	r3, [r0, #0]
 8000c36:	2b01      	cmp	r3, #1
 8000c38:	d103      	bne.n	8000c42 <_Z13line_followerv+0x6a>
 8000c3a:	4806      	ldr	r0, [pc, #24]	; (8000c54 <_Z13line_followerv+0x7c>)
 8000c3c:	f000 f934 	bl	8000ea8 <_ZN13CLineFollower7processEv>
 8000c40:	e7e6      	b.n	8000c10 <_Z13line_followerv+0x38>
 8000c42:	4805      	ldr	r0, [pc, #20]	; (8000c58 <_Z13line_followerv+0x80>)
 8000c44:	2100      	movs	r1, #0
 8000c46:	f000 f99c 	bl	8000f82 <_ZN11CBrokenLine7processEj>
 8000c4a:	e7e1      	b.n	8000c10 <_Z13line_followerv+0x38>
 8000c4c:	2000094c 	.word	0x2000094c
 8000c50:	20000744 	.word	0x20000744
 8000c54:	200009fc 	.word	0x200009fc
 8000c58:	20000530 	.word	0x20000530

08000c5c <main_thread>:
 8000c5c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c5e:	484a      	ldr	r0, [pc, #296]	; (8000d88 <main_thread+0x12c>)
 8000c60:	4e4a      	ldr	r6, [pc, #296]	; (8000d8c <main_thread+0x130>)
 8000c62:	b097      	sub	sp, #92	; 0x5c
 8000c64:	f000 fc36 	bl	80014d4 <printf_>
 8000c68:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000c6c:	f001 fbb2 	bl	80023d4 <timer_delay_ms>
 8000c70:	22aa      	movs	r2, #170	; 0xaa
 8000c72:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000c76:	f44f 722f 	mov.w	r2, #700	; 0x2bc
 8000c7a:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000c7e:	2246      	movs	r2, #70	; 0x46
 8000c80:	920c      	str	r2, [sp, #48]	; 0x30
 8000c82:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000c86:	2300      	movs	r3, #0
 8000c88:	920e      	str	r2, [sp, #56]	; 0x38
 8000c8a:	f241 3288 	movw	r2, #5000	; 0x1388
 8000c8e:	f44f 71fa 	mov.w	r1, #500	; 0x1f4
 8000c92:	6033      	str	r3, [r6, #0]
 8000c94:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000c98:	930d      	str	r3, [sp, #52]	; 0x34
 8000c9a:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c9c:	9211      	str	r2, [sp, #68]	; 0x44
 8000c9e:	2328      	movs	r3, #40	; 0x28
 8000ca0:	f44f 72c8 	mov.w	r2, #400	; 0x190
 8000ca4:	483a      	ldr	r0, [pc, #232]	; (8000d90 <main_thread+0x134>)
 8000ca6:	9310      	str	r3, [sp, #64]	; 0x40
 8000ca8:	ad0d      	add	r5, sp, #52	; 0x34
 8000caa:	9212      	str	r2, [sp, #72]	; 0x48
 8000cac:	9113      	str	r1, [sp, #76]	; 0x4c
 8000cae:	9214      	str	r2, [sp, #80]	; 0x50
 8000cb0:	9315      	str	r3, [sp, #84]	; 0x54
 8000cb2:	f7ff fd21 	bl	80006f8 <_ZN6CRobot4initEv>
 8000cb6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000cb8:	466c      	mov	r4, sp
 8000cba:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000cbc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000cbe:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000cc0:	682b      	ldr	r3, [r5, #0]
 8000cc2:	6023      	str	r3, [r4, #0]
 8000cc4:	ab0a      	add	r3, sp, #40	; 0x28
 8000cc6:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000cc8:	4831      	ldr	r0, [pc, #196]	; (8000d90 <main_thread+0x134>)
 8000cca:	f7ff fa61 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000cce:	4831      	ldr	r0, [pc, #196]	; (8000d94 <main_thread+0x138>)
 8000cd0:	492f      	ldr	r1, [pc, #188]	; (8000d90 <main_thread+0x134>)
 8000cd2:	f000 f871 	bl	8000db8 <_ZN13CLineFollower4initEP6CRobot>
 8000cd6:	4830      	ldr	r0, [pc, #192]	; (8000d98 <main_thread+0x13c>)
 8000cd8:	492d      	ldr	r1, [pc, #180]	; (8000d90 <main_thread+0x134>)
 8000cda:	f7ff fd5d 	bl	8000798 <_ZN9CObstacle4initEP6CRobot>
 8000cde:	482f      	ldr	r0, [pc, #188]	; (8000d9c <main_thread+0x140>)
 8000ce0:	492b      	ldr	r1, [pc, #172]	; (8000d90 <main_thread+0x134>)
 8000ce2:	f000 f93f 	bl	8000f64 <_ZN11CBrokenLine4initEP6CRobot>
 8000ce6:	482e      	ldr	r0, [pc, #184]	; (8000da0 <main_thread+0x144>)
 8000ce8:	4929      	ldr	r1, [pc, #164]	; (8000d90 <main_thread+0x134>)
 8000cea:	f7ff ff09 	bl	8000b00 <_ZN4CMap4initEP6CRobot>
 8000cee:	4828      	ldr	r0, [pc, #160]	; (8000d90 <main_thread+0x134>)
 8000cf0:	f7ff fa4a 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cf4:	b158      	cbz	r0, 8000d0e <main_thread+0xb2>
 8000cf6:	4826      	ldr	r0, [pc, #152]	; (8000d90 <main_thread+0x134>)
 8000cf8:	f7ff fa46 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cfc:	4604      	mov	r4, r0
 8000cfe:	4824      	ldr	r0, [pc, #144]	; (8000d90 <main_thread+0x134>)
 8000d00:	f7ff fa44 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000d04:	4601      	mov	r1, r0
 8000d06:	4620      	mov	r0, r4
 8000d08:	f7ff fd16 	bl	8000738 <abort_error_>
 8000d0c:	e7f3      	b.n	8000cf6 <main_thread+0x9a>
 8000d0e:	4925      	ldr	r1, [pc, #148]	; (8000da4 <main_thread+0x148>)
 8000d10:	4825      	ldr	r0, [pc, #148]	; (8000da8 <main_thread+0x14c>)
 8000d12:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000d16:	2306      	movs	r3, #6
 8000d18:	f000 faae 	bl	8001278 <create_thread>
 8000d1c:	4823      	ldr	r0, [pc, #140]	; (8000dac <main_thread+0x150>)
 8000d1e:	4924      	ldr	r1, [pc, #144]	; (8000db0 <main_thread+0x154>)
 8000d20:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000d24:	2306      	movs	r3, #6
 8000d26:	f000 faa7 	bl	8001278 <create_thread>
 8000d2a:	f002 f8cf 	bl	8002ecc <get_key>
 8000d2e:	b138      	cbz	r0, 8000d40 <main_thread+0xe4>
 8000d30:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000d34:	f001 fb4e 	bl	80023d4 <timer_delay_ms>
 8000d38:	2301      	movs	r3, #1
 8000d3a:	6033      	str	r3, [r6, #0]
 8000d3c:	f7ff ff4c 	bl	8000bd8 <_Z13line_followerv>
 8000d40:	f002 f8f0 	bl	8002f24 <encoder_get_distance>
 8000d44:	4607      	mov	r7, r0
 8000d46:	f002 f8c9 	bl	8002edc <left_encoder_read>
 8000d4a:	4605      	mov	r5, r0
 8000d4c:	f002 f8d8 	bl	8002f00 <right_encoder_read>
 8000d50:	4604      	mov	r4, r0
 8000d52:	480f      	ldr	r0, [pc, #60]	; (8000d90 <main_thread+0x134>)
 8000d54:	f7ff fa33 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000d58:	6883      	ldr	r3, [r0, #8]
 8000d5a:	9300      	str	r3, [sp, #0]
 8000d5c:	4639      	mov	r1, r7
 8000d5e:	462a      	mov	r2, r5
 8000d60:	4623      	mov	r3, r4
 8000d62:	4814      	ldr	r0, [pc, #80]	; (8000db4 <main_thread+0x158>)
 8000d64:	f000 fbb6 	bl	80014d4 <printf_>
 8000d68:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d6c:	f002 f89a 	bl	8002ea4 <led_on>
 8000d70:	2064      	movs	r0, #100	; 0x64
 8000d72:	f001 fb2f 	bl	80023d4 <timer_delay_ms>
 8000d76:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d7a:	f002 f89d 	bl	8002eb8 <led_off>
 8000d7e:	20c8      	movs	r0, #200	; 0xc8
 8000d80:	f001 fb28 	bl	80023d4 <timer_delay_ms>
 8000d84:	e7d1      	b.n	8000d2a <main_thread+0xce>
 8000d86:	bf00      	nop
 8000d88:	08004b8f 	.word	0x08004b8f
 8000d8c:	20000a40 	.word	0x20000a40
 8000d90:	2000094c 	.word	0x2000094c
 8000d94:	200009fc 	.word	0x200009fc
 8000d98:	20000744 	.word	0x20000744
 8000d9c:	20000530 	.word	0x20000530
 8000da0:	2000053c 	.word	0x2000053c
 8000da4:	20000544 	.word	0x20000544
 8000da8:	08000b89 	.word	0x08000b89
 8000dac:	08000ba5 	.word	0x08000ba5
 8000db0:	2000074c 	.word	0x2000074c
 8000db4:	08004bca 	.word	0x08004bca

08000db8 <_ZN13CLineFollower4initEP6CRobot>:
 8000db8:	b510      	push	{r4, lr}
 8000dba:	ed2d 8b04 	vpush	{d8-d9}
 8000dbe:	4604      	mov	r4, r0
 8000dc0:	b082      	sub	sp, #8
 8000dc2:	2900      	cmp	r1, #0
 8000dc4:	d065      	beq.n	8000e92 <_ZN13CLineFollower4initEP6CRobot+0xda>
 8000dc6:	2300      	movs	r3, #0
 8000dc8:	6103      	str	r3, [r0, #16]
 8000dca:	6143      	str	r3, [r0, #20]
 8000dcc:	6401      	str	r1, [r0, #64]	; 0x40
 8000dce:	4833      	ldr	r0, [pc, #204]	; (8000e9c <_ZN13CLineFollower4initEP6CRobot+0xe4>)
 8000dd0:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000ea0 <_ZN13CLineFollower4initEP6CRobot+0xe8>
 8000dd4:	f000 f9bf 	bl	8001156 <_ZN11CQPredictor4initEv>
 8000dd8:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dda:	f7ff f9eb 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dde:	ed90 9a02 	vldr	s18, [r0, #8]
 8000de2:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000de4:	f7ff f9e6 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000de8:	edd0 8a03 	vldr	s17, [r0, #12]
 8000dec:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dee:	f7ff f9e1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000df2:	edd0 9a04 	vldr	s19, [r0, #16]
 8000df6:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000df8:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000dfc:	f7ff f9da 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e00:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000e04:	4927      	ldr	r1, [pc, #156]	; (8000ea4 <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000e06:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000e0a:	edcd 9a00 	vstr	s19, [sp]
 8000e0e:	edd0 7a05 	vldr	s15, [r0, #20]
 8000e12:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000e16:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e1a:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000e1e:	f104 0018 	add.w	r0, r4, #24
 8000e22:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e26:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000e2a:	ee19 2a10 	vmov	r2, s18
 8000e2e:	ee18 3a90 	vmov	r3, s17
 8000e32:	edcd 7a01 	vstr	s15, [sp, #4]
 8000e36:	f000 fc77 	bl	8001728 <pid_init>
 8000e3a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e3c:	f7ff f9ba 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e40:	edd0 7a06 	vldr	s15, [r0, #24]
 8000e44:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e46:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e4a:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e4e:	edc4 7a00 	vstr	s15, [r4]
 8000e52:	f7ff f9af 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e56:	edd0 7a07 	vldr	s15, [r0, #28]
 8000e5a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e5c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e60:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e64:	edc4 7a01 	vstr	s15, [r4, #4]
 8000e68:	f7ff f9a4 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e6c:	edd0 7a08 	vldr	s15, [r0, #32]
 8000e70:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e72:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e76:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e7a:	edc4 7a02 	vstr	s15, [r4, #8]
 8000e7e:	f7ff f999 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e82:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000e86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e8a:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000e8e:	ed84 8a03 	vstr	s16, [r4, #12]
 8000e92:	b002      	add	sp, #8
 8000e94:	ecbd 8b04 	vpop	{d8-d9}
 8000e98:	bd10      	pop	{r4, pc}
 8000e9a:	bf00      	nop
 8000e9c:	20000a44 	.word	0x20000a44
 8000ea0:	447a0000 	.word	0x447a0000
 8000ea4:	42c80000 	.word	0x42c80000

08000ea8 <_ZN13CLineFollower7processEv>:
 8000ea8:	b510      	push	{r4, lr}
 8000eaa:	4604      	mov	r4, r0
 8000eac:	ed2d 8b02 	vpush	{d8}
 8000eb0:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000eb2:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000f54 <_ZN13CLineFollower7processEv+0xac>
 8000eb6:	f7ff f97e 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000eba:	edd0 7a01 	vldr	s15, [r0, #4]
 8000ebe:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000f58 <_ZN13CLineFollower7processEv+0xb0>
 8000ec2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000ec6:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000eca:	ee18 0a10 	vmov	r0, s16
 8000ece:	f000 fbed 	bl	80016ac <m_abs>
 8000ed2:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000f5c <_ZN13CLineFollower7processEv+0xb4>
 8000ed6:	edd4 6a01 	vldr	s13, [r4, #4]
 8000eda:	edd4 5a00 	vldr	s11, [r4]
 8000ede:	ed94 6a04 	vldr	s12, [r4, #16]
 8000ee2:	ee07 0a90 	vmov	s15, r0
 8000ee6:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000eea:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000eee:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000ef2:	ee17 1a10 	vmov	r1, s14
 8000ef6:	ee16 0a10 	vmov	r0, s12
 8000efa:	f000 fc07 	bl	800170c <m_min>
 8000efe:	68e2      	ldr	r2, [r4, #12]
 8000f00:	68a1      	ldr	r1, [r4, #8]
 8000f02:	6120      	str	r0, [r4, #16]
 8000f04:	f000 fbeb 	bl	80016de <m_saturate>
 8000f08:	ee18 1a10 	vmov	r1, s16
 8000f0c:	6120      	str	r0, [r4, #16]
 8000f0e:	f104 0018 	add.w	r0, r4, #24
 8000f12:	f000 fc39 	bl	8001788 <pid_process>
 8000f16:	edd4 7a04 	vldr	s15, [r4, #16]
 8000f1a:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000f60 <_ZN13CLineFollower7processEv+0xb8>
 8000f1e:	6160      	str	r0, [r4, #20]
 8000f20:	ee06 0a90 	vmov	s13, r0
 8000f24:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000f28:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000f2c:	ecbd 8b02 	vpop	{d8}
 8000f30:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000f34:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000f38:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000f3c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000f40:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000f42:	ee17 1a10 	vmov	r1, s14
 8000f46:	ee17 2a90 	vmov	r2, s15
 8000f4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f4e:	f7ff b938 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000f52:	bf00      	nop
 8000f54:	00000000 	.word	0x00000000
 8000f58:	3b800000 	.word	0x3b800000
 8000f5c:	3f800000 	.word	0x3f800000
 8000f60:	42c80000 	.word	0x42c80000

08000f64 <_ZN11CBrokenLine4initEP6CRobot>:
 8000f64:	b510      	push	{r4, lr}
 8000f66:	4604      	mov	r4, r0
 8000f68:	b151      	cbz	r1, 8000f80 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000f6a:	6001      	str	r1, [r0, #0]
 8000f6c:	4608      	mov	r0, r1
 8000f6e:	f7ff f921 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f72:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000f74:	6063      	str	r3, [r4, #4]
 8000f76:	6820      	ldr	r0, [r4, #0]
 8000f78:	f7ff f91c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f7c:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000f7e:	60a3      	str	r3, [r4, #8]
 8000f80:	bd10      	pop	{r4, pc}

08000f82 <_ZN11CBrokenLine7processEj>:
 8000f82:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000f86:	4681      	mov	r9, r0
 8000f88:	6800      	ldr	r0, [r0, #0]
 8000f8a:	9100      	str	r1, [sp, #0]
 8000f8c:	f7ff f913 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f90:	f8d0 a004 	ldr.w	sl, [r0, #4]
 8000f94:	f001 ffc6 	bl	8002f24 <encoder_get_distance>
 8000f98:	2500      	movs	r5, #0
 8000f9a:	f100 06be 	add.w	r6, r0, #190	; 0xbe
 8000f9e:	462c      	mov	r4, r5
 8000fa0:	f8d9 0000 	ldr.w	r0, [r9]
 8000fa4:	f7ff f907 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fa8:	7803      	ldrb	r3, [r0, #0]
 8000faa:	2b01      	cmp	r3, #1
 8000fac:	d003      	beq.n	8000fb6 <_ZN11CBrokenLine7processEj+0x34>
 8000fae:	f001 ffb9 	bl	8002f24 <encoder_get_distance>
 8000fb2:	42b0      	cmp	r0, r6
 8000fb4:	d30e      	bcc.n	8000fd4 <_ZN11CBrokenLine7processEj+0x52>
 8000fb6:	f04f 0b00 	mov.w	fp, #0
 8000fba:	465e      	mov	r6, fp
 8000fbc:	46d8      	mov	r8, fp
 8000fbe:	2701      	movs	r7, #1
 8000fc0:	f8d9 0000 	ldr.w	r0, [r9]
 8000fc4:	f7ff f8f7 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fc8:	7802      	ldrb	r2, [r0, #0]
 8000fca:	2a01      	cmp	r2, #1
 8000fcc:	d11b      	bne.n	8001006 <_ZN11CBrokenLine7processEj+0x84>
 8000fce:	9b00      	ldr	r3, [sp, #0]
 8000fd0:	b9cb      	cbnz	r3, 8001006 <_ZN11CBrokenLine7processEj+0x84>
 8000fd2:	e0b9      	b.n	8001148 <_ZN11CBrokenLine7processEj+0x1c6>
 8000fd4:	f8d9 5008 	ldr.w	r5, [r9, #8]
 8000fd8:	f1ba 0f00 	cmp.w	sl, #0
 8000fdc:	bfd6      	itet	le
 8000fde:	462c      	movle	r4, r5
 8000fe0:	2400      	movgt	r4, #0
 8000fe2:	2500      	movle	r5, #0
 8000fe4:	4629      	mov	r1, r5
 8000fe6:	4620      	mov	r0, r4
 8000fe8:	f001 fdac 	bl	8002b44 <drv8834_run>
 8000fec:	200a      	movs	r0, #10
 8000fee:	f001 f9f1 	bl	80023d4 <timer_delay_ms>
 8000ff2:	f8d9 0000 	ldr.w	r0, [r9]
 8000ff6:	f7ff f8de 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000ffa:	7803      	ldrb	r3, [r0, #0]
 8000ffc:	2b01      	cmp	r3, #1
 8000ffe:	d1cf      	bne.n	8000fa0 <_ZN11CBrokenLine7processEj+0x1e>
 8001000:	b003      	add	sp, #12
 8001002:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001006:	2f04      	cmp	r7, #4
 8001008:	d87a      	bhi.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 800100a:	e8df f007 	tbb	[pc, r7]
 800100e:	1c03      	.short	0x1c03
 8001010:	5037      	.short	0x5037
 8001012:	6b          	.byte	0x6b
 8001013:	00          	.byte	0x00
 8001014:	f001 ff86 	bl	8002f24 <encoder_get_distance>
 8001018:	4540      	cmp	r0, r8
 800101a:	d371      	bcc.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 800101c:	f001 ff82 	bl	8002f24 <encoder_get_distance>
 8001020:	f1ba 0f00 	cmp.w	sl, #0
 8001024:	f8d9 4008 	ldr.w	r4, [r9, #8]
 8001028:	bfca      	itet	gt
 800102a:	f04f 0b00 	movgt.w	fp, #0
 800102e:	f04f 0b00 	movle.w	fp, #0
 8001032:	4625      	movgt	r5, r4
 8001034:	f100 08be 	add.w	r8, r0, #190	; 0xbe
 8001038:	bfc7      	ittee	gt
 800103a:	465e      	movgt	r6, fp
 800103c:	465c      	movgt	r4, fp
 800103e:	465e      	movle	r6, fp
 8001040:	465d      	movle	r5, fp
 8001042:	2701      	movs	r7, #1
 8001044:	e05c      	b.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 8001046:	f001 ff6d 	bl	8002f24 <encoder_get_distance>
 800104a:	4540      	cmp	r0, r8
 800104c:	d358      	bcc.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 800104e:	f001 ff69 	bl	8002f24 <encoder_get_distance>
 8001052:	f1ba 0f00 	cmp.w	sl, #0
 8001056:	f8d9 4008 	ldr.w	r4, [r9, #8]
 800105a:	bfca      	itet	gt
 800105c:	f04f 0b00 	movgt.w	fp, #0
 8001060:	f04f 0b00 	movle.w	fp, #0
 8001064:	4265      	neggt	r5, r4
 8001066:	f100 08be 	add.w	r8, r0, #190	; 0xbe
 800106a:	bfc7      	ittee	gt
 800106c:	465e      	movgt	r6, fp
 800106e:	465c      	movgt	r4, fp
 8001070:	4264      	negle	r4, r4
 8001072:	465e      	movle	r6, fp
 8001074:	bfd8      	it	le
 8001076:	465d      	movle	r5, fp
 8001078:	2702      	movs	r7, #2
 800107a:	e041      	b.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 800107c:	f001 ff52 	bl	8002f24 <encoder_get_distance>
 8001080:	4540      	cmp	r0, r8
 8001082:	d33d      	bcc.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 8001084:	f001 ff4e 	bl	8002f24 <encoder_get_distance>
 8001088:	f1ba 0f00 	cmp.w	sl, #0
 800108c:	f8d9 4008 	ldr.w	r4, [r9, #8]
 8001090:	bfce      	itee	gt
 8001092:	f04f 0b00 	movgt.w	fp, #0
 8001096:	f04f 0b00 	movle.w	fp, #0
 800109a:	4625      	movle	r5, r4
 800109c:	f100 08be 	add.w	r8, r0, #190	; 0xbe
 80010a0:	bfc7      	ittee	gt
 80010a2:	465e      	movgt	r6, fp
 80010a4:	465d      	movgt	r5, fp
 80010a6:	465e      	movle	r6, fp
 80010a8:	465c      	movle	r4, fp
 80010aa:	2703      	movs	r7, #3
 80010ac:	e028      	b.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 80010ae:	f001 ff39 	bl	8002f24 <encoder_get_distance>
 80010b2:	4540      	cmp	r0, r8
 80010b4:	d324      	bcc.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 80010b6:	f001 ff35 	bl	8002f24 <encoder_get_distance>
 80010ba:	f1ba 0f00 	cmp.w	sl, #0
 80010be:	f8d9 4008 	ldr.w	r4, [r9, #8]
 80010c2:	bfce      	itee	gt
 80010c4:	f04f 0b00 	movgt.w	fp, #0
 80010c8:	f04f 0b00 	movle.w	fp, #0
 80010cc:	4265      	negle	r5, r4
 80010ce:	f100 08be 	add.w	r8, r0, #190	; 0xbe
 80010d2:	bfc3      	ittte	gt
 80010d4:	4264      	neggt	r4, r4
 80010d6:	465e      	movgt	r6, fp
 80010d8:	465d      	movgt	r5, fp
 80010da:	465e      	movle	r6, fp
 80010dc:	bfd8      	it	le
 80010de:	465c      	movle	r4, fp
 80010e0:	2704      	movs	r7, #4
 80010e2:	e00d      	b.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 80010e4:	f001 ff1e 	bl	8002f24 <encoder_get_distance>
 80010e8:	4540      	cmp	r0, r8
 80010ea:	d309      	bcc.n	8001100 <_ZN11CBrokenLine7processEj+0x17e>
 80010ec:	f001 ff1a 	bl	8002f24 <encoder_get_distance>
 80010f0:	f04f 0b00 	mov.w	fp, #0
 80010f4:	2528      	movs	r5, #40	; 0x28
 80010f6:	f100 08be 	add.w	r8, r0, #190	; 0xbe
 80010fa:	465e      	mov	r6, fp
 80010fc:	462c      	mov	r4, r5
 80010fe:	465f      	mov	r7, fp
 8001100:	4630      	mov	r0, r6
 8001102:	f000 fadf 	bl	80016c4 <m_abs_int>
 8001106:	9001      	str	r0, [sp, #4]
 8001108:	4620      	mov	r0, r4
 800110a:	f000 fadb 	bl	80016c4 <m_abs_int>
 800110e:	9a01      	ldr	r2, [sp, #4]
 8001110:	4282      	cmp	r2, r0
 8001112:	da03      	bge.n	800111c <_ZN11CBrokenLine7processEj+0x19a>
 8001114:	4620      	mov	r0, r4
 8001116:	f000 fad9 	bl	80016cc <m_sgn_int>
 800111a:	4406      	add	r6, r0
 800111c:	4658      	mov	r0, fp
 800111e:	f000 fad1 	bl	80016c4 <m_abs_int>
 8001122:	9001      	str	r0, [sp, #4]
 8001124:	4628      	mov	r0, r5
 8001126:	f000 facd 	bl	80016c4 <m_abs_int>
 800112a:	9a01      	ldr	r2, [sp, #4]
 800112c:	4282      	cmp	r2, r0
 800112e:	da03      	bge.n	8001138 <_ZN11CBrokenLine7processEj+0x1b6>
 8001130:	4628      	mov	r0, r5
 8001132:	f000 facb 	bl	80016cc <m_sgn_int>
 8001136:	4483      	add	fp, r0
 8001138:	4630      	mov	r0, r6
 800113a:	4659      	mov	r1, fp
 800113c:	f001 fd02 	bl	8002b44 <drv8834_run>
 8001140:	200a      	movs	r0, #10
 8001142:	f001 f947 	bl	80023d4 <timer_delay_ms>
 8001146:	e73b      	b.n	8000fc0 <_ZN11CBrokenLine7processEj+0x3e>
 8001148:	9800      	ldr	r0, [sp, #0]
 800114a:	4601      	mov	r1, r0
 800114c:	b003      	add	sp, #12
 800114e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001152:	f001 bcf7 	b.w	8002b44 <drv8834_run>

08001156 <_ZN11CQPredictor4initEv>:
 8001156:	1d03      	adds	r3, r0, #4
 8001158:	3044      	adds	r0, #68	; 0x44
 800115a:	2200      	movs	r2, #0
 800115c:	f843 2b04 	str.w	r2, [r3], #4
 8001160:	4283      	cmp	r3, r0
 8001162:	d1fa      	bne.n	800115a <_ZN11CQPredictor4initEv+0x4>
 8001164:	4770      	bx	lr
	...

08001168 <thread_ending>:
 8001168:	b672      	cpsid	i
 800116a:	4b05      	ldr	r3, [pc, #20]	; (8001180 <thread_ending+0x18>)
 800116c:	681a      	ldr	r2, [r3, #0]
 800116e:	4b05      	ldr	r3, [pc, #20]	; (8001184 <thread_ending+0x1c>)
 8001170:	210c      	movs	r1, #12
 8001172:	fb01 3302 	mla	r3, r1, r2, r3
 8001176:	2200      	movs	r2, #0
 8001178:	605a      	str	r2, [r3, #4]
 800117a:	b662      	cpsie	i
 800117c:	bf00      	nop
 800117e:	e7fd      	b.n	800117c <thread_ending+0x14>
 8001180:	20000ad0 	.word	0x20000ad0
 8001184:	20000a88 	.word	0x20000a88

08001188 <null_thread>:
 8001188:	b508      	push	{r3, lr}
 800118a:	f001 fc47 	bl	8002a1c <sleep>
 800118e:	e7fc      	b.n	800118a <null_thread+0x2>

08001190 <scheduler>:
 8001190:	b570      	push	{r4, r5, r6, lr}
 8001192:	2200      	movs	r2, #0
 8001194:	4611      	mov	r1, r2
 8001196:	4b15      	ldr	r3, [pc, #84]	; (80011ec <scheduler+0x5c>)
 8001198:	200c      	movs	r0, #12
 800119a:	fb00 f401 	mul.w	r4, r0, r1
 800119e:	191e      	adds	r6, r3, r4
 80011a0:	6875      	ldr	r5, [r6, #4]
 80011a2:	f015 0f02 	tst.w	r5, #2
 80011a6:	461d      	mov	r5, r3
 80011a8:	d10a      	bne.n	80011c0 <scheduler+0x30>
 80011aa:	6876      	ldr	r6, [r6, #4]
 80011ac:	07f6      	lsls	r6, r6, #31
 80011ae:	d507      	bpl.n	80011c0 <scheduler+0x30>
 80011b0:	4350      	muls	r0, r2
 80011b2:	5b1c      	ldrh	r4, [r3, r4]
 80011b4:	5a18      	ldrh	r0, [r3, r0]
 80011b6:	b2a4      	uxth	r4, r4
 80011b8:	b280      	uxth	r0, r0
 80011ba:	4284      	cmp	r4, r0
 80011bc:	bf38      	it	cc
 80011be:	460a      	movcc	r2, r1
 80011c0:	200c      	movs	r0, #12
 80011c2:	4348      	muls	r0, r1
 80011c4:	5a1c      	ldrh	r4, [r3, r0]
 80011c6:	b2a4      	uxth	r4, r4
 80011c8:	b11c      	cbz	r4, 80011d2 <scheduler+0x42>
 80011ca:	5a1c      	ldrh	r4, [r3, r0]
 80011cc:	3c01      	subs	r4, #1
 80011ce:	b2a4      	uxth	r4, r4
 80011d0:	521c      	strh	r4, [r3, r0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	2906      	cmp	r1, #6
 80011d6:	d1de      	bne.n	8001196 <scheduler+0x6>
 80011d8:	230c      	movs	r3, #12
 80011da:	4353      	muls	r3, r2
 80011dc:	18e9      	adds	r1, r5, r3
 80011de:	8849      	ldrh	r1, [r1, #2]
 80011e0:	b289      	uxth	r1, r1
 80011e2:	52e9      	strh	r1, [r5, r3]
 80011e4:	4b02      	ldr	r3, [pc, #8]	; (80011f0 <scheduler+0x60>)
 80011e6:	601a      	str	r2, [r3, #0]
 80011e8:	bd70      	pop	{r4, r5, r6, pc}
 80011ea:	bf00      	nop
 80011ec:	20000a88 	.word	0x20000a88
 80011f0:	20000ad0 	.word	0x20000ad0

080011f4 <SysTick_Handler>:
 80011f4:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80011f8:	f3ef 8308 	mrs	r3, MSP
 80011fc:	4c0f      	ldr	r4, [pc, #60]	; (800123c <SysTick_Handler+0x48>)
 80011fe:	4d10      	ldr	r5, [pc, #64]	; (8001240 <SysTick_Handler+0x4c>)
 8001200:	6822      	ldr	r2, [r4, #0]
 8001202:	3201      	adds	r2, #1
 8001204:	bf1d      	ittte	ne
 8001206:	6822      	ldrne	r2, [r4, #0]
 8001208:	210c      	movne	r1, #12
 800120a:	fb01 5202 	mlane	r2, r1, r2, r5
 800120e:	2300      	moveq	r3, #0
 8001210:	bf14      	ite	ne
 8001212:	6093      	strne	r3, [r2, #8]
 8001214:	6023      	streq	r3, [r4, #0]
 8001216:	f7ff ffbb 	bl	8001190 <scheduler>
 800121a:	4b0a      	ldr	r3, [pc, #40]	; (8001244 <SysTick_Handler+0x50>)
 800121c:	681a      	ldr	r2, [r3, #0]
 800121e:	3201      	adds	r2, #1
 8001220:	601a      	str	r2, [r3, #0]
 8001222:	6822      	ldr	r2, [r4, #0]
 8001224:	230c      	movs	r3, #12
 8001226:	fb03 5302 	mla	r3, r3, r2, r5
 800122a:	689a      	ldr	r2, [r3, #8]
 800122c:	f06f 0306 	mvn.w	r3, #6
 8001230:	469e      	mov	lr, r3
 8001232:	f382 8808 	msr	MSP, r2
 8001236:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800123a:	4770      	bx	lr
 800123c:	20000ad0 	.word	0x20000ad0
 8001240:	20000a88 	.word	0x20000a88
 8001244:	20000ad4 	.word	0x20000ad4

08001248 <sched_off>:
 8001248:	b672      	cpsid	i
 800124a:	4770      	bx	lr

0800124c <sched_on>:
 800124c:	b662      	cpsie	i
 800124e:	4770      	bx	lr

08001250 <yield>:
 8001250:	bf00      	nop
 8001252:	4770      	bx	lr

08001254 <get_thread_id>:
 8001254:	b082      	sub	sp, #8
 8001256:	b672      	cpsid	i
 8001258:	4b03      	ldr	r3, [pc, #12]	; (8001268 <get_thread_id+0x14>)
 800125a:	681b      	ldr	r3, [r3, #0]
 800125c:	9301      	str	r3, [sp, #4]
 800125e:	b662      	cpsie	i
 8001260:	9801      	ldr	r0, [sp, #4]
 8001262:	b002      	add	sp, #8
 8001264:	4770      	bx	lr
 8001266:	bf00      	nop
 8001268:	20000ad0 	.word	0x20000ad0

0800126c <kernel_start>:
 800126c:	b508      	push	{r3, lr}
 800126e:	f001 fbc3 	bl	80029f8 <sys_tick_init>
 8001272:	bf00      	nop
 8001274:	e7fd      	b.n	8001272 <kernel_start+0x6>
	...

08001278 <create_thread>:
 8001278:	f022 0203 	bic.w	r2, r2, #3
 800127c:	3a40      	subs	r2, #64	; 0x40
 800127e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001282:	eb01 0e02 	add.w	lr, r1, r2
 8001286:	f102 0634 	add.w	r6, r2, #52	; 0x34
 800128a:	f102 0738 	add.w	r7, r2, #56	; 0x38
 800128e:	323c      	adds	r2, #60	; 0x3c
 8001290:	440e      	add	r6, r1
 8001292:	440f      	add	r7, r1
 8001294:	4411      	add	r1, r2
 8001296:	2200      	movs	r2, #0
 8001298:	b672      	cpsid	i
 800129a:	f8df c054 	ldr.w	ip, [pc, #84]	; 80012f0 <create_thread+0x78>
 800129e:	250c      	movs	r5, #12
 80012a0:	4355      	muls	r5, r2
 80012a2:	eb0c 0405 	add.w	r4, ip, r5
 80012a6:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80012aa:	f018 0f01 	tst.w	r8, #1
 80012ae:	d114      	bne.n	80012da <create_thread+0x62>
 80012b0:	f8df 8040 	ldr.w	r8, [pc, #64]	; 80012f4 <create_thread+0x7c>
 80012b4:	f8c4 e008 	str.w	lr, [r4, #8]
 80012b8:	2b05      	cmp	r3, #5
 80012ba:	f8c6 8000 	str.w	r8, [r6]
 80012be:	bf98      	it	ls
 80012c0:	2306      	movls	r3, #6
 80012c2:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80012c6:	6038      	str	r0, [r7, #0]
 80012c8:	f8c1 8000 	str.w	r8, [r1]
 80012cc:	8063      	strh	r3, [r4, #2]
 80012ce:	f82c 3005 	strh.w	r3, [ip, r5]
 80012d2:	2501      	movs	r5, #1
 80012d4:	6065      	str	r5, [r4, #4]
 80012d6:	4614      	mov	r4, r2
 80012d8:	e000      	b.n	80012dc <create_thread+0x64>
 80012da:	2406      	movs	r4, #6
 80012dc:	b662      	cpsie	i
 80012de:	3201      	adds	r2, #1
 80012e0:	2a06      	cmp	r2, #6
 80012e2:	d001      	beq.n	80012e8 <create_thread+0x70>
 80012e4:	2c06      	cmp	r4, #6
 80012e6:	d0d7      	beq.n	8001298 <create_thread+0x20>
 80012e8:	4620      	mov	r0, r4
 80012ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80012ee:	bf00      	nop
 80012f0:	20000a88 	.word	0x20000a88
 80012f4:	08001169 	.word	0x08001169

080012f8 <kernel_init>:
 80012f8:	b530      	push	{r4, r5, lr}
 80012fa:	2300      	movs	r3, #0
 80012fc:	480c      	ldr	r0, [pc, #48]	; (8001330 <kernel_init+0x38>)
 80012fe:	220c      	movs	r2, #12
 8001300:	435a      	muls	r2, r3
 8001302:	2406      	movs	r4, #6
 8001304:	1885      	adds	r5, r0, r2
 8001306:	3301      	adds	r3, #1
 8001308:	2100      	movs	r1, #0
 800130a:	42a3      	cmp	r3, r4
 800130c:	6069      	str	r1, [r5, #4]
 800130e:	806c      	strh	r4, [r5, #2]
 8001310:	5284      	strh	r4, [r0, r2]
 8001312:	d1f3      	bne.n	80012fc <kernel_init+0x4>
 8001314:	4b07      	ldr	r3, [pc, #28]	; (8001334 <kernel_init+0x3c>)
 8001316:	4808      	ldr	r0, [pc, #32]	; (8001338 <kernel_init+0x40>)
 8001318:	6019      	str	r1, [r3, #0]
 800131a:	4b08      	ldr	r3, [pc, #32]	; (800133c <kernel_init+0x44>)
 800131c:	4908      	ldr	r1, [pc, #32]	; (8001340 <kernel_init+0x48>)
 800131e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001322:	601a      	str	r2, [r3, #0]
 8001324:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001328:	2280      	movs	r2, #128	; 0x80
 800132a:	23ff      	movs	r3, #255	; 0xff
 800132c:	f7ff bfa4 	b.w	8001278 <create_thread>
 8001330:	20000a88 	.word	0x20000a88
 8001334:	20000ad4 	.word	0x20000ad4
 8001338:	08001189 	.word	0x08001189
 800133c:	20000ad0 	.word	0x20000ad0
 8001340:	20000ad8 	.word	0x20000ad8

08001344 <set_wait_state>:
 8001344:	b507      	push	{r0, r1, r2, lr}
 8001346:	f7ff ff85 	bl	8001254 <get_thread_id>
 800134a:	9000      	str	r0, [sp, #0]
 800134c:	b672      	cpsid	i
 800134e:	4b0d      	ldr	r3, [pc, #52]	; (8001384 <set_wait_state+0x40>)
 8001350:	9a00      	ldr	r2, [sp, #0]
 8001352:	210c      	movs	r1, #12
 8001354:	fb01 3202 	mla	r2, r1, r2, r3
 8001358:	6851      	ldr	r1, [r2, #4]
 800135a:	f041 0102 	orr.w	r1, r1, #2
 800135e:	6051      	str	r1, [r2, #4]
 8001360:	b672      	cpsid	i
 8001362:	9a00      	ldr	r2, [sp, #0]
 8001364:	210c      	movs	r1, #12
 8001366:	fb01 3202 	mla	r2, r1, r2, r3
 800136a:	6852      	ldr	r2, [r2, #4]
 800136c:	9201      	str	r2, [sp, #4]
 800136e:	b662      	cpsie	i
 8001370:	9a01      	ldr	r2, [sp, #4]
 8001372:	0791      	lsls	r1, r2, #30
 8001374:	d500      	bpl.n	8001378 <set_wait_state+0x34>
 8001376:	bf00      	nop
 8001378:	9a01      	ldr	r2, [sp, #4]
 800137a:	0792      	lsls	r2, r2, #30
 800137c:	d4f0      	bmi.n	8001360 <set_wait_state+0x1c>
 800137e:	b003      	add	sp, #12
 8001380:	f85d fb04 	ldr.w	pc, [sp], #4
 8001384:	20000a88 	.word	0x20000a88

08001388 <wake_up_threads>:
 8001388:	2300      	movs	r3, #0
 800138a:	b672      	cpsid	i
 800138c:	4906      	ldr	r1, [pc, #24]	; (80013a8 <wake_up_threads+0x20>)
 800138e:	220c      	movs	r2, #12
 8001390:	fb02 1203 	mla	r2, r2, r3, r1
 8001394:	6851      	ldr	r1, [r2, #4]
 8001396:	f021 0102 	bic.w	r1, r1, #2
 800139a:	6051      	str	r1, [r2, #4]
 800139c:	b662      	cpsie	i
 800139e:	3301      	adds	r3, #1
 80013a0:	2b06      	cmp	r3, #6
 80013a2:	d1f2      	bne.n	800138a <wake_up_threads+0x2>
 80013a4:	4770      	bx	lr
 80013a6:	bf00      	nop
 80013a8:	20000a88 	.word	0x20000a88

080013ac <messages_init>:
 80013ac:	4a0a      	ldr	r2, [pc, #40]	; (80013d8 <messages_init+0x2c>)
 80013ae:	2300      	movs	r3, #0
 80013b0:	b510      	push	{r4, lr}
 80013b2:	6013      	str	r3, [r2, #0]
 80013b4:	6053      	str	r3, [r2, #4]
 80013b6:	6093      	str	r3, [r2, #8]
 80013b8:	60d3      	str	r3, [r2, #12]
 80013ba:	6113      	str	r3, [r2, #16]
 80013bc:	6153      	str	r3, [r2, #20]
 80013be:	4c07      	ldr	r4, [pc, #28]	; (80013dc <messages_init+0x30>)
 80013c0:	0118      	lsls	r0, r3, #4
 80013c2:	1821      	adds	r1, r4, r0
 80013c4:	3301      	adds	r3, #1
 80013c6:	2200      	movs	r2, #0
 80013c8:	2b04      	cmp	r3, #4
 80013ca:	604a      	str	r2, [r1, #4]
 80013cc:	5022      	str	r2, [r4, r0]
 80013ce:	60ca      	str	r2, [r1, #12]
 80013d0:	608a      	str	r2, [r1, #8]
 80013d2:	d1f4      	bne.n	80013be <messages_init+0x12>
 80013d4:	bd10      	pop	{r4, pc}
 80013d6:	bf00      	nop
 80013d8:	20000b58 	.word	0x20000b58
 80013dc:	20000b70 	.word	0x20000b70

080013e0 <putc_>:
 80013e0:	b538      	push	{r3, r4, r5, lr}
 80013e2:	4c06      	ldr	r4, [pc, #24]	; (80013fc <putc_+0x1c>)
 80013e4:	4605      	mov	r5, r0
 80013e6:	4620      	mov	r0, r4
 80013e8:	f000 f91f 	bl	800162a <mutex_lock>
 80013ec:	4628      	mov	r0, r5
 80013ee:	f001 f8dd 	bl	80025ac <uart_write>
 80013f2:	4620      	mov	r0, r4
 80013f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80013f8:	f000 b933 	b.w	8001662 <mutex_unlock>
 80013fc:	20000bb0 	.word	0x20000bb0

08001400 <puts_>:
 8001400:	b510      	push	{r4, lr}
 8001402:	4604      	mov	r4, r0
 8001404:	4807      	ldr	r0, [pc, #28]	; (8001424 <puts_+0x24>)
 8001406:	f000 f910 	bl	800162a <mutex_lock>
 800140a:	3c01      	subs	r4, #1
 800140c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001410:	b110      	cbz	r0, 8001418 <puts_+0x18>
 8001412:	f7ff ffe5 	bl	80013e0 <putc_>
 8001416:	e7f9      	b.n	800140c <puts_+0xc>
 8001418:	4802      	ldr	r0, [pc, #8]	; (8001424 <puts_+0x24>)
 800141a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800141e:	f000 b920 	b.w	8001662 <mutex_unlock>
 8001422:	bf00      	nop
 8001424:	20000bbc 	.word	0x20000bbc

08001428 <puti_>:
 8001428:	b530      	push	{r4, r5, lr}
 800142a:	b085      	sub	sp, #20
 800142c:	1e03      	subs	r3, r0, #0
 800142e:	f04f 0200 	mov.w	r2, #0
 8001432:	bfba      	itte	lt
 8001434:	425b      	neglt	r3, r3
 8001436:	2401      	movlt	r4, #1
 8001438:	4614      	movge	r4, r2
 800143a:	f88d 200f 	strb.w	r2, [sp, #15]
 800143e:	210a      	movs	r1, #10
 8001440:	220a      	movs	r2, #10
 8001442:	a801      	add	r0, sp, #4
 8001444:	fb93 f5f2 	sdiv	r5, r3, r2
 8001448:	fb02 3315 	mls	r3, r2, r5, r3
 800144c:	3330      	adds	r3, #48	; 0x30
 800144e:	540b      	strb	r3, [r1, r0]
 8001450:	1e4a      	subs	r2, r1, #1
 8001452:	462b      	mov	r3, r5
 8001454:	b10d      	cbz	r5, 800145a <puti_+0x32>
 8001456:	4611      	mov	r1, r2
 8001458:	e7f2      	b.n	8001440 <puti_+0x18>
 800145a:	b12c      	cbz	r4, 8001468 <puti_+0x40>
 800145c:	ab04      	add	r3, sp, #16
 800145e:	4413      	add	r3, r2
 8001460:	212d      	movs	r1, #45	; 0x2d
 8001462:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001466:	4611      	mov	r1, r2
 8001468:	4408      	add	r0, r1
 800146a:	f7ff ffc9 	bl	8001400 <puts_>
 800146e:	b005      	add	sp, #20
 8001470:	bd30      	pop	{r4, r5, pc}

08001472 <putui_>:
 8001472:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001474:	2300      	movs	r3, #0
 8001476:	f88d 300f 	strb.w	r3, [sp, #15]
 800147a:	220a      	movs	r2, #10
 800147c:	230a      	movs	r3, #10
 800147e:	a901      	add	r1, sp, #4
 8001480:	fbb0 f4f3 	udiv	r4, r0, r3
 8001484:	fb03 0314 	mls	r3, r3, r4, r0
 8001488:	3330      	adds	r3, #48	; 0x30
 800148a:	5453      	strb	r3, [r2, r1]
 800148c:	4620      	mov	r0, r4
 800148e:	1e53      	subs	r3, r2, #1
 8001490:	b10c      	cbz	r4, 8001496 <putui_+0x24>
 8001492:	461a      	mov	r2, r3
 8001494:	e7f2      	b.n	800147c <putui_+0xa>
 8001496:	1888      	adds	r0, r1, r2
 8001498:	f7ff ffb2 	bl	8001400 <puts_>
 800149c:	b004      	add	sp, #16
 800149e:	bd10      	pop	{r4, pc}

080014a0 <putx_>:
 80014a0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80014a2:	2300      	movs	r3, #0
 80014a4:	f88d 300f 	strb.w	r3, [sp, #15]
 80014a8:	220a      	movs	r2, #10
 80014aa:	f000 030f 	and.w	r3, r0, #15
 80014ae:	2b09      	cmp	r3, #9
 80014b0:	a901      	add	r1, sp, #4
 80014b2:	bf94      	ite	ls
 80014b4:	3330      	addls	r3, #48	; 0x30
 80014b6:	3357      	addhi	r3, #87	; 0x57
 80014b8:	0900      	lsrs	r0, r0, #4
 80014ba:	548b      	strb	r3, [r1, r2]
 80014bc:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80014c0:	d001      	beq.n	80014c6 <putx_+0x26>
 80014c2:	461a      	mov	r2, r3
 80014c4:	e7f1      	b.n	80014aa <putx_+0xa>
 80014c6:	1888      	adds	r0, r1, r2
 80014c8:	f7ff ff9a 	bl	8001400 <puts_>
 80014cc:	b005      	add	sp, #20
 80014ce:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080014d4 <printf_>:
 80014d4:	b40f      	push	{r0, r1, r2, r3}
 80014d6:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80014d8:	ac06      	add	r4, sp, #24
 80014da:	4826      	ldr	r0, [pc, #152]	; (8001574 <printf_+0xa0>)
 80014dc:	f854 5b04 	ldr.w	r5, [r4], #4
 80014e0:	f000 f8a3 	bl	800162a <mutex_lock>
 80014e4:	9401      	str	r4, [sp, #4]
 80014e6:	2400      	movs	r4, #0
 80014e8:	5d28      	ldrb	r0, [r5, r4]
 80014ea:	2800      	cmp	r0, #0
 80014ec:	d039      	beq.n	8001562 <printf_+0x8e>
 80014ee:	2825      	cmp	r0, #37	; 0x25
 80014f0:	d003      	beq.n	80014fa <printf_+0x26>
 80014f2:	f7ff ff75 	bl	80013e0 <putc_>
 80014f6:	3401      	adds	r4, #1
 80014f8:	e7f6      	b.n	80014e8 <printf_+0x14>
 80014fa:	192b      	adds	r3, r5, r4
 80014fc:	7858      	ldrb	r0, [r3, #1]
 80014fe:	2869      	cmp	r0, #105	; 0x69
 8001500:	d016      	beq.n	8001530 <printf_+0x5c>
 8001502:	d808      	bhi.n	8001516 <printf_+0x42>
 8001504:	2825      	cmp	r0, #37	; 0x25
 8001506:	d028      	beq.n	800155a <printf_+0x86>
 8001508:	2863      	cmp	r0, #99	; 0x63
 800150a:	d128      	bne.n	800155e <printf_+0x8a>
 800150c:	9b01      	ldr	r3, [sp, #4]
 800150e:	1d1a      	adds	r2, r3, #4
 8001510:	9201      	str	r2, [sp, #4]
 8001512:	7818      	ldrb	r0, [r3, #0]
 8001514:	e021      	b.n	800155a <printf_+0x86>
 8001516:	2875      	cmp	r0, #117	; 0x75
 8001518:	d011      	beq.n	800153e <printf_+0x6a>
 800151a:	2878      	cmp	r0, #120	; 0x78
 800151c:	d016      	beq.n	800154c <printf_+0x78>
 800151e:	2873      	cmp	r0, #115	; 0x73
 8001520:	d11d      	bne.n	800155e <printf_+0x8a>
 8001522:	9b01      	ldr	r3, [sp, #4]
 8001524:	1d1a      	adds	r2, r3, #4
 8001526:	6818      	ldr	r0, [r3, #0]
 8001528:	9201      	str	r2, [sp, #4]
 800152a:	f7ff ff69 	bl	8001400 <puts_>
 800152e:	e016      	b.n	800155e <printf_+0x8a>
 8001530:	9b01      	ldr	r3, [sp, #4]
 8001532:	1d1a      	adds	r2, r3, #4
 8001534:	6818      	ldr	r0, [r3, #0]
 8001536:	9201      	str	r2, [sp, #4]
 8001538:	f7ff ff76 	bl	8001428 <puti_>
 800153c:	e00f      	b.n	800155e <printf_+0x8a>
 800153e:	9b01      	ldr	r3, [sp, #4]
 8001540:	1d1a      	adds	r2, r3, #4
 8001542:	6818      	ldr	r0, [r3, #0]
 8001544:	9201      	str	r2, [sp, #4]
 8001546:	f7ff ff94 	bl	8001472 <putui_>
 800154a:	e008      	b.n	800155e <printf_+0x8a>
 800154c:	9b01      	ldr	r3, [sp, #4]
 800154e:	1d1a      	adds	r2, r3, #4
 8001550:	6818      	ldr	r0, [r3, #0]
 8001552:	9201      	str	r2, [sp, #4]
 8001554:	f7ff ffa4 	bl	80014a0 <putx_>
 8001558:	e001      	b.n	800155e <printf_+0x8a>
 800155a:	f7ff ff41 	bl	80013e0 <putc_>
 800155e:	3402      	adds	r4, #2
 8001560:	e7c2      	b.n	80014e8 <printf_+0x14>
 8001562:	4804      	ldr	r0, [pc, #16]	; (8001574 <printf_+0xa0>)
 8001564:	f000 f87d 	bl	8001662 <mutex_unlock>
 8001568:	b003      	add	sp, #12
 800156a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800156e:	b004      	add	sp, #16
 8001570:	4770      	bx	lr
 8001572:	bf00      	nop
 8001574:	20000bb8 	.word	0x20000bb8

08001578 <stdio_init>:
 8001578:	b510      	push	{r4, lr}
 800157a:	480e      	ldr	r0, [pc, #56]	; (80015b4 <stdio_init+0x3c>)
 800157c:	f000 f84b 	bl	8001616 <mutex_init>
 8001580:	480d      	ldr	r0, [pc, #52]	; (80015b8 <stdio_init+0x40>)
 8001582:	f000 f848 	bl	8001616 <mutex_init>
 8001586:	480d      	ldr	r0, [pc, #52]	; (80015bc <stdio_init+0x44>)
 8001588:	f000 f845 	bl	8001616 <mutex_init>
 800158c:	480c      	ldr	r0, [pc, #48]	; (80015c0 <stdio_init+0x48>)
 800158e:	f000 f842 	bl	8001616 <mutex_init>
 8001592:	2408      	movs	r4, #8
 8001594:	2020      	movs	r0, #32
 8001596:	f7ff ff23 	bl	80013e0 <putc_>
 800159a:	3c01      	subs	r4, #1
 800159c:	d1fa      	bne.n	8001594 <stdio_init+0x1c>
 800159e:	2420      	movs	r4, #32
 80015a0:	200a      	movs	r0, #10
 80015a2:	f7ff ff1d 	bl	80013e0 <putc_>
 80015a6:	3c01      	subs	r4, #1
 80015a8:	d1fa      	bne.n	80015a0 <stdio_init+0x28>
 80015aa:	4806      	ldr	r0, [pc, #24]	; (80015c4 <stdio_init+0x4c>)
 80015ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80015b0:	f7ff bf90 	b.w	80014d4 <printf_>
 80015b4:	20000bb0 	.word	0x20000bb0
 80015b8:	20000bb4 	.word	0x20000bb4
 80015bc:	20000bbc 	.word	0x20000bbc
 80015c0:	20000bb8 	.word	0x20000bb8
 80015c4:	08004be5 	.word	0x08004be5

080015c8 <mem_init>:
 80015c8:	4b06      	ldr	r3, [pc, #24]	; (80015e4 <mem_init+0x1c>)
 80015ca:	4a07      	ldr	r2, [pc, #28]	; (80015e8 <mem_init+0x20>)
 80015cc:	601a      	str	r2, [r3, #0]
 80015ce:	4907      	ldr	r1, [pc, #28]	; (80015ec <mem_init+0x24>)
 80015d0:	4b07      	ldr	r3, [pc, #28]	; (80015f0 <mem_init+0x28>)
 80015d2:	4808      	ldr	r0, [pc, #32]	; (80015f4 <mem_init+0x2c>)
 80015d4:	1a5b      	subs	r3, r3, r1
 80015d6:	4908      	ldr	r1, [pc, #32]	; (80015f8 <mem_init+0x30>)
 80015d8:	4413      	add	r3, r2
 80015da:	600b      	str	r3, [r1, #0]
 80015dc:	4b07      	ldr	r3, [pc, #28]	; (80015fc <mem_init+0x34>)
 80015de:	601a      	str	r2, [r3, #0]
 80015e0:	f000 b819 	b.w	8001616 <mutex_init>
 80015e4:	20000bc0 	.word	0x20000bc0
 80015e8:	200010a0 	.word	0x200010a0
 80015ec:	200010a0 	.word	0x200010a0
 80015f0:	20004000 	.word	0x20004000
 80015f4:	20000bcc 	.word	0x20000bcc
 80015f8:	20000bc8 	.word	0x20000bc8
 80015fc:	20000bc4 	.word	0x20000bc4

08001600 <lib_os_init>:
 8001600:	b508      	push	{r3, lr}
 8001602:	f7ff fe79 	bl	80012f8 <kernel_init>
 8001606:	f7ff ffdf 	bl	80015c8 <mem_init>
 800160a:	f7ff fecf 	bl	80013ac <messages_init>
 800160e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001612:	f7ff bfb1 	b.w	8001578 <stdio_init>

08001616 <mutex_init>:
 8001616:	b510      	push	{r4, lr}
 8001618:	4604      	mov	r4, r0
 800161a:	f7ff fe15 	bl	8001248 <sched_off>
 800161e:	2300      	movs	r3, #0
 8001620:	6023      	str	r3, [r4, #0]
 8001622:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001626:	f7ff be11 	b.w	800124c <sched_on>

0800162a <mutex_lock>:
 800162a:	b513      	push	{r0, r1, r4, lr}
 800162c:	4604      	mov	r4, r0
 800162e:	f7ff fe0b 	bl	8001248 <sched_off>
 8001632:	6823      	ldr	r3, [r4, #0]
 8001634:	9301      	str	r3, [sp, #4]
 8001636:	f7ff fe09 	bl	800124c <sched_on>
 800163a:	9b01      	ldr	r3, [sp, #4]
 800163c:	b10b      	cbz	r3, 8001642 <mutex_lock+0x18>
 800163e:	f7ff fe81 	bl	8001344 <set_wait_state>
 8001642:	9b01      	ldr	r3, [sp, #4]
 8001644:	2b00      	cmp	r3, #0
 8001646:	d1f2      	bne.n	800162e <mutex_lock+0x4>
 8001648:	f7ff fdfe 	bl	8001248 <sched_off>
 800164c:	6823      	ldr	r3, [r4, #0]
 800164e:	9301      	str	r3, [sp, #4]
 8001650:	9b01      	ldr	r3, [sp, #4]
 8001652:	2b00      	cmp	r3, #0
 8001654:	d1eb      	bne.n	800162e <mutex_lock+0x4>
 8001656:	2301      	movs	r3, #1
 8001658:	6023      	str	r3, [r4, #0]
 800165a:	f7ff fdf7 	bl	800124c <sched_on>
 800165e:	b002      	add	sp, #8
 8001660:	bd10      	pop	{r4, pc}

08001662 <mutex_unlock>:
 8001662:	b508      	push	{r3, lr}
 8001664:	f7ff ffd7 	bl	8001616 <mutex_init>
 8001668:	f7ff fe8e 	bl	8001388 <wake_up_threads>
 800166c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001670:	f7ff bdee 	b.w	8001250 <yield>

08001674 <log_write>:
 8001674:	b570      	push	{r4, r5, r6, lr}
 8001676:	f3c0 060a 	ubfx	r6, r0, #0, #11
 800167a:	460c      	mov	r4, r1
 800167c:	4615      	mov	r5, r2
 800167e:	f001 f8a3 	bl	80027c8 <i2cStart>
 8001682:	0a30      	lsrs	r0, r6, #8
 8001684:	0040      	lsls	r0, r0, #1
 8001686:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 800168a:	f001 f8bb 	bl	8002804 <i2cWrite>
 800168e:	b2f0      	uxtb	r0, r6
 8001690:	f001 f8b8 	bl	8002804 <i2cWrite>
 8001694:	4425      	add	r5, r4
 8001696:	42ac      	cmp	r4, r5
 8001698:	d004      	beq.n	80016a4 <log_write+0x30>
 800169a:	f814 0b01 	ldrb.w	r0, [r4], #1
 800169e:	f001 f8b1 	bl	8002804 <i2cWrite>
 80016a2:	e7f8      	b.n	8001696 <log_write+0x22>
 80016a4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80016a8:	f001 b89d 	b.w	80027e6 <i2cStop>

080016ac <m_abs>:
 80016ac:	ee07 0a90 	vmov	s15, r0
 80016b0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80016b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016b8:	bf48      	it	mi
 80016ba:	eef1 7a67 	vnegmi.f32	s15, s15
 80016be:	ee17 0a90 	vmov	r0, s15
 80016c2:	4770      	bx	lr

080016c4 <m_abs_int>:
 80016c4:	2800      	cmp	r0, #0
 80016c6:	bfb8      	it	lt
 80016c8:	4240      	neglt	r0, r0
 80016ca:	4770      	bx	lr

080016cc <m_sgn_int>:
 80016cc:	2800      	cmp	r0, #0
 80016ce:	db03      	blt.n	80016d8 <m_sgn_int+0xc>
 80016d0:	bf14      	ite	ne
 80016d2:	2001      	movne	r0, #1
 80016d4:	2000      	moveq	r0, #0
 80016d6:	4770      	bx	lr
 80016d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80016dc:	4770      	bx	lr

080016de <m_saturate>:
 80016de:	ee07 0a90 	vmov	s15, r0
 80016e2:	ee06 1a90 	vmov	s13, r1
 80016e6:	eef4 7a66 	vcmp.f32	s15, s13
 80016ea:	ee07 2a10 	vmov	s14, r2
 80016ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016f2:	bf48      	it	mi
 80016f4:	eef0 7a66 	vmovmi.f32	s15, s13
 80016f8:	eef4 7a47 	vcmp.f32	s15, s14
 80016fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001700:	bfcc      	ite	gt
 8001702:	ee17 0a10 	vmovgt	r0, s14
 8001706:	ee17 0a90 	vmovle	r0, s15
 800170a:	4770      	bx	lr

0800170c <m_min>:
 800170c:	ee07 0a10 	vmov	s14, r0
 8001710:	ee07 1a90 	vmov	s15, r1
 8001714:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001718:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800171c:	bf54      	ite	pl
 800171e:	ee17 0a90 	vmovpl	r0, s15
 8001722:	ee17 0a10 	vmovmi	r0, s14
 8001726:	4770      	bx	lr

08001728 <pid_init>:
 8001728:	ee07 2a90 	vmov	s15, r2
 800172c:	ee06 3a10 	vmov	s12, r3
 8001730:	ed9d 7a00 	vldr	s14, [sp]
 8001734:	eddd 6a01 	vldr	s13, [sp, #4]
 8001738:	6241      	str	r1, [r0, #36]	; 0x24
 800173a:	ee37 6a86 	vadd.f32	s12, s15, s12
 800173e:	ee77 5a07 	vadd.f32	s11, s14, s14
 8001742:	ee36 6a07 	vadd.f32	s12, s12, s14
 8001746:	eef1 7a67 	vneg.f32	s15, s15
 800174a:	ee36 6a26 	vadd.f32	s12, s12, s13
 800174e:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8001752:	ed80 6a04 	vstr	s12, [r0, #16]
 8001756:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001784 <pid_init+0x5c>
 800175a:	ee26 6a86 	vmul.f32	s12, s13, s12
 800175e:	2200      	movs	r2, #0
 8001760:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001764:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001768:	eef1 6a66 	vneg.f32	s13, s13
 800176c:	6002      	str	r2, [r0, #0]
 800176e:	6042      	str	r2, [r0, #4]
 8001770:	6082      	str	r2, [r0, #8]
 8001772:	60c2      	str	r2, [r0, #12]
 8001774:	edc0 7a05 	vstr	s15, [r0, #20]
 8001778:	ed80 7a06 	vstr	s14, [r0, #24]
 800177c:	edc0 6a07 	vstr	s13, [r0, #28]
 8001780:	6202      	str	r2, [r0, #32]
 8001782:	4770      	bx	lr
 8001784:	40400000 	.word	0x40400000

08001788 <pid_process>:
 8001788:	edd0 7a08 	vldr	s15, [r0, #32]
 800178c:	ed90 5a04 	vldr	s10, [r0, #16]
 8001790:	ed90 6a00 	vldr	s12, [r0]
 8001794:	edd0 6a01 	vldr	s13, [r0, #4]
 8001798:	ed80 6a01 	vstr	s12, [r0, #4]
 800179c:	ee05 1a90 	vmov	s11, r1
 80017a0:	ee45 7a85 	vmla.f32	s15, s11, s10
 80017a4:	6001      	str	r1, [r0, #0]
 80017a6:	edd0 5a05 	vldr	s11, [r0, #20]
 80017aa:	ed90 7a02 	vldr	s14, [r0, #8]
 80017ae:	edc0 6a02 	vstr	s13, [r0, #8]
 80017b2:	ee46 7a25 	vmla.f32	s15, s12, s11
 80017b6:	ed90 6a06 	vldr	s12, [r0, #24]
 80017ba:	ed80 7a03 	vstr	s14, [r0, #12]
 80017be:	ee46 7a86 	vmla.f32	s15, s13, s12
 80017c2:	edd0 6a07 	vldr	s13, [r0, #28]
 80017c6:	ee47 7a26 	vmla.f32	s15, s14, s13
 80017ca:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 80017ce:	edc0 7a08 	vstr	s15, [r0, #32]
 80017d2:	eef4 7ac7 	vcmpe.f32	s15, s14
 80017d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80017da:	bfc8      	it	gt
 80017dc:	ed80 7a08 	vstrgt	s14, [r0, #32]
 80017e0:	edd0 7a08 	vldr	s15, [r0, #32]
 80017e4:	eeb1 7a47 	vneg.f32	s14, s14
 80017e8:	eef4 7ac7 	vcmpe.f32	s15, s14
 80017ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80017f0:	bf48      	it	mi
 80017f2:	ed80 7a08 	vstrmi	s14, [r0, #32]
 80017f6:	6a00      	ldr	r0, [r0, #32]
 80017f8:	4770      	bx	lr
	...

080017fc <TIM2_IRQHandler>:
 80017fc:	4a21      	ldr	r2, [pc, #132]	; (8001884 <TIM2_IRQHandler+0x88>)
 80017fe:	4922      	ldr	r1, [pc, #136]	; (8001888 <TIM2_IRQHandler+0x8c>)
 8001800:	6813      	ldr	r3, [r2, #0]
 8001802:	2b01      	cmp	r3, #1
 8001804:	b510      	push	{r4, lr}
 8001806:	d011      	beq.n	800182c <TIM2_IRQHandler+0x30>
 8001808:	d306      	bcc.n	8001818 <TIM2_IRQHandler+0x1c>
 800180a:	2b02      	cmp	r3, #2
 800180c:	d113      	bne.n	8001836 <TIM2_IRQHandler+0x3a>
 800180e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001812:	850b      	strh	r3, [r1, #40]	; 0x28
 8001814:	2304      	movs	r3, #4
 8001816:	e023      	b.n	8001860 <TIM2_IRQHandler+0x64>
 8001818:	f44f 7380 	mov.w	r3, #256	; 0x100
 800181c:	850b      	strh	r3, [r1, #40]	; 0x28
 800181e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001822:	618b      	str	r3, [r1, #24]
 8001824:	2301      	movs	r3, #1
 8001826:	6013      	str	r3, [r2, #0]
 8001828:	6093      	str	r3, [r2, #8]
 800182a:	e023      	b.n	8001874 <TIM2_IRQHandler+0x78>
 800182c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001830:	618b      	str	r3, [r1, #24]
 8001832:	2302      	movs	r3, #2
 8001834:	e014      	b.n	8001860 <TIM2_IRQHandler+0x64>
 8001836:	f013 0f01 	tst.w	r3, #1
 800183a:	4814      	ldr	r0, [pc, #80]	; (800188c <TIM2_IRQHandler+0x90>)
 800183c:	f103 0401 	add.w	r4, r3, #1
 8001840:	d010      	beq.n	8001864 <TIM2_IRQHandler+0x68>
 8001842:	3b04      	subs	r3, #4
 8001844:	f023 0301 	bic.w	r3, r3, #1
 8001848:	4413      	add	r3, r2
 800184a:	6c00      	ldr	r0, [r0, #64]	; 0x40
 800184c:	8298      	strh	r0, [r3, #20]
 800184e:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001852:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001856:	850b      	strh	r3, [r1, #40]	; 0x28
 8001858:	d201      	bcs.n	800185e <TIM2_IRQHandler+0x62>
 800185a:	6014      	str	r4, [r2, #0]
 800185c:	e00a      	b.n	8001874 <TIM2_IRQHandler+0x78>
 800185e:	2300      	movs	r3, #0
 8001860:	6013      	str	r3, [r2, #0]
 8001862:	e007      	b.n	8001874 <TIM2_IRQHandler+0x78>
 8001864:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001868:	618b      	str	r3, [r1, #24]
 800186a:	6883      	ldr	r3, [r0, #8]
 800186c:	6014      	str	r4, [r2, #0]
 800186e:	f043 0304 	orr.w	r3, r3, #4
 8001872:	6083      	str	r3, [r0, #8]
 8001874:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001878:	2101      	movs	r1, #1
 800187a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800187e:	f000 bd1e 	b.w	80022be <TIM_ClearITPendingBit>
 8001882:	bf00      	nop
 8001884:	20000bd0 	.word	0x20000bd0
 8001888:	48000400 	.word	0x48000400
 800188c:	50000500 	.word	0x50000500

08001890 <rgb_i2c_delay>:
 8001890:	bf00      	nop
 8001892:	bf00      	nop
 8001894:	bf00      	nop
 8001896:	bf00      	nop
 8001898:	4770      	bx	lr
	...

0800189c <RGBSetLowSDA>:
 800189c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800189e:	4f15      	ldr	r7, [pc, #84]	; (80018f4 <RGBSetLowSDA+0x58>)
 80018a0:	2401      	movs	r4, #1
 80018a2:	783b      	ldrb	r3, [r7, #0]
 80018a4:	9300      	str	r3, [sp, #0]
 80018a6:	2603      	movs	r6, #3
 80018a8:	2500      	movs	r5, #0
 80018aa:	4669      	mov	r1, sp
 80018ac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80018b0:	f88d 5007 	strb.w	r5, [sp, #7]
 80018b4:	f88d 4004 	strb.w	r4, [sp, #4]
 80018b8:	f88d 6005 	strb.w	r6, [sp, #5]
 80018bc:	f88d 4006 	strb.w	r4, [sp, #6]
 80018c0:	f001 fa7c 	bl	8002dbc <GPIO_Init>
 80018c4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80018c8:	783a      	ldrb	r2, [r7, #0]
 80018ca:	851a      	strh	r2, [r3, #40]	; 0x28
 80018cc:	f88d 5007 	strb.w	r5, [sp, #7]
 80018d0:	4d09      	ldr	r5, [pc, #36]	; (80018f8 <RGBSetLowSDA+0x5c>)
 80018d2:	9400      	str	r4, [sp, #0]
 80018d4:	4628      	mov	r0, r5
 80018d6:	4669      	mov	r1, sp
 80018d8:	f88d 4004 	strb.w	r4, [sp, #4]
 80018dc:	f88d 6005 	strb.w	r6, [sp, #5]
 80018e0:	f88d 4006 	strb.w	r4, [sp, #6]
 80018e4:	f001 fa6a 	bl	8002dbc <GPIO_Init>
 80018e8:	852c      	strh	r4, [r5, #40]	; 0x28
 80018ea:	f7ff ffd1 	bl	8001890 <rgb_i2c_delay>
 80018ee:	b003      	add	sp, #12
 80018f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80018f2:	bf00      	nop
 80018f4:	20000e3e 	.word	0x20000e3e
 80018f8:	48000400 	.word	0x48000400

080018fc <RGBSetHighSDA>:
 80018fc:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80018fe:	4d13      	ldr	r5, [pc, #76]	; (800194c <RGBSetHighSDA+0x50>)
 8001900:	2400      	movs	r4, #0
 8001902:	782b      	ldrb	r3, [r5, #0]
 8001904:	9300      	str	r3, [sp, #0]
 8001906:	2603      	movs	r6, #3
 8001908:	4669      	mov	r1, sp
 800190a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800190e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001912:	f88d 4007 	strb.w	r4, [sp, #7]
 8001916:	f88d 6005 	strb.w	r6, [sp, #5]
 800191a:	f001 fa4f 	bl	8002dbc <GPIO_Init>
 800191e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001922:	782a      	ldrb	r2, [r5, #0]
 8001924:	619a      	str	r2, [r3, #24]
 8001926:	f88d 4004 	strb.w	r4, [sp, #4]
 800192a:	f88d 4007 	strb.w	r4, [sp, #7]
 800192e:	4c08      	ldr	r4, [pc, #32]	; (8001950 <RGBSetHighSDA+0x54>)
 8001930:	f88d 6005 	strb.w	r6, [sp, #5]
 8001934:	2501      	movs	r5, #1
 8001936:	4620      	mov	r0, r4
 8001938:	4669      	mov	r1, sp
 800193a:	9500      	str	r5, [sp, #0]
 800193c:	f001 fa3e 	bl	8002dbc <GPIO_Init>
 8001940:	61a5      	str	r5, [r4, #24]
 8001942:	f7ff ffa5 	bl	8001890 <rgb_i2c_delay>
 8001946:	b002      	add	sp, #8
 8001948:	bd70      	pop	{r4, r5, r6, pc}
 800194a:	bf00      	nop
 800194c:	20000e3e 	.word	0x20000e3e
 8001950:	48000400 	.word	0x48000400

08001954 <RGBSetLowSCL>:
 8001954:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001958:	f44f 7280 	mov.w	r2, #256	; 0x100
 800195c:	851a      	strh	r2, [r3, #40]	; 0x28
 800195e:	f7ff bf97 	b.w	8001890 <rgb_i2c_delay>

08001962 <RGBSetHighSCL>:
 8001962:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001966:	f44f 7280 	mov.w	r2, #256	; 0x100
 800196a:	619a      	str	r2, [r3, #24]
 800196c:	f7ff bf90 	b.w	8001890 <rgb_i2c_delay>

08001970 <rgb_i2c_init>:
 8001970:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001972:	4f1f      	ldr	r7, [pc, #124]	; (80019f0 <rgb_i2c_init+0x80>)
 8001974:	2400      	movs	r4, #0
 8001976:	2501      	movs	r5, #1
 8001978:	2603      	movs	r6, #3
 800197a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800197e:	4669      	mov	r1, sp
 8001980:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001984:	9300      	str	r3, [sp, #0]
 8001986:	f88d 4006 	strb.w	r4, [sp, #6]
 800198a:	f88d 4007 	strb.w	r4, [sp, #7]
 800198e:	f88d 5004 	strb.w	r5, [sp, #4]
 8001992:	f88d 6005 	strb.w	r6, [sp, #5]
 8001996:	f001 fa11 	bl	8002dbc <GPIO_Init>
 800199a:	783b      	ldrb	r3, [r7, #0]
 800199c:	9300      	str	r3, [sp, #0]
 800199e:	4669      	mov	r1, sp
 80019a0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80019a4:	f88d 4004 	strb.w	r4, [sp, #4]
 80019a8:	f88d 4007 	strb.w	r4, [sp, #7]
 80019ac:	f88d 6005 	strb.w	r6, [sp, #5]
 80019b0:	f001 fa04 	bl	8002dbc <GPIO_Init>
 80019b4:	7839      	ldrb	r1, [r7, #0]
 80019b6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80019ba:	f001 fa41 	bl	8002e40 <GPIO_SetBits>
 80019be:	f88d 4004 	strb.w	r4, [sp, #4]
 80019c2:	f88d 4007 	strb.w	r4, [sp, #7]
 80019c6:	4c0b      	ldr	r4, [pc, #44]	; (80019f4 <rgb_i2c_init+0x84>)
 80019c8:	9500      	str	r5, [sp, #0]
 80019ca:	4620      	mov	r0, r4
 80019cc:	4669      	mov	r1, sp
 80019ce:	f88d 6005 	strb.w	r6, [sp, #5]
 80019d2:	f001 f9f3 	bl	8002dbc <GPIO_Init>
 80019d6:	4620      	mov	r0, r4
 80019d8:	4629      	mov	r1, r5
 80019da:	f001 fa31 	bl	8002e40 <GPIO_SetBits>
 80019de:	f7ff ffc0 	bl	8001962 <RGBSetHighSCL>
 80019e2:	f7ff ff5b 	bl	800189c <RGBSetLowSDA>
 80019e6:	f7ff ff89 	bl	80018fc <RGBSetHighSDA>
 80019ea:	b003      	add	sp, #12
 80019ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80019ee:	bf00      	nop
 80019f0:	20000e3e 	.word	0x20000e3e
 80019f4:	48000400 	.word	0x48000400

080019f8 <rgb_i2cStart>:
 80019f8:	b508      	push	{r3, lr}
 80019fa:	f7ff ffb2 	bl	8001962 <RGBSetHighSCL>
 80019fe:	f7ff ff7d 	bl	80018fc <RGBSetHighSDA>
 8001a02:	f7ff ffae 	bl	8001962 <RGBSetHighSCL>
 8001a06:	f7ff ff49 	bl	800189c <RGBSetLowSDA>
 8001a0a:	f7ff ffa3 	bl	8001954 <RGBSetLowSCL>
 8001a0e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a12:	f7ff bf73 	b.w	80018fc <RGBSetHighSDA>

08001a16 <rgb_i2cStop>:
 8001a16:	b508      	push	{r3, lr}
 8001a18:	f7ff ff9c 	bl	8001954 <RGBSetLowSCL>
 8001a1c:	f7ff ff3e 	bl	800189c <RGBSetLowSDA>
 8001a20:	f7ff ff9f 	bl	8001962 <RGBSetHighSCL>
 8001a24:	f7ff ff3a 	bl	800189c <RGBSetLowSDA>
 8001a28:	f7ff ff9b 	bl	8001962 <RGBSetHighSCL>
 8001a2c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a30:	f7ff bf64 	b.w	80018fc <RGBSetHighSDA>

08001a34 <rgb_i2cWrite>:
 8001a34:	b538      	push	{r3, r4, r5, lr}
 8001a36:	4605      	mov	r5, r0
 8001a38:	2408      	movs	r4, #8
 8001a3a:	f7ff ff8b 	bl	8001954 <RGBSetLowSCL>
 8001a3e:	062b      	lsls	r3, r5, #24
 8001a40:	d502      	bpl.n	8001a48 <rgb_i2cWrite+0x14>
 8001a42:	f7ff ff5b 	bl	80018fc <RGBSetHighSDA>
 8001a46:	e001      	b.n	8001a4c <rgb_i2cWrite+0x18>
 8001a48:	f7ff ff28 	bl	800189c <RGBSetLowSDA>
 8001a4c:	3c01      	subs	r4, #1
 8001a4e:	f7ff ff88 	bl	8001962 <RGBSetHighSCL>
 8001a52:	006d      	lsls	r5, r5, #1
 8001a54:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001a58:	b2ed      	uxtb	r5, r5
 8001a5a:	d1ee      	bne.n	8001a3a <rgb_i2cWrite+0x6>
 8001a5c:	f7ff ff7a 	bl	8001954 <RGBSetLowSCL>
 8001a60:	f7ff ff4c 	bl	80018fc <RGBSetHighSDA>
 8001a64:	f7ff ff7d 	bl	8001962 <RGBSetHighSCL>
 8001a68:	f7ff ff74 	bl	8001954 <RGBSetLowSCL>
 8001a6c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001a70:	f7ff bf0e 	b.w	8001890 <rgb_i2c_delay>

08001a74 <rgb_i2cRead>:
 8001a74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a78:	1e4e      	subs	r6, r1, #1
 8001a7a:	4680      	mov	r8, r0
 8001a7c:	460c      	mov	r4, r1
 8001a7e:	f101 0708 	add.w	r7, r1, #8
 8001a82:	4633      	mov	r3, r6
 8001a84:	2200      	movs	r2, #0
 8001a86:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001a8a:	42bb      	cmp	r3, r7
 8001a8c:	d1fa      	bne.n	8001a84 <rgb_i2cRead+0x10>
 8001a8e:	f7ff ff61 	bl	8001954 <RGBSetLowSCL>
 8001a92:	f7ff ff33 	bl	80018fc <RGBSetHighSDA>
 8001a96:	2508      	movs	r5, #8
 8001a98:	4633      	mov	r3, r6
 8001a9a:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001a9e:	0052      	lsls	r2, r2, #1
 8001aa0:	42bb      	cmp	r3, r7
 8001aa2:	701a      	strb	r2, [r3, #0]
 8001aa4:	d1f9      	bne.n	8001a9a <rgb_i2cRead+0x26>
 8001aa6:	f7ff ff5c 	bl	8001962 <RGBSetHighSCL>
 8001aaa:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001aae:	8a1b      	ldrh	r3, [r3, #16]
 8001ab0:	b29b      	uxth	r3, r3
 8001ab2:	07d9      	lsls	r1, r3, #31
 8001ab4:	bf42      	ittt	mi
 8001ab6:	7822      	ldrbmi	r2, [r4, #0]
 8001ab8:	f042 0201 	orrmi.w	r2, r2, #1
 8001abc:	7022      	strbmi	r2, [r4, #0]
 8001abe:	079a      	lsls	r2, r3, #30
 8001ac0:	bf42      	ittt	mi
 8001ac2:	7862      	ldrbmi	r2, [r4, #1]
 8001ac4:	f042 0201 	orrmi.w	r2, r2, #1
 8001ac8:	7062      	strbmi	r2, [r4, #1]
 8001aca:	0758      	lsls	r0, r3, #29
 8001acc:	bf42      	ittt	mi
 8001ace:	78a2      	ldrbmi	r2, [r4, #2]
 8001ad0:	f042 0201 	orrmi.w	r2, r2, #1
 8001ad4:	70a2      	strbmi	r2, [r4, #2]
 8001ad6:	0719      	lsls	r1, r3, #28
 8001ad8:	bf42      	ittt	mi
 8001ada:	78e2      	ldrbmi	r2, [r4, #3]
 8001adc:	f042 0201 	orrmi.w	r2, r2, #1
 8001ae0:	70e2      	strbmi	r2, [r4, #3]
 8001ae2:	06da      	lsls	r2, r3, #27
 8001ae4:	bf42      	ittt	mi
 8001ae6:	7922      	ldrbmi	r2, [r4, #4]
 8001ae8:	f042 0201 	orrmi.w	r2, r2, #1
 8001aec:	7122      	strbmi	r2, [r4, #4]
 8001aee:	0698      	lsls	r0, r3, #26
 8001af0:	bf42      	ittt	mi
 8001af2:	7962      	ldrbmi	r2, [r4, #5]
 8001af4:	f042 0201 	orrmi.w	r2, r2, #1
 8001af8:	7162      	strbmi	r2, [r4, #5]
 8001afa:	0659      	lsls	r1, r3, #25
 8001afc:	bf42      	ittt	mi
 8001afe:	79a2      	ldrbmi	r2, [r4, #6]
 8001b00:	f042 0201 	orrmi.w	r2, r2, #1
 8001b04:	71a2      	strbmi	r2, [r4, #6]
 8001b06:	061a      	lsls	r2, r3, #24
 8001b08:	bf42      	ittt	mi
 8001b0a:	79e3      	ldrbmi	r3, [r4, #7]
 8001b0c:	f043 0301 	orrmi.w	r3, r3, #1
 8001b10:	71e3      	strbmi	r3, [r4, #7]
 8001b12:	4b0c      	ldr	r3, [pc, #48]	; (8001b44 <rgb_i2cRead+0xd0>)
 8001b14:	8a1b      	ldrh	r3, [r3, #16]
 8001b16:	07db      	lsls	r3, r3, #31
 8001b18:	bf42      	ittt	mi
 8001b1a:	7a23      	ldrbmi	r3, [r4, #8]
 8001b1c:	f043 0301 	orrmi.w	r3, r3, #1
 8001b20:	7223      	strbmi	r3, [r4, #8]
 8001b22:	f7ff ff17 	bl	8001954 <RGBSetLowSCL>
 8001b26:	3d01      	subs	r5, #1
 8001b28:	d1b6      	bne.n	8001a98 <rgb_i2cRead+0x24>
 8001b2a:	f1b8 0f00 	cmp.w	r8, #0
 8001b2e:	d001      	beq.n	8001b34 <rgb_i2cRead+0xc0>
 8001b30:	f7ff feb4 	bl	800189c <RGBSetLowSDA>
 8001b34:	f7ff ff15 	bl	8001962 <RGBSetHighSCL>
 8001b38:	f7ff ff0c 	bl	8001954 <RGBSetLowSCL>
 8001b3c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001b40:	f7ff bea6 	b.w	8001890 <rgb_i2c_delay>
 8001b44:	48000400 	.word	0x48000400

08001b48 <rgb_i2c_write_reg>:
 8001b48:	b570      	push	{r4, r5, r6, lr}
 8001b4a:	4606      	mov	r6, r0
 8001b4c:	460d      	mov	r5, r1
 8001b4e:	4614      	mov	r4, r2
 8001b50:	f7ff ff52 	bl	80019f8 <rgb_i2cStart>
 8001b54:	4630      	mov	r0, r6
 8001b56:	f7ff ff6d 	bl	8001a34 <rgb_i2cWrite>
 8001b5a:	4628      	mov	r0, r5
 8001b5c:	f7ff ff6a 	bl	8001a34 <rgb_i2cWrite>
 8001b60:	4620      	mov	r0, r4
 8001b62:	f7ff ff67 	bl	8001a34 <rgb_i2cWrite>
 8001b66:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b6a:	f7ff bf54 	b.w	8001a16 <rgb_i2cStop>

08001b6e <rgb_i2c_read_reg>:
 8001b6e:	b570      	push	{r4, r5, r6, lr}
 8001b70:	4604      	mov	r4, r0
 8001b72:	460e      	mov	r6, r1
 8001b74:	4615      	mov	r5, r2
 8001b76:	f7ff ff3f 	bl	80019f8 <rgb_i2cStart>
 8001b7a:	4620      	mov	r0, r4
 8001b7c:	f7ff ff5a 	bl	8001a34 <rgb_i2cWrite>
 8001b80:	4630      	mov	r0, r6
 8001b82:	f7ff ff57 	bl	8001a34 <rgb_i2cWrite>
 8001b86:	f7ff ff37 	bl	80019f8 <rgb_i2cStart>
 8001b8a:	f044 0001 	orr.w	r0, r4, #1
 8001b8e:	f7ff ff51 	bl	8001a34 <rgb_i2cWrite>
 8001b92:	4629      	mov	r1, r5
 8001b94:	2000      	movs	r0, #0
 8001b96:	f7ff ff6d 	bl	8001a74 <rgb_i2cRead>
 8001b9a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b9e:	f7ff bf3a 	b.w	8001a16 <rgb_i2cStop>
	...

08001ba4 <rgb_init>:
 8001ba4:	b570      	push	{r4, r5, r6, lr}
 8001ba6:	4b1e      	ldr	r3, [pc, #120]	; (8001c20 <rgb_init+0x7c>)
 8001ba8:	2200      	movs	r2, #0
 8001baa:	3201      	adds	r2, #1
 8001bac:	2400      	movs	r4, #0
 8001bae:	2a09      	cmp	r2, #9
 8001bb0:	801c      	strh	r4, [r3, #0]
 8001bb2:	825c      	strh	r4, [r3, #18]
 8001bb4:	849c      	strh	r4, [r3, #36]	; 0x24
 8001bb6:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001bba:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001bbc:	f103 0302 	add.w	r3, r3, #2
 8001bc0:	d1f3      	bne.n	8001baa <rgb_init+0x6>
 8001bc2:	4d18      	ldr	r5, [pc, #96]	; (8001c24 <rgb_init+0x80>)
 8001bc4:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001bc8:	802e      	strh	r6, [r5, #0]
 8001bca:	f7ff fed1 	bl	8001970 <rgb_i2c_init>
 8001bce:	2072      	movs	r0, #114	; 0x72
 8001bd0:	2181      	movs	r1, #129	; 0x81
 8001bd2:	22ff      	movs	r2, #255	; 0xff
 8001bd4:	f7ff ffb8 	bl	8001b48 <rgb_i2c_write_reg>
 8001bd8:	2072      	movs	r0, #114	; 0x72
 8001bda:	2183      	movs	r1, #131	; 0x83
 8001bdc:	22ff      	movs	r2, #255	; 0xff
 8001bde:	f7ff ffb3 	bl	8001b48 <rgb_i2c_write_reg>
 8001be2:	2072      	movs	r0, #114	; 0x72
 8001be4:	218d      	movs	r1, #141	; 0x8d
 8001be6:	4622      	mov	r2, r4
 8001be8:	f7ff ffae 	bl	8001b48 <rgb_i2c_write_reg>
 8001bec:	2072      	movs	r0, #114	; 0x72
 8001bee:	2180      	movs	r1, #128	; 0x80
 8001bf0:	2203      	movs	r2, #3
 8001bf2:	f7ff ffa9 	bl	8001b48 <rgb_i2c_write_reg>
 8001bf6:	2072      	movs	r0, #114	; 0x72
 8001bf8:	218f      	movs	r1, #143	; 0x8f
 8001bfa:	2223      	movs	r2, #35	; 0x23
 8001bfc:	f7ff ffa4 	bl	8001b48 <rgb_i2c_write_reg>
 8001c00:	f7ff fe7c 	bl	80018fc <RGBSetHighSDA>
 8001c04:	2072      	movs	r0, #114	; 0x72
 8001c06:	2180      	movs	r1, #128	; 0x80
 8001c08:	2207      	movs	r2, #7
 8001c0a:	802c      	strh	r4, [r5, #0]
 8001c0c:	f7ff ff9c 	bl	8001b48 <rgb_i2c_write_reg>
 8001c10:	2072      	movs	r0, #114	; 0x72
 8001c12:	218e      	movs	r1, #142	; 0x8e
 8001c14:	2208      	movs	r2, #8
 8001c16:	f7ff ff97 	bl	8001b48 <rgb_i2c_write_reg>
 8001c1a:	802e      	strh	r6, [r5, #0]
 8001c1c:	bd70      	pop	{r4, r5, r6, pc}
 8001c1e:	bf00      	nop
 8001c20:	20000de4 	.word	0x20000de4
 8001c24:	20000e3e 	.word	0x20000e3e

08001c28 <rgb_get>:
 8001c28:	4800      	ldr	r0, [pc, #0]	; (8001c2c <rgb_get+0x4>)
 8001c2a:	4770      	bx	lr
 8001c2c:	20000de4 	.word	0x20000de4

08001c30 <rgb_read>:
 8001c30:	b538      	push	{r3, r4, r5, lr}
 8001c32:	f7ff fee1 	bl	80019f8 <rgb_i2cStart>
 8001c36:	2072      	movs	r0, #114	; 0x72
 8001c38:	f7ff fefc 	bl	8001a34 <rgb_i2cWrite>
 8001c3c:	20b4      	movs	r0, #180	; 0xb4
 8001c3e:	f7ff fef9 	bl	8001a34 <rgb_i2cWrite>
 8001c42:	4d48      	ldr	r5, [pc, #288]	; (8001d64 <rgb_read+0x134>)
 8001c44:	f7ff fed8 	bl	80019f8 <rgb_i2cStart>
 8001c48:	2073      	movs	r0, #115	; 0x73
 8001c4a:	f7ff fef3 	bl	8001a34 <rgb_i2cWrite>
 8001c4e:	2001      	movs	r0, #1
 8001c50:	4945      	ldr	r1, [pc, #276]	; (8001d68 <rgb_read+0x138>)
 8001c52:	f7ff ff0f 	bl	8001a74 <rgb_i2cRead>
 8001c56:	462a      	mov	r2, r5
 8001c58:	2300      	movs	r3, #0
 8001c5a:	4c43      	ldr	r4, [pc, #268]	; (8001d68 <rgb_read+0x138>)
 8001c5c:	5d19      	ldrb	r1, [r3, r4]
 8001c5e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001c62:	3301      	adds	r3, #1
 8001c64:	2b09      	cmp	r3, #9
 8001c66:	d1f8      	bne.n	8001c5a <rgb_read+0x2a>
 8001c68:	2001      	movs	r0, #1
 8001c6a:	4621      	mov	r1, r4
 8001c6c:	f7ff ff02 	bl	8001a74 <rgb_i2cRead>
 8001c70:	2300      	movs	r3, #0
 8001c72:	5ce1      	ldrb	r1, [r4, r3]
 8001c74:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c78:	3301      	adds	r3, #1
 8001c7a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c7e:	2b09      	cmp	r3, #9
 8001c80:	802a      	strh	r2, [r5, #0]
 8001c82:	d1f6      	bne.n	8001c72 <rgb_read+0x42>
 8001c84:	2001      	movs	r0, #1
 8001c86:	4938      	ldr	r1, [pc, #224]	; (8001d68 <rgb_read+0x138>)
 8001c88:	f7ff fef4 	bl	8001a74 <rgb_i2cRead>
 8001c8c:	2300      	movs	r3, #0
 8001c8e:	4d37      	ldr	r5, [pc, #220]	; (8001d6c <rgb_read+0x13c>)
 8001c90:	5ce2      	ldrb	r2, [r4, r3]
 8001c92:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001c96:	3301      	adds	r3, #1
 8001c98:	2b09      	cmp	r3, #9
 8001c9a:	d1f8      	bne.n	8001c8e <rgb_read+0x5e>
 8001c9c:	2001      	movs	r0, #1
 8001c9e:	4932      	ldr	r1, [pc, #200]	; (8001d68 <rgb_read+0x138>)
 8001ca0:	f7ff fee8 	bl	8001a74 <rgb_i2cRead>
 8001ca4:	2300      	movs	r3, #0
 8001ca6:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001caa:	5ce1      	ldrb	r1, [r4, r3]
 8001cac:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001cb0:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001cb4:	3301      	adds	r3, #1
 8001cb6:	2b09      	cmp	r3, #9
 8001cb8:	d1f5      	bne.n	8001ca6 <rgb_read+0x76>
 8001cba:	4d2d      	ldr	r5, [pc, #180]	; (8001d70 <rgb_read+0x140>)
 8001cbc:	492a      	ldr	r1, [pc, #168]	; (8001d68 <rgb_read+0x138>)
 8001cbe:	2001      	movs	r0, #1
 8001cc0:	f7ff fed8 	bl	8001a74 <rgb_i2cRead>
 8001cc4:	462a      	mov	r2, r5
 8001cc6:	2300      	movs	r3, #0
 8001cc8:	5ce1      	ldrb	r1, [r4, r3]
 8001cca:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001cce:	3301      	adds	r3, #1
 8001cd0:	2b09      	cmp	r3, #9
 8001cd2:	d1f9      	bne.n	8001cc8 <rgb_read+0x98>
 8001cd4:	2001      	movs	r0, #1
 8001cd6:	4924      	ldr	r1, [pc, #144]	; (8001d68 <rgb_read+0x138>)
 8001cd8:	f7ff fecc 	bl	8001a74 <rgb_i2cRead>
 8001cdc:	2300      	movs	r3, #0
 8001cde:	5ce1      	ldrb	r1, [r4, r3]
 8001ce0:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001ce4:	3301      	adds	r3, #1
 8001ce6:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001cea:	2b09      	cmp	r3, #9
 8001cec:	802a      	strh	r2, [r5, #0]
 8001cee:	d1f6      	bne.n	8001cde <rgb_read+0xae>
 8001cf0:	4d20      	ldr	r5, [pc, #128]	; (8001d74 <rgb_read+0x144>)
 8001cf2:	491d      	ldr	r1, [pc, #116]	; (8001d68 <rgb_read+0x138>)
 8001cf4:	2001      	movs	r0, #1
 8001cf6:	f7ff febd 	bl	8001a74 <rgb_i2cRead>
 8001cfa:	462a      	mov	r2, r5
 8001cfc:	2300      	movs	r3, #0
 8001cfe:	5ce1      	ldrb	r1, [r4, r3]
 8001d00:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001d04:	3301      	adds	r3, #1
 8001d06:	2b09      	cmp	r3, #9
 8001d08:	d1f9      	bne.n	8001cfe <rgb_read+0xce>
 8001d0a:	2001      	movs	r0, #1
 8001d0c:	4916      	ldr	r1, [pc, #88]	; (8001d68 <rgb_read+0x138>)
 8001d0e:	f7ff feb1 	bl	8001a74 <rgb_i2cRead>
 8001d12:	2300      	movs	r3, #0
 8001d14:	5ce1      	ldrb	r1, [r4, r3]
 8001d16:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001d1a:	3301      	adds	r3, #1
 8001d1c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001d20:	2b09      	cmp	r3, #9
 8001d22:	802a      	strh	r2, [r5, #0]
 8001d24:	d1f6      	bne.n	8001d14 <rgb_read+0xe4>
 8001d26:	4d14      	ldr	r5, [pc, #80]	; (8001d78 <rgb_read+0x148>)
 8001d28:	490f      	ldr	r1, [pc, #60]	; (8001d68 <rgb_read+0x138>)
 8001d2a:	2001      	movs	r0, #1
 8001d2c:	f7ff fea2 	bl	8001a74 <rgb_i2cRead>
 8001d30:	462a      	mov	r2, r5
 8001d32:	2300      	movs	r3, #0
 8001d34:	5ce1      	ldrb	r1, [r4, r3]
 8001d36:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001d3a:	3301      	adds	r3, #1
 8001d3c:	2b09      	cmp	r3, #9
 8001d3e:	d1f9      	bne.n	8001d34 <rgb_read+0x104>
 8001d40:	2000      	movs	r0, #0
 8001d42:	4909      	ldr	r1, [pc, #36]	; (8001d68 <rgb_read+0x138>)
 8001d44:	f7ff fe96 	bl	8001a74 <rgb_i2cRead>
 8001d48:	2300      	movs	r3, #0
 8001d4a:	5ce1      	ldrb	r1, [r4, r3]
 8001d4c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001d50:	3301      	adds	r3, #1
 8001d52:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001d56:	2b09      	cmp	r3, #9
 8001d58:	802a      	strh	r2, [r5, #0]
 8001d5a:	d1f6      	bne.n	8001d4a <rgb_read+0x11a>
 8001d5c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001d60:	f7ff be59 	b.w	8001a16 <rgb_i2cStop>
 8001d64:	20000e18 	.word	0x20000e18
 8001d68:	20000e40 	.word	0x20000e40
 8001d6c:	20000de4 	.word	0x20000de4
 8001d70:	20000df4 	.word	0x20000df4
 8001d74:	20000e06 	.word	0x20000e06
 8001d78:	20000e2a 	.word	0x20000e2a

08001d7c <main>:
 8001d7c:	b508      	push	{r3, lr}
 8001d7e:	f000 ff79 	bl	8002c74 <lib_low_level_init>
 8001d82:	f7ff fc3d 	bl	8001600 <lib_os_init>
 8001d86:	4905      	ldr	r1, [pc, #20]	; (8001d9c <main+0x20>)
 8001d88:	4805      	ldr	r0, [pc, #20]	; (8001da0 <main+0x24>)
 8001d8a:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001d8e:	2306      	movs	r3, #6
 8001d90:	f7ff fa72 	bl	8001278 <create_thread>
 8001d94:	f7ff fa6a 	bl	800126c <kernel_start>
 8001d98:	2000      	movs	r0, #0
 8001d9a:	bd08      	pop	{r3, pc}
 8001d9c:	20000e4c 	.word	0x20000e4c
 8001da0:	08000c5d 	.word	0x08000c5d

08001da4 <RCC_GetClocksFreq>:
 8001da4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001da8:	4f9b      	ldr	r7, [pc, #620]	; (8002018 <RCC_GetClocksFreq+0x274>)
 8001daa:	687b      	ldr	r3, [r7, #4]
 8001dac:	f003 030c 	and.w	r3, r3, #12
 8001db0:	2b04      	cmp	r3, #4
 8001db2:	d005      	beq.n	8001dc0 <RCC_GetClocksFreq+0x1c>
 8001db4:	2b08      	cmp	r3, #8
 8001db6:	d006      	beq.n	8001dc6 <RCC_GetClocksFreq+0x22>
 8001db8:	4a98      	ldr	r2, [pc, #608]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001dba:	6002      	str	r2, [r0, #0]
 8001dbc:	b9b3      	cbnz	r3, 8001dec <RCC_GetClocksFreq+0x48>
 8001dbe:	e016      	b.n	8001dee <RCC_GetClocksFreq+0x4a>
 8001dc0:	4b96      	ldr	r3, [pc, #600]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001dc2:	6003      	str	r3, [r0, #0]
 8001dc4:	e012      	b.n	8001dec <RCC_GetClocksFreq+0x48>
 8001dc6:	687b      	ldr	r3, [r7, #4]
 8001dc8:	6879      	ldr	r1, [r7, #4]
 8001dca:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001dce:	1c9a      	adds	r2, r3, #2
 8001dd0:	03cb      	lsls	r3, r1, #15
 8001dd2:	bf49      	itett	mi
 8001dd4:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001dd6:	4b92      	ldrpl	r3, [pc, #584]	; (8002020 <RCC_GetClocksFreq+0x27c>)
 8001dd8:	4990      	ldrmi	r1, [pc, #576]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001dda:	f003 030f 	andmi.w	r3, r3, #15
 8001dde:	bf44      	itt	mi
 8001de0:	3301      	addmi	r3, #1
 8001de2:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001de6:	4353      	muls	r3, r2
 8001de8:	6003      	str	r3, [r0, #0]
 8001dea:	e000      	b.n	8001dee <RCC_GetClocksFreq+0x4a>
 8001dec:	2300      	movs	r3, #0
 8001dee:	687a      	ldr	r2, [r7, #4]
 8001df0:	4e8c      	ldr	r6, [pc, #560]	; (8002024 <RCC_GetClocksFreq+0x280>)
 8001df2:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002028 <RCC_GetClocksFreq+0x284>
 8001df6:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001dfa:	5cb4      	ldrb	r4, [r6, r2]
 8001dfc:	6802      	ldr	r2, [r0, #0]
 8001dfe:	b2e4      	uxtb	r4, r4
 8001e00:	fa22 f104 	lsr.w	r1, r2, r4
 8001e04:	6041      	str	r1, [r0, #4]
 8001e06:	687d      	ldr	r5, [r7, #4]
 8001e08:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001e0c:	5d75      	ldrb	r5, [r6, r5]
 8001e0e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001e12:	f8c0 e008 	str.w	lr, [r0, #8]
 8001e16:	687d      	ldr	r5, [r7, #4]
 8001e18:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001e1c:	5d75      	ldrb	r5, [r6, r5]
 8001e1e:	b2ed      	uxtb	r5, r5
 8001e20:	40e9      	lsrs	r1, r5
 8001e22:	60c1      	str	r1, [r0, #12]
 8001e24:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e26:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001e2a:	f008 060f 	and.w	r6, r8, #15
 8001e2e:	f018 0f10 	tst.w	r8, #16
 8001e32:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001e36:	46e0      	mov	r8, ip
 8001e38:	b2b6      	uxth	r6, r6
 8001e3a:	d004      	beq.n	8001e46 <RCC_GetClocksFreq+0xa2>
 8001e3c:	b11e      	cbz	r6, 8001e46 <RCC_GetClocksFreq+0xa2>
 8001e3e:	fbb3 f6f6 	udiv	r6, r3, r6
 8001e42:	6106      	str	r6, [r0, #16]
 8001e44:	e000      	b.n	8001e48 <RCC_GetClocksFreq+0xa4>
 8001e46:	6102      	str	r2, [r0, #16]
 8001e48:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e4a:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001e4e:	f00c 060f 	and.w	r6, ip, #15
 8001e52:	f01c 0f10 	tst.w	ip, #16
 8001e56:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001e5a:	b2b6      	uxth	r6, r6
 8001e5c:	d004      	beq.n	8001e68 <RCC_GetClocksFreq+0xc4>
 8001e5e:	b11e      	cbz	r6, 8001e68 <RCC_GetClocksFreq+0xc4>
 8001e60:	fbb3 f6f6 	udiv	r6, r3, r6
 8001e64:	6146      	str	r6, [r0, #20]
 8001e66:	e000      	b.n	8001e6a <RCC_GetClocksFreq+0xc6>
 8001e68:	6142      	str	r2, [r0, #20]
 8001e6a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e6c:	06f6      	lsls	r6, r6, #27
 8001e6e:	bf5a      	itte	pl
 8001e70:	4e6a      	ldrpl	r6, [pc, #424]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001e72:	6186      	strpl	r6, [r0, #24]
 8001e74:	6182      	strmi	r2, [r0, #24]
 8001e76:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e78:	06b6      	lsls	r6, r6, #26
 8001e7a:	bf5a      	itte	pl
 8001e7c:	4e67      	ldrpl	r6, [pc, #412]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001e7e:	61c6      	strpl	r6, [r0, #28]
 8001e80:	61c2      	strmi	r2, [r0, #28]
 8001e82:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e84:	0676      	lsls	r6, r6, #25
 8001e86:	bf5a      	itte	pl
 8001e88:	4e64      	ldrpl	r6, [pc, #400]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001e8a:	6206      	strpl	r6, [r0, #32]
 8001e8c:	6202      	strmi	r2, [r0, #32]
 8001e8e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e90:	05f6      	lsls	r6, r6, #23
 8001e92:	d506      	bpl.n	8001ea2 <RCC_GetClocksFreq+0xfe>
 8001e94:	429a      	cmp	r2, r3
 8001e96:	d104      	bne.n	8001ea2 <RCC_GetClocksFreq+0xfe>
 8001e98:	42a5      	cmp	r5, r4
 8001e9a:	d102      	bne.n	8001ea2 <RCC_GetClocksFreq+0xfe>
 8001e9c:	0056      	lsls	r6, r2, #1
 8001e9e:	6246      	str	r6, [r0, #36]	; 0x24
 8001ea0:	e000      	b.n	8001ea4 <RCC_GetClocksFreq+0x100>
 8001ea2:	6241      	str	r1, [r0, #36]	; 0x24
 8001ea4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ea6:	04f6      	lsls	r6, r6, #19
 8001ea8:	d506      	bpl.n	8001eb8 <RCC_GetClocksFreq+0x114>
 8001eaa:	429a      	cmp	r2, r3
 8001eac:	d104      	bne.n	8001eb8 <RCC_GetClocksFreq+0x114>
 8001eae:	42a5      	cmp	r5, r4
 8001eb0:	d102      	bne.n	8001eb8 <RCC_GetClocksFreq+0x114>
 8001eb2:	0056      	lsls	r6, r2, #1
 8001eb4:	6286      	str	r6, [r0, #40]	; 0x28
 8001eb6:	e000      	b.n	8001eba <RCC_GetClocksFreq+0x116>
 8001eb8:	6281      	str	r1, [r0, #40]	; 0x28
 8001eba:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ebc:	05b6      	lsls	r6, r6, #22
 8001ebe:	d506      	bpl.n	8001ece <RCC_GetClocksFreq+0x12a>
 8001ec0:	429a      	cmp	r2, r3
 8001ec2:	d104      	bne.n	8001ece <RCC_GetClocksFreq+0x12a>
 8001ec4:	42a5      	cmp	r5, r4
 8001ec6:	d102      	bne.n	8001ece <RCC_GetClocksFreq+0x12a>
 8001ec8:	0056      	lsls	r6, r2, #1
 8001eca:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001ecc:	e000      	b.n	8001ed0 <RCC_GetClocksFreq+0x12c>
 8001ece:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001ed0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ed2:	0576      	lsls	r6, r6, #21
 8001ed4:	d506      	bpl.n	8001ee4 <RCC_GetClocksFreq+0x140>
 8001ed6:	429a      	cmp	r2, r3
 8001ed8:	d104      	bne.n	8001ee4 <RCC_GetClocksFreq+0x140>
 8001eda:	42a5      	cmp	r5, r4
 8001edc:	d102      	bne.n	8001ee4 <RCC_GetClocksFreq+0x140>
 8001ede:	0056      	lsls	r6, r2, #1
 8001ee0:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001ee2:	e000      	b.n	8001ee6 <RCC_GetClocksFreq+0x142>
 8001ee4:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001ee6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ee8:	0536      	lsls	r6, r6, #20
 8001eea:	d506      	bpl.n	8001efa <RCC_GetClocksFreq+0x156>
 8001eec:	429a      	cmp	r2, r3
 8001eee:	d104      	bne.n	8001efa <RCC_GetClocksFreq+0x156>
 8001ef0:	42a5      	cmp	r5, r4
 8001ef2:	d102      	bne.n	8001efa <RCC_GetClocksFreq+0x156>
 8001ef4:	0056      	lsls	r6, r2, #1
 8001ef6:	6506      	str	r6, [r0, #80]	; 0x50
 8001ef8:	e000      	b.n	8001efc <RCC_GetClocksFreq+0x158>
 8001efa:	6501      	str	r1, [r0, #80]	; 0x50
 8001efc:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001efe:	04b6      	lsls	r6, r6, #18
 8001f00:	d506      	bpl.n	8001f10 <RCC_GetClocksFreq+0x16c>
 8001f02:	429a      	cmp	r2, r3
 8001f04:	d104      	bne.n	8001f10 <RCC_GetClocksFreq+0x16c>
 8001f06:	42a5      	cmp	r5, r4
 8001f08:	d102      	bne.n	8001f10 <RCC_GetClocksFreq+0x16c>
 8001f0a:	0056      	lsls	r6, r2, #1
 8001f0c:	6546      	str	r6, [r0, #84]	; 0x54
 8001f0e:	e000      	b.n	8001f12 <RCC_GetClocksFreq+0x16e>
 8001f10:	6501      	str	r1, [r0, #80]	; 0x50
 8001f12:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f14:	0436      	lsls	r6, r6, #16
 8001f16:	d506      	bpl.n	8001f26 <RCC_GetClocksFreq+0x182>
 8001f18:	429a      	cmp	r2, r3
 8001f1a:	d104      	bne.n	8001f26 <RCC_GetClocksFreq+0x182>
 8001f1c:	42a5      	cmp	r5, r4
 8001f1e:	d102      	bne.n	8001f26 <RCC_GetClocksFreq+0x182>
 8001f20:	0053      	lsls	r3, r2, #1
 8001f22:	6583      	str	r3, [r0, #88]	; 0x58
 8001f24:	e000      	b.n	8001f28 <RCC_GetClocksFreq+0x184>
 8001f26:	6581      	str	r1, [r0, #88]	; 0x58
 8001f28:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001f2a:	4b3b      	ldr	r3, [pc, #236]	; (8002018 <RCC_GetClocksFreq+0x274>)
 8001f2c:	07a4      	lsls	r4, r4, #30
 8001f2e:	d101      	bne.n	8001f34 <RCC_GetClocksFreq+0x190>
 8001f30:	6381      	str	r1, [r0, #56]	; 0x38
 8001f32:	e015      	b.n	8001f60 <RCC_GetClocksFreq+0x1bc>
 8001f34:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f36:	f001 0103 	and.w	r1, r1, #3
 8001f3a:	2901      	cmp	r1, #1
 8001f3c:	d101      	bne.n	8001f42 <RCC_GetClocksFreq+0x19e>
 8001f3e:	6382      	str	r2, [r0, #56]	; 0x38
 8001f40:	e00e      	b.n	8001f60 <RCC_GetClocksFreq+0x1bc>
 8001f42:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f44:	f001 0103 	and.w	r1, r1, #3
 8001f48:	2902      	cmp	r1, #2
 8001f4a:	d102      	bne.n	8001f52 <RCC_GetClocksFreq+0x1ae>
 8001f4c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f50:	e005      	b.n	8001f5e <RCC_GetClocksFreq+0x1ba>
 8001f52:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f54:	f003 0303 	and.w	r3, r3, #3
 8001f58:	2b03      	cmp	r3, #3
 8001f5a:	d101      	bne.n	8001f60 <RCC_GetClocksFreq+0x1bc>
 8001f5c:	4b2f      	ldr	r3, [pc, #188]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001f5e:	6383      	str	r3, [r0, #56]	; 0x38
 8001f60:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f62:	4b2d      	ldr	r3, [pc, #180]	; (8002018 <RCC_GetClocksFreq+0x274>)
 8001f64:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001f68:	d102      	bne.n	8001f70 <RCC_GetClocksFreq+0x1cc>
 8001f6a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001f6e:	e018      	b.n	8001fa2 <RCC_GetClocksFreq+0x1fe>
 8001f70:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f72:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001f76:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001f7a:	d101      	bne.n	8001f80 <RCC_GetClocksFreq+0x1dc>
 8001f7c:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001f7e:	e010      	b.n	8001fa2 <RCC_GetClocksFreq+0x1fe>
 8001f80:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f82:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001f86:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001f8a:	d102      	bne.n	8001f92 <RCC_GetClocksFreq+0x1ee>
 8001f8c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f90:	e006      	b.n	8001fa0 <RCC_GetClocksFreq+0x1fc>
 8001f92:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f94:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001f98:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001f9c:	d101      	bne.n	8001fa2 <RCC_GetClocksFreq+0x1fe>
 8001f9e:	4b1f      	ldr	r3, [pc, #124]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001fa0:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001fa2:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001fa4:	4b1c      	ldr	r3, [pc, #112]	; (8002018 <RCC_GetClocksFreq+0x274>)
 8001fa6:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001faa:	d102      	bne.n	8001fb2 <RCC_GetClocksFreq+0x20e>
 8001fac:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001fb0:	e018      	b.n	8001fe4 <RCC_GetClocksFreq+0x240>
 8001fb2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fb4:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fb8:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001fbc:	d101      	bne.n	8001fc2 <RCC_GetClocksFreq+0x21e>
 8001fbe:	6402      	str	r2, [r0, #64]	; 0x40
 8001fc0:	e010      	b.n	8001fe4 <RCC_GetClocksFreq+0x240>
 8001fc2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fc4:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fc8:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001fcc:	d102      	bne.n	8001fd4 <RCC_GetClocksFreq+0x230>
 8001fce:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fd2:	e006      	b.n	8001fe2 <RCC_GetClocksFreq+0x23e>
 8001fd4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fd6:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001fda:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001fde:	d101      	bne.n	8001fe4 <RCC_GetClocksFreq+0x240>
 8001fe0:	4b0e      	ldr	r3, [pc, #56]	; (800201c <RCC_GetClocksFreq+0x278>)
 8001fe2:	6403      	str	r3, [r0, #64]	; 0x40
 8001fe4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001fe6:	4b0c      	ldr	r3, [pc, #48]	; (8002018 <RCC_GetClocksFreq+0x274>)
 8001fe8:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001fec:	d102      	bne.n	8001ff4 <RCC_GetClocksFreq+0x250>
 8001fee:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001ff2:	e023      	b.n	800203c <RCC_GetClocksFreq+0x298>
 8001ff4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ff6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001ffa:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001ffe:	d101      	bne.n	8002004 <RCC_GetClocksFreq+0x260>
 8002000:	6442      	str	r2, [r0, #68]	; 0x44
 8002002:	e01b      	b.n	800203c <RCC_GetClocksFreq+0x298>
 8002004:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002006:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800200a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800200e:	d10d      	bne.n	800202c <RCC_GetClocksFreq+0x288>
 8002010:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002014:	e011      	b.n	800203a <RCC_GetClocksFreq+0x296>
 8002016:	bf00      	nop
 8002018:	40021000 	.word	0x40021000
 800201c:	007a1200 	.word	0x007a1200
 8002020:	003d0900 	.word	0x003d0900
 8002024:	200000e8 	.word	0x200000e8
 8002028:	200000c8 	.word	0x200000c8
 800202c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800202e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8002032:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8002036:	d101      	bne.n	800203c <RCC_GetClocksFreq+0x298>
 8002038:	4b13      	ldr	r3, [pc, #76]	; (8002088 <RCC_GetClocksFreq+0x2e4>)
 800203a:	6443      	str	r3, [r0, #68]	; 0x44
 800203c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800203e:	4b13      	ldr	r3, [pc, #76]	; (800208c <RCC_GetClocksFreq+0x2e8>)
 8002040:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8002044:	d103      	bne.n	800204e <RCC_GetClocksFreq+0x2aa>
 8002046:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800204a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800204e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002050:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002054:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8002058:	d102      	bne.n	8002060 <RCC_GetClocksFreq+0x2bc>
 800205a:	6482      	str	r2, [r0, #72]	; 0x48
 800205c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002060:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8002062:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002066:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800206a:	d102      	bne.n	8002072 <RCC_GetClocksFreq+0x2ce>
 800206c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002070:	e006      	b.n	8002080 <RCC_GetClocksFreq+0x2dc>
 8002072:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002074:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002078:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800207c:	d101      	bne.n	8002082 <RCC_GetClocksFreq+0x2de>
 800207e:	4b02      	ldr	r3, [pc, #8]	; (8002088 <RCC_GetClocksFreq+0x2e4>)
 8002080:	6483      	str	r3, [r0, #72]	; 0x48
 8002082:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002086:	bf00      	nop
 8002088:	007a1200 	.word	0x007a1200
 800208c:	40021000 	.word	0x40021000

08002090 <RCC_AHBPeriphClockCmd>:
 8002090:	bf00      	nop
 8002092:	bf00      	nop
 8002094:	4b04      	ldr	r3, [pc, #16]	; (80020a8 <RCC_AHBPeriphClockCmd+0x18>)
 8002096:	695a      	ldr	r2, [r3, #20]
 8002098:	b109      	cbz	r1, 800209e <RCC_AHBPeriphClockCmd+0xe>
 800209a:	4310      	orrs	r0, r2
 800209c:	e001      	b.n	80020a2 <RCC_AHBPeriphClockCmd+0x12>
 800209e:	ea22 0000 	bic.w	r0, r2, r0
 80020a2:	6158      	str	r0, [r3, #20]
 80020a4:	4770      	bx	lr
 80020a6:	bf00      	nop
 80020a8:	40021000 	.word	0x40021000

080020ac <RCC_APB2PeriphClockCmd>:
 80020ac:	bf00      	nop
 80020ae:	bf00      	nop
 80020b0:	4b04      	ldr	r3, [pc, #16]	; (80020c4 <RCC_APB2PeriphClockCmd+0x18>)
 80020b2:	699a      	ldr	r2, [r3, #24]
 80020b4:	b109      	cbz	r1, 80020ba <RCC_APB2PeriphClockCmd+0xe>
 80020b6:	4310      	orrs	r0, r2
 80020b8:	e001      	b.n	80020be <RCC_APB2PeriphClockCmd+0x12>
 80020ba:	ea22 0000 	bic.w	r0, r2, r0
 80020be:	6198      	str	r0, [r3, #24]
 80020c0:	4770      	bx	lr
 80020c2:	bf00      	nop
 80020c4:	40021000 	.word	0x40021000

080020c8 <RCC_APB1PeriphClockCmd>:
 80020c8:	bf00      	nop
 80020ca:	bf00      	nop
 80020cc:	4b04      	ldr	r3, [pc, #16]	; (80020e0 <RCC_APB1PeriphClockCmd+0x18>)
 80020ce:	69da      	ldr	r2, [r3, #28]
 80020d0:	b109      	cbz	r1, 80020d6 <RCC_APB1PeriphClockCmd+0xe>
 80020d2:	4310      	orrs	r0, r2
 80020d4:	e001      	b.n	80020da <RCC_APB1PeriphClockCmd+0x12>
 80020d6:	ea22 0000 	bic.w	r0, r2, r0
 80020da:	61d8      	str	r0, [r3, #28]
 80020dc:	4770      	bx	lr
 80020de:	bf00      	nop
 80020e0:	40021000 	.word	0x40021000

080020e4 <TIM_TimeBaseInit>:
 80020e4:	bf00      	nop
 80020e6:	bf00      	nop
 80020e8:	bf00      	nop
 80020ea:	4a24      	ldr	r2, [pc, #144]	; (800217c <TIM_TimeBaseInit+0x98>)
 80020ec:	8803      	ldrh	r3, [r0, #0]
 80020ee:	4290      	cmp	r0, r2
 80020f0:	b29b      	uxth	r3, r3
 80020f2:	d012      	beq.n	800211a <TIM_TimeBaseInit+0x36>
 80020f4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80020f8:	4290      	cmp	r0, r2
 80020fa:	d00e      	beq.n	800211a <TIM_TimeBaseInit+0x36>
 80020fc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002100:	d00b      	beq.n	800211a <TIM_TimeBaseInit+0x36>
 8002102:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002106:	4290      	cmp	r0, r2
 8002108:	d007      	beq.n	800211a <TIM_TimeBaseInit+0x36>
 800210a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800210e:	4290      	cmp	r0, r2
 8002110:	d003      	beq.n	800211a <TIM_TimeBaseInit+0x36>
 8002112:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002116:	4290      	cmp	r0, r2
 8002118:	d103      	bne.n	8002122 <TIM_TimeBaseInit+0x3e>
 800211a:	884a      	ldrh	r2, [r1, #2]
 800211c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002120:	4313      	orrs	r3, r2
 8002122:	4a17      	ldr	r2, [pc, #92]	; (8002180 <TIM_TimeBaseInit+0x9c>)
 8002124:	4290      	cmp	r0, r2
 8002126:	d008      	beq.n	800213a <TIM_TimeBaseInit+0x56>
 8002128:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800212c:	4290      	cmp	r0, r2
 800212e:	bf1f      	itttt	ne
 8002130:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002134:	890a      	ldrhne	r2, [r1, #8]
 8002136:	b29b      	uxthne	r3, r3
 8002138:	4313      	orrne	r3, r2
 800213a:	8003      	strh	r3, [r0, #0]
 800213c:	684b      	ldr	r3, [r1, #4]
 800213e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002140:	880b      	ldrh	r3, [r1, #0]
 8002142:	8503      	strh	r3, [r0, #40]	; 0x28
 8002144:	4b0d      	ldr	r3, [pc, #52]	; (800217c <TIM_TimeBaseInit+0x98>)
 8002146:	4298      	cmp	r0, r3
 8002148:	d013      	beq.n	8002172 <TIM_TimeBaseInit+0x8e>
 800214a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800214e:	4298      	cmp	r0, r3
 8002150:	d00f      	beq.n	8002172 <TIM_TimeBaseInit+0x8e>
 8002152:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002156:	4298      	cmp	r0, r3
 8002158:	d00b      	beq.n	8002172 <TIM_TimeBaseInit+0x8e>
 800215a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800215e:	4298      	cmp	r0, r3
 8002160:	d007      	beq.n	8002172 <TIM_TimeBaseInit+0x8e>
 8002162:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002166:	4298      	cmp	r0, r3
 8002168:	d003      	beq.n	8002172 <TIM_TimeBaseInit+0x8e>
 800216a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800216e:	4298      	cmp	r0, r3
 8002170:	d101      	bne.n	8002176 <TIM_TimeBaseInit+0x92>
 8002172:	894b      	ldrh	r3, [r1, #10]
 8002174:	8603      	strh	r3, [r0, #48]	; 0x30
 8002176:	2301      	movs	r3, #1
 8002178:	6143      	str	r3, [r0, #20]
 800217a:	4770      	bx	lr
 800217c:	40012c00 	.word	0x40012c00
 8002180:	40001000 	.word	0x40001000

08002184 <TIM_Cmd>:
 8002184:	bf00      	nop
 8002186:	bf00      	nop
 8002188:	8803      	ldrh	r3, [r0, #0]
 800218a:	b119      	cbz	r1, 8002194 <TIM_Cmd+0x10>
 800218c:	b29b      	uxth	r3, r3
 800218e:	f043 0301 	orr.w	r3, r3, #1
 8002192:	e003      	b.n	800219c <TIM_Cmd+0x18>
 8002194:	f023 0301 	bic.w	r3, r3, #1
 8002198:	041b      	lsls	r3, r3, #16
 800219a:	0c1b      	lsrs	r3, r3, #16
 800219c:	8003      	strh	r3, [r0, #0]
 800219e:	4770      	bx	lr

080021a0 <TIM_OC1Init>:
 80021a0:	b570      	push	{r4, r5, r6, lr}
 80021a2:	bf00      	nop
 80021a4:	bf00      	nop
 80021a6:	bf00      	nop
 80021a8:	bf00      	nop
 80021aa:	6a03      	ldr	r3, [r0, #32]
 80021ac:	680d      	ldr	r5, [r1, #0]
 80021ae:	f023 0301 	bic.w	r3, r3, #1
 80021b2:	6203      	str	r3, [r0, #32]
 80021b4:	6a03      	ldr	r3, [r0, #32]
 80021b6:	6844      	ldr	r4, [r0, #4]
 80021b8:	6982      	ldr	r2, [r0, #24]
 80021ba:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80021be:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 80021c2:	4315      	orrs	r5, r2
 80021c4:	898a      	ldrh	r2, [r1, #12]
 80021c6:	f023 0302 	bic.w	r3, r3, #2
 80021ca:	4313      	orrs	r3, r2
 80021cc:	888a      	ldrh	r2, [r1, #4]
 80021ce:	4313      	orrs	r3, r2
 80021d0:	4a15      	ldr	r2, [pc, #84]	; (8002228 <TIM_OC1Init+0x88>)
 80021d2:	4290      	cmp	r0, r2
 80021d4:	d00f      	beq.n	80021f6 <TIM_OC1Init+0x56>
 80021d6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80021da:	4290      	cmp	r0, r2
 80021dc:	d00b      	beq.n	80021f6 <TIM_OC1Init+0x56>
 80021de:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 80021e2:	4290      	cmp	r0, r2
 80021e4:	d007      	beq.n	80021f6 <TIM_OC1Init+0x56>
 80021e6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80021ea:	4290      	cmp	r0, r2
 80021ec:	d003      	beq.n	80021f6 <TIM_OC1Init+0x56>
 80021ee:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80021f2:	4290      	cmp	r0, r2
 80021f4:	d111      	bne.n	800221a <TIM_OC1Init+0x7a>
 80021f6:	bf00      	nop
 80021f8:	bf00      	nop
 80021fa:	bf00      	nop
 80021fc:	bf00      	nop
 80021fe:	89ca      	ldrh	r2, [r1, #14]
 8002200:	88ce      	ldrh	r6, [r1, #6]
 8002202:	f023 0308 	bic.w	r3, r3, #8
 8002206:	4313      	orrs	r3, r2
 8002208:	8a0a      	ldrh	r2, [r1, #16]
 800220a:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 800220e:	4314      	orrs	r4, r2
 8002210:	8a4a      	ldrh	r2, [r1, #18]
 8002212:	f023 0304 	bic.w	r3, r3, #4
 8002216:	4333      	orrs	r3, r6
 8002218:	4314      	orrs	r4, r2
 800221a:	688a      	ldr	r2, [r1, #8]
 800221c:	6044      	str	r4, [r0, #4]
 800221e:	6185      	str	r5, [r0, #24]
 8002220:	6342      	str	r2, [r0, #52]	; 0x34
 8002222:	6203      	str	r3, [r0, #32]
 8002224:	bd70      	pop	{r4, r5, r6, pc}
 8002226:	bf00      	nop
 8002228:	40012c00 	.word	0x40012c00

0800222c <TIM_OC2Init>:
 800222c:	b570      	push	{r4, r5, r6, lr}
 800222e:	bf00      	nop
 8002230:	bf00      	nop
 8002232:	bf00      	nop
 8002234:	bf00      	nop
 8002236:	6a03      	ldr	r3, [r0, #32]
 8002238:	680d      	ldr	r5, [r1, #0]
 800223a:	898e      	ldrh	r6, [r1, #12]
 800223c:	f023 0310 	bic.w	r3, r3, #16
 8002240:	6203      	str	r3, [r0, #32]
 8002242:	6a03      	ldr	r3, [r0, #32]
 8002244:	6844      	ldr	r4, [r0, #4]
 8002246:	6982      	ldr	r2, [r0, #24]
 8002248:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800224c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002250:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002254:	f023 0220 	bic.w	r2, r3, #32
 8002258:	888b      	ldrh	r3, [r1, #4]
 800225a:	4333      	orrs	r3, r6
 800225c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8002260:	4a10      	ldr	r2, [pc, #64]	; (80022a4 <TIM_OC2Init+0x78>)
 8002262:	4290      	cmp	r0, r2
 8002264:	d003      	beq.n	800226e <TIM_OC2Init+0x42>
 8002266:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800226a:	4290      	cmp	r0, r2
 800226c:	d114      	bne.n	8002298 <TIM_OC2Init+0x6c>
 800226e:	bf00      	nop
 8002270:	bf00      	nop
 8002272:	bf00      	nop
 8002274:	bf00      	nop
 8002276:	89ca      	ldrh	r2, [r1, #14]
 8002278:	8a0e      	ldrh	r6, [r1, #16]
 800227a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800227e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002282:	88ca      	ldrh	r2, [r1, #6]
 8002284:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002288:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800228c:	8a4a      	ldrh	r2, [r1, #18]
 800228e:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8002292:	4332      	orrs	r2, r6
 8002294:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002298:	688a      	ldr	r2, [r1, #8]
 800229a:	6044      	str	r4, [r0, #4]
 800229c:	6185      	str	r5, [r0, #24]
 800229e:	6382      	str	r2, [r0, #56]	; 0x38
 80022a0:	6203      	str	r3, [r0, #32]
 80022a2:	bd70      	pop	{r4, r5, r6, pc}
 80022a4:	40012c00 	.word	0x40012c00

080022a8 <TIM_CtrlPWMOutputs>:
 80022a8:	bf00      	nop
 80022aa:	bf00      	nop
 80022ac:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80022ae:	b111      	cbz	r1, 80022b6 <TIM_CtrlPWMOutputs+0xe>
 80022b0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80022b4:	e001      	b.n	80022ba <TIM_CtrlPWMOutputs+0x12>
 80022b6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80022ba:	6443      	str	r3, [r0, #68]	; 0x44
 80022bc:	4770      	bx	lr

080022be <TIM_ClearITPendingBit>:
 80022be:	bf00      	nop
 80022c0:	43c9      	mvns	r1, r1
 80022c2:	b289      	uxth	r1, r1
 80022c4:	6101      	str	r1, [r0, #16]
 80022c6:	4770      	bx	lr

080022c8 <timer_init>:
 80022c8:	b530      	push	{r4, r5, lr}
 80022ca:	2300      	movs	r3, #0
 80022cc:	b085      	sub	sp, #20
 80022ce:	491f      	ldr	r1, [pc, #124]	; (800234c <timer_init+0x84>)
 80022d0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80022d4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022d8:	491d      	ldr	r1, [pc, #116]	; (8002350 <timer_init+0x88>)
 80022da:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022de:	4a1d      	ldr	r2, [pc, #116]	; (8002354 <timer_init+0x8c>)
 80022e0:	2400      	movs	r4, #0
 80022e2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80022e6:	3301      	adds	r3, #1
 80022e8:	2b04      	cmp	r3, #4
 80022ea:	4625      	mov	r5, r4
 80022ec:	d1ef      	bne.n	80022ce <timer_init+0x6>
 80022ee:	4b1a      	ldr	r3, [pc, #104]	; (8002358 <timer_init+0x90>)
 80022f0:	2002      	movs	r0, #2
 80022f2:	2101      	movs	r1, #1
 80022f4:	601c      	str	r4, [r3, #0]
 80022f6:	f7ff fee7 	bl	80020c8 <RCC_APB1PeriphClockCmd>
 80022fa:	f8ad 4006 	strh.w	r4, [sp, #6]
 80022fe:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002302:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002306:	4c15      	ldr	r4, [pc, #84]	; (800235c <timer_init+0x94>)
 8002308:	f44f 738c 	mov.w	r3, #280	; 0x118
 800230c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002310:	4620      	mov	r0, r4
 8002312:	2331      	movs	r3, #49	; 0x31
 8002314:	a901      	add	r1, sp, #4
 8002316:	9302      	str	r3, [sp, #8]
 8002318:	f7ff fee4 	bl	80020e4 <TIM_TimeBaseInit>
 800231c:	4620      	mov	r0, r4
 800231e:	2101      	movs	r1, #1
 8002320:	f7ff ff30 	bl	8002184 <TIM_Cmd>
 8002324:	68e3      	ldr	r3, [r4, #12]
 8002326:	f043 0301 	orr.w	r3, r3, #1
 800232a:	60e3      	str	r3, [r4, #12]
 800232c:	231d      	movs	r3, #29
 800232e:	f88d 3000 	strb.w	r3, [sp]
 8002332:	4668      	mov	r0, sp
 8002334:	2301      	movs	r3, #1
 8002336:	f88d 5001 	strb.w	r5, [sp, #1]
 800233a:	f88d 3002 	strb.w	r3, [sp, #2]
 800233e:	f88d 3003 	strb.w	r3, [sp, #3]
 8002342:	f000 fc5d 	bl	8002c00 <NVIC_Init>
 8002346:	b005      	add	sp, #20
 8002348:	bd30      	pop	{r4, r5, pc}
 800234a:	bf00      	nop
 800234c:	20001060 	.word	0x20001060
 8002350:	20001054 	.word	0x20001054
 8002354:	2000104c 	.word	0x2000104c
 8002358:	2000105c 	.word	0x2000105c
 800235c:	40000400 	.word	0x40000400

08002360 <TIM3_IRQHandler>:
 8002360:	2300      	movs	r3, #0
 8002362:	4910      	ldr	r1, [pc, #64]	; (80023a4 <TIM3_IRQHandler+0x44>)
 8002364:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002368:	b292      	uxth	r2, r2
 800236a:	b132      	cbz	r2, 800237a <TIM3_IRQHandler+0x1a>
 800236c:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002370:	3a01      	subs	r2, #1
 8002372:	b292      	uxth	r2, r2
 8002374:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002378:	e009      	b.n	800238e <TIM3_IRQHandler+0x2e>
 800237a:	4a0b      	ldr	r2, [pc, #44]	; (80023a8 <TIM3_IRQHandler+0x48>)
 800237c:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8002380:	b292      	uxth	r2, r2
 8002382:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002386:	4a09      	ldr	r2, [pc, #36]	; (80023ac <TIM3_IRQHandler+0x4c>)
 8002388:	2101      	movs	r1, #1
 800238a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800238e:	3301      	adds	r3, #1
 8002390:	2b04      	cmp	r3, #4
 8002392:	d1e6      	bne.n	8002362 <TIM3_IRQHandler+0x2>
 8002394:	4a06      	ldr	r2, [pc, #24]	; (80023b0 <TIM3_IRQHandler+0x50>)
 8002396:	4807      	ldr	r0, [pc, #28]	; (80023b4 <TIM3_IRQHandler+0x54>)
 8002398:	6813      	ldr	r3, [r2, #0]
 800239a:	2101      	movs	r1, #1
 800239c:	3301      	adds	r3, #1
 800239e:	6013      	str	r3, [r2, #0]
 80023a0:	f7ff bf8d 	b.w	80022be <TIM_ClearITPendingBit>
 80023a4:	20001060 	.word	0x20001060
 80023a8:	20001054 	.word	0x20001054
 80023ac:	2000104c 	.word	0x2000104c
 80023b0:	2000105c 	.word	0x2000105c
 80023b4:	40000400 	.word	0x40000400

080023b8 <timer_get_time>:
 80023b8:	b082      	sub	sp, #8
 80023ba:	b672      	cpsid	i
 80023bc:	4b04      	ldr	r3, [pc, #16]	; (80023d0 <timer_get_time+0x18>)
 80023be:	681b      	ldr	r3, [r3, #0]
 80023c0:	9301      	str	r3, [sp, #4]
 80023c2:	b662      	cpsie	i
 80023c4:	230a      	movs	r3, #10
 80023c6:	9801      	ldr	r0, [sp, #4]
 80023c8:	fbb0 f0f3 	udiv	r0, r0, r3
 80023cc:	b002      	add	sp, #8
 80023ce:	4770      	bx	lr
 80023d0:	2000105c 	.word	0x2000105c

080023d4 <timer_delay_ms>:
 80023d4:	b513      	push	{r0, r1, r4, lr}
 80023d6:	4604      	mov	r4, r0
 80023d8:	f7ff ffee 	bl	80023b8 <timer_get_time>
 80023dc:	4420      	add	r0, r4
 80023de:	9001      	str	r0, [sp, #4]
 80023e0:	9c01      	ldr	r4, [sp, #4]
 80023e2:	f7ff ffe9 	bl	80023b8 <timer_get_time>
 80023e6:	4284      	cmp	r4, r0
 80023e8:	d902      	bls.n	80023f0 <timer_delay_ms+0x1c>
 80023ea:	f000 fb19 	bl	8002a20 <core_yield>
 80023ee:	e7f7      	b.n	80023e0 <timer_delay_ms+0xc>
 80023f0:	b002      	add	sp, #8
 80023f2:	bd10      	pop	{r4, pc}

080023f4 <event_timer_set_period>:
 80023f4:	b672      	cpsid	i
 80023f6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 80023fa:	4b07      	ldr	r3, [pc, #28]	; (8002418 <event_timer_set_period+0x24>)
 80023fc:	0049      	lsls	r1, r1, #1
 80023fe:	b289      	uxth	r1, r1
 8002400:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002404:	4b05      	ldr	r3, [pc, #20]	; (800241c <event_timer_set_period+0x28>)
 8002406:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800240a:	4b05      	ldr	r3, [pc, #20]	; (8002420 <event_timer_set_period+0x2c>)
 800240c:	2200      	movs	r2, #0
 800240e:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002412:	b662      	cpsie	i
 8002414:	4770      	bx	lr
 8002416:	bf00      	nop
 8002418:	20001060 	.word	0x20001060
 800241c:	20001054 	.word	0x20001054
 8002420:	2000104c 	.word	0x2000104c

08002424 <event_timer_wait>:
 8002424:	b510      	push	{r4, lr}
 8002426:	4604      	mov	r4, r0
 8002428:	4a06      	ldr	r2, [pc, #24]	; (8002444 <event_timer_wait+0x20>)
 800242a:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 800242e:	b29b      	uxth	r3, r3
 8002430:	b913      	cbnz	r3, 8002438 <event_timer_wait+0x14>
 8002432:	f000 faf5 	bl	8002a20 <core_yield>
 8002436:	e7f7      	b.n	8002428 <event_timer_wait+0x4>
 8002438:	b672      	cpsid	i
 800243a:	2300      	movs	r3, #0
 800243c:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8002440:	b662      	cpsie	i
 8002442:	bd10      	pop	{r4, pc}
 8002444:	2000104c 	.word	0x2000104c

08002448 <USART_Init>:
 8002448:	b530      	push	{r4, r5, lr}
 800244a:	4604      	mov	r4, r0
 800244c:	b099      	sub	sp, #100	; 0x64
 800244e:	460d      	mov	r5, r1
 8002450:	bf00      	nop
 8002452:	bf00      	nop
 8002454:	bf00      	nop
 8002456:	bf00      	nop
 8002458:	bf00      	nop
 800245a:	bf00      	nop
 800245c:	bf00      	nop
 800245e:	6803      	ldr	r3, [r0, #0]
 8002460:	f023 0301 	bic.w	r3, r3, #1
 8002464:	6003      	str	r3, [r0, #0]
 8002466:	6843      	ldr	r3, [r0, #4]
 8002468:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 800246c:	688b      	ldr	r3, [r1, #8]
 800246e:	68c9      	ldr	r1, [r1, #12]
 8002470:	4313      	orrs	r3, r2
 8002472:	6043      	str	r3, [r0, #4]
 8002474:	686a      	ldr	r2, [r5, #4]
 8002476:	6803      	ldr	r3, [r0, #0]
 8002478:	4311      	orrs	r1, r2
 800247a:	692a      	ldr	r2, [r5, #16]
 800247c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002480:	430a      	orrs	r2, r1
 8002482:	f023 030c 	bic.w	r3, r3, #12
 8002486:	4313      	orrs	r3, r2
 8002488:	6003      	str	r3, [r0, #0]
 800248a:	6883      	ldr	r3, [r0, #8]
 800248c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002490:	696b      	ldr	r3, [r5, #20]
 8002492:	4313      	orrs	r3, r2
 8002494:	6083      	str	r3, [r0, #8]
 8002496:	a801      	add	r0, sp, #4
 8002498:	f7ff fc84 	bl	8001da4 <RCC_GetClocksFreq>
 800249c:	4b17      	ldr	r3, [pc, #92]	; (80024fc <USART_Init+0xb4>)
 800249e:	429c      	cmp	r4, r3
 80024a0:	d101      	bne.n	80024a6 <USART_Init+0x5e>
 80024a2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80024a4:	e00e      	b.n	80024c4 <USART_Init+0x7c>
 80024a6:	4b16      	ldr	r3, [pc, #88]	; (8002500 <USART_Init+0xb8>)
 80024a8:	429c      	cmp	r4, r3
 80024aa:	d101      	bne.n	80024b0 <USART_Init+0x68>
 80024ac:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80024ae:	e009      	b.n	80024c4 <USART_Init+0x7c>
 80024b0:	4b14      	ldr	r3, [pc, #80]	; (8002504 <USART_Init+0xbc>)
 80024b2:	429c      	cmp	r4, r3
 80024b4:	d101      	bne.n	80024ba <USART_Init+0x72>
 80024b6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80024b8:	e004      	b.n	80024c4 <USART_Init+0x7c>
 80024ba:	4b13      	ldr	r3, [pc, #76]	; (8002508 <USART_Init+0xc0>)
 80024bc:	429c      	cmp	r4, r3
 80024be:	bf0c      	ite	eq
 80024c0:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 80024c2:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 80024c4:	6822      	ldr	r2, [r4, #0]
 80024c6:	6829      	ldr	r1, [r5, #0]
 80024c8:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80024cc:	bf18      	it	ne
 80024ce:	005b      	lslne	r3, r3, #1
 80024d0:	fbb3 f2f1 	udiv	r2, r3, r1
 80024d4:	fb01 3312 	mls	r3, r1, r2, r3
 80024d8:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80024dc:	6823      	ldr	r3, [r4, #0]
 80024de:	bf28      	it	cs
 80024e0:	3201      	addcs	r2, #1
 80024e2:	041b      	lsls	r3, r3, #16
 80024e4:	bf41      	itttt	mi
 80024e6:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80024ea:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80024ee:	4013      	andmi	r3, r2
 80024f0:	ea41 0203 	orrmi.w	r2, r1, r3
 80024f4:	b292      	uxth	r2, r2
 80024f6:	81a2      	strh	r2, [r4, #12]
 80024f8:	b019      	add	sp, #100	; 0x64
 80024fa:	bd30      	pop	{r4, r5, pc}
 80024fc:	40013800 	.word	0x40013800
 8002500:	40004400 	.word	0x40004400
 8002504:	40004800 	.word	0x40004800
 8002508:	40004c00 	.word	0x40004c00

0800250c <USART_Cmd>:
 800250c:	bf00      	nop
 800250e:	bf00      	nop
 8002510:	6803      	ldr	r3, [r0, #0]
 8002512:	b111      	cbz	r1, 800251a <USART_Cmd+0xe>
 8002514:	f043 0301 	orr.w	r3, r3, #1
 8002518:	e001      	b.n	800251e <USART_Cmd+0x12>
 800251a:	f023 0301 	bic.w	r3, r3, #1
 800251e:	6003      	str	r3, [r0, #0]
 8002520:	4770      	bx	lr

08002522 <USART_ReceiveData>:
 8002522:	bf00      	nop
 8002524:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002526:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800252a:	4770      	bx	lr

0800252c <USART_ITConfig>:
 800252c:	b510      	push	{r4, lr}
 800252e:	bf00      	nop
 8002530:	bf00      	nop
 8002532:	bf00      	nop
 8002534:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002538:	2301      	movs	r3, #1
 800253a:	b2c9      	uxtb	r1, r1
 800253c:	2c02      	cmp	r4, #2
 800253e:	fa03 f301 	lsl.w	r3, r3, r1
 8002542:	d101      	bne.n	8002548 <USART_ITConfig+0x1c>
 8002544:	3004      	adds	r0, #4
 8002546:	e002      	b.n	800254e <USART_ITConfig+0x22>
 8002548:	2c03      	cmp	r4, #3
 800254a:	bf08      	it	eq
 800254c:	3008      	addeq	r0, #8
 800254e:	b112      	cbz	r2, 8002556 <USART_ITConfig+0x2a>
 8002550:	6802      	ldr	r2, [r0, #0]
 8002552:	4313      	orrs	r3, r2
 8002554:	e002      	b.n	800255c <USART_ITConfig+0x30>
 8002556:	6802      	ldr	r2, [r0, #0]
 8002558:	ea22 0303 	bic.w	r3, r2, r3
 800255c:	6003      	str	r3, [r0, #0]
 800255e:	bd10      	pop	{r4, pc}

08002560 <USART_GetITStatus>:
 8002560:	b510      	push	{r4, lr}
 8002562:	bf00      	nop
 8002564:	bf00      	nop
 8002566:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800256a:	b2cc      	uxtb	r4, r1
 800256c:	2301      	movs	r3, #1
 800256e:	2a01      	cmp	r2, #1
 8002570:	fa03 f304 	lsl.w	r3, r3, r4
 8002574:	d101      	bne.n	800257a <USART_GetITStatus+0x1a>
 8002576:	6802      	ldr	r2, [r0, #0]
 8002578:	e003      	b.n	8002582 <USART_GetITStatus+0x22>
 800257a:	2a02      	cmp	r2, #2
 800257c:	bf0c      	ite	eq
 800257e:	6842      	ldreq	r2, [r0, #4]
 8002580:	6882      	ldrne	r2, [r0, #8]
 8002582:	4013      	ands	r3, r2
 8002584:	69c2      	ldr	r2, [r0, #28]
 8002586:	b13b      	cbz	r3, 8002598 <USART_GetITStatus+0x38>
 8002588:	0c09      	lsrs	r1, r1, #16
 800258a:	2301      	movs	r3, #1
 800258c:	408b      	lsls	r3, r1
 800258e:	4213      	tst	r3, r2
 8002590:	bf14      	ite	ne
 8002592:	2001      	movne	r0, #1
 8002594:	2000      	moveq	r0, #0
 8002596:	bd10      	pop	{r4, pc}
 8002598:	4618      	mov	r0, r3
 800259a:	bd10      	pop	{r4, pc}

0800259c <USART_ClearITPendingBit>:
 800259c:	bf00      	nop
 800259e:	bf00      	nop
 80025a0:	2301      	movs	r3, #1
 80025a2:	0c09      	lsrs	r1, r1, #16
 80025a4:	408b      	lsls	r3, r1
 80025a6:	6203      	str	r3, [r0, #32]
 80025a8:	4770      	bx	lr
	...

080025ac <uart_write>:
 80025ac:	4b04      	ldr	r3, [pc, #16]	; (80025c0 <uart_write+0x14>)
 80025ae:	69da      	ldr	r2, [r3, #28]
 80025b0:	0612      	lsls	r2, r2, #24
 80025b2:	d401      	bmi.n	80025b8 <uart_write+0xc>
 80025b4:	bf00      	nop
 80025b6:	e7f9      	b.n	80025ac <uart_write>
 80025b8:	b280      	uxth	r0, r0
 80025ba:	8518      	strh	r0, [r3, #40]	; 0x28
 80025bc:	4770      	bx	lr
 80025be:	bf00      	nop
 80025c0:	40013800 	.word	0x40013800

080025c4 <uart_init>:
 80025c4:	b530      	push	{r4, r5, lr}
 80025c6:	4b2c      	ldr	r3, [pc, #176]	; (8002678 <uart_init+0xb4>)
 80025c8:	4d2c      	ldr	r5, [pc, #176]	; (800267c <uart_init+0xb8>)
 80025ca:	2400      	movs	r4, #0
 80025cc:	601c      	str	r4, [r3, #0]
 80025ce:	4b2c      	ldr	r3, [pc, #176]	; (8002680 <uart_init+0xbc>)
 80025d0:	b08b      	sub	sp, #44	; 0x2c
 80025d2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80025d6:	2101      	movs	r1, #1
 80025d8:	601c      	str	r4, [r3, #0]
 80025da:	f7ff fd59 	bl	8002090 <RCC_AHBPeriphClockCmd>
 80025de:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80025e2:	2101      	movs	r1, #1
 80025e4:	f7ff fd62 	bl	80020ac <RCC_APB2PeriphClockCmd>
 80025e8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80025ec:	9302      	str	r3, [sp, #8]
 80025ee:	2302      	movs	r3, #2
 80025f0:	f88d 300c 	strb.w	r3, [sp, #12]
 80025f4:	a902      	add	r1, sp, #8
 80025f6:	2303      	movs	r3, #3
 80025f8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80025fc:	f88d 300d 	strb.w	r3, [sp, #13]
 8002600:	f88d 400e 	strb.w	r4, [sp, #14]
 8002604:	f88d 400f 	strb.w	r4, [sp, #15]
 8002608:	f000 fbd8 	bl	8002dbc <GPIO_Init>
 800260c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002610:	2109      	movs	r1, #9
 8002612:	2207      	movs	r2, #7
 8002614:	f000 fc1c 	bl	8002e50 <GPIO_PinAFConfig>
 8002618:	2207      	movs	r2, #7
 800261a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800261e:	210a      	movs	r1, #10
 8002620:	f000 fc16 	bl	8002e50 <GPIO_PinAFConfig>
 8002624:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002628:	9304      	str	r3, [sp, #16]
 800262a:	4628      	mov	r0, r5
 800262c:	230c      	movs	r3, #12
 800262e:	a904      	add	r1, sp, #16
 8002630:	9308      	str	r3, [sp, #32]
 8002632:	9405      	str	r4, [sp, #20]
 8002634:	9406      	str	r4, [sp, #24]
 8002636:	9407      	str	r4, [sp, #28]
 8002638:	9409      	str	r4, [sp, #36]	; 0x24
 800263a:	f7ff ff05 	bl	8002448 <USART_Init>
 800263e:	4628      	mov	r0, r5
 8002640:	2101      	movs	r1, #1
 8002642:	f7ff ff63 	bl	800250c <USART_Cmd>
 8002646:	2201      	movs	r2, #1
 8002648:	4628      	mov	r0, r5
 800264a:	490e      	ldr	r1, [pc, #56]	; (8002684 <uart_init+0xc0>)
 800264c:	f7ff ff6e 	bl	800252c <USART_ITConfig>
 8002650:	2325      	movs	r3, #37	; 0x25
 8002652:	f88d 4005 	strb.w	r4, [sp, #5]
 8002656:	f88d 4006 	strb.w	r4, [sp, #6]
 800265a:	a801      	add	r0, sp, #4
 800265c:	2401      	movs	r4, #1
 800265e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002662:	f88d 4007 	strb.w	r4, [sp, #7]
 8002666:	f000 facb 	bl	8002c00 <NVIC_Init>
 800266a:	4628      	mov	r0, r5
 800266c:	4621      	mov	r1, r4
 800266e:	f7ff ff4d 	bl	800250c <USART_Cmd>
 8002672:	b00b      	add	sp, #44	; 0x2c
 8002674:	bd30      	pop	{r4, r5, pc}
 8002676:	bf00      	nop
 8002678:	20001088 	.word	0x20001088
 800267c:	40013800 	.word	0x40013800
 8002680:	2000108c 	.word	0x2000108c
 8002684:	00050105 	.word	0x00050105

08002688 <USART1_IRQHandler>:
 8002688:	b508      	push	{r3, lr}
 800268a:	480d      	ldr	r0, [pc, #52]	; (80026c0 <USART1_IRQHandler+0x38>)
 800268c:	490d      	ldr	r1, [pc, #52]	; (80026c4 <USART1_IRQHandler+0x3c>)
 800268e:	f7ff ff67 	bl	8002560 <USART_GetITStatus>
 8002692:	b178      	cbz	r0, 80026b4 <USART1_IRQHandler+0x2c>
 8002694:	480a      	ldr	r0, [pc, #40]	; (80026c0 <USART1_IRQHandler+0x38>)
 8002696:	f7ff ff44 	bl	8002522 <USART_ReceiveData>
 800269a:	4b0b      	ldr	r3, [pc, #44]	; (80026c8 <USART1_IRQHandler+0x40>)
 800269c:	490b      	ldr	r1, [pc, #44]	; (80026cc <USART1_IRQHandler+0x44>)
 800269e:	681a      	ldr	r2, [r3, #0]
 80026a0:	b2c0      	uxtb	r0, r0
 80026a2:	5488      	strb	r0, [r1, r2]
 80026a4:	681a      	ldr	r2, [r3, #0]
 80026a6:	3201      	adds	r2, #1
 80026a8:	601a      	str	r2, [r3, #0]
 80026aa:	681a      	ldr	r2, [r3, #0]
 80026ac:	2a1f      	cmp	r2, #31
 80026ae:	bf84      	itt	hi
 80026b0:	2200      	movhi	r2, #0
 80026b2:	601a      	strhi	r2, [r3, #0]
 80026b4:	4802      	ldr	r0, [pc, #8]	; (80026c0 <USART1_IRQHandler+0x38>)
 80026b6:	4903      	ldr	r1, [pc, #12]	; (80026c4 <USART1_IRQHandler+0x3c>)
 80026b8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80026bc:	f7ff bf6e 	b.w	800259c <USART_ClearITPendingBit>
 80026c0:	40013800 	.word	0x40013800
 80026c4:	00050105 	.word	0x00050105
 80026c8:	20001088 	.word	0x20001088
 80026cc:	20001068 	.word	0x20001068

080026d0 <i2c_delay>:
 80026d0:	bf00      	nop
 80026d2:	bf00      	nop
 80026d4:	bf00      	nop
 80026d6:	bf00      	nop
 80026d8:	4770      	bx	lr
	...

080026dc <SetLowSDA>:
 80026dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80026de:	4d0d      	ldr	r5, [pc, #52]	; (8002714 <SetLowSDA+0x38>)
 80026e0:	2301      	movs	r3, #1
 80026e2:	2203      	movs	r2, #3
 80026e4:	2480      	movs	r4, #128	; 0x80
 80026e6:	f88d 3004 	strb.w	r3, [sp, #4]
 80026ea:	f88d 3006 	strb.w	r3, [sp, #6]
 80026ee:	4628      	mov	r0, r5
 80026f0:	2300      	movs	r3, #0
 80026f2:	4669      	mov	r1, sp
 80026f4:	f88d 2005 	strb.w	r2, [sp, #5]
 80026f8:	f88d 3007 	strb.w	r3, [sp, #7]
 80026fc:	9400      	str	r4, [sp, #0]
 80026fe:	f000 fb5d 	bl	8002dbc <GPIO_Init>
 8002702:	4628      	mov	r0, r5
 8002704:	4621      	mov	r1, r4
 8002706:	f000 fb9f 	bl	8002e48 <GPIO_ResetBits>
 800270a:	f7ff ffe1 	bl	80026d0 <i2c_delay>
 800270e:	b003      	add	sp, #12
 8002710:	bd30      	pop	{r4, r5, pc}
 8002712:	bf00      	nop
 8002714:	48000400 	.word	0x48000400

08002718 <SetHighSDA>:
 8002718:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800271a:	4d0d      	ldr	r5, [pc, #52]	; (8002750 <SetHighSDA+0x38>)
 800271c:	2203      	movs	r2, #3
 800271e:	2300      	movs	r3, #0
 8002720:	2480      	movs	r4, #128	; 0x80
 8002722:	f88d 2005 	strb.w	r2, [sp, #5]
 8002726:	4628      	mov	r0, r5
 8002728:	2201      	movs	r2, #1
 800272a:	4669      	mov	r1, sp
 800272c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002730:	f88d 2006 	strb.w	r2, [sp, #6]
 8002734:	f88d 3007 	strb.w	r3, [sp, #7]
 8002738:	9400      	str	r4, [sp, #0]
 800273a:	f000 fb3f 	bl	8002dbc <GPIO_Init>
 800273e:	4628      	mov	r0, r5
 8002740:	4621      	mov	r1, r4
 8002742:	f000 fb7d 	bl	8002e40 <GPIO_SetBits>
 8002746:	f7ff ffc3 	bl	80026d0 <i2c_delay>
 800274a:	b003      	add	sp, #12
 800274c:	bd30      	pop	{r4, r5, pc}
 800274e:	bf00      	nop
 8002750:	48000400 	.word	0x48000400

08002754 <SetLowSCL>:
 8002754:	b508      	push	{r3, lr}
 8002756:	4804      	ldr	r0, [pc, #16]	; (8002768 <SetLowSCL+0x14>)
 8002758:	2140      	movs	r1, #64	; 0x40
 800275a:	f000 fb75 	bl	8002e48 <GPIO_ResetBits>
 800275e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002762:	f7ff bfb5 	b.w	80026d0 <i2c_delay>
 8002766:	bf00      	nop
 8002768:	48000400 	.word	0x48000400

0800276c <SetHighSCL>:
 800276c:	b508      	push	{r3, lr}
 800276e:	4804      	ldr	r0, [pc, #16]	; (8002780 <SetHighSCL+0x14>)
 8002770:	2140      	movs	r1, #64	; 0x40
 8002772:	f000 fb65 	bl	8002e40 <GPIO_SetBits>
 8002776:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800277a:	f7ff bfa9 	b.w	80026d0 <i2c_delay>
 800277e:	bf00      	nop
 8002780:	48000400 	.word	0x48000400

08002784 <i2c_0_init>:
 8002784:	b507      	push	{r0, r1, r2, lr}
 8002786:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800278a:	2101      	movs	r1, #1
 800278c:	f7ff fc80 	bl	8002090 <RCC_AHBPeriphClockCmd>
 8002790:	23c0      	movs	r3, #192	; 0xc0
 8002792:	9300      	str	r3, [sp, #0]
 8002794:	2301      	movs	r3, #1
 8002796:	2203      	movs	r2, #3
 8002798:	480a      	ldr	r0, [pc, #40]	; (80027c4 <i2c_0_init+0x40>)
 800279a:	f88d 3004 	strb.w	r3, [sp, #4]
 800279e:	4669      	mov	r1, sp
 80027a0:	f88d 3006 	strb.w	r3, [sp, #6]
 80027a4:	2300      	movs	r3, #0
 80027a6:	f88d 2005 	strb.w	r2, [sp, #5]
 80027aa:	f88d 3007 	strb.w	r3, [sp, #7]
 80027ae:	f000 fb05 	bl	8002dbc <GPIO_Init>
 80027b2:	f7ff ffdb 	bl	800276c <SetHighSCL>
 80027b6:	f7ff ff91 	bl	80026dc <SetLowSDA>
 80027ba:	f7ff ffad 	bl	8002718 <SetHighSDA>
 80027be:	b003      	add	sp, #12
 80027c0:	f85d fb04 	ldr.w	pc, [sp], #4
 80027c4:	48000400 	.word	0x48000400

080027c8 <i2cStart>:
 80027c8:	b508      	push	{r3, lr}
 80027ca:	f7ff ffcf 	bl	800276c <SetHighSCL>
 80027ce:	f7ff ffa3 	bl	8002718 <SetHighSDA>
 80027d2:	f7ff ffcb 	bl	800276c <SetHighSCL>
 80027d6:	f7ff ff81 	bl	80026dc <SetLowSDA>
 80027da:	f7ff ffbb 	bl	8002754 <SetLowSCL>
 80027de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80027e2:	f7ff bf99 	b.w	8002718 <SetHighSDA>

080027e6 <i2cStop>:
 80027e6:	b508      	push	{r3, lr}
 80027e8:	f7ff ffb4 	bl	8002754 <SetLowSCL>
 80027ec:	f7ff ff76 	bl	80026dc <SetLowSDA>
 80027f0:	f7ff ffbc 	bl	800276c <SetHighSCL>
 80027f4:	f7ff ff72 	bl	80026dc <SetLowSDA>
 80027f8:	f7ff ffb8 	bl	800276c <SetHighSCL>
 80027fc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002800:	f7ff bf8a 	b.w	8002718 <SetHighSDA>

08002804 <i2cWrite>:
 8002804:	b538      	push	{r3, r4, r5, lr}
 8002806:	4605      	mov	r5, r0
 8002808:	2408      	movs	r4, #8
 800280a:	f7ff ffa3 	bl	8002754 <SetLowSCL>
 800280e:	062b      	lsls	r3, r5, #24
 8002810:	d502      	bpl.n	8002818 <i2cWrite+0x14>
 8002812:	f7ff ff81 	bl	8002718 <SetHighSDA>
 8002816:	e001      	b.n	800281c <i2cWrite+0x18>
 8002818:	f7ff ff60 	bl	80026dc <SetLowSDA>
 800281c:	3c01      	subs	r4, #1
 800281e:	f7ff ffa5 	bl	800276c <SetHighSCL>
 8002822:	006d      	lsls	r5, r5, #1
 8002824:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8002828:	b2ed      	uxtb	r5, r5
 800282a:	d1ee      	bne.n	800280a <i2cWrite+0x6>
 800282c:	f7ff ff92 	bl	8002754 <SetLowSCL>
 8002830:	f7ff ff72 	bl	8002718 <SetHighSDA>
 8002834:	f7ff ff9a 	bl	800276c <SetHighSCL>
 8002838:	4b05      	ldr	r3, [pc, #20]	; (8002850 <i2cWrite+0x4c>)
 800283a:	8a1c      	ldrh	r4, [r3, #16]
 800283c:	b2a4      	uxth	r4, r4
 800283e:	f7ff ff89 	bl	8002754 <SetLowSCL>
 8002842:	f7ff ff45 	bl	80026d0 <i2c_delay>
 8002846:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800284a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800284e:	bd38      	pop	{r3, r4, r5, pc}
 8002850:	48000400 	.word	0x48000400

08002854 <i2cRead>:
 8002854:	b570      	push	{r4, r5, r6, lr}
 8002856:	4606      	mov	r6, r0
 8002858:	f7ff ff7c 	bl	8002754 <SetLowSCL>
 800285c:	f7ff ff5c 	bl	8002718 <SetHighSDA>
 8002860:	2508      	movs	r5, #8
 8002862:	2400      	movs	r4, #0
 8002864:	f7ff ff82 	bl	800276c <SetHighSCL>
 8002868:	4b0d      	ldr	r3, [pc, #52]	; (80028a0 <i2cRead+0x4c>)
 800286a:	8a1b      	ldrh	r3, [r3, #16]
 800286c:	0064      	lsls	r4, r4, #1
 800286e:	061b      	lsls	r3, r3, #24
 8002870:	b2e4      	uxtb	r4, r4
 8002872:	bf48      	it	mi
 8002874:	3401      	addmi	r4, #1
 8002876:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800287a:	bf48      	it	mi
 800287c:	b2e4      	uxtbmi	r4, r4
 800287e:	f7ff ff69 	bl	8002754 <SetLowSCL>
 8002882:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002886:	d1ed      	bne.n	8002864 <i2cRead+0x10>
 8002888:	b10e      	cbz	r6, 800288e <i2cRead+0x3a>
 800288a:	f7ff ff27 	bl	80026dc <SetLowSDA>
 800288e:	f7ff ff6d 	bl	800276c <SetHighSCL>
 8002892:	f7ff ff5f 	bl	8002754 <SetLowSCL>
 8002896:	f7ff ff1b 	bl	80026d0 <i2c_delay>
 800289a:	4620      	mov	r0, r4
 800289c:	bd70      	pop	{r4, r5, r6, pc}
 800289e:	bf00      	nop
 80028a0:	48000400 	.word	0x48000400

080028a4 <i2c_write_reg>:
 80028a4:	b570      	push	{r4, r5, r6, lr}
 80028a6:	4606      	mov	r6, r0
 80028a8:	460d      	mov	r5, r1
 80028aa:	4614      	mov	r4, r2
 80028ac:	f7ff ff8c 	bl	80027c8 <i2cStart>
 80028b0:	4630      	mov	r0, r6
 80028b2:	f7ff ffa7 	bl	8002804 <i2cWrite>
 80028b6:	4628      	mov	r0, r5
 80028b8:	f7ff ffa4 	bl	8002804 <i2cWrite>
 80028bc:	4620      	mov	r0, r4
 80028be:	f7ff ffa1 	bl	8002804 <i2cWrite>
 80028c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80028c6:	f7ff bf8e 	b.w	80027e6 <i2cStop>

080028ca <i2c_read_reg>:
 80028ca:	b538      	push	{r3, r4, r5, lr}
 80028cc:	4604      	mov	r4, r0
 80028ce:	460d      	mov	r5, r1
 80028d0:	f7ff ff7a 	bl	80027c8 <i2cStart>
 80028d4:	4620      	mov	r0, r4
 80028d6:	f7ff ff95 	bl	8002804 <i2cWrite>
 80028da:	4628      	mov	r0, r5
 80028dc:	f7ff ff92 	bl	8002804 <i2cWrite>
 80028e0:	f7ff ff72 	bl	80027c8 <i2cStart>
 80028e4:	f044 0001 	orr.w	r0, r4, #1
 80028e8:	f7ff ff8c 	bl	8002804 <i2cWrite>
 80028ec:	2000      	movs	r0, #0
 80028ee:	f7ff ffb1 	bl	8002854 <i2cRead>
 80028f2:	4604      	mov	r4, r0
 80028f4:	f7ff ff77 	bl	80027e6 <i2cStop>
 80028f8:	4620      	mov	r0, r4
 80028fa:	bd38      	pop	{r3, r4, r5, pc}

080028fc <SystemInit>:
 80028fc:	4a39      	ldr	r2, [pc, #228]	; (80029e4 <SystemInit+0xe8>)
 80028fe:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002902:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002906:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800290a:	4b37      	ldr	r3, [pc, #220]	; (80029e8 <SystemInit+0xec>)
 800290c:	681a      	ldr	r2, [r3, #0]
 800290e:	f042 0201 	orr.w	r2, r2, #1
 8002912:	601a      	str	r2, [r3, #0]
 8002914:	6859      	ldr	r1, [r3, #4]
 8002916:	4a35      	ldr	r2, [pc, #212]	; (80029ec <SystemInit+0xf0>)
 8002918:	400a      	ands	r2, r1
 800291a:	605a      	str	r2, [r3, #4]
 800291c:	681a      	ldr	r2, [r3, #0]
 800291e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002922:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002926:	601a      	str	r2, [r3, #0]
 8002928:	681a      	ldr	r2, [r3, #0]
 800292a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800292e:	601a      	str	r2, [r3, #0]
 8002930:	685a      	ldr	r2, [r3, #4]
 8002932:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002936:	605a      	str	r2, [r3, #4]
 8002938:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800293a:	f022 020f 	bic.w	r2, r2, #15
 800293e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002940:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002942:	4a2b      	ldr	r2, [pc, #172]	; (80029f0 <SystemInit+0xf4>)
 8002944:	b082      	sub	sp, #8
 8002946:	400a      	ands	r2, r1
 8002948:	631a      	str	r2, [r3, #48]	; 0x30
 800294a:	2200      	movs	r2, #0
 800294c:	609a      	str	r2, [r3, #8]
 800294e:	9200      	str	r2, [sp, #0]
 8002950:	9201      	str	r2, [sp, #4]
 8002952:	681a      	ldr	r2, [r3, #0]
 8002954:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002958:	601a      	str	r2, [r3, #0]
 800295a:	681a      	ldr	r2, [r3, #0]
 800295c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002960:	9201      	str	r2, [sp, #4]
 8002962:	9a00      	ldr	r2, [sp, #0]
 8002964:	3201      	adds	r2, #1
 8002966:	9200      	str	r2, [sp, #0]
 8002968:	9a01      	ldr	r2, [sp, #4]
 800296a:	b91a      	cbnz	r2, 8002974 <SystemInit+0x78>
 800296c:	9a00      	ldr	r2, [sp, #0]
 800296e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002972:	d1f2      	bne.n	800295a <SystemInit+0x5e>
 8002974:	681a      	ldr	r2, [r3, #0]
 8002976:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800297a:	bf18      	it	ne
 800297c:	2201      	movne	r2, #1
 800297e:	9201      	str	r2, [sp, #4]
 8002980:	9a01      	ldr	r2, [sp, #4]
 8002982:	2a01      	cmp	r2, #1
 8002984:	d005      	beq.n	8002992 <SystemInit+0x96>
 8002986:	4b17      	ldr	r3, [pc, #92]	; (80029e4 <SystemInit+0xe8>)
 8002988:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800298c:	609a      	str	r2, [r3, #8]
 800298e:	b002      	add	sp, #8
 8002990:	4770      	bx	lr
 8002992:	4a18      	ldr	r2, [pc, #96]	; (80029f4 <SystemInit+0xf8>)
 8002994:	2112      	movs	r1, #18
 8002996:	6011      	str	r1, [r2, #0]
 8002998:	685a      	ldr	r2, [r3, #4]
 800299a:	605a      	str	r2, [r3, #4]
 800299c:	685a      	ldr	r2, [r3, #4]
 800299e:	605a      	str	r2, [r3, #4]
 80029a0:	685a      	ldr	r2, [r3, #4]
 80029a2:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80029a6:	605a      	str	r2, [r3, #4]
 80029a8:	685a      	ldr	r2, [r3, #4]
 80029aa:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80029ae:	605a      	str	r2, [r3, #4]
 80029b0:	685a      	ldr	r2, [r3, #4]
 80029b2:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80029b6:	605a      	str	r2, [r3, #4]
 80029b8:	681a      	ldr	r2, [r3, #0]
 80029ba:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80029be:	601a      	str	r2, [r3, #0]
 80029c0:	6819      	ldr	r1, [r3, #0]
 80029c2:	4a09      	ldr	r2, [pc, #36]	; (80029e8 <SystemInit+0xec>)
 80029c4:	0189      	lsls	r1, r1, #6
 80029c6:	d5fb      	bpl.n	80029c0 <SystemInit+0xc4>
 80029c8:	6851      	ldr	r1, [r2, #4]
 80029ca:	f021 0103 	bic.w	r1, r1, #3
 80029ce:	6051      	str	r1, [r2, #4]
 80029d0:	6851      	ldr	r1, [r2, #4]
 80029d2:	f041 0102 	orr.w	r1, r1, #2
 80029d6:	6051      	str	r1, [r2, #4]
 80029d8:	685a      	ldr	r2, [r3, #4]
 80029da:	f002 020c 	and.w	r2, r2, #12
 80029de:	2a08      	cmp	r2, #8
 80029e0:	d1fa      	bne.n	80029d8 <SystemInit+0xdc>
 80029e2:	e7d0      	b.n	8002986 <SystemInit+0x8a>
 80029e4:	e000ed00 	.word	0xe000ed00
 80029e8:	40021000 	.word	0x40021000
 80029ec:	f87fc00c 	.word	0xf87fc00c
 80029f0:	ff00fccc 	.word	0xff00fccc
 80029f4:	40022000 	.word	0x40022000

080029f8 <sys_tick_init>:
 80029f8:	4b06      	ldr	r3, [pc, #24]	; (8002a14 <sys_tick_init+0x1c>)
 80029fa:	f244 6250 	movw	r2, #18000	; 0x4650
 80029fe:	605a      	str	r2, [r3, #4]
 8002a00:	4a05      	ldr	r2, [pc, #20]	; (8002a18 <sys_tick_init+0x20>)
 8002a02:	21f0      	movs	r1, #240	; 0xf0
 8002a04:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002a08:	2200      	movs	r2, #0
 8002a0a:	609a      	str	r2, [r3, #8]
 8002a0c:	2207      	movs	r2, #7
 8002a0e:	601a      	str	r2, [r3, #0]
 8002a10:	4770      	bx	lr
 8002a12:	bf00      	nop
 8002a14:	e000e010 	.word	0xe000e010
 8002a18:	e000ed00 	.word	0xe000ed00

08002a1c <sleep>:
 8002a1c:	bf30      	wfi
 8002a1e:	4770      	bx	lr

08002a20 <core_yield>:
 8002a20:	bf00      	nop
 8002a22:	4770      	bx	lr

08002a24 <sytem_clock_init>:
 8002a24:	f7ff bf6a 	b.w	80028fc <SystemInit>

08002a28 <pwm_set>:
 8002a28:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002a2c:	b086      	sub	sp, #24
 8002a2e:	2370      	movs	r3, #112	; 0x70
 8002a30:	9301      	str	r3, [sp, #4]
 8002a32:	2301      	movs	r3, #1
 8002a34:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002a38:	2304      	movs	r3, #4
 8002a3a:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002a3e:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002aa4 <pwm_set+0x7c>
 8002a42:	4c17      	ldr	r4, [pc, #92]	; (8002aa0 <pwm_set+0x78>)
 8002a44:	2302      	movs	r3, #2
 8002a46:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002a4a:	2300      	movs	r3, #0
 8002a4c:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002a50:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002a54:	f242 7710 	movw	r7, #10000	; 0x2710
 8002a58:	f8d8 3000 	ldr.w	r3, [r8]
 8002a5c:	fbb3 f3f7 	udiv	r3, r3, r7
 8002a60:	3b02      	subs	r3, #2
 8002a62:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002a66:	460e      	mov	r6, r1
 8002a68:	2564      	movs	r5, #100	; 0x64
 8002a6a:	a901      	add	r1, sp, #4
 8002a6c:	4358      	muls	r0, r3
 8002a6e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002a72:	4620      	mov	r0, r4
 8002a74:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002a78:	9303      	str	r3, [sp, #12]
 8002a7a:	f7ff fb91 	bl	80021a0 <TIM_OC1Init>
 8002a7e:	f8d8 1000 	ldr.w	r1, [r8]
 8002a82:	fbb1 f1f7 	udiv	r1, r1, r7
 8002a86:	3902      	subs	r1, #2
 8002a88:	4371      	muls	r1, r6
 8002a8a:	4620      	mov	r0, r4
 8002a8c:	fbb1 f1f5 	udiv	r1, r1, r5
 8002a90:	9103      	str	r1, [sp, #12]
 8002a92:	a901      	add	r1, sp, #4
 8002a94:	f7ff fbca 	bl	800222c <TIM_OC2Init>
 8002a98:	b006      	add	sp, #24
 8002a9a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a9e:	bf00      	nop
 8002aa0:	40012c00 	.word	0x40012c00
 8002aa4:	200000f8 	.word	0x200000f8

08002aa8 <pwm_init>:
 8002aa8:	b530      	push	{r4, r5, lr}
 8002aaa:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002aae:	b087      	sub	sp, #28
 8002ab0:	2101      	movs	r1, #1
 8002ab2:	f7ff fafb 	bl	80020ac <RCC_APB2PeriphClockCmd>
 8002ab6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002aba:	2101      	movs	r1, #1
 8002abc:	f7ff fae8 	bl	8002090 <RCC_AHBPeriphClockCmd>
 8002ac0:	4c1d      	ldr	r4, [pc, #116]	; (8002b38 <pwm_init+0x90>)
 8002ac2:	4d1e      	ldr	r5, [pc, #120]	; (8002b3c <pwm_init+0x94>)
 8002ac4:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002ac8:	9301      	str	r3, [sp, #4]
 8002aca:	2302      	movs	r3, #2
 8002acc:	f88d 3008 	strb.w	r3, [sp, #8]
 8002ad0:	4620      	mov	r0, r4
 8002ad2:	2303      	movs	r3, #3
 8002ad4:	a901      	add	r1, sp, #4
 8002ad6:	f88d 3009 	strb.w	r3, [sp, #9]
 8002ada:	f000 f96f 	bl	8002dbc <GPIO_Init>
 8002ade:	4620      	mov	r0, r4
 8002ae0:	210d      	movs	r1, #13
 8002ae2:	2206      	movs	r2, #6
 8002ae4:	f000 f9b4 	bl	8002e50 <GPIO_PinAFConfig>
 8002ae8:	4620      	mov	r0, r4
 8002aea:	210e      	movs	r1, #14
 8002aec:	2206      	movs	r2, #6
 8002aee:	f000 f9af 	bl	8002e50 <GPIO_PinAFConfig>
 8002af2:	4b13      	ldr	r3, [pc, #76]	; (8002b40 <pwm_init+0x98>)
 8002af4:	2400      	movs	r4, #0
 8002af6:	f242 7210 	movw	r2, #10000	; 0x2710
 8002afa:	4628      	mov	r0, r5
 8002afc:	a903      	add	r1, sp, #12
 8002afe:	681b      	ldr	r3, [r3, #0]
 8002b00:	fbb3 f3f2 	udiv	r3, r3, r2
 8002b04:	3b01      	subs	r3, #1
 8002b06:	9304      	str	r3, [sp, #16]
 8002b08:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002b0c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002b10:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002b14:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002b18:	f7ff fae4 	bl	80020e4 <TIM_TimeBaseInit>
 8002b1c:	4620      	mov	r0, r4
 8002b1e:	4621      	mov	r1, r4
 8002b20:	f7ff ff82 	bl	8002a28 <pwm_set>
 8002b24:	4628      	mov	r0, r5
 8002b26:	2101      	movs	r1, #1
 8002b28:	f7ff fb2c 	bl	8002184 <TIM_Cmd>
 8002b2c:	4628      	mov	r0, r5
 8002b2e:	2101      	movs	r1, #1
 8002b30:	f7ff fbba 	bl	80022a8 <TIM_CtrlPWMOutputs>
 8002b34:	b007      	add	sp, #28
 8002b36:	bd30      	pop	{r4, r5, pc}
 8002b38:	48000400 	.word	0x48000400
 8002b3c:	40012c00 	.word	0x40012c00
 8002b40:	200000f8 	.word	0x200000f8

08002b44 <drv8834_run>:
 8002b44:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8002b48:	1e03      	subs	r3, r0, #0
 8002b4a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b4e:	bfce      	itee	gt
 8002b50:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002b52:	6190      	strle	r0, [r2, #24]
 8002b54:	425b      	negle	r3, r3
 8002b56:	4a09      	ldr	r2, [pc, #36]	; (8002b7c <drv8834_run+0x38>)
 8002b58:	2900      	cmp	r1, #0
 8002b5a:	bfd8      	it	le
 8002b5c:	4249      	negle	r1, r1
 8002b5e:	f04f 0020 	mov.w	r0, #32
 8002b62:	bfcc      	ite	gt
 8002b64:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002b66:	6190      	strle	r0, [r2, #24]
 8002b68:	2964      	cmp	r1, #100	; 0x64
 8002b6a:	bfa8      	it	ge
 8002b6c:	2164      	movge	r1, #100	; 0x64
 8002b6e:	2b64      	cmp	r3, #100	; 0x64
 8002b70:	bfa8      	it	ge
 8002b72:	2364      	movge	r3, #100	; 0x64
 8002b74:	4608      	mov	r0, r1
 8002b76:	4619      	mov	r1, r3
 8002b78:	f7ff bf56 	b.w	8002a28 <pwm_set>
 8002b7c:	48000400 	.word	0x48000400

08002b80 <drv8834_init>:
 8002b80:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002b84:	4f1d      	ldr	r7, [pc, #116]	; (8002bfc <drv8834_init+0x7c>)
 8002b86:	2400      	movs	r4, #0
 8002b88:	2601      	movs	r6, #1
 8002b8a:	2503      	movs	r5, #3
 8002b8c:	f04f 0810 	mov.w	r8, #16
 8002b90:	4638      	mov	r0, r7
 8002b92:	4669      	mov	r1, sp
 8002b94:	f8cd 8000 	str.w	r8, [sp]
 8002b98:	f88d 6004 	strb.w	r6, [sp, #4]
 8002b9c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ba0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002ba4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ba8:	f000 f908 	bl	8002dbc <GPIO_Init>
 8002bac:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002bb0:	2320      	movs	r3, #32
 8002bb2:	4638      	mov	r0, r7
 8002bb4:	4669      	mov	r1, sp
 8002bb6:	9300      	str	r3, [sp, #0]
 8002bb8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002bbc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002bc0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bc4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bc8:	f000 f8f8 	bl	8002dbc <GPIO_Init>
 8002bcc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002bd0:	4669      	mov	r1, sp
 8002bd2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002bd6:	9300      	str	r3, [sp, #0]
 8002bd8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002bdc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002be0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002be4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002be8:	f000 f8e8 	bl	8002dbc <GPIO_Init>
 8002bec:	4620      	mov	r0, r4
 8002bee:	4621      	mov	r1, r4
 8002bf0:	f7ff ffa8 	bl	8002b44 <drv8834_run>
 8002bf4:	b002      	add	sp, #8
 8002bf6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002bfa:	bf00      	nop
 8002bfc:	48000400 	.word	0x48000400

08002c00 <NVIC_Init>:
 8002c00:	b510      	push	{r4, lr}
 8002c02:	bf00      	nop
 8002c04:	bf00      	nop
 8002c06:	bf00      	nop
 8002c08:	78c2      	ldrb	r2, [r0, #3]
 8002c0a:	7803      	ldrb	r3, [r0, #0]
 8002c0c:	b312      	cbz	r2, 8002c54 <NVIC_Init+0x54>
 8002c0e:	4a17      	ldr	r2, [pc, #92]	; (8002c6c <NVIC_Init+0x6c>)
 8002c10:	68d1      	ldr	r1, [r2, #12]
 8002c12:	7842      	ldrb	r2, [r0, #1]
 8002c14:	43c9      	mvns	r1, r1
 8002c16:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002c1a:	f1c1 0404 	rsb	r4, r1, #4
 8002c1e:	b2e4      	uxtb	r4, r4
 8002c20:	40a2      	lsls	r2, r4
 8002c22:	b2d4      	uxtb	r4, r2
 8002c24:	220f      	movs	r2, #15
 8002c26:	410a      	asrs	r2, r1
 8002c28:	7881      	ldrb	r1, [r0, #2]
 8002c2a:	400a      	ands	r2, r1
 8002c2c:	4322      	orrs	r2, r4
 8002c2e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002c32:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002c36:	0112      	lsls	r2, r2, #4
 8002c38:	b2d2      	uxtb	r2, r2
 8002c3a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002c3e:	7803      	ldrb	r3, [r0, #0]
 8002c40:	2201      	movs	r2, #1
 8002c42:	0959      	lsrs	r1, r3, #5
 8002c44:	f003 031f 	and.w	r3, r3, #31
 8002c48:	fa02 f303 	lsl.w	r3, r2, r3
 8002c4c:	4a08      	ldr	r2, [pc, #32]	; (8002c70 <NVIC_Init+0x70>)
 8002c4e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002c52:	bd10      	pop	{r4, pc}
 8002c54:	095a      	lsrs	r2, r3, #5
 8002c56:	2101      	movs	r1, #1
 8002c58:	f003 031f 	and.w	r3, r3, #31
 8002c5c:	4099      	lsls	r1, r3
 8002c5e:	f102 0320 	add.w	r3, r2, #32
 8002c62:	4a03      	ldr	r2, [pc, #12]	; (8002c70 <NVIC_Init+0x70>)
 8002c64:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002c68:	bd10      	pop	{r4, pc}
 8002c6a:	bf00      	nop
 8002c6c:	e000ed00 	.word	0xe000ed00
 8002c70:	e000e100 	.word	0xe000e100

08002c74 <lib_low_level_init>:
 8002c74:	b508      	push	{r3, lr}
 8002c76:	f7ff fed5 	bl	8002a24 <sytem_clock_init>
 8002c7a:	f000 f969 	bl	8002f50 <gpio_init>
 8002c7e:	f7ff fca1 	bl	80025c4 <uart_init>
 8002c82:	f7ff fb21 	bl	80022c8 <timer_init>
 8002c86:	f7ff ff0f 	bl	8002aa8 <pwm_init>
 8002c8a:	f7ff ff79 	bl	8002b80 <drv8834_init>
 8002c8e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002c92:	f7ff bd77 	b.w	8002784 <i2c_0_init>
	...

08002c98 <EXTI_Init>:
 8002c98:	b570      	push	{r4, r5, r6, lr}
 8002c9a:	bf00      	nop
 8002c9c:	bf00      	nop
 8002c9e:	bf00      	nop
 8002ca0:	bf00      	nop
 8002ca2:	7982      	ldrb	r2, [r0, #6]
 8002ca4:	6803      	ldr	r3, [r0, #0]
 8002ca6:	7904      	ldrb	r4, [r0, #4]
 8002ca8:	2a00      	cmp	r2, #0
 8002caa:	d064      	beq.n	8002d76 <EXTI_Init+0xde>
 8002cac:	f023 011f 	bic.w	r1, r3, #31
 8002cb0:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002cb4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002cb8:	f003 021f 	and.w	r2, r3, #31
 8002cbc:	680d      	ldr	r5, [r1, #0]
 8002cbe:	2301      	movs	r3, #1
 8002cc0:	fa03 f202 	lsl.w	r2, r3, r2
 8002cc4:	ea25 0202 	bic.w	r2, r5, r2
 8002cc8:	600a      	str	r2, [r1, #0]
 8002cca:	6802      	ldr	r2, [r0, #0]
 8002ccc:	4d32      	ldr	r5, [pc, #200]	; (8002d98 <EXTI_Init+0x100>)
 8002cce:	f022 061f 	bic.w	r6, r2, #31
 8002cd2:	f002 021f 	and.w	r2, r2, #31
 8002cd6:	5971      	ldr	r1, [r6, r5]
 8002cd8:	fa03 f202 	lsl.w	r2, r3, r2
 8002cdc:	ea21 0202 	bic.w	r2, r1, r2
 8002ce0:	5172      	str	r2, [r6, r5]
 8002ce2:	6801      	ldr	r1, [r0, #0]
 8002ce4:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002ce8:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002cec:	f021 041f 	bic.w	r4, r1, #31
 8002cf0:	f001 011f 	and.w	r1, r1, #31
 8002cf4:	5915      	ldr	r5, [r2, r4]
 8002cf6:	fa03 f101 	lsl.w	r1, r3, r1
 8002cfa:	4329      	orrs	r1, r5
 8002cfc:	5111      	str	r1, [r2, r4]
 8002cfe:	6802      	ldr	r2, [r0, #0]
 8002d00:	4d26      	ldr	r5, [pc, #152]	; (8002d9c <EXTI_Init+0x104>)
 8002d02:	f022 041f 	bic.w	r4, r2, #31
 8002d06:	f002 021f 	and.w	r2, r2, #31
 8002d0a:	5961      	ldr	r1, [r4, r5]
 8002d0c:	fa03 f202 	lsl.w	r2, r3, r2
 8002d10:	ea21 0202 	bic.w	r2, r1, r2
 8002d14:	5162      	str	r2, [r4, r5]
 8002d16:	6802      	ldr	r2, [r0, #0]
 8002d18:	4c21      	ldr	r4, [pc, #132]	; (8002da0 <EXTI_Init+0x108>)
 8002d1a:	f022 061f 	bic.w	r6, r2, #31
 8002d1e:	f002 021f 	and.w	r2, r2, #31
 8002d22:	5931      	ldr	r1, [r6, r4]
 8002d24:	fa03 f202 	lsl.w	r2, r3, r2
 8002d28:	ea21 0202 	bic.w	r2, r1, r2
 8002d2c:	7941      	ldrb	r1, [r0, #5]
 8002d2e:	5132      	str	r2, [r6, r4]
 8002d30:	2910      	cmp	r1, #16
 8002d32:	6802      	ldr	r2, [r0, #0]
 8002d34:	d112      	bne.n	8002d5c <EXTI_Init+0xc4>
 8002d36:	f022 011f 	bic.w	r1, r2, #31
 8002d3a:	f002 021f 	and.w	r2, r2, #31
 8002d3e:	594e      	ldr	r6, [r1, r5]
 8002d40:	fa03 f202 	lsl.w	r2, r3, r2
 8002d44:	4332      	orrs	r2, r6
 8002d46:	514a      	str	r2, [r1, r5]
 8002d48:	6802      	ldr	r2, [r0, #0]
 8002d4a:	f022 011f 	bic.w	r1, r2, #31
 8002d4e:	f002 021f 	and.w	r2, r2, #31
 8002d52:	5908      	ldr	r0, [r1, r4]
 8002d54:	4093      	lsls	r3, r2
 8002d56:	4303      	orrs	r3, r0
 8002d58:	510b      	str	r3, [r1, r4]
 8002d5a:	bd70      	pop	{r4, r5, r6, pc}
 8002d5c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002d60:	f022 001f 	bic.w	r0, r2, #31
 8002d64:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002d68:	f002 021f 	and.w	r2, r2, #31
 8002d6c:	580c      	ldr	r4, [r1, r0]
 8002d6e:	4093      	lsls	r3, r2
 8002d70:	4323      	orrs	r3, r4
 8002d72:	500b      	str	r3, [r1, r0]
 8002d74:	bd70      	pop	{r4, r5, r6, pc}
 8002d76:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002d7a:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002d7e:	f023 041f 	bic.w	r4, r3, #31
 8002d82:	2001      	movs	r0, #1
 8002d84:	5911      	ldr	r1, [r2, r4]
 8002d86:	f003 031f 	and.w	r3, r3, #31
 8002d8a:	fa00 f303 	lsl.w	r3, r0, r3
 8002d8e:	ea21 0303 	bic.w	r3, r1, r3
 8002d92:	5113      	str	r3, [r2, r4]
 8002d94:	bd70      	pop	{r4, r5, r6, pc}
 8002d96:	bf00      	nop
 8002d98:	40010404 	.word	0x40010404
 8002d9c:	40010408 	.word	0x40010408
 8002da0:	4001040c 	.word	0x4001040c

08002da4 <EXTI_ClearITPendingBit>:
 8002da4:	f020 011f 	bic.w	r1, r0, #31
 8002da8:	2301      	movs	r3, #1
 8002daa:	f000 001f 	and.w	r0, r0, #31
 8002dae:	4a02      	ldr	r2, [pc, #8]	; (8002db8 <EXTI_ClearITPendingBit+0x14>)
 8002db0:	4083      	lsls	r3, r0
 8002db2:	508b      	str	r3, [r1, r2]
 8002db4:	4770      	bx	lr
 8002db6:	bf00      	nop
 8002db8:	40010414 	.word	0x40010414

08002dbc <GPIO_Init>:
 8002dbc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002dbe:	bf00      	nop
 8002dc0:	bf00      	nop
 8002dc2:	bf00      	nop
 8002dc4:	bf00      	nop
 8002dc6:	2300      	movs	r3, #0
 8002dc8:	680e      	ldr	r6, [r1, #0]
 8002dca:	461c      	mov	r4, r3
 8002dcc:	2501      	movs	r5, #1
 8002dce:	40a5      	lsls	r5, r4
 8002dd0:	ea05 0e06 	and.w	lr, r5, r6
 8002dd4:	45ae      	cmp	lr, r5
 8002dd6:	d12d      	bne.n	8002e34 <GPIO_Init+0x78>
 8002dd8:	790f      	ldrb	r7, [r1, #4]
 8002dda:	1e7a      	subs	r2, r7, #1
 8002ddc:	2a01      	cmp	r2, #1
 8002dde:	d817      	bhi.n	8002e10 <GPIO_Init+0x54>
 8002de0:	bf00      	nop
 8002de2:	2203      	movs	r2, #3
 8002de4:	6885      	ldr	r5, [r0, #8]
 8002de6:	409a      	lsls	r2, r3
 8002de8:	ea25 0202 	bic.w	r2, r5, r2
 8002dec:	6082      	str	r2, [r0, #8]
 8002dee:	794d      	ldrb	r5, [r1, #5]
 8002df0:	6882      	ldr	r2, [r0, #8]
 8002df2:	409d      	lsls	r5, r3
 8002df4:	4315      	orrs	r5, r2
 8002df6:	6085      	str	r5, [r0, #8]
 8002df8:	bf00      	nop
 8002dfa:	8882      	ldrh	r2, [r0, #4]
 8002dfc:	b292      	uxth	r2, r2
 8002dfe:	ea22 020e 	bic.w	r2, r2, lr
 8002e02:	8082      	strh	r2, [r0, #4]
 8002e04:	798a      	ldrb	r2, [r1, #6]
 8002e06:	8885      	ldrh	r5, [r0, #4]
 8002e08:	40a2      	lsls	r2, r4
 8002e0a:	432a      	orrs	r2, r5
 8002e0c:	b292      	uxth	r2, r2
 8002e0e:	8082      	strh	r2, [r0, #4]
 8002e10:	2203      	movs	r2, #3
 8002e12:	6805      	ldr	r5, [r0, #0]
 8002e14:	409a      	lsls	r2, r3
 8002e16:	43d2      	mvns	r2, r2
 8002e18:	4015      	ands	r5, r2
 8002e1a:	6005      	str	r5, [r0, #0]
 8002e1c:	6805      	ldr	r5, [r0, #0]
 8002e1e:	409f      	lsls	r7, r3
 8002e20:	432f      	orrs	r7, r5
 8002e22:	6007      	str	r7, [r0, #0]
 8002e24:	68c7      	ldr	r7, [r0, #12]
 8002e26:	4017      	ands	r7, r2
 8002e28:	79ca      	ldrb	r2, [r1, #7]
 8002e2a:	fa02 f503 	lsl.w	r5, r2, r3
 8002e2e:	ea47 0205 	orr.w	r2, r7, r5
 8002e32:	60c2      	str	r2, [r0, #12]
 8002e34:	3401      	adds	r4, #1
 8002e36:	2c10      	cmp	r4, #16
 8002e38:	f103 0302 	add.w	r3, r3, #2
 8002e3c:	d1c6      	bne.n	8002dcc <GPIO_Init+0x10>
 8002e3e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002e40 <GPIO_SetBits>:
 8002e40:	bf00      	nop
 8002e42:	bf00      	nop
 8002e44:	6181      	str	r1, [r0, #24]
 8002e46:	4770      	bx	lr

08002e48 <GPIO_ResetBits>:
 8002e48:	bf00      	nop
 8002e4a:	bf00      	nop
 8002e4c:	8501      	strh	r1, [r0, #40]	; 0x28
 8002e4e:	4770      	bx	lr

08002e50 <GPIO_PinAFConfig>:
 8002e50:	b510      	push	{r4, lr}
 8002e52:	bf00      	nop
 8002e54:	bf00      	nop
 8002e56:	bf00      	nop
 8002e58:	f001 0307 	and.w	r3, r1, #7
 8002e5c:	08c9      	lsrs	r1, r1, #3
 8002e5e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002e62:	009b      	lsls	r3, r3, #2
 8002e64:	6a04      	ldr	r4, [r0, #32]
 8002e66:	210f      	movs	r1, #15
 8002e68:	4099      	lsls	r1, r3
 8002e6a:	ea24 0101 	bic.w	r1, r4, r1
 8002e6e:	6201      	str	r1, [r0, #32]
 8002e70:	6a01      	ldr	r1, [r0, #32]
 8002e72:	409a      	lsls	r2, r3
 8002e74:	430a      	orrs	r2, r1
 8002e76:	6202      	str	r2, [r0, #32]
 8002e78:	bd10      	pop	{r4, pc}
	...

08002e7c <EXTI9_5_IRQHandler>:
 8002e7c:	4a03      	ldr	r2, [pc, #12]	; (8002e8c <EXTI9_5_IRQHandler+0x10>)
 8002e7e:	6813      	ldr	r3, [r2, #0]
 8002e80:	2006      	movs	r0, #6
 8002e82:	3301      	adds	r3, #1
 8002e84:	6013      	str	r3, [r2, #0]
 8002e86:	f7ff bf8d 	b.w	8002da4 <EXTI_ClearITPendingBit>
 8002e8a:	bf00      	nop
 8002e8c:	20001098 	.word	0x20001098

08002e90 <EXTI15_10_IRQHandler>:
 8002e90:	4a03      	ldr	r2, [pc, #12]	; (8002ea0 <EXTI15_10_IRQHandler+0x10>)
 8002e92:	6813      	ldr	r3, [r2, #0]
 8002e94:	200c      	movs	r0, #12
 8002e96:	3301      	adds	r3, #1
 8002e98:	6013      	str	r3, [r2, #0]
 8002e9a:	f7ff bf83 	b.w	8002da4 <EXTI_ClearITPendingBit>
 8002e9e:	bf00      	nop
 8002ea0:	20001090 	.word	0x20001090

08002ea4 <led_on>:
 8002ea4:	0403      	lsls	r3, r0, #16
 8002ea6:	bf42      	ittt	mi
 8002ea8:	4b02      	ldrmi	r3, [pc, #8]	; (8002eb4 <led_on+0x10>)
 8002eaa:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002eae:	619a      	strmi	r2, [r3, #24]
 8002eb0:	4770      	bx	lr
 8002eb2:	bf00      	nop
 8002eb4:	48000400 	.word	0x48000400

08002eb8 <led_off>:
 8002eb8:	0403      	lsls	r3, r0, #16
 8002eba:	bf42      	ittt	mi
 8002ebc:	4b02      	ldrmi	r3, [pc, #8]	; (8002ec8 <led_off+0x10>)
 8002ebe:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002ec2:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002ec4:	4770      	bx	lr
 8002ec6:	bf00      	nop
 8002ec8:	48000400 	.word	0x48000400

08002ecc <get_key>:
 8002ecc:	4b02      	ldr	r3, [pc, #8]	; (8002ed8 <get_key+0xc>)
 8002ece:	8a18      	ldrh	r0, [r3, #16]
 8002ed0:	43c0      	mvns	r0, r0
 8002ed2:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002ed6:	4770      	bx	lr
 8002ed8:	48000400 	.word	0x48000400

08002edc <left_encoder_read>:
 8002edc:	b082      	sub	sp, #8
 8002ede:	b672      	cpsid	i
 8002ee0:	4b06      	ldr	r3, [pc, #24]	; (8002efc <left_encoder_read+0x20>)
 8002ee2:	681b      	ldr	r3, [r3, #0]
 8002ee4:	9301      	str	r3, [sp, #4]
 8002ee6:	b662      	cpsie	i
 8002ee8:	9801      	ldr	r0, [sp, #4]
 8002eea:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002eee:	4343      	muls	r3, r0
 8002ef0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002ef4:	fbb3 f0f0 	udiv	r0, r3, r0
 8002ef8:	b002      	add	sp, #8
 8002efa:	4770      	bx	lr
 8002efc:	20001098 	.word	0x20001098

08002f00 <right_encoder_read>:
 8002f00:	b082      	sub	sp, #8
 8002f02:	b672      	cpsid	i
 8002f04:	4b06      	ldr	r3, [pc, #24]	; (8002f20 <right_encoder_read+0x20>)
 8002f06:	681b      	ldr	r3, [r3, #0]
 8002f08:	9301      	str	r3, [sp, #4]
 8002f0a:	b662      	cpsie	i
 8002f0c:	9801      	ldr	r0, [sp, #4]
 8002f0e:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002f12:	4343      	muls	r3, r0
 8002f14:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002f18:	fbb3 f0f0 	udiv	r0, r3, r0
 8002f1c:	b002      	add	sp, #8
 8002f1e:	4770      	bx	lr
 8002f20:	20001090 	.word	0x20001090

08002f24 <encoder_get_distance>:
 8002f24:	b510      	push	{r4, lr}
 8002f26:	f7ff ffd9 	bl	8002edc <left_encoder_read>
 8002f2a:	4604      	mov	r4, r0
 8002f2c:	f7ff ffe8 	bl	8002f00 <right_encoder_read>
 8002f30:	4420      	add	r0, r4
 8002f32:	0840      	lsrs	r0, r0, #1
 8002f34:	bd10      	pop	{r4, pc}
	...

08002f38 <encoder_reset>:
 8002f38:	b672      	cpsid	i
 8002f3a:	4a03      	ldr	r2, [pc, #12]	; (8002f48 <encoder_reset+0x10>)
 8002f3c:	2300      	movs	r3, #0
 8002f3e:	6013      	str	r3, [r2, #0]
 8002f40:	4a02      	ldr	r2, [pc, #8]	; (8002f4c <encoder_reset+0x14>)
 8002f42:	6013      	str	r3, [r2, #0]
 8002f44:	b662      	cpsie	i
 8002f46:	4770      	bx	lr
 8002f48:	20001098 	.word	0x20001098
 8002f4c:	20001090 	.word	0x20001090

08002f50 <gpio_init>:
 8002f50:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002f54:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002f58:	b087      	sub	sp, #28
 8002f5a:	2101      	movs	r1, #1
 8002f5c:	f7ff f898 	bl	8002090 <RCC_AHBPeriphClockCmd>
 8002f60:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002f64:	2101      	movs	r1, #1
 8002f66:	f7ff f893 	bl	8002090 <RCC_AHBPeriphClockCmd>
 8002f6a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002f6e:	2101      	movs	r1, #1
 8002f70:	f7ff f88e 	bl	8002090 <RCC_AHBPeriphClockCmd>
 8002f74:	2400      	movs	r4, #0
 8002f76:	2603      	movs	r6, #3
 8002f78:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002f7c:	f04f 0801 	mov.w	r8, #1
 8002f80:	a902      	add	r1, sp, #8
 8002f82:	4846      	ldr	r0, [pc, #280]	; (800309c <gpio_init+0x14c>)
 8002f84:	9502      	str	r5, [sp, #8]
 8002f86:	f88d 800c 	strb.w	r8, [sp, #12]
 8002f8a:	f88d 400e 	strb.w	r4, [sp, #14]
 8002f8e:	f88d 600d 	strb.w	r6, [sp, #13]
 8002f92:	f88d 400f 	strb.w	r4, [sp, #15]
 8002f96:	f7ff ff11 	bl	8002dbc <GPIO_Init>
 8002f9a:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002f9e:	a902      	add	r1, sp, #8
 8002fa0:	483e      	ldr	r0, [pc, #248]	; (800309c <gpio_init+0x14c>)
 8002fa2:	9302      	str	r3, [sp, #8]
 8002fa4:	f88d 400c 	strb.w	r4, [sp, #12]
 8002fa8:	f88d 600d 	strb.w	r6, [sp, #13]
 8002fac:	f88d 400f 	strb.w	r4, [sp, #15]
 8002fb0:	4f3b      	ldr	r7, [pc, #236]	; (80030a0 <gpio_init+0x150>)
 8002fb2:	f7ff ff03 	bl	8002dbc <GPIO_Init>
 8002fb6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002fba:	9302      	str	r3, [sp, #8]
 8002fbc:	a902      	add	r1, sp, #8
 8002fbe:	2302      	movs	r3, #2
 8002fc0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002fc4:	603c      	str	r4, [r7, #0]
 8002fc6:	f88d 400c 	strb.w	r4, [sp, #12]
 8002fca:	f88d 600d 	strb.w	r6, [sp, #13]
 8002fce:	f88d 300f 	strb.w	r3, [sp, #15]
 8002fd2:	f7ff fef3 	bl	8002dbc <GPIO_Init>
 8002fd6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002fda:	2401      	movs	r4, #1
 8002fdc:	8a1b      	ldrh	r3, [r3, #16]
 8002fde:	4831      	ldr	r0, [pc, #196]	; (80030a4 <gpio_init+0x154>)
 8002fe0:	055b      	lsls	r3, r3, #21
 8002fe2:	4b2e      	ldr	r3, [pc, #184]	; (800309c <gpio_init+0x14c>)
 8002fe4:	bf48      	it	mi
 8002fe6:	f8c7 8000 	strmi.w	r8, [r7]
 8002fea:	2600      	movs	r6, #0
 8002fec:	619d      	str	r5, [r3, #24]
 8002fee:	a902      	add	r1, sp, #8
 8002ff0:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002ff4:	9302      	str	r3, [sp, #8]
 8002ff6:	f88d 600c 	strb.w	r6, [sp, #12]
 8002ffa:	f88d 400f 	strb.w	r4, [sp, #15]
 8002ffe:	f7ff fedd 	bl	8002dbc <GPIO_Init>
 8003002:	4620      	mov	r0, r4
 8003004:	4621      	mov	r1, r4
 8003006:	f7ff f851 	bl	80020ac <RCC_APB2PeriphClockCmd>
 800300a:	f04f 0910 	mov.w	r9, #16
 800300e:	2106      	movs	r1, #6
 8003010:	2002      	movs	r0, #2
 8003012:	f000 f88d 	bl	8003130 <SYSCFG_EXTILineConfig>
 8003016:	f04f 0806 	mov.w	r8, #6
 800301a:	eb0d 0009 	add.w	r0, sp, r9
 800301e:	250f      	movs	r5, #15
 8003020:	f8cd 8010 	str.w	r8, [sp, #16]
 8003024:	f88d 6014 	strb.w	r6, [sp, #20]
 8003028:	f88d 9015 	strb.w	r9, [sp, #21]
 800302c:	f88d 4016 	strb.w	r4, [sp, #22]
 8003030:	f7ff fe32 	bl	8002c98 <EXTI_Init>
 8003034:	2317      	movs	r3, #23
 8003036:	a801      	add	r0, sp, #4
 8003038:	f88d 3004 	strb.w	r3, [sp, #4]
 800303c:	f88d 5005 	strb.w	r5, [sp, #5]
 8003040:	f88d 5006 	strb.w	r5, [sp, #6]
 8003044:	f88d 4007 	strb.w	r4, [sp, #7]
 8003048:	f7ff fdda 	bl	8002c00 <NVIC_Init>
 800304c:	210c      	movs	r1, #12
 800304e:	2002      	movs	r0, #2
 8003050:	f000 f86e 	bl	8003130 <SYSCFG_EXTILineConfig>
 8003054:	270c      	movs	r7, #12
 8003056:	eb0d 0009 	add.w	r0, sp, r9
 800305a:	9704      	str	r7, [sp, #16]
 800305c:	f88d 6014 	strb.w	r6, [sp, #20]
 8003060:	f88d 9015 	strb.w	r9, [sp, #21]
 8003064:	f88d 4016 	strb.w	r4, [sp, #22]
 8003068:	f7ff fe16 	bl	8002c98 <EXTI_Init>
 800306c:	2328      	movs	r3, #40	; 0x28
 800306e:	a801      	add	r0, sp, #4
 8003070:	f88d 3004 	strb.w	r3, [sp, #4]
 8003074:	f88d 5005 	strb.w	r5, [sp, #5]
 8003078:	f88d 5006 	strb.w	r5, [sp, #6]
 800307c:	f88d 4007 	strb.w	r4, [sp, #7]
 8003080:	f7ff fdbe 	bl	8002c00 <NVIC_Init>
 8003084:	4640      	mov	r0, r8
 8003086:	f7ff fe8d 	bl	8002da4 <EXTI_ClearITPendingBit>
 800308a:	4638      	mov	r0, r7
 800308c:	f7ff fe8a 	bl	8002da4 <EXTI_ClearITPendingBit>
 8003090:	f7ff ff52 	bl	8002f38 <encoder_reset>
 8003094:	b007      	add	sp, #28
 8003096:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800309a:	bf00      	nop
 800309c:	48000400 	.word	0x48000400
 80030a0:	20001094 	.word	0x20001094
 80030a4:	48000800 	.word	0x48000800

080030a8 <Default_Handler>:
 80030a8:	4668      	mov	r0, sp
 80030aa:	f020 0107 	bic.w	r1, r0, #7
 80030ae:	468d      	mov	sp, r1
 80030b0:	b501      	push	{r0, lr}
 80030b2:	bf00      	nop
 80030b4:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80030b8:	4685      	mov	sp, r0
 80030ba:	4770      	bx	lr

080030bc <HardFault_Handler>:
 80030bc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80030c0:	f7ff fef0 	bl	8002ea4 <led_on>
 80030c4:	4b06      	ldr	r3, [pc, #24]	; (80030e0 <HardFault_Handler+0x24>)
 80030c6:	3b01      	subs	r3, #1
 80030c8:	d001      	beq.n	80030ce <HardFault_Handler+0x12>
 80030ca:	bf00      	nop
 80030cc:	e7fb      	b.n	80030c6 <HardFault_Handler+0xa>
 80030ce:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80030d2:	f7ff fef1 	bl	8002eb8 <led_off>
 80030d6:	4b02      	ldr	r3, [pc, #8]	; (80030e0 <HardFault_Handler+0x24>)
 80030d8:	3b01      	subs	r3, #1
 80030da:	d0ef      	beq.n	80030bc <HardFault_Handler>
 80030dc:	bf00      	nop
 80030de:	e7fb      	b.n	80030d8 <HardFault_Handler+0x1c>
 80030e0:	00989681 	.word	0x00989681

080030e4 <_reset_init>:
 80030e4:	490e      	ldr	r1, [pc, #56]	; (8003120 <_reset_init+0x3c>)
 80030e6:	4b0f      	ldr	r3, [pc, #60]	; (8003124 <_reset_init+0x40>)
 80030e8:	1a5b      	subs	r3, r3, r1
 80030ea:	109b      	asrs	r3, r3, #2
 80030ec:	2200      	movs	r2, #0
 80030ee:	429a      	cmp	r2, r3
 80030f0:	d006      	beq.n	8003100 <_reset_init+0x1c>
 80030f2:	480d      	ldr	r0, [pc, #52]	; (8003128 <_reset_init+0x44>)
 80030f4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80030f8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80030fc:	3201      	adds	r2, #1
 80030fe:	e7f6      	b.n	80030ee <_reset_init+0xa>
 8003100:	4a0a      	ldr	r2, [pc, #40]	; (800312c <_reset_init+0x48>)
 8003102:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003106:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800310a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800310e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8003112:	6853      	ldr	r3, [r2, #4]
 8003114:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8003118:	6053      	str	r3, [r2, #4]
 800311a:	f7fe be2f 	b.w	8001d7c <main>
 800311e:	bf00      	nop
 8003120:	20000000 	.word	0x20000000
 8003124:	2000052c 	.word	0x2000052c
 8003128:	08004de0 	.word	0x08004de0
 800312c:	e000ed00 	.word	0xe000ed00

08003130 <SYSCFG_EXTILineConfig>:
 8003130:	b510      	push	{r4, lr}
 8003132:	bf00      	nop
 8003134:	bf00      	nop
 8003136:	f001 0303 	and.w	r3, r1, #3
 800313a:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 800313e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003142:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8003146:	009b      	lsls	r3, r3, #2
 8003148:	688c      	ldr	r4, [r1, #8]
 800314a:	220f      	movs	r2, #15
 800314c:	409a      	lsls	r2, r3
 800314e:	ea24 0202 	bic.w	r2, r4, r2
 8003152:	608a      	str	r2, [r1, #8]
 8003154:	688a      	ldr	r2, [r1, #8]
 8003156:	4098      	lsls	r0, r3
 8003158:	4310      	orrs	r0, r2
 800315a:	6088      	str	r0, [r1, #8]
 800315c:	bd10      	pop	{r4, pc}
	...

08003160 <selfrel_offset31>:
 8003160:	e5903000 	ldr	r3, [r0]
 8003164:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8003168:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 800316c:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8003170:	e0800003 	add	r0, r0, r3
 8003174:	e12fff1e 	bx	lr

08003178 <search_EIT_table>:
 8003178:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800317c:	e3510000 	cmp	r1, #0
 8003180:	e24dd00c 	sub	sp, sp, #12
 8003184:	0a000029 	beq	8003230 <search_EIT_table+0xb8>
 8003188:	e2413001 	sub	r3, r1, #1
 800318c:	e1a07002 	mov	r7, r2
 8003190:	e1a05000 	mov	r5, r0
 8003194:	e1a08003 	mov	r8, r3
 8003198:	e3a06000 	mov	r6, #0
 800319c:	e58d3004 	str	r3, [sp, #4]
 80031a0:	e0864008 	add	r4, r6, r8
 80031a4:	e0844fa4 	add	r4, r4, r4, lsr #31
 80031a8:	e1a040c4 	asr	r4, r4, #1
 80031ac:	e1a0a184 	lsl	sl, r4, #3
 80031b0:	e085b00a 	add	fp, r5, sl
 80031b4:	e1a0000b 	mov	r0, fp
 80031b8:	ebffffe8 	bl	8003160 <selfrel_offset31>
 80031bc:	e59d3004 	ldr	r3, [sp, #4]
 80031c0:	e1a09000 	mov	r9, r0
 80031c4:	e1530004 	cmp	r3, r4
 80031c8:	e28a0008 	add	r0, sl, #8
 80031cc:	e0850000 	add	r0, r5, r0
 80031d0:	0a00000b 	beq	8003204 <search_EIT_table+0x8c>
 80031d4:	ebffffe1 	bl	8003160 <selfrel_offset31>
 80031d8:	e1590007 	cmp	r9, r7
 80031dc:	e2400001 	sub	r0, r0, #1
 80031e0:	9a000003 	bls	80031f4 <search_EIT_table+0x7c>
 80031e4:	e1540006 	cmp	r4, r6
 80031e8:	0a00000b 	beq	800321c <search_EIT_table+0xa4>
 80031ec:	e2448001 	sub	r8, r4, #1
 80031f0:	eaffffea 	b	80031a0 <search_EIT_table+0x28>
 80031f4:	e1500007 	cmp	r0, r7
 80031f8:	2a000003 	bcs	800320c <search_EIT_table+0x94>
 80031fc:	e2846001 	add	r6, r4, #1
 8003200:	eaffffe6 	b	80031a0 <search_EIT_table+0x28>
 8003204:	e1590007 	cmp	r9, r7
 8003208:	8afffff5 	bhi	80031e4 <search_EIT_table+0x6c>
 800320c:	e1a0000b 	mov	r0, fp
 8003210:	e28dd00c 	add	sp, sp, #12
 8003214:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003218:	e12fff1e 	bx	lr
 800321c:	e3a0b000 	mov	fp, #0
 8003220:	e1a0000b 	mov	r0, fp
 8003224:	e28dd00c 	add	sp, sp, #12
 8003228:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800322c:	e12fff1e 	bx	lr
 8003230:	e1a0b001 	mov	fp, r1
 8003234:	e1a0000b 	mov	r0, fp
 8003238:	e28dd00c 	add	sp, sp, #12
 800323c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003240:	e12fff1e 	bx	lr

08003244 <__gnu_unwind_get_pr_addr>:
 8003244:	e3500001 	cmp	r0, #1
 8003248:	0a000006 	beq	8003268 <__gnu_unwind_get_pr_addr+0x24>
 800324c:	e3500002 	cmp	r0, #2
 8003250:	0a000006 	beq	8003270 <__gnu_unwind_get_pr_addr+0x2c>
 8003254:	e59f301c 	ldr	r3, [pc, #28]	; 8003278 <__gnu_unwind_get_pr_addr+0x34>
 8003258:	e3500000 	cmp	r0, #0
 800325c:	01a00003 	moveq	r0, r3
 8003260:	13a00000 	movne	r0, #0
 8003264:	e12fff1e 	bx	lr
 8003268:	e59f000c 	ldr	r0, [pc, #12]	; 800327c <__gnu_unwind_get_pr_addr+0x38>
 800326c:	e12fff1e 	bx	lr
 8003270:	e59f0008 	ldr	r0, [pc, #8]	; 8003280 <__gnu_unwind_get_pr_addr+0x3c>
 8003274:	e12fff1e 	bx	lr
 8003278:	08003dec 	.word	0x08003dec
 800327c:	08003df4 	.word	0x08003df4
 8003280:	08003dfc 	.word	0x08003dfc

08003284 <get_eit_entry>:
 8003284:	e92d4030 	push	{r4, r5, lr}
 8003288:	e59f3118 	ldr	r3, [pc, #280]	; 80033a8 <get_eit_entry+0x124>
 800328c:	e3530000 	cmp	r3, #0
 8003290:	e24dd00c 	sub	sp, sp, #12
 8003294:	e1a04000 	mov	r4, r0
 8003298:	e2415002 	sub	r5, r1, #2
 800329c:	0a00002d 	beq	8003358 <get_eit_entry+0xd4>
 80032a0:	e1a00005 	mov	r0, r5
 80032a4:	e28d1004 	add	r1, sp, #4
 80032a8:	e320f000 	nop	{0}
 80032ac:	e3500000 	cmp	r0, #0
 80032b0:	0a000021 	beq	800333c <get_eit_entry+0xb8>
 80032b4:	e59d1004 	ldr	r1, [sp, #4]
 80032b8:	e1a02005 	mov	r2, r5
 80032bc:	ebffffad 	bl	8003178 <search_EIT_table>
 80032c0:	e2505000 	subs	r5, r0, #0
 80032c4:	0a00001c 	beq	800333c <get_eit_entry+0xb8>
 80032c8:	ebffffa4 	bl	8003160 <selfrel_offset31>
 80032cc:	e5953004 	ldr	r3, [r5, #4]
 80032d0:	e3530001 	cmp	r3, #1
 80032d4:	e5840048 	str	r0, [r4, #72]	; 0x48
 80032d8:	0a000010 	beq	8003320 <get_eit_entry+0x9c>
 80032dc:	e3530000 	cmp	r3, #0
 80032e0:	ba000023 	blt	8003374 <get_eit_entry+0xf0>
 80032e4:	e2850004 	add	r0, r5, #4
 80032e8:	ebffff9c 	bl	8003160 <selfrel_offset31>
 80032ec:	e3a03000 	mov	r3, #0
 80032f0:	e584004c 	str	r0, [r4, #76]	; 0x4c
 80032f4:	e5843050 	str	r3, [r4, #80]	; 0x50
 80032f8:	e5903000 	ldr	r3, [r0]
 80032fc:	e3530000 	cmp	r3, #0
 8003300:	ba000020 	blt	8003388 <get_eit_entry+0x104>
 8003304:	ebffff95 	bl	8003160 <selfrel_offset31>
 8003308:	e3a03000 	mov	r3, #0
 800330c:	e5840010 	str	r0, [r4, #16]
 8003310:	e1a00003 	mov	r0, r3
 8003314:	e28dd00c 	add	sp, sp, #12
 8003318:	e8bd4030 	pop	{r4, r5, lr}
 800331c:	e12fff1e 	bx	lr
 8003320:	e3a03005 	mov	r3, #5
 8003324:	e3a02000 	mov	r2, #0
 8003328:	e1a00003 	mov	r0, r3
 800332c:	e5842010 	str	r2, [r4, #16]
 8003330:	e28dd00c 	add	sp, sp, #12
 8003334:	e8bd4030 	pop	{r4, r5, lr}
 8003338:	e12fff1e 	bx	lr
 800333c:	e3a03009 	mov	r3, #9
 8003340:	e3a02000 	mov	r2, #0
 8003344:	e1a00003 	mov	r0, r3
 8003348:	e5842010 	str	r2, [r4, #16]
 800334c:	e28dd00c 	add	sp, sp, #12
 8003350:	e8bd4030 	pop	{r4, r5, lr}
 8003354:	e12fff1e 	bx	lr
 8003358:	e59f104c 	ldr	r1, [pc, #76]	; 80033ac <get_eit_entry+0x128>
 800335c:	e59f304c 	ldr	r3, [pc, #76]	; 80033b0 <get_eit_entry+0x12c>
 8003360:	e1a00001 	mov	r0, r1
 8003364:	e0611003 	rsb	r1, r1, r3
 8003368:	e1a011c1 	asr	r1, r1, #3
 800336c:	e58d1004 	str	r1, [sp, #4]
 8003370:	eaffffd0 	b	80032b8 <get_eit_entry+0x34>
 8003374:	e3a03001 	mov	r3, #1
 8003378:	e2850004 	add	r0, r5, #4
 800337c:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003380:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003384:	eaffffdb 	b	80032f8 <get_eit_entry+0x74>
 8003388:	e1a00c23 	lsr	r0, r3, #24
 800338c:	e200000f 	and	r0, r0, #15
 8003390:	ebffffab 	bl	8003244 <__gnu_unwind_get_pr_addr>
 8003394:	e3500000 	cmp	r0, #0
 8003398:	e5840010 	str	r0, [r4, #16]
 800339c:	03a03009 	moveq	r3, #9
 80033a0:	13a03000 	movne	r3, #0
 80033a4:	eaffffd9 	b	8003310 <get_eit_entry+0x8c>
 80033a8:	00000000 	.word	0x00000000
 80033ac:	08004c60 	.word	0x08004c60
 80033b0:	08004de0 	.word	0x08004de0

080033b4 <restore_non_core_regs>:
 80033b4:	e5903000 	ldr	r3, [r0]
 80033b8:	e3130001 	tst	r3, #1
 80033bc:	e92d4010 	push	{r4, lr}
 80033c0:	e1a04000 	mov	r4, r0
 80033c4:	1a000004 	bne	80033dc <restore_non_core_regs+0x28>
 80033c8:	e3130002 	tst	r3, #2
 80033cc:	e2800048 	add	r0, r0, #72	; 0x48
 80033d0:	0a00000a 	beq	8003400 <restore_non_core_regs+0x4c>
 80033d4:	eb0003a2 	bl	8004264 <__gnu_Unwind_Restore_VFP_D>
 80033d8:	e5943000 	ldr	r3, [r4]
 80033dc:	e3130004 	tst	r3, #4
 80033e0:	0a00000a 	beq	8003410 <restore_non_core_regs+0x5c>
 80033e4:	e3130008 	tst	r3, #8
 80033e8:	0a00000d 	beq	8003424 <restore_non_core_regs+0x70>
 80033ec:	e3130010 	tst	r3, #16
 80033f0:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 80033f4:	0b0003c4 	bleq	800430c <__gnu_Unwind_Restore_WMMXC>
 80033f8:	e8bd4010 	pop	{r4, lr}
 80033fc:	e12fff1e 	bx	lr
 8003400:	eb000393 	bl	8004254 <__gnu_Unwind_Restore_VFP>
 8003404:	e5943000 	ldr	r3, [r4]
 8003408:	e3130004 	tst	r3, #4
 800340c:	1afffff4 	bne	80033e4 <restore_non_core_regs+0x30>
 8003410:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003414:	eb000396 	bl	8004274 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003418:	e5943000 	ldr	r3, [r4]
 800341c:	e3130008 	tst	r3, #8
 8003420:	1afffff1 	bne	80033ec <restore_non_core_regs+0x38>
 8003424:	e2840e15 	add	r0, r4, #336	; 0x150
 8003428:	eb000395 	bl	8004284 <__gnu_Unwind_Restore_WMMXD>
 800342c:	e5943000 	ldr	r3, [r4]
 8003430:	eaffffed 	b	80033ec <restore_non_core_regs+0x38>

08003434 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003434:	e5903000 	ldr	r3, [r0]
 8003438:	e3530000 	cmp	r3, #0
 800343c:	10830000 	addne	r0, r3, r0
 8003440:	01a00003 	moveq	r0, r3
 8003444:	e12fff1e 	bx	lr

08003448 <__gnu_unwind_24bit.isra.1>:
 8003448:	e3a00009 	mov	r0, #9
 800344c:	e12fff1e 	bx	lr

08003450 <_Unwind_DebugHook>:
 8003450:	e12fff1e 	bx	lr

08003454 <unwind_phase2>:
 8003454:	e92d4070 	push	{r4, r5, r6, lr}
 8003458:	e1a04000 	mov	r4, r0
 800345c:	e1a05001 	mov	r5, r1
 8003460:	ea000009 	b	800348c <unwind_phase2+0x38>
 8003464:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8003468:	e3a00001 	mov	r0, #1
 800346c:	e5843014 	str	r3, [r4, #20]
 8003470:	e1a01004 	mov	r1, r4
 8003474:	e1a02005 	mov	r2, r5
 8003478:	e594c010 	ldr	ip, [r4, #16]
 800347c:	e1a0e00f 	mov	lr, pc
 8003480:	e12fff1c 	bx	ip
 8003484:	e3500008 	cmp	r0, #8
 8003488:	1a000005 	bne	80034a4 <unwind_phase2+0x50>
 800348c:	e1a00004 	mov	r0, r4
 8003490:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003494:	ebffff7a 	bl	8003284 <get_eit_entry>
 8003498:	e2506000 	subs	r6, r0, #0
 800349c:	0afffff0 	beq	8003464 <unwind_phase2+0x10>
 80034a0:	eb000509 	bl	80048cc <abort>
 80034a4:	e3500007 	cmp	r0, #7
 80034a8:	1afffffc 	bne	80034a0 <unwind_phase2+0x4c>
 80034ac:	e1a00006 	mov	r0, r6
 80034b0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80034b4:	ebffffe5 	bl	8003450 <_Unwind_DebugHook>
 80034b8:	e2850004 	add	r0, r5, #4
 80034bc:	eb00035d 	bl	8004238 <__restore_core_regs>

080034c0 <unwind_phase2_forced>:
 80034c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 80034c4:	e1a05000 	mov	r5, r0
 80034c8:	e1a06002 	mov	r6, r2
 80034cc:	e3a04000 	mov	r4, #0
 80034d0:	e281e004 	add	lr, r1, #4
 80034d4:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 80034d8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034dc:	e28dc00c 	add	ip, sp, #12
 80034e0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034e4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034e8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034ec:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034f0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034f4:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80034f8:	e1560004 	cmp	r6, r4
 80034fc:	e595800c 	ldr	r8, [r5, #12]
 8003500:	e5959018 	ldr	r9, [r5, #24]
 8003504:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003508:	e1a00005 	mov	r0, r5
 800350c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003510:	e58d4008 	str	r4, [sp, #8]
 8003514:	03a06009 	moveq	r6, #9
 8003518:	13a0600a 	movne	r6, #10
 800351c:	ebffff58 	bl	8003284 <get_eit_entry>
 8003520:	e1a04000 	mov	r4, r0
 8003524:	e28d7008 	add	r7, sp, #8
 8003528:	e3540000 	cmp	r4, #0
 800352c:	0a00000e 	beq	800356c <unwind_phase2_forced+0xac>
 8003530:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003534:	e88d0280 	stm	sp, {r7, r9}
 8003538:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800353c:	e3861010 	orr	r1, r6, #16
 8003540:	e3a00001 	mov	r0, #1
 8003544:	e1a02005 	mov	r2, r5
 8003548:	e1a03005 	mov	r3, r5
 800354c:	e1a0e00f 	mov	lr, pc
 8003550:	e12fff18 	bx	r8
 8003554:	e3500000 	cmp	r0, #0
 8003558:	1a000029 	bne	8003604 <unwind_phase2_forced+0x144>
 800355c:	e1a00004 	mov	r0, r4
 8003560:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003564:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003568:	e12fff1e 	bx	lr
 800356c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8003570:	e1a01007 	mov	r1, r7
 8003574:	e5853014 	str	r3, [r5, #20]
 8003578:	e3a02e1e 	mov	r2, #480	; 0x1e0
 800357c:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8003580:	eb0004d6 	bl	80048e0 <memcpy>
 8003584:	e1a01005 	mov	r1, r5
 8003588:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 800358c:	e1a00006 	mov	r0, r6
 8003590:	e595c010 	ldr	ip, [r5, #16]
 8003594:	e1a0e00f 	mov	lr, pc
 8003598:	e12fff1c 	bx	ip
 800359c:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80035a0:	e1a0a000 	mov	sl, r0
 80035a4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80035a8:	e88d0280 	stm	sp, {r7, r9}
 80035ac:	e1a01006 	mov	r1, r6
 80035b0:	e3a00001 	mov	r0, #1
 80035b4:	e1a02005 	mov	r2, r5
 80035b8:	e1a03005 	mov	r3, r5
 80035bc:	e1a0e00f 	mov	lr, pc
 80035c0:	e12fff18 	bx	r8
 80035c4:	e3500000 	cmp	r0, #0
 80035c8:	1a00000d 	bne	8003604 <unwind_phase2_forced+0x144>
 80035cc:	e1a00007 	mov	r0, r7
 80035d0:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 80035d4:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80035d8:	eb0004c0 	bl	80048e0 <memcpy>
 80035dc:	e35a0008 	cmp	sl, #8
 80035e0:	1a000005 	bne	80035fc <unwind_phase2_forced+0x13c>
 80035e4:	e1a00005 	mov	r0, r5
 80035e8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80035ec:	ebffff24 	bl	8003284 <get_eit_entry>
 80035f0:	e3a06009 	mov	r6, #9
 80035f4:	e1a04000 	mov	r4, r0
 80035f8:	eaffffca 	b	8003528 <unwind_phase2_forced+0x68>
 80035fc:	e35a0007 	cmp	sl, #7
 8003600:	0a000003 	beq	8003614 <unwind_phase2_forced+0x154>
 8003604:	e3a00009 	mov	r0, #9
 8003608:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 800360c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003610:	e12fff1e 	bx	lr
 8003614:	e1a00004 	mov	r0, r4
 8003618:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800361c:	ebffff8b 	bl	8003450 <_Unwind_DebugHook>
 8003620:	e28d000c 	add	r0, sp, #12
 8003624:	eb000303 	bl	8004238 <__restore_core_regs>

08003628 <_Unwind_GetCFA>:
 8003628:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 800362c:	e12fff1e 	bx	lr

08003630 <__gnu_Unwind_RaiseException>:
 8003630:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003634:	e3e05000 	mvn	r5, #0
 8003638:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800363c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003640:	e281e004 	add	lr, r1, #4
 8003644:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003648:	e1a07001 	mov	r7, r1
 800364c:	e1a04000 	mov	r4, r0
 8003650:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003654:	e28dc004 	add	ip, sp, #4
 8003658:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800365c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003660:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003664:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003668:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800366c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003670:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8003674:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003678:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 800367c:	ea000007 	b	80036a0 <__gnu_Unwind_RaiseException+0x70>
 8003680:	e1a01004 	mov	r1, r4
 8003684:	e1a02006 	mov	r2, r6
 8003688:	e594c010 	ldr	ip, [r4, #16]
 800368c:	e1a0e00f 	mov	lr, pc
 8003690:	e12fff1c 	bx	ip
 8003694:	e3500008 	cmp	r0, #8
 8003698:	e1a05000 	mov	r5, r0
 800369c:	1a000008 	bne	80036c4 <__gnu_Unwind_RaiseException+0x94>
 80036a0:	e1a00004 	mov	r0, r4
 80036a4:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80036a8:	ebfffef5 	bl	8003284 <get_eit_entry>
 80036ac:	e3500000 	cmp	r0, #0
 80036b0:	0afffff2 	beq	8003680 <__gnu_Unwind_RaiseException+0x50>
 80036b4:	e3a00009 	mov	r0, #9
 80036b8:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80036bc:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 80036c0:	e12fff1e 	bx	lr
 80036c4:	e1a00006 	mov	r0, r6
 80036c8:	ebffff39 	bl	80033b4 <restore_non_core_regs>
 80036cc:	e3550006 	cmp	r5, #6
 80036d0:	1afffff7 	bne	80036b4 <__gnu_Unwind_RaiseException+0x84>
 80036d4:	e1a00004 	mov	r0, r4
 80036d8:	e1a01007 	mov	r1, r7
 80036dc:	ebffff5c 	bl	8003454 <unwind_phase2>

080036e0 <__gnu_Unwind_ForcedUnwind>:
 80036e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80036e4:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 80036e8:	e580100c 	str	r1, [r0, #12]
 80036ec:	e5802018 	str	r2, [r0, #24]
 80036f0:	e1a01003 	mov	r1, r3
 80036f4:	e583e040 	str	lr, [r3, #64]	; 0x40
 80036f8:	e3a02000 	mov	r2, #0
 80036fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003700:	eaffff6e 	b	80034c0 <unwind_phase2_forced>

08003704 <__gnu_Unwind_Resume>:
 8003704:	e92d4070 	push	{r4, r5, r6, lr}
 8003708:	e590600c 	ldr	r6, [r0, #12]
 800370c:	e5903014 	ldr	r3, [r0, #20]
 8003710:	e3560000 	cmp	r6, #0
 8003714:	e1a04000 	mov	r4, r0
 8003718:	e1a05001 	mov	r5, r1
 800371c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003720:	0a000002 	beq	8003730 <__gnu_Unwind_Resume+0x2c>
 8003724:	e3a02001 	mov	r2, #1
 8003728:	ebffff64 	bl	80034c0 <unwind_phase2_forced>
 800372c:	eb000466 	bl	80048cc <abort>
 8003730:	e3a00002 	mov	r0, #2
 8003734:	e1a01004 	mov	r1, r4
 8003738:	e1a02005 	mov	r2, r5
 800373c:	e594c010 	ldr	ip, [r4, #16]
 8003740:	e1a0e00f 	mov	lr, pc
 8003744:	e12fff1c 	bx	ip
 8003748:	e3500007 	cmp	r0, #7
 800374c:	0a000004 	beq	8003764 <__gnu_Unwind_Resume+0x60>
 8003750:	e3500008 	cmp	r0, #8
 8003754:	01a00004 	moveq	r0, r4
 8003758:	01a01005 	moveq	r1, r5
 800375c:	0bffff3c 	bleq	8003454 <unwind_phase2>
 8003760:	eb000459 	bl	80048cc <abort>
 8003764:	e1a00006 	mov	r0, r6
 8003768:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 800376c:	ebffff37 	bl	8003450 <_Unwind_DebugHook>
 8003770:	e2850004 	add	r0, r5, #4
 8003774:	eb0002af 	bl	8004238 <__restore_core_regs>

08003778 <__gnu_Unwind_Resume_or_Rethrow>:
 8003778:	e590300c 	ldr	r3, [r0, #12]
 800377c:	e3530000 	cmp	r3, #0
 8003780:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003784:	13a02000 	movne	r2, #0
 8003788:	1581c040 	strne	ip, [r1, #64]	; 0x40
 800378c:	1affff4b 	bne	80034c0 <unwind_phase2_forced>
 8003790:	eaffffa6 	b	8003630 <__gnu_Unwind_RaiseException>

08003794 <_Unwind_Complete>:
 8003794:	e12fff1e 	bx	lr

08003798 <_Unwind_DeleteException>:
 8003798:	e5903008 	ldr	r3, [r0, #8]
 800379c:	e3530000 	cmp	r3, #0
 80037a0:	012fff1e 	bxeq	lr
 80037a4:	e1a01000 	mov	r1, r0
 80037a8:	e3a00001 	mov	r0, #1
 80037ac:	e12fff13 	bx	r3

080037b0 <_Unwind_VRS_Get>:
 80037b0:	e3510004 	cmp	r1, #4
 80037b4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80037b8:	ea000009 	b	80037e4 <_Unwind_VRS_Get+0x34>
 80037bc:	080037d0 	.word	0x080037d0
 80037c0:	080037ec 	.word	0x080037ec
 80037c4:	080037e4 	.word	0x080037e4
 80037c8:	080037ec 	.word	0x080037ec
 80037cc:	080037ec 	.word	0x080037ec
 80037d0:	e352000f 	cmp	r2, #15
 80037d4:	93530000 	cmpls	r3, #0
 80037d8:	13a03001 	movne	r3, #1
 80037dc:	03a03000 	moveq	r3, #0
 80037e0:	0a000003 	beq	80037f4 <_Unwind_VRS_Get+0x44>
 80037e4:	e3a00002 	mov	r0, #2
 80037e8:	e12fff1e 	bx	lr
 80037ec:	e3a00001 	mov	r0, #1
 80037f0:	e12fff1e 	bx	lr
 80037f4:	e0802102 	add	r2, r0, r2, lsl #2
 80037f8:	e5922004 	ldr	r2, [r2, #4]
 80037fc:	e1a00003 	mov	r0, r3
 8003800:	e59d3000 	ldr	r3, [sp]
 8003804:	e5832000 	str	r2, [r3]
 8003808:	e12fff1e 	bx	lr

0800380c <_Unwind_GetGR>:
 800380c:	e1a02001 	mov	r2, r1
 8003810:	e3a01000 	mov	r1, #0
 8003814:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003818:	e24dd014 	sub	sp, sp, #20
 800381c:	e28dc00c 	add	ip, sp, #12
 8003820:	e1a03001 	mov	r3, r1
 8003824:	e58dc000 	str	ip, [sp]
 8003828:	ebffffe0 	bl	80037b0 <_Unwind_VRS_Get>
 800382c:	e59d000c 	ldr	r0, [sp, #12]
 8003830:	e28dd014 	add	sp, sp, #20
 8003834:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003838:	e12fff1e 	bx	lr

0800383c <_Unwind_VRS_Set>:
 800383c:	e3510004 	cmp	r1, #4
 8003840:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003844:	ea000009 	b	8003870 <_Unwind_VRS_Set+0x34>
 8003848:	0800385c 	.word	0x0800385c
 800384c:	08003878 	.word	0x08003878
 8003850:	08003870 	.word	0x08003870
 8003854:	08003878 	.word	0x08003878
 8003858:	08003878 	.word	0x08003878
 800385c:	e352000f 	cmp	r2, #15
 8003860:	93530000 	cmpls	r3, #0
 8003864:	13a03001 	movne	r3, #1
 8003868:	03a03000 	moveq	r3, #0
 800386c:	0a000003 	beq	8003880 <_Unwind_VRS_Set+0x44>
 8003870:	e3a00002 	mov	r0, #2
 8003874:	e12fff1e 	bx	lr
 8003878:	e3a00001 	mov	r0, #1
 800387c:	e12fff1e 	bx	lr
 8003880:	e59d1000 	ldr	r1, [sp]
 8003884:	e5911000 	ldr	r1, [r1]
 8003888:	e0802102 	add	r2, r0, r2, lsl #2
 800388c:	e5821004 	str	r1, [r2, #4]
 8003890:	e1a00003 	mov	r0, r3
 8003894:	e12fff1e 	bx	lr

08003898 <_Unwind_SetGR>:
 8003898:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800389c:	e1a0e001 	mov	lr, r1
 80038a0:	e3a01000 	mov	r1, #0
 80038a4:	e24dd014 	sub	sp, sp, #20
 80038a8:	e28dc010 	add	ip, sp, #16
 80038ac:	e52c2004 	str	r2, [ip, #-4]!
 80038b0:	e1a03001 	mov	r3, r1
 80038b4:	e58dc000 	str	ip, [sp]
 80038b8:	e1a0200e 	mov	r2, lr
 80038bc:	ebffffde 	bl	800383c <_Unwind_VRS_Set>
 80038c0:	e28dd014 	add	sp, sp, #20
 80038c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80038c8:	e12fff1e 	bx	lr

080038cc <__gnu_Unwind_Backtrace>:
 80038cc:	e92d4070 	push	{r4, r5, r6, lr}
 80038d0:	e3e04000 	mvn	r4, #0
 80038d4:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 80038d8:	e5823040 	str	r3, [r2, #64]	; 0x40
 80038dc:	e282c004 	add	ip, r2, #4
 80038e0:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 80038e4:	e1a06000 	mov	r6, r0
 80038e8:	e1a05001 	mov	r5, r1
 80038ec:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80038f0:	e28de05c 	add	lr, sp, #92	; 0x5c
 80038f4:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80038f8:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80038fc:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003900:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003904:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003908:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 800390c:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003910:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003914:	ea000013 	b	8003968 <__gnu_Unwind_Backtrace+0x9c>
 8003918:	e28d0058 	add	r0, sp, #88	; 0x58
 800391c:	e3a0100c 	mov	r1, #12
 8003920:	e1a0200d 	mov	r2, sp
 8003924:	ebffffdb 	bl	8003898 <_Unwind_SetGR>
 8003928:	e28d0058 	add	r0, sp, #88	; 0x58
 800392c:	e1a01005 	mov	r1, r5
 8003930:	e1a0e00f 	mov	lr, pc
 8003934:	e12fff16 	bx	r6
 8003938:	e3500000 	cmp	r0, #0
 800393c:	1a00000e 	bne	800397c <__gnu_Unwind_Backtrace+0xb0>
 8003940:	e3a00008 	mov	r0, #8
 8003944:	e1a0100d 	mov	r1, sp
 8003948:	e28d2058 	add	r2, sp, #88	; 0x58
 800394c:	e59dc010 	ldr	ip, [sp, #16]
 8003950:	e1a0e00f 	mov	lr, pc
 8003954:	e12fff1c 	bx	ip
 8003958:	e2403005 	sub	r3, r0, #5
 800395c:	e31300fb 	tst	r3, #251	; 0xfb
 8003960:	e1a04000 	mov	r4, r0
 8003964:	0a000005 	beq	8003980 <__gnu_Unwind_Backtrace+0xb4>
 8003968:	e1a0000d 	mov	r0, sp
 800396c:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003970:	ebfffe43 	bl	8003284 <get_eit_entry>
 8003974:	e3500000 	cmp	r0, #0
 8003978:	0affffe6 	beq	8003918 <__gnu_Unwind_Backtrace+0x4c>
 800397c:	e3a04009 	mov	r4, #9
 8003980:	e28d0058 	add	r0, sp, #88	; 0x58
 8003984:	ebfffe8a 	bl	80033b4 <restore_non_core_regs>
 8003988:	e1a00004 	mov	r0, r4
 800398c:	e28ddf8e 	add	sp, sp, #568	; 0x238
 8003990:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003994:	e12fff1e 	bx	lr

08003998 <__gnu_unwind_pr_common>:
 8003998:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800399c:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80039a0:	e1a05001 	mov	r5, r1
 80039a4:	e5961000 	ldr	r1, [r6]
 80039a8:	e24dd024 	sub	sp, sp, #36	; 0x24
 80039ac:	e2866004 	add	r6, r6, #4
 80039b0:	e2537000 	subs	r7, r3, #0
 80039b4:	e58d0004 	str	r0, [sp, #4]
 80039b8:	e1a09002 	mov	r9, r2
 80039bc:	e58d1014 	str	r1, [sp, #20]
 80039c0:	e58d6018 	str	r6, [sp, #24]
 80039c4:	e2008003 	and	r8, r0, #3
 80039c8:	1a000076 	bne	8003ba8 <__gnu_unwind_pr_common+0x210>
 80039cc:	e3a03003 	mov	r3, #3
 80039d0:	e1a01401 	lsl	r1, r1, #8
 80039d4:	e58d1014 	str	r1, [sp, #20]
 80039d8:	e5cd701d 	strb	r7, [sp, #29]
 80039dc:	e5cd301c 	strb	r3, [sp, #28]
 80039e0:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 80039e4:	e3580002 	cmp	r8, #2
 80039e8:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 80039ec:	e2133001 	ands	r3, r3, #1
 80039f0:	1a000061 	bne	8003b7c <__gnu_unwind_pr_common+0x1e4>
 80039f4:	e58d3000 	str	r3, [sp]
 80039f8:	e2853058 	add	r3, r5, #88	; 0x58
 80039fc:	e58d3008 	str	r3, [sp, #8]
 8003a00:	e5964000 	ldr	r4, [r6]
 8003a04:	e3540000 	cmp	r4, #0
 8003a08:	0a00005d 	beq	8003b84 <__gnu_unwind_pr_common+0x1ec>
 8003a0c:	e3570002 	cmp	r7, #2
 8003a10:	0596b004 	ldreq	fp, [r6, #4]
 8003a14:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003a18:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003a1c:	e3cba001 	bic	sl, fp, #1
 8003a20:	e1a00009 	mov	r0, r9
 8003a24:	e3a0100f 	mov	r1, #15
 8003a28:	11d640b0 	ldrhne	r4, [r6]
 8003a2c:	02866008 	addeq	r6, r6, #8
 8003a30:	12866004 	addne	r6, r6, #4
 8003a34:	e08aa003 	add	sl, sl, r3
 8003a38:	ebffff73 	bl	800380c <_Unwind_GetGR>
 8003a3c:	e15a0000 	cmp	sl, r0
 8003a40:	e20bb001 	and	fp, fp, #1
 8003a44:	8a00003c 	bhi	8003b3c <__gnu_unwind_pr_common+0x1a4>
 8003a48:	e3c43001 	bic	r3, r4, #1
 8003a4c:	e08aa003 	add	sl, sl, r3
 8003a50:	e150000a 	cmp	r0, sl
 8003a54:	2a000038 	bcs	8003b3c <__gnu_unwind_pr_common+0x1a4>
 8003a58:	e2044001 	and	r4, r4, #1
 8003a5c:	e184408b 	orr	r4, r4, fp, lsl #1
 8003a60:	e3540001 	cmp	r4, #1
 8003a64:	0a00005e 	beq	8003be4 <__gnu_unwind_pr_common+0x24c>
 8003a68:	3a000059 	bcc	8003bd4 <__gnu_unwind_pr_common+0x23c>
 8003a6c:	e3540002 	cmp	r4, #2
 8003a70:	1a000048 	bne	8003b98 <__gnu_unwind_pr_common+0x200>
 8003a74:	e5963000 	ldr	r3, [r6]
 8003a78:	e3580000 	cmp	r8, #0
 8003a7c:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003a80:	1a000090 	bne	8003cc8 <__gnu_unwind_pr_common+0x330>
 8003a84:	e59d2004 	ldr	r2, [sp, #4]
 8003a88:	e3120008 	tst	r2, #8
 8003a8c:	03a02001 	moveq	r2, #1
 8003a90:	13a02000 	movne	r2, #0
 8003a94:	e3540000 	cmp	r4, #0
 8003a98:	03822001 	orreq	r2, r2, #1
 8003a9c:	e3520000 	cmp	r2, #0
 8003aa0:	0a000030 	beq	8003b68 <__gnu_unwind_pr_common+0x1d0>
 8003aa4:	e3540000 	cmp	r4, #0
 8003aa8:	0a00001a 	beq	8003b18 <__gnu_unwind_pr_common+0x180>
 8003aac:	e1a0a007 	mov	sl, r7
 8003ab0:	e286b004 	add	fp, r6, #4
 8003ab4:	e1a07004 	mov	r7, r4
 8003ab8:	e58d800c 	str	r8, [sp, #12]
 8003abc:	e59d4008 	ldr	r4, [sp, #8]
 8003ac0:	ea000003 	b	8003ad4 <__gnu_unwind_pr_common+0x13c>
 8003ac4:	e1530007 	cmp	r3, r7
 8003ac8:	e1a08003 	mov	r8, r3
 8003acc:	e28bb004 	add	fp, fp, #4
 8003ad0:	0a000010 	beq	8003b18 <__gnu_unwind_pr_common+0x180>
 8003ad4:	e1a0000b 	mov	r0, fp
 8003ad8:	e58d4010 	str	r4, [sp, #16]
 8003adc:	ebfffe54 	bl	8003434 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003ae0:	e28d3010 	add	r3, sp, #16
 8003ae4:	e1a01000 	mov	r1, r0
 8003ae8:	e3a02000 	mov	r2, #0
 8003aec:	e1a00005 	mov	r0, r5
 8003af0:	e320f000 	nop	{0}
 8003af4:	e3500000 	cmp	r0, #0
 8003af8:	e2883001 	add	r3, r8, #1
 8003afc:	0afffff0 	beq	8003ac4 <__gnu_unwind_pr_common+0x12c>
 8003b00:	e1a04007 	mov	r4, r7
 8003b04:	e1a0700a 	mov	r7, sl
 8003b08:	e1a0a008 	mov	sl, r8
 8003b0c:	e15a0004 	cmp	sl, r4
 8003b10:	e59d800c 	ldr	r8, [sp, #12]
 8003b14:	1a000071 	bne	8003ce0 <__gnu_unwind_pr_common+0x348>
 8003b18:	e1a00009 	mov	r0, r9
 8003b1c:	e3a0100d 	mov	r1, #13
 8003b20:	ebffff39 	bl	800380c <_Unwind_GetGR>
 8003b24:	e59d3010 	ldr	r3, [sp, #16]
 8003b28:	e5850020 	str	r0, [r5, #32]
 8003b2c:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003b30:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003b34:	e3a00006 	mov	r0, #6
 8003b38:	ea000017 	b	8003b9c <__gnu_unwind_pr_common+0x204>
 8003b3c:	e2044001 	and	r4, r4, #1
 8003b40:	e184408b 	orr	r4, r4, fp, lsl #1
 8003b44:	e3540001 	cmp	r4, #1
 8003b48:	0a000044 	beq	8003c60 <__gnu_unwind_pr_common+0x2c8>
 8003b4c:	3a000022 	bcc	8003bdc <__gnu_unwind_pr_common+0x244>
 8003b50:	e3540002 	cmp	r4, #2
 8003b54:	1a00000f 	bne	8003b98 <__gnu_unwind_pr_common+0x200>
 8003b58:	e5963000 	ldr	r3, [r6]
 8003b5c:	e3580000 	cmp	r8, #0
 8003b60:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003b64:	1a000057 	bne	8003cc8 <__gnu_unwind_pr_common+0x330>
 8003b68:	e3530000 	cmp	r3, #0
 8003b6c:	b2866004 	addlt	r6, r6, #4
 8003b70:	e2844001 	add	r4, r4, #1
 8003b74:	e0866104 	add	r6, r6, r4, lsl #2
 8003b78:	eaffffa0 	b	8003a00 <__gnu_unwind_pr_common+0x68>
 8003b7c:	e3a03000 	mov	r3, #0
 8003b80:	e58d3000 	str	r3, [sp]
 8003b84:	e3570002 	cmp	r7, #2
 8003b88:	da000038 	ble	8003c70 <__gnu_unwind_pr_common+0x2d8>
 8003b8c:	ebfffe2d 	bl	8003448 <__gnu_unwind_24bit.isra.1>
 8003b90:	e3500000 	cmp	r0, #0
 8003b94:	0a00003a 	beq	8003c84 <__gnu_unwind_pr_common+0x2ec>
 8003b98:	e3a00009 	mov	r0, #9
 8003b9c:	e28dd024 	add	sp, sp, #36	; 0x24
 8003ba0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ba4:	e12fff1e 	bx	lr
 8003ba8:	e3570002 	cmp	r7, #2
 8003bac:	caffff8b 	bgt	80039e0 <__gnu_unwind_pr_common+0x48>
 8003bb0:	e3a02002 	mov	r2, #2
 8003bb4:	e1a03821 	lsr	r3, r1, #16
 8003bb8:	e5cd301d 	strb	r3, [sp, #29]
 8003bbc:	e1a01801 	lsl	r1, r1, #16
 8003bc0:	e20330ff 	and	r3, r3, #255	; 0xff
 8003bc4:	e58d1014 	str	r1, [sp, #20]
 8003bc8:	e5cd201c 	strb	r2, [sp, #28]
 8003bcc:	e0866103 	add	r6, r6, r3, lsl #2
 8003bd0:	eaffff82 	b	80039e0 <__gnu_unwind_pr_common+0x48>
 8003bd4:	e3580000 	cmp	r8, #0
 8003bd8:	1a000070 	bne	8003da0 <__gnu_unwind_pr_common+0x408>
 8003bdc:	e2866004 	add	r6, r6, #4
 8003be0:	eaffff86 	b	8003a00 <__gnu_unwind_pr_common+0x68>
 8003be4:	e3580000 	cmp	r8, #0
 8003be8:	1a00003e 	bne	8003ce8 <__gnu_unwind_pr_common+0x350>
 8003bec:	e896000c 	ldm	r6, {r2, r3}
 8003bf0:	e3730002 	cmn	r3, #2
 8003bf4:	e1a04fa2 	lsr	r4, r2, #31
 8003bf8:	0affffe6 	beq	8003b98 <__gnu_unwind_pr_common+0x200>
 8003bfc:	e3730001 	cmn	r3, #1
 8003c00:	e59d3008 	ldr	r3, [sp, #8]
 8003c04:	e58d3010 	str	r3, [sp, #16]
 8003c08:	0a00005b 	beq	8003d7c <__gnu_unwind_pr_common+0x3e4>
 8003c0c:	e2860004 	add	r0, r6, #4
 8003c10:	ebfffe07 	bl	8003434 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003c14:	e1a02004 	mov	r2, r4
 8003c18:	e1a01000 	mov	r1, r0
 8003c1c:	e28d3010 	add	r3, sp, #16
 8003c20:	e1a00005 	mov	r0, r5
 8003c24:	e320f000 	nop	{0}
 8003c28:	e3500000 	cmp	r0, #0
 8003c2c:	0a00000d 	beq	8003c68 <__gnu_unwind_pr_common+0x2d0>
 8003c30:	e1a04000 	mov	r4, r0
 8003c34:	e3a0100d 	mov	r1, #13
 8003c38:	e1a00009 	mov	r0, r9
 8003c3c:	ebfffef2 	bl	800380c <_Unwind_GetGR>
 8003c40:	e3540002 	cmp	r4, #2
 8003c44:	e5850020 	str	r0, [r5, #32]
 8003c48:	1a00004f 	bne	8003d8c <__gnu_unwind_pr_common+0x3f4>
 8003c4c:	e1a03005 	mov	r3, r5
 8003c50:	e59d2010 	ldr	r2, [sp, #16]
 8003c54:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003c58:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003c5c:	ea00004c 	b	8003d94 <__gnu_unwind_pr_common+0x3fc>
 8003c60:	e3580000 	cmp	r8, #0
 8003c64:	1a00001f 	bne	8003ce8 <__gnu_unwind_pr_common+0x350>
 8003c68:	e2866008 	add	r6, r6, #8
 8003c6c:	eaffff63 	b	8003a00 <__gnu_unwind_pr_common+0x68>
 8003c70:	e1a00009 	mov	r0, r9
 8003c74:	e28d1014 	add	r1, sp, #20
 8003c78:	eb0001ff 	bl	800447c <__gnu_unwind_execute>
 8003c7c:	e3500000 	cmp	r0, #0
 8003c80:	1affffc4 	bne	8003b98 <__gnu_unwind_pr_common+0x200>
 8003c84:	e59d3000 	ldr	r3, [sp]
 8003c88:	e3530000 	cmp	r3, #0
 8003c8c:	03a00008 	moveq	r0, #8
 8003c90:	0affffc1 	beq	8003b9c <__gnu_unwind_pr_common+0x204>
 8003c94:	e3a0100f 	mov	r1, #15
 8003c98:	e1a00009 	mov	r0, r9
 8003c9c:	ebfffeda 	bl	800380c <_Unwind_GetGR>
 8003ca0:	e3a0100e 	mov	r1, #14
 8003ca4:	e1a02000 	mov	r2, r0
 8003ca8:	e1a00009 	mov	r0, r9
 8003cac:	ebfffef9 	bl	8003898 <_Unwind_SetGR>
 8003cb0:	e1a00009 	mov	r0, r9
 8003cb4:	e3a0100f 	mov	r1, #15
 8003cb8:	e59f2128 	ldr	r2, [pc, #296]	; 8003de8 <__gnu_unwind_pr_common+0x450>
 8003cbc:	ebfffef5 	bl	8003898 <_Unwind_SetGR>
 8003cc0:	e3a00007 	mov	r0, #7
 8003cc4:	eaffffb4 	b	8003b9c <__gnu_unwind_pr_common+0x204>
 8003cc8:	e1a00009 	mov	r0, r9
 8003ccc:	e3a0100d 	mov	r1, #13
 8003cd0:	e595a020 	ldr	sl, [r5, #32]
 8003cd4:	ebfffecc 	bl	800380c <_Unwind_GetGR>
 8003cd8:	e15a0000 	cmp	sl, r0
 8003cdc:	0a000016 	beq	8003d3c <__gnu_unwind_pr_common+0x3a4>
 8003ce0:	e5963000 	ldr	r3, [r6]
 8003ce4:	eaffff9f 	b	8003b68 <__gnu_unwind_pr_common+0x1d0>
 8003ce8:	e1a00009 	mov	r0, r9
 8003cec:	e3a0100d 	mov	r1, #13
 8003cf0:	e5954020 	ldr	r4, [r5, #32]
 8003cf4:	ebfffec4 	bl	800380c <_Unwind_GetGR>
 8003cf8:	e1540000 	cmp	r4, r0
 8003cfc:	1affffd9 	bne	8003c68 <__gnu_unwind_pr_common+0x2d0>
 8003d00:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003d04:	e1560003 	cmp	r6, r3
 8003d08:	1affffd6 	bne	8003c68 <__gnu_unwind_pr_common+0x2d0>
 8003d0c:	e1a00006 	mov	r0, r6
 8003d10:	ebfffd12 	bl	8003160 <selfrel_offset31>
 8003d14:	e3a0100f 	mov	r1, #15
 8003d18:	e1a02000 	mov	r2, r0
 8003d1c:	e1a00009 	mov	r0, r9
 8003d20:	ebfffedc 	bl	8003898 <_Unwind_SetGR>
 8003d24:	e1a00009 	mov	r0, r9
 8003d28:	e1a02005 	mov	r2, r5
 8003d2c:	e3a01000 	mov	r1, #0
 8003d30:	ebfffed8 	bl	8003898 <_Unwind_SetGR>
 8003d34:	e3a00007 	mov	r0, #7
 8003d38:	eaffff97 	b	8003b9c <__gnu_unwind_pr_common+0x204>
 8003d3c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003d40:	e1560003 	cmp	r6, r3
 8003d44:	1affffe5 	bne	8003ce0 <__gnu_unwind_pr_common+0x348>
 8003d48:	e3a02000 	mov	r2, #0
 8003d4c:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003d50:	e3a02004 	mov	r2, #4
 8003d54:	e2863004 	add	r3, r6, #4
 8003d58:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003d5c:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003d60:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003d64:	e5963000 	ldr	r3, [r6]
 8003d68:	e3530000 	cmp	r3, #0
 8003d6c:	ba00001a 	blt	8003ddc <__gnu_unwind_pr_common+0x444>
 8003d70:	e3a03001 	mov	r3, #1
 8003d74:	e58d3000 	str	r3, [sp]
 8003d78:	eaffff7c 	b	8003b70 <__gnu_unwind_pr_common+0x1d8>
 8003d7c:	e1a00009 	mov	r0, r9
 8003d80:	e3a0100d 	mov	r1, #13
 8003d84:	ebfffea0 	bl	800380c <_Unwind_GetGR>
 8003d88:	e5850020 	str	r0, [r5, #32]
 8003d8c:	e59d3010 	ldr	r3, [sp, #16]
 8003d90:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003d94:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003d98:	e3a00006 	mov	r0, #6
 8003d9c:	eaffff7e 	b	8003b9c <__gnu_unwind_pr_common+0x204>
 8003da0:	e1a00006 	mov	r0, r6
 8003da4:	ebfffced 	bl	8003160 <selfrel_offset31>
 8003da8:	e2866004 	add	r6, r6, #4
 8003dac:	e1a04000 	mov	r4, r0
 8003db0:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003db4:	e1a00005 	mov	r0, r5
 8003db8:	e320f000 	nop	{0}
 8003dbc:	e3500000 	cmp	r0, #0
 8003dc0:	0affff74 	beq	8003b98 <__gnu_unwind_pr_common+0x200>
 8003dc4:	e1a00009 	mov	r0, r9
 8003dc8:	e1a02004 	mov	r2, r4
 8003dcc:	e3a0100f 	mov	r1, #15
 8003dd0:	ebfffeb0 	bl	8003898 <_Unwind_SetGR>
 8003dd4:	e3a00007 	mov	r0, #7
 8003dd8:	eaffff6f 	b	8003b9c <__gnu_unwind_pr_common+0x204>
 8003ddc:	e2840001 	add	r0, r4, #1
 8003de0:	e0860100 	add	r0, r6, r0, lsl #2
 8003de4:	eaffffc9 	b	8003d10 <__gnu_unwind_pr_common+0x378>
 8003de8:	00000000 	.word	0x00000000

08003dec <__aeabi_unwind_cpp_pr0>:
 8003dec:	e3a03000 	mov	r3, #0
 8003df0:	eafffee8 	b	8003998 <__gnu_unwind_pr_common>

08003df4 <__aeabi_unwind_cpp_pr1>:
 8003df4:	e3a03001 	mov	r3, #1
 8003df8:	eafffee6 	b	8003998 <__gnu_unwind_pr_common>

08003dfc <__aeabi_unwind_cpp_pr2>:
 8003dfc:	e3a03002 	mov	r3, #2
 8003e00:	eafffee4 	b	8003998 <__gnu_unwind_pr_common>

08003e04 <_Unwind_VRS_Pop>:
 8003e04:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003e08:	e1a04000 	mov	r4, r0
 8003e0c:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003e10:	e3510004 	cmp	r1, #4
 8003e14:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003e18:	ea000006 	b	8003e38 <_Unwind_VRS_Pop+0x34>
 8003e1c:	08004018 	.word	0x08004018
 8003e20:	08003eb0 	.word	0x08003eb0
 8003e24:	08003e38 	.word	0x08003e38
 8003e28:	08003e30 	.word	0x08003e30
 8003e2c:	08003e48 	.word	0x08003e48
 8003e30:	e3530003 	cmp	r3, #3
 8003e34:	0a00009c 	beq	80040ac <_Unwind_VRS_Pop+0x2a8>
 8003e38:	e3a00002 	mov	r0, #2
 8003e3c:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003e40:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003e44:	e12fff1e 	bx	lr
 8003e48:	e3520010 	cmp	r2, #16
 8003e4c:	93530000 	cmpls	r3, #0
 8003e50:	1afffff8 	bne	8003e38 <_Unwind_VRS_Pop+0x34>
 8003e54:	e5903000 	ldr	r3, [r0]
 8003e58:	e3130010 	tst	r3, #16
 8003e5c:	1a0000b1 	bne	8004128 <_Unwind_VRS_Pop+0x324>
 8003e60:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e64:	e1a00005 	mov	r0, r5
 8003e68:	e58d2004 	str	r2, [sp, #4]
 8003e6c:	eb00012b 	bl	8004320 <__gnu_Unwind_Save_WMMXC>
 8003e70:	e3a03000 	mov	r3, #0
 8003e74:	e3a00001 	mov	r0, #1
 8003e78:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e7c:	e59d2004 	ldr	r2, [sp, #4]
 8003e80:	e012c310 	ands	ip, r2, r0, lsl r3
 8003e84:	1591c000 	ldrne	ip, [r1]
 8003e88:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003e8c:	e2833001 	add	r3, r3, #1
 8003e90:	12811004 	addne	r1, r1, #4
 8003e94:	e3530004 	cmp	r3, #4
 8003e98:	1afffff8 	bne	8003e80 <_Unwind_VRS_Pop+0x7c>
 8003e9c:	e1a00005 	mov	r0, r5
 8003ea0:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003ea4:	eb000118 	bl	800430c <__gnu_Unwind_Restore_WMMXC>
 8003ea8:	e3a00000 	mov	r0, #0
 8003eac:	eaffffe2 	b	8003e3c <_Unwind_VRS_Pop+0x38>
 8003eb0:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003eb4:	e3510001 	cmp	r1, #1
 8003eb8:	1affffde 	bne	8003e38 <_Unwind_VRS_Pop+0x34>
 8003ebc:	e1a06802 	lsl	r6, r2, #16
 8003ec0:	e1a06826 	lsr	r6, r6, #16
 8003ec4:	e1a08822 	lsr	r8, r2, #16
 8003ec8:	e3530001 	cmp	r3, #1
 8003ecc:	e0861008 	add	r1, r6, r8
 8003ed0:	0a000063 	beq	8004064 <_Unwind_VRS_Pop+0x260>
 8003ed4:	e3510020 	cmp	r1, #32
 8003ed8:	8affffd6 	bhi	8003e38 <_Unwind_VRS_Pop+0x34>
 8003edc:	e358000f 	cmp	r8, #15
 8003ee0:	9a000096 	bls	8004140 <_Unwind_VRS_Pop+0x33c>
 8003ee4:	e1a07006 	mov	r7, r6
 8003ee8:	e3570000 	cmp	r7, #0
 8003eec:	13530005 	cmpne	r3, #5
 8003ef0:	13a09001 	movne	r9, #1
 8003ef4:	03a09000 	moveq	r9, #0
 8003ef8:	1affffce 	bne	8003e38 <_Unwind_VRS_Pop+0x34>
 8003efc:	e358000f 	cmp	r8, #15
 8003f00:	8a000096 	bhi	8004160 <_Unwind_VRS_Pop+0x35c>
 8003f04:	e5942000 	ldr	r2, [r4]
 8003f08:	e3120001 	tst	r2, #1
 8003f0c:	0a000093 	beq	8004160 <_Unwind_VRS_Pop+0x35c>
 8003f10:	e3530005 	cmp	r3, #5
 8003f14:	e3c23001 	bic	r3, r2, #1
 8003f18:	e5843000 	str	r3, [r4]
 8003f1c:	0a0000bb 	beq	8004210 <_Unwind_VRS_Pop+0x40c>
 8003f20:	e1a00004 	mov	r0, r4
 8003f24:	e3c22003 	bic	r2, r2, #3
 8003f28:	e4802048 	str	r2, [r0], #72	; 0x48
 8003f2c:	eb0000ca 	bl	800425c <__gnu_Unwind_Save_VFP>
 8003f30:	e3570000 	cmp	r7, #0
 8003f34:	0a000099 	beq	80041a0 <_Unwind_VRS_Pop+0x39c>
 8003f38:	e5943000 	ldr	r3, [r4]
 8003f3c:	e3130004 	tst	r3, #4
 8003f40:	1a0000ad 	bne	80041fc <_Unwind_VRS_Pop+0x3f8>
 8003f44:	e3590000 	cmp	r9, #0
 8003f48:	1a0000b7 	bne	800422c <_Unwind_VRS_Pop+0x428>
 8003f4c:	e358000f 	cmp	r8, #15
 8003f50:	8a000004 	bhi	8003f68 <_Unwind_VRS_Pop+0x164>
 8003f54:	e28d5088 	add	r5, sp, #136	; 0x88
 8003f58:	e1a00005 	mov	r0, r5
 8003f5c:	eb0000c2 	bl	800426c <__gnu_Unwind_Save_VFP_D>
 8003f60:	e3570000 	cmp	r7, #0
 8003f64:	0a00009b 	beq	80041d8 <_Unwind_VRS_Pop+0x3d4>
 8003f68:	e28d0008 	add	r0, sp, #8
 8003f6c:	eb0000c2 	bl	800427c <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003f70:	e2683010 	rsb	r3, r8, #16
 8003f74:	e3530000 	cmp	r3, #0
 8003f78:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003f7c:	da00000d 	ble	8003fb8 <_Unwind_VRS_Pop+0x1b4>
 8003f80:	e28d5088 	add	r5, sp, #136	; 0x88
 8003f84:	e1a00001 	mov	r0, r1
 8003f88:	e1a0e083 	lsl	lr, r3, #1
 8003f8c:	e0852188 	add	r2, r5, r8, lsl #3
 8003f90:	e2422004 	sub	r2, r2, #4
 8003f94:	e24e3001 	sub	r3, lr, #1
 8003f98:	e2433001 	sub	r3, r3, #1
 8003f9c:	e490c004 	ldr	ip, [r0], #4
 8003fa0:	e3730001 	cmn	r3, #1
 8003fa4:	e5a2c004 	str	ip, [r2, #4]!
 8003fa8:	1afffffa 	bne	8003f98 <_Unwind_VRS_Pop+0x194>
 8003fac:	e3570000 	cmp	r7, #0
 8003fb0:	e081110e 	add	r1, r1, lr, lsl #2
 8003fb4:	0a00000d 	beq	8003ff0 <_Unwind_VRS_Pop+0x1ec>
 8003fb8:	e3580010 	cmp	r8, #16
 8003fbc:	21a02008 	movcs	r2, r8
 8003fc0:	33a02010 	movcc	r2, #16
 8003fc4:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003fc8:	e0832182 	add	r2, r3, r2, lsl #3
 8003fcc:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003fd0:	e1a00087 	lsl	r0, r7, #1
 8003fd4:	e1a03001 	mov	r3, r1
 8003fd8:	e2422004 	sub	r2, r2, #4
 8003fdc:	e0811100 	add	r1, r1, r0, lsl #2
 8003fe0:	e4930004 	ldr	r0, [r3], #4
 8003fe4:	e1530001 	cmp	r3, r1
 8003fe8:	e5a20004 	str	r0, [r2, #4]!
 8003fec:	1afffffb 	bne	8003fe0 <_Unwind_VRS_Pop+0x1dc>
 8003ff0:	e3590000 	cmp	r9, #0
 8003ff4:	1a00007b 	bne	80041e8 <_Unwind_VRS_Pop+0x3e4>
 8003ff8:	e358000f 	cmp	r8, #15
 8003ffc:	e5841038 	str	r1, [r4, #56]	; 0x38
 8004000:	9a00007a 	bls	80041f0 <_Unwind_VRS_Pop+0x3ec>
 8004004:	e3570000 	cmp	r7, #0
 8004008:	128d0008 	addne	r0, sp, #8
 800400c:	1b000098 	blne	8004274 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8004010:	e3a00000 	mov	r0, #0
 8004014:	eaffff88 	b	8003e3c <_Unwind_VRS_Pop+0x38>
 8004018:	e3530000 	cmp	r3, #0
 800401c:	1affff85 	bne	8003e38 <_Unwind_VRS_Pop+0x34>
 8004020:	e3a0e001 	mov	lr, #1
 8004024:	e1a00802 	lsl	r0, r2, #16
 8004028:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 800402c:	e1a00820 	lsr	r0, r0, #16
 8004030:	e2841004 	add	r1, r4, #4
 8004034:	e010531e 	ands	r5, r0, lr, lsl r3
 8004038:	159c5000 	ldrne	r5, [ip]
 800403c:	e2833001 	add	r3, r3, #1
 8004040:	15815000 	strne	r5, [r1]
 8004044:	128cc004 	addne	ip, ip, #4
 8004048:	e3530010 	cmp	r3, #16
 800404c:	e2811004 	add	r1, r1, #4
 8004050:	1afffff7 	bne	8004034 <_Unwind_VRS_Pop+0x230>
 8004054:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8004058:	0584c038 	streq	ip, [r4, #56]	; 0x38
 800405c:	0affff76 	beq	8003e3c <_Unwind_VRS_Pop+0x38>
 8004060:	eaffffea 	b	8004010 <_Unwind_VRS_Pop+0x20c>
 8004064:	e3510010 	cmp	r1, #16
 8004068:	8affff72 	bhi	8003e38 <_Unwind_VRS_Pop+0x34>
 800406c:	e358000f 	cmp	r8, #15
 8004070:	91a09003 	movls	r9, r3
 8004074:	8affff6f 	bhi	8003e38 <_Unwind_VRS_Pop+0x34>
 8004078:	e5942000 	ldr	r2, [r4]
 800407c:	e3120001 	tst	r2, #1
 8004080:	0a000046 	beq	80041a0 <_Unwind_VRS_Pop+0x39c>
 8004084:	e3530005 	cmp	r3, #5
 8004088:	e3c23001 	bic	r3, r2, #1
 800408c:	e5843000 	str	r3, [r4]
 8004090:	e3a07000 	mov	r7, #0
 8004094:	1affffa1 	bne	8003f20 <_Unwind_VRS_Pop+0x11c>
 8004098:	e1a00004 	mov	r0, r4
 800409c:	e3833002 	orr	r3, r3, #2
 80040a0:	e4803048 	str	r3, [r0], #72	; 0x48
 80040a4:	eb000070 	bl	800426c <__gnu_Unwind_Save_VFP_D>
 80040a8:	eaffffa9 	b	8003f54 <_Unwind_VRS_Pop+0x150>
 80040ac:	e1a07802 	lsl	r7, r2, #16
 80040b0:	e1a07827 	lsr	r7, r7, #16
 80040b4:	e1a06822 	lsr	r6, r2, #16
 80040b8:	e0873006 	add	r3, r7, r6
 80040bc:	e3530010 	cmp	r3, #16
 80040c0:	8affff5c 	bhi	8003e38 <_Unwind_VRS_Pop+0x34>
 80040c4:	e5903000 	ldr	r3, [r0]
 80040c8:	e3130008 	tst	r3, #8
 80040cc:	1a00001f 	bne	8004150 <_Unwind_VRS_Pop+0x34c>
 80040d0:	e28d5088 	add	r5, sp, #136	; 0x88
 80040d4:	e1a07087 	lsl	r7, r7, #1
 80040d8:	e1a00005 	mov	r0, r5
 80040dc:	eb000079 	bl	80042c8 <__gnu_Unwind_Save_WMMXD>
 80040e0:	e3570000 	cmp	r7, #0
 80040e4:	e0852186 	add	r2, r5, r6, lsl #3
 80040e8:	e2473001 	sub	r3, r7, #1
 80040ec:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 80040f0:	0a000007 	beq	8004114 <_Unwind_VRS_Pop+0x310>
 80040f4:	e1a0100c 	mov	r1, ip
 80040f8:	e2422004 	sub	r2, r2, #4
 80040fc:	e2433001 	sub	r3, r3, #1
 8004100:	e4910004 	ldr	r0, [r1], #4
 8004104:	e3730001 	cmn	r3, #1
 8004108:	e5a20004 	str	r0, [r2, #4]!
 800410c:	1afffffa 	bne	80040fc <_Unwind_VRS_Pop+0x2f8>
 8004110:	e08cc107 	add	ip, ip, r7, lsl #2
 8004114:	e1a00005 	mov	r0, r5
 8004118:	e584c038 	str	ip, [r4, #56]	; 0x38
 800411c:	eb000058 	bl	8004284 <__gnu_Unwind_Restore_WMMXD>
 8004120:	e3a00000 	mov	r0, #0
 8004124:	eaffff44 	b	8003e3c <_Unwind_VRS_Pop+0x38>
 8004128:	e3c33010 	bic	r3, r3, #16
 800412c:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8004130:	e58d2004 	str	r2, [sp, #4]
 8004134:	eb000079 	bl	8004320 <__gnu_Unwind_Save_WMMXC>
 8004138:	e59d2004 	ldr	r2, [sp, #4]
 800413c:	eaffff47 	b	8003e60 <_Unwind_VRS_Pop+0x5c>
 8004140:	e3510010 	cmp	r1, #16
 8004144:	9a000013 	bls	8004198 <_Unwind_VRS_Pop+0x394>
 8004148:	e2417010 	sub	r7, r1, #16
 800414c:	eaffff65 	b	8003ee8 <_Unwind_VRS_Pop+0xe4>
 8004150:	e3c33008 	bic	r3, r3, #8
 8004154:	e4803150 	str	r3, [r0], #336	; 0x150
 8004158:	eb00005a 	bl	80042c8 <__gnu_Unwind_Save_WMMXD>
 800415c:	eaffffdb 	b	80040d0 <_Unwind_VRS_Pop+0x2cc>
 8004160:	e3570000 	cmp	r7, #0
 8004164:	1affff73 	bne	8003f38 <_Unwind_VRS_Pop+0x134>
 8004168:	e358000f 	cmp	r8, #15
 800416c:	93a09000 	movls	r9, #0
 8004170:	91a07009 	movls	r7, r9
 8004174:	9affff76 	bls	8003f54 <_Unwind_VRS_Pop+0x150>
 8004178:	e3a09000 	mov	r9, #0
 800417c:	e3560000 	cmp	r6, #0
 8004180:	e1a03006 	mov	r3, r6
 8004184:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004188:	11a07009 	movne	r7, r9
 800418c:	1affff7b 	bne	8003f80 <_Unwind_VRS_Pop+0x17c>
 8004190:	e1a07006 	mov	r7, r6
 8004194:	eaffff97 	b	8003ff8 <_Unwind_VRS_Pop+0x1f4>
 8004198:	e3a09000 	mov	r9, #0
 800419c:	eaffffb5 	b	8004078 <_Unwind_VRS_Pop+0x274>
 80041a0:	e3590000 	cmp	r9, #0
 80041a4:	0affffef 	beq	8004168 <_Unwind_VRS_Pop+0x364>
 80041a8:	e28d5088 	add	r5, sp, #136	; 0x88
 80041ac:	e1a00005 	mov	r0, r5
 80041b0:	eb000029 	bl	800425c <__gnu_Unwind_Save_VFP>
 80041b4:	e2563000 	subs	r3, r6, #0
 80041b8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80041bc:	13a07000 	movne	r7, #0
 80041c0:	1affff6f 	bne	8003f84 <_Unwind_VRS_Pop+0x180>
 80041c4:	e2811004 	add	r1, r1, #4
 80041c8:	e5841038 	str	r1, [r4, #56]	; 0x38
 80041cc:	e1a00005 	mov	r0, r5
 80041d0:	eb00001f 	bl	8004254 <__gnu_Unwind_Restore_VFP>
 80041d4:	eaffff8d 	b	8004010 <_Unwind_VRS_Pop+0x20c>
 80041d8:	e2563000 	subs	r3, r6, #0
 80041dc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80041e0:	1affff67 	bne	8003f84 <_Unwind_VRS_Pop+0x180>
 80041e4:	eaffff81 	b	8003ff0 <_Unwind_VRS_Pop+0x1ec>
 80041e8:	e28d5088 	add	r5, sp, #136	; 0x88
 80041ec:	eafffff4 	b	80041c4 <_Unwind_VRS_Pop+0x3c0>
 80041f0:	e28d0088 	add	r0, sp, #136	; 0x88
 80041f4:	eb00001a 	bl	8004264 <__gnu_Unwind_Restore_VFP_D>
 80041f8:	eaffff81 	b	8004004 <_Unwind_VRS_Pop+0x200>
 80041fc:	e1a00004 	mov	r0, r4
 8004200:	e3c33004 	bic	r3, r3, #4
 8004204:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8004208:	eb00001b 	bl	800427c <__gnu_Unwind_Save_VFP_D_16_to_31>
 800420c:	eaffff4c 	b	8003f44 <_Unwind_VRS_Pop+0x140>
 8004210:	e1a00004 	mov	r0, r4
 8004214:	e3833002 	orr	r3, r3, #2
 8004218:	e4803048 	str	r3, [r0], #72	; 0x48
 800421c:	eb000012 	bl	800426c <__gnu_Unwind_Save_VFP_D>
 8004220:	e3570000 	cmp	r7, #0
 8004224:	1affff43 	bne	8003f38 <_Unwind_VRS_Pop+0x134>
 8004228:	eaffff49 	b	8003f54 <_Unwind_VRS_Pop+0x150>
 800422c:	e28d0088 	add	r0, sp, #136	; 0x88
 8004230:	eb000009 	bl	800425c <__gnu_Unwind_Save_VFP>
 8004234:	eaffff4d 	b	8003f70 <_Unwind_VRS_Pop+0x16c>

08004238 <__restore_core_regs>:
 8004238:	e2801034 	add	r1, r0, #52	; 0x34
 800423c:	e8910038 	ldm	r1, {r3, r4, r5}
 8004240:	e1a02005 	mov	r2, r5
 8004244:	e92d001c 	push	{r2, r3, r4}
 8004248:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 800424c:	e89d7000 	ldm	sp, {ip, sp, lr}
 8004250:	e12fff1c 	bx	ip

08004254 <__gnu_Unwind_Restore_VFP>:
 8004254:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8004258:	e12fff1e 	bx	lr

0800425c <__gnu_Unwind_Save_VFP>:
 800425c:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8004260:	e12fff1e 	bx	lr

08004264 <__gnu_Unwind_Restore_VFP_D>:
 8004264:	ec900b20 	vldmia	r0, {d0-d15}
 8004268:	e12fff1e 	bx	lr

0800426c <__gnu_Unwind_Save_VFP_D>:
 800426c:	ec800b20 	vstmia	r0, {d0-d15}
 8004270:	e12fff1e 	bx	lr

08004274 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8004274:	ecd00b20 	vldmia	r0, {d16-d31}
 8004278:	e12fff1e 	bx	lr

0800427c <__gnu_Unwind_Save_VFP_D_16_to_31>:
 800427c:	ecc00b20 	vstmia	r0, {d16-d31}
 8004280:	e12fff1e 	bx	lr

08004284 <__gnu_Unwind_Restore_WMMXD>:
 8004284:	ecf00102 	ldfe	f0, [r0], #8
 8004288:	ecf01102 	ldfe	f1, [r0], #8
 800428c:	ecf02102 	ldfe	f2, [r0], #8
 8004290:	ecf03102 	ldfe	f3, [r0], #8
 8004294:	ecf04102 	ldfe	f4, [r0], #8
 8004298:	ecf05102 	ldfe	f5, [r0], #8
 800429c:	ecf06102 	ldfe	f6, [r0], #8
 80042a0:	ecf07102 	ldfe	f7, [r0], #8
 80042a4:	ecf08102 	ldfp	f0, [r0], #8
 80042a8:	ecf09102 	ldfp	f1, [r0], #8
 80042ac:	ecf0a102 	ldfp	f2, [r0], #8
 80042b0:	ecf0b102 	ldfp	f3, [r0], #8
 80042b4:	ecf0c102 	ldfp	f4, [r0], #8
 80042b8:	ecf0d102 	ldfp	f5, [r0], #8
 80042bc:	ecf0e102 	ldfp	f6, [r0], #8
 80042c0:	ecf0f102 	ldfp	f7, [r0], #8
 80042c4:	e12fff1e 	bx	lr

080042c8 <__gnu_Unwind_Save_WMMXD>:
 80042c8:	ece00102 	stfe	f0, [r0], #8
 80042cc:	ece01102 	stfe	f1, [r0], #8
 80042d0:	ece02102 	stfe	f2, [r0], #8
 80042d4:	ece03102 	stfe	f3, [r0], #8
 80042d8:	ece04102 	stfe	f4, [r0], #8
 80042dc:	ece05102 	stfe	f5, [r0], #8
 80042e0:	ece06102 	stfe	f6, [r0], #8
 80042e4:	ece07102 	stfe	f7, [r0], #8
 80042e8:	ece08102 	stfp	f0, [r0], #8
 80042ec:	ece09102 	stfp	f1, [r0], #8
 80042f0:	ece0a102 	stfp	f2, [r0], #8
 80042f4:	ece0b102 	stfp	f3, [r0], #8
 80042f8:	ece0c102 	stfp	f4, [r0], #8
 80042fc:	ece0d102 	stfp	f5, [r0], #8
 8004300:	ece0e102 	stfp	f6, [r0], #8
 8004304:	ece0f102 	stfp	f7, [r0], #8
 8004308:	e12fff1e 	bx	lr

0800430c <__gnu_Unwind_Restore_WMMXC>:
 800430c:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004310:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004314:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8004318:	fcb0b101 	ldc2	1, cr11, [r0], #4
 800431c:	e12fff1e 	bx	lr

08004320 <__gnu_Unwind_Save_WMMXC>:
 8004320:	fca08101 	stc2	1, cr8, [r0], #4
 8004324:	fca09101 	stc2	1, cr9, [r0], #4
 8004328:	fca0a101 	stc2	1, cr10, [r0], #4
 800432c:	fca0b101 	stc2	1, cr11, [r0], #4
 8004330:	e12fff1e 	bx	lr

08004334 <_Unwind_RaiseException>:
 8004334:	e92de000 	push	{sp, lr, pc}
 8004338:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800433c:	e3a03000 	mov	r3, #0
 8004340:	e92d000c 	push	{r2, r3}
 8004344:	e28d1004 	add	r1, sp, #4
 8004348:	ebfffcb8 	bl	8003630 <__gnu_Unwind_RaiseException>
 800434c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004350:	e28dd048 	add	sp, sp, #72	; 0x48
 8004354:	e12fff1e 	bx	lr

08004358 <_Unwind_Resume>:
 8004358:	e92de000 	push	{sp, lr, pc}
 800435c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004360:	e3a03000 	mov	r3, #0
 8004364:	e92d000c 	push	{r2, r3}
 8004368:	e28d1004 	add	r1, sp, #4
 800436c:	ebfffce4 	bl	8003704 <__gnu_Unwind_Resume>
 8004370:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004374:	e28dd048 	add	sp, sp, #72	; 0x48
 8004378:	e12fff1e 	bx	lr

0800437c <_Unwind_Resume_or_Rethrow>:
 800437c:	e92de000 	push	{sp, lr, pc}
 8004380:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004384:	e3a03000 	mov	r3, #0
 8004388:	e92d000c 	push	{r2, r3}
 800438c:	e28d1004 	add	r1, sp, #4
 8004390:	ebfffcf8 	bl	8003778 <__gnu_Unwind_Resume_or_Rethrow>
 8004394:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004398:	e28dd048 	add	sp, sp, #72	; 0x48
 800439c:	e12fff1e 	bx	lr

080043a0 <_Unwind_ForcedUnwind>:
 80043a0:	e92de000 	push	{sp, lr, pc}
 80043a4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80043a8:	e3a03000 	mov	r3, #0
 80043ac:	e92d000c 	push	{r2, r3}
 80043b0:	e28d3004 	add	r3, sp, #4
 80043b4:	ebfffcc9 	bl	80036e0 <__gnu_Unwind_ForcedUnwind>
 80043b8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80043bc:	e28dd048 	add	sp, sp, #72	; 0x48
 80043c0:	e12fff1e 	bx	lr

080043c4 <_Unwind_Backtrace>:
 80043c4:	e92de000 	push	{sp, lr, pc}
 80043c8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80043cc:	e3a03000 	mov	r3, #0
 80043d0:	e92d000c 	push	{r2, r3}
 80043d4:	e28d2004 	add	r2, sp, #4
 80043d8:	ebfffd3b 	bl	80038cc <__gnu_Unwind_Backtrace>
 80043dc:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80043e0:	e28dd048 	add	sp, sp, #72	; 0x48
 80043e4:	e12fff1e 	bx	lr

080043e8 <next_unwind_byte>:
 80043e8:	e5d03008 	ldrb	r3, [r0, #8]
 80043ec:	e3530000 	cmp	r3, #0
 80043f0:	1a000004 	bne	8004408 <next_unwind_byte+0x20>
 80043f4:	e5d03009 	ldrb	r3, [r0, #9]
 80043f8:	e3530000 	cmp	r3, #0
 80043fc:	1a000008 	bne	8004424 <next_unwind_byte+0x3c>
 8004400:	e3a000b0 	mov	r0, #176	; 0xb0
 8004404:	e12fff1e 	bx	lr
 8004408:	e2433001 	sub	r3, r3, #1
 800440c:	e5c03008 	strb	r3, [r0, #8]
 8004410:	e5903000 	ldr	r3, [r0]
 8004414:	e1a02403 	lsl	r2, r3, #8
 8004418:	e5802000 	str	r2, [r0]
 800441c:	e1a00c23 	lsr	r0, r3, #24
 8004420:	e12fff1e 	bx	lr
 8004424:	e3a01003 	mov	r1, #3
 8004428:	e5902004 	ldr	r2, [r0, #4]
 800442c:	e2433001 	sub	r3, r3, #1
 8004430:	e5c03009 	strb	r3, [r0, #9]
 8004434:	e282c004 	add	ip, r2, #4
 8004438:	e5923000 	ldr	r3, [r2]
 800443c:	e580c004 	str	ip, [r0, #4]
 8004440:	e5c01008 	strb	r1, [r0, #8]
 8004444:	eafffff2 	b	8004414 <next_unwind_byte+0x2c>

08004448 <_Unwind_GetGR.constprop.0>:
 8004448:	e3a01000 	mov	r1, #0
 800444c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004450:	e24dd014 	sub	sp, sp, #20
 8004454:	e28d200c 	add	r2, sp, #12
 8004458:	e58d2000 	str	r2, [sp]
 800445c:	e1a03001 	mov	r3, r1
 8004460:	e3a0200c 	mov	r2, #12
 8004464:	ebfffcd1 	bl	80037b0 <_Unwind_VRS_Get>
 8004468:	e59d000c 	ldr	r0, [sp, #12]
 800446c:	e28dd014 	add	sp, sp, #20
 8004470:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004474:	e12fff1e 	bx	lr

08004478 <unwind_UCB_from_context>:
 8004478:	eafffff2 	b	8004448 <_Unwind_GetGR.constprop.0>

0800447c <__gnu_unwind_execute>:
 800447c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8004480:	e1a07000 	mov	r7, r0
 8004484:	e1a05001 	mov	r5, r1
 8004488:	e3a08000 	mov	r8, #0
 800448c:	e24dd010 	sub	sp, sp, #16
 8004490:	e1a00005 	mov	r0, r5
 8004494:	ebffffd3 	bl	80043e8 <next_unwind_byte>
 8004498:	e35000b0 	cmp	r0, #176	; 0xb0
 800449c:	e1a04000 	mov	r4, r0
 80044a0:	0a00007d 	beq	800469c <__gnu_unwind_execute+0x220>
 80044a4:	e2101080 	ands	r1, r0, #128	; 0x80
 80044a8:	0a00001a 	beq	8004518 <__gnu_unwind_execute+0x9c>
 80044ac:	e20030f0 	and	r3, r0, #240	; 0xf0
 80044b0:	e3530080 	cmp	r3, #128	; 0x80
 80044b4:	0a000054 	beq	800460c <__gnu_unwind_execute+0x190>
 80044b8:	e3530090 	cmp	r3, #144	; 0x90
 80044bc:	0a00002b 	beq	8004570 <__gnu_unwind_execute+0xf4>
 80044c0:	e35300a0 	cmp	r3, #160	; 0xa0
 80044c4:	0a000034 	beq	800459c <__gnu_unwind_execute+0x120>
 80044c8:	e35300b0 	cmp	r3, #176	; 0xb0
 80044cc:	0a000040 	beq	80045d4 <__gnu_unwind_execute+0x158>
 80044d0:	e35300c0 	cmp	r3, #192	; 0xc0
 80044d4:	0a00005e 	beq	8004654 <__gnu_unwind_execute+0x1d8>
 80044d8:	e20030f8 	and	r3, r0, #248	; 0xf8
 80044dc:	e35300d0 	cmp	r3, #208	; 0xd0
 80044e0:	1a000008 	bne	8004508 <__gnu_unwind_execute+0x8c>
 80044e4:	e2002007 	and	r2, r0, #7
 80044e8:	e2822001 	add	r2, r2, #1
 80044ec:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80044f0:	e1a00007 	mov	r0, r7
 80044f4:	e3a01001 	mov	r1, #1
 80044f8:	e3a03005 	mov	r3, #5
 80044fc:	ebfffe40 	bl	8003e04 <_Unwind_VRS_Pop>
 8004500:	e3500000 	cmp	r0, #0
 8004504:	0affffe1 	beq	8004490 <__gnu_unwind_execute+0x14>
 8004508:	e3a00009 	mov	r0, #9
 800450c:	e28dd010 	add	sp, sp, #16
 8004510:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004514:	e12fff1e 	bx	lr
 8004518:	e28d300c 	add	r3, sp, #12
 800451c:	e1a06100 	lsl	r6, r0, #2
 8004520:	e58d3000 	str	r3, [sp]
 8004524:	e1a00007 	mov	r0, r7
 8004528:	e1a03001 	mov	r3, r1
 800452c:	e3a0200d 	mov	r2, #13
 8004530:	ebfffc9e 	bl	80037b0 <_Unwind_VRS_Get>
 8004534:	e20660ff 	and	r6, r6, #255	; 0xff
 8004538:	e59d300c 	ldr	r3, [sp, #12]
 800453c:	e2866004 	add	r6, r6, #4
 8004540:	e3140040 	tst	r4, #64	; 0x40
 8004544:	10666003 	rsbne	r6, r6, r3
 8004548:	00836006 	addeq	r6, r3, r6
 800454c:	e58d600c 	str	r6, [sp, #12]
 8004550:	e3a01000 	mov	r1, #0
 8004554:	e28d300c 	add	r3, sp, #12
 8004558:	e58d3000 	str	r3, [sp]
 800455c:	e1a00007 	mov	r0, r7
 8004560:	e1a03001 	mov	r3, r1
 8004564:	e3a0200d 	mov	r2, #13
 8004568:	ebfffcb3 	bl	800383c <_Unwind_VRS_Set>
 800456c:	eaffffc7 	b	8004490 <__gnu_unwind_execute+0x14>
 8004570:	e200300d 	and	r3, r0, #13
 8004574:	e353000d 	cmp	r3, #13
 8004578:	0affffe2 	beq	8004508 <__gnu_unwind_execute+0x8c>
 800457c:	e3a01000 	mov	r1, #0
 8004580:	e28d300c 	add	r3, sp, #12
 8004584:	e58d3000 	str	r3, [sp]
 8004588:	e200200f 	and	r2, r0, #15
 800458c:	e1a03001 	mov	r3, r1
 8004590:	e1a00007 	mov	r0, r7
 8004594:	ebfffc85 	bl	80037b0 <_Unwind_VRS_Get>
 8004598:	eaffffec 	b	8004550 <__gnu_unwind_execute+0xd4>
 800459c:	e1e02000 	mvn	r2, r0
 80045a0:	e3a03eff 	mov	r3, #4080	; 0xff0
 80045a4:	e3a01000 	mov	r1, #0
 80045a8:	e2022007 	and	r2, r2, #7
 80045ac:	e1a02253 	asr	r2, r3, r2
 80045b0:	e3100008 	tst	r0, #8
 80045b4:	e0022003 	and	r2, r2, r3
 80045b8:	13822901 	orrne	r2, r2, #16384	; 0x4000
 80045bc:	e1a03001 	mov	r3, r1
 80045c0:	e1a00007 	mov	r0, r7
 80045c4:	ebfffe0e 	bl	8003e04 <_Unwind_VRS_Pop>
 80045c8:	e3500000 	cmp	r0, #0
 80045cc:	1affffcd 	bne	8004508 <__gnu_unwind_execute+0x8c>
 80045d0:	eaffffae 	b	8004490 <__gnu_unwind_execute+0x14>
 80045d4:	e35000b1 	cmp	r0, #177	; 0xb1
 80045d8:	0a000041 	beq	80046e4 <__gnu_unwind_execute+0x268>
 80045dc:	e35000b2 	cmp	r0, #178	; 0xb2
 80045e0:	0a00004b 	beq	8004714 <__gnu_unwind_execute+0x298>
 80045e4:	e35000b3 	cmp	r0, #179	; 0xb3
 80045e8:	0a00006b 	beq	800479c <__gnu_unwind_execute+0x320>
 80045ec:	e20030fc 	and	r3, r0, #252	; 0xfc
 80045f0:	e35300b4 	cmp	r3, #180	; 0xb4
 80045f4:	0affffc3 	beq	8004508 <__gnu_unwind_execute+0x8c>
 80045f8:	e3a01001 	mov	r1, #1
 80045fc:	e2002007 	and	r2, r0, #7
 8004600:	e0822001 	add	r2, r2, r1
 8004604:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004608:	eaffffeb 	b	80045bc <__gnu_unwind_execute+0x140>
 800460c:	e1a00005 	mov	r0, r5
 8004610:	ebffff74 	bl	80043e8 <next_unwind_byte>
 8004614:	e1a04404 	lsl	r4, r4, #8
 8004618:	e1804004 	orr	r4, r0, r4
 800461c:	e3540902 	cmp	r4, #32768	; 0x8000
 8004620:	0affffb8 	beq	8004508 <__gnu_unwind_execute+0x8c>
 8004624:	e3a01000 	mov	r1, #0
 8004628:	e1a02a04 	lsl	r2, r4, #20
 800462c:	e1a03001 	mov	r3, r1
 8004630:	e1a02822 	lsr	r2, r2, #16
 8004634:	e1a00007 	mov	r0, r7
 8004638:	ebfffdf1 	bl	8003e04 <_Unwind_VRS_Pop>
 800463c:	e3500000 	cmp	r0, #0
 8004640:	e1a04204 	lsl	r4, r4, #4
 8004644:	1affffaf 	bne	8004508 <__gnu_unwind_execute+0x8c>
 8004648:	e3140902 	tst	r4, #32768	; 0x8000
 800464c:	13a08001 	movne	r8, #1
 8004650:	eaffff8e 	b	8004490 <__gnu_unwind_execute+0x14>
 8004654:	e35000c6 	cmp	r0, #198	; 0xc6
 8004658:	0a000057 	beq	80047bc <__gnu_unwind_execute+0x340>
 800465c:	e35000c7 	cmp	r0, #199	; 0xc7
 8004660:	0a00005d 	beq	80047dc <__gnu_unwind_execute+0x360>
 8004664:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004668:	e35300c0 	cmp	r3, #192	; 0xc0
 800466c:	0a000066 	beq	800480c <__gnu_unwind_execute+0x390>
 8004670:	e35000c8 	cmp	r0, #200	; 0xc8
 8004674:	0a000069 	beq	8004820 <__gnu_unwind_execute+0x3a4>
 8004678:	e35000c9 	cmp	r0, #201	; 0xc9
 800467c:	1affffa1 	bne	8004508 <__gnu_unwind_execute+0x8c>
 8004680:	e1a00005 	mov	r0, r5
 8004684:	ebffff57 	bl	80043e8 <next_unwind_byte>
 8004688:	e200200f 	and	r2, r0, #15
 800468c:	e2822001 	add	r2, r2, #1
 8004690:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004694:	e1822600 	orr	r2, r2, r0, lsl #12
 8004698:	eaffff94 	b	80044f0 <__gnu_unwind_execute+0x74>
 800469c:	e3580000 	cmp	r8, #0
 80046a0:	13a00000 	movne	r0, #0
 80046a4:	1affff98 	bne	800450c <__gnu_unwind_execute+0x90>
 80046a8:	e28d400c 	add	r4, sp, #12
 80046ac:	e1a01008 	mov	r1, r8
 80046b0:	e3a0200e 	mov	r2, #14
 80046b4:	e1a03008 	mov	r3, r8
 80046b8:	e58d4000 	str	r4, [sp]
 80046bc:	e1a00007 	mov	r0, r7
 80046c0:	ebfffc3a 	bl	80037b0 <_Unwind_VRS_Get>
 80046c4:	e58d4000 	str	r4, [sp]
 80046c8:	e1a00007 	mov	r0, r7
 80046cc:	e1a01008 	mov	r1, r8
 80046d0:	e3a0200f 	mov	r2, #15
 80046d4:	e1a03008 	mov	r3, r8
 80046d8:	ebfffc57 	bl	800383c <_Unwind_VRS_Set>
 80046dc:	e1a00008 	mov	r0, r8
 80046e0:	eaffff89 	b	800450c <__gnu_unwind_execute+0x90>
 80046e4:	e1a00005 	mov	r0, r5
 80046e8:	ebffff3e 	bl	80043e8 <next_unwind_byte>
 80046ec:	e2502000 	subs	r2, r0, #0
 80046f0:	0affff84 	beq	8004508 <__gnu_unwind_execute+0x8c>
 80046f4:	e21210f0 	ands	r1, r2, #240	; 0xf0
 80046f8:	1affff82 	bne	8004508 <__gnu_unwind_execute+0x8c>
 80046fc:	e1a00007 	mov	r0, r7
 8004700:	e1a03001 	mov	r3, r1
 8004704:	ebfffdbe 	bl	8003e04 <_Unwind_VRS_Pop>
 8004708:	e3500000 	cmp	r0, #0
 800470c:	1affff7d 	bne	8004508 <__gnu_unwind_execute+0x8c>
 8004710:	eaffff5e 	b	8004490 <__gnu_unwind_execute+0x14>
 8004714:	e3a01000 	mov	r1, #0
 8004718:	e28d300c 	add	r3, sp, #12
 800471c:	e58d3000 	str	r3, [sp]
 8004720:	e3a0200d 	mov	r2, #13
 8004724:	e1a03001 	mov	r3, r1
 8004728:	e1a00007 	mov	r0, r7
 800472c:	ebfffc1f 	bl	80037b0 <_Unwind_VRS_Get>
 8004730:	e1a00005 	mov	r0, r5
 8004734:	ebffff2b 	bl	80043e8 <next_unwind_byte>
 8004738:	e3100080 	tst	r0, #128	; 0x80
 800473c:	e3a04002 	mov	r4, #2
 8004740:	0a000008 	beq	8004768 <__gnu_unwind_execute+0x2ec>
 8004744:	e59d300c 	ldr	r3, [sp, #12]
 8004748:	e200007f 	and	r0, r0, #127	; 0x7f
 800474c:	e0833410 	add	r3, r3, r0, lsl r4
 8004750:	e1a00005 	mov	r0, r5
 8004754:	e58d300c 	str	r3, [sp, #12]
 8004758:	ebffff22 	bl	80043e8 <next_unwind_byte>
 800475c:	e3100080 	tst	r0, #128	; 0x80
 8004760:	e2844007 	add	r4, r4, #7
 8004764:	1afffff6 	bne	8004744 <__gnu_unwind_execute+0x2c8>
 8004768:	e3a01000 	mov	r1, #0
 800476c:	e59d300c 	ldr	r3, [sp, #12]
 8004770:	e28d200c 	add	r2, sp, #12
 8004774:	e200007f 	and	r0, r0, #127	; 0x7f
 8004778:	e2833f81 	add	r3, r3, #516	; 0x204
 800477c:	e0834410 	add	r4, r3, r0, lsl r4
 8004780:	e58d2000 	str	r2, [sp]
 8004784:	e1a03001 	mov	r3, r1
 8004788:	e1a00007 	mov	r0, r7
 800478c:	e3a0200d 	mov	r2, #13
 8004790:	e58d400c 	str	r4, [sp, #12]
 8004794:	ebfffc28 	bl	800383c <_Unwind_VRS_Set>
 8004798:	eaffff3c 	b	8004490 <__gnu_unwind_execute+0x14>
 800479c:	e1a00005 	mov	r0, r5
 80047a0:	ebffff10 	bl	80043e8 <next_unwind_byte>
 80047a4:	e3a01001 	mov	r1, #1
 80047a8:	e200200f 	and	r2, r0, #15
 80047ac:	e0822001 	add	r2, r2, r1
 80047b0:	e20000f0 	and	r0, r0, #240	; 0xf0
 80047b4:	e1822600 	orr	r2, r2, r0, lsl #12
 80047b8:	eaffff7f 	b	80045bc <__gnu_unwind_execute+0x140>
 80047bc:	e1a00005 	mov	r0, r5
 80047c0:	ebffff08 	bl	80043e8 <next_unwind_byte>
 80047c4:	e200200f 	and	r2, r0, #15
 80047c8:	e2822001 	add	r2, r2, #1
 80047cc:	e20000f0 	and	r0, r0, #240	; 0xf0
 80047d0:	e3a01003 	mov	r1, #3
 80047d4:	e1822600 	orr	r2, r2, r0, lsl #12
 80047d8:	eaffff77 	b	80045bc <__gnu_unwind_execute+0x140>
 80047dc:	e1a00005 	mov	r0, r5
 80047e0:	ebffff00 	bl	80043e8 <next_unwind_byte>
 80047e4:	e2502000 	subs	r2, r0, #0
 80047e8:	0affff46 	beq	8004508 <__gnu_unwind_execute+0x8c>
 80047ec:	e21230f0 	ands	r3, r2, #240	; 0xf0
 80047f0:	1affff44 	bne	8004508 <__gnu_unwind_execute+0x8c>
 80047f4:	e1a00007 	mov	r0, r7
 80047f8:	e3a01004 	mov	r1, #4
 80047fc:	ebfffd80 	bl	8003e04 <_Unwind_VRS_Pop>
 8004800:	e3500000 	cmp	r0, #0
 8004804:	1affff3f 	bne	8004508 <__gnu_unwind_execute+0x8c>
 8004808:	eaffff20 	b	8004490 <__gnu_unwind_execute+0x14>
 800480c:	e200200f 	and	r2, r0, #15
 8004810:	e2822001 	add	r2, r2, #1
 8004814:	e3a01003 	mov	r1, #3
 8004818:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 800481c:	eaffff66 	b	80045bc <__gnu_unwind_execute+0x140>
 8004820:	e1a00005 	mov	r0, r5
 8004824:	ebfffeef 	bl	80043e8 <next_unwind_byte>
 8004828:	e20020f0 	and	r2, r0, #240	; 0xf0
 800482c:	e200300f 	and	r3, r0, #15
 8004830:	e2822010 	add	r2, r2, #16
 8004834:	e2833001 	add	r3, r3, #1
 8004838:	e1832602 	orr	r2, r3, r2, lsl #12
 800483c:	eaffff2b 	b	80044f0 <__gnu_unwind_execute+0x74>

08004840 <__gnu_unwind_frame>:
 8004840:	e3a0c003 	mov	ip, #3
 8004844:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004848:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800484c:	e24dd014 	sub	sp, sp, #20
 8004850:	e5932004 	ldr	r2, [r3, #4]
 8004854:	e5cdc00c 	strb	ip, [sp, #12]
 8004858:	e5d3c007 	ldrb	ip, [r3, #7]
 800485c:	e1a02402 	lsl	r2, r2, #8
 8004860:	e2833008 	add	r3, r3, #8
 8004864:	e1a00001 	mov	r0, r1
 8004868:	e28d1004 	add	r1, sp, #4
 800486c:	e58d2004 	str	r2, [sp, #4]
 8004870:	e5cdc00d 	strb	ip, [sp, #13]
 8004874:	e58d3008 	str	r3, [sp, #8]
 8004878:	ebfffeff 	bl	800447c <__gnu_unwind_execute>
 800487c:	e28dd014 	add	sp, sp, #20
 8004880:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004884:	e12fff1e 	bx	lr

08004888 <_Unwind_GetRegionStart>:
 8004888:	e92d4008 	push	{r3, lr}
 800488c:	ebfffef9 	bl	8004478 <unwind_UCB_from_context>
 8004890:	e8bd4008 	pop	{r3, lr}
 8004894:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8004898:	e12fff1e 	bx	lr

0800489c <_Unwind_GetLanguageSpecificData>:
 800489c:	e92d4008 	push	{r3, lr}
 80048a0:	ebfffef4 	bl	8004478 <unwind_UCB_from_context>
 80048a4:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80048a8:	e5d30007 	ldrb	r0, [r3, #7]
 80048ac:	e0830100 	add	r0, r3, r0, lsl #2
 80048b0:	e2800008 	add	r0, r0, #8
 80048b4:	e8bd4008 	pop	{r3, lr}
 80048b8:	e12fff1e 	bx	lr

080048bc <_Unwind_GetDataRelBase>:
 80048bc:	e92d4008 	push	{r3, lr}
 80048c0:	eb000001 	bl	80048cc <abort>

080048c4 <_Unwind_GetTextRelBase>:
 80048c4:	e92d4008 	push	{r3, lr}
 80048c8:	ebffffff 	bl	80048cc <abort>

080048cc <abort>:
 80048cc:	e92d4008 	push	{r3, lr}
 80048d0:	e3a00006 	mov	r0, #6
 80048d4:	eb000063 	bl	8004a68 <raise>
 80048d8:	e3a00001 	mov	r0, #1
 80048dc:	eb000086 	bl	8004afc <_exit>

080048e0 <memcpy>:
 80048e0:	e352000f 	cmp	r2, #15
 80048e4:	e92d4070 	push	{r4, r5, r6, lr}
 80048e8:	9a000029 	bls	8004994 <memcpy+0xb4>
 80048ec:	e1803001 	orr	r3, r0, r1
 80048f0:	e3130003 	tst	r3, #3
 80048f4:	1a000031 	bne	80049c0 <memcpy+0xe0>
 80048f8:	e1a0e002 	mov	lr, r2
 80048fc:	e280c010 	add	ip, r0, #16
 8004900:	e2813010 	add	r3, r1, #16
 8004904:	e5134010 	ldr	r4, [r3, #-16]
 8004908:	e50c4010 	str	r4, [ip, #-16]
 800490c:	e513400c 	ldr	r4, [r3, #-12]
 8004910:	e50c400c 	str	r4, [ip, #-12]
 8004914:	e5134008 	ldr	r4, [r3, #-8]
 8004918:	e50c4008 	str	r4, [ip, #-8]
 800491c:	e24ee010 	sub	lr, lr, #16
 8004920:	e5134004 	ldr	r4, [r3, #-4]
 8004924:	e35e000f 	cmp	lr, #15
 8004928:	e50c4004 	str	r4, [ip, #-4]
 800492c:	e2833010 	add	r3, r3, #16
 8004930:	e28cc010 	add	ip, ip, #16
 8004934:	8afffff2 	bhi	8004904 <memcpy+0x24>
 8004938:	e2423010 	sub	r3, r2, #16
 800493c:	e3c3300f 	bic	r3, r3, #15
 8004940:	e202600f 	and	r6, r2, #15
 8004944:	e2833010 	add	r3, r3, #16
 8004948:	e3560003 	cmp	r6, #3
 800494c:	e0811003 	add	r1, r1, r3
 8004950:	e0803003 	add	r3, r0, r3
 8004954:	9a00001b 	bls	80049c8 <memcpy+0xe8>
 8004958:	e1a04001 	mov	r4, r1
 800495c:	e1a0c006 	mov	ip, r6
 8004960:	e243e004 	sub	lr, r3, #4
 8004964:	e24cc004 	sub	ip, ip, #4
 8004968:	e4945004 	ldr	r5, [r4], #4
 800496c:	e35c0003 	cmp	ip, #3
 8004970:	e5ae5004 	str	r5, [lr, #4]!
 8004974:	8afffffa 	bhi	8004964 <memcpy+0x84>
 8004978:	e246c004 	sub	ip, r6, #4
 800497c:	e3ccc003 	bic	ip, ip, #3
 8004980:	e28cc004 	add	ip, ip, #4
 8004984:	e083300c 	add	r3, r3, ip
 8004988:	e081100c 	add	r1, r1, ip
 800498c:	e2022003 	and	r2, r2, #3
 8004990:	ea000000 	b	8004998 <memcpy+0xb8>
 8004994:	e1a03000 	mov	r3, r0
 8004998:	e3520000 	cmp	r2, #0
 800499c:	0a000005 	beq	80049b8 <memcpy+0xd8>
 80049a0:	e2433001 	sub	r3, r3, #1
 80049a4:	e0812002 	add	r2, r1, r2
 80049a8:	e4d1c001 	ldrb	ip, [r1], #1
 80049ac:	e1510002 	cmp	r1, r2
 80049b0:	e5e3c001 	strb	ip, [r3, #1]!
 80049b4:	1afffffb 	bne	80049a8 <memcpy+0xc8>
 80049b8:	e8bd4070 	pop	{r4, r5, r6, lr}
 80049bc:	e12fff1e 	bx	lr
 80049c0:	e1a03000 	mov	r3, r0
 80049c4:	eafffff5 	b	80049a0 <memcpy+0xc0>
 80049c8:	e1a02006 	mov	r2, r6
 80049cc:	eafffff1 	b	8004998 <memcpy+0xb8>

080049d0 <_raise_r>:
 80049d0:	e351001f 	cmp	r1, #31
 80049d4:	e92d4038 	push	{r3, r4, r5, lr}
 80049d8:	e1a05000 	mov	r5, r0
 80049dc:	83a03016 	movhi	r3, #22
 80049e0:	83e00000 	mvnhi	r0, #0
 80049e4:	85853000 	strhi	r3, [r5]
 80049e8:	8a000013 	bhi	8004a3c <_raise_r+0x6c>
 80049ec:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 80049f0:	e3520000 	cmp	r2, #0
 80049f4:	e1a04001 	mov	r4, r1
 80049f8:	0a000013 	beq	8004a4c <_raise_r+0x7c>
 80049fc:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004a00:	e3530000 	cmp	r3, #0
 8004a04:	0a000010 	beq	8004a4c <_raise_r+0x7c>
 8004a08:	e3530001 	cmp	r3, #1
 8004a0c:	0a00000c 	beq	8004a44 <_raise_r+0x74>
 8004a10:	e3730001 	cmn	r3, #1
 8004a14:	03a03016 	moveq	r3, #22
 8004a18:	03a00001 	moveq	r0, #1
 8004a1c:	05853000 	streq	r3, [r5]
 8004a20:	0a000005 	beq	8004a3c <_raise_r+0x6c>
 8004a24:	e3a05000 	mov	r5, #0
 8004a28:	e1a00001 	mov	r0, r1
 8004a2c:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004a30:	e1a0e00f 	mov	lr, pc
 8004a34:	e12fff13 	bx	r3
 8004a38:	e1a00005 	mov	r0, r5
 8004a3c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004a40:	e12fff1e 	bx	lr
 8004a44:	e3a00000 	mov	r0, #0
 8004a48:	eafffffb 	b	8004a3c <_raise_r+0x6c>
 8004a4c:	e1a00005 	mov	r0, r5
 8004a50:	eb000019 	bl	8004abc <_getpid_r>
 8004a54:	e1a02004 	mov	r2, r4
 8004a58:	e1a01000 	mov	r1, r0
 8004a5c:	e1a00005 	mov	r0, r5
 8004a60:	eb000005 	bl	8004a7c <_kill_r>
 8004a64:	eafffff4 	b	8004a3c <_raise_r+0x6c>

08004a68 <raise>:
 8004a68:	e59f3008 	ldr	r3, [pc, #8]	; 8004a78 <raise+0x10>
 8004a6c:	e1a01000 	mov	r1, r0
 8004a70:	e5930000 	ldr	r0, [r3]
 8004a74:	eaffffd5 	b	80049d0 <_raise_r>
 8004a78:	20000528 	.word	0x20000528

08004a7c <_kill_r>:
 8004a7c:	e92d4038 	push	{r3, r4, r5, lr}
 8004a80:	e3a03000 	mov	r3, #0
 8004a84:	e59f402c 	ldr	r4, [pc, #44]	; 8004ab8 <_kill_r+0x3c>
 8004a88:	e1a05000 	mov	r5, r0
 8004a8c:	e1a00001 	mov	r0, r1
 8004a90:	e1a01002 	mov	r1, r2
 8004a94:	e5843000 	str	r3, [r4]
 8004a98:	eb000011 	bl	8004ae4 <_kill>
 8004a9c:	e3700001 	cmn	r0, #1
 8004aa0:	1a000002 	bne	8004ab0 <_kill_r+0x34>
 8004aa4:	e5943000 	ldr	r3, [r4]
 8004aa8:	e3530000 	cmp	r3, #0
 8004aac:	15853000 	strne	r3, [r5]
 8004ab0:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004ab4:	e12fff1e 	bx	lr
 8004ab8:	2000109c 	.word	0x2000109c

08004abc <_getpid_r>:
 8004abc:	e92d4008 	push	{r3, lr}
 8004ac0:	eb000001 	bl	8004acc <_getpid>
 8004ac4:	e8bd4008 	pop	{r3, lr}
 8004ac8:	e12fff1e 	bx	lr

08004acc <_getpid>:
 8004acc:	e3a02058 	mov	r2, #88	; 0x58
 8004ad0:	e59f3008 	ldr	r3, [pc, #8]	; 8004ae0 <_getpid+0x14>
 8004ad4:	e3e00000 	mvn	r0, #0
 8004ad8:	e5832000 	str	r2, [r3]
 8004adc:	e12fff1e 	bx	lr
 8004ae0:	2000109c 	.word	0x2000109c

08004ae4 <_kill>:
 8004ae4:	e3a02058 	mov	r2, #88	; 0x58
 8004ae8:	e59f3008 	ldr	r3, [pc, #8]	; 8004af8 <_kill+0x14>
 8004aec:	e3e00000 	mvn	r0, #0
 8004af0:	e5832000 	str	r2, [r3]
 8004af4:	e12fff1e 	bx	lr
 8004af8:	2000109c 	.word	0x2000109c

08004afc <_exit>:
 8004afc:	eafffffe 	b	8004afc <_exit>

08004b00 <_init>:
 8004b00:	e1a0c00d 	mov	ip, sp
 8004b04:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004b08:	e24cb004 	sub	fp, ip, #4
 8004b0c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004b10:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004b14:	e12fff1e 	bx	lr

08004b18 <_fini>:
 8004b18:	e1a0c00d 	mov	ip, sp
 8004b1c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004b20:	e24cb004 	sub	fp, ip, #4
 8004b24:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004b28:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004b2c:	e12fff1e 	bx	lr
 8004b30:	453e3e3e 	.word	0x453e3e3e
 8004b34:	72652020 	.word	0x72652020
 8004b38:	20726f72 	.word	0x20726f72
 8004b3c:	65646f63 	.word	0x65646f63
 8004b40:	3a752520 	.word	0x3a752520
 8004b44:	000a7525 	.word	0x000a7525
 8004b48:	433e3e3e 	.word	0x433e3e3e
 8004b4c:	69250020 	.word	0x69250020
 8004b50:	20692520 	.word	0x20692520
 8004b54:	25206925 	.word	0x25206925
 8004b58:	25002069 	.word	0x25002069
 8004b5c:	69252069 	.word	0x69252069
 8004b60:	20752520 	.word	0x20752520
 8004b64:	00206925 	.word	0x00206925
 8004b68:	3e000a0a 	.word	0x3e000a0a
 8004b6c:	204c3e3e 	.word	0x204c3e3e
 8004b70:	20692500 	.word	0x20692500
 8004b74:	25206925 	.word	0x25206925
 8004b78:	75252075 	.word	0x75252075
 8004b7c:	3e3e0020 	.word	0x3e3e0020
 8004b80:	00204f3e 	.word	0x00204f3e
 8004b84:	493e3e3e 	.word	0x493e3e3e
 8004b88:	3e3e0020 	.word	0x3e3e0020
 8004b8c:	0a002053 	.word	0x0a002053
 8004b90:	636c6577 	.word	0x636c6577
 8004b94:	20656d6f 	.word	0x20656d6f
 8004b98:	53206f74 	.word	0x53206f74
 8004b9c:	68757a75 	.word	0x68757a75
 8004ba0:	20534f61 	.word	0x20534f61
 8004ba4:	205e5f5e 	.word	0x205e5f5e
 8004ba8:	2e302e32 	.word	0x2e302e32
 8004bac:	55420a36 	.word	0x55420a36
 8004bb0:	20444c49 	.word	0x20444c49
 8004bb4:	206e754a 	.word	0x206e754a
 8004bb8:	32203232 	.word	0x32203232
 8004bbc:	20363130 	.word	0x20363130
 8004bc0:	353a3231 	.word	0x353a3231
 8004bc4:	33323a30 	.word	0x33323a30
 8004bc8:	6e65000a 	.word	0x6e65000a
 8004bcc:	65646f63 	.word	0x65646f63
 8004bd0:	25207372 	.word	0x25207372
 8004bd4:	75252075 	.word	0x75252075
 8004bd8:	2c752520 	.word	0x2c752520
 8004bdc:	77617920 	.word	0x77617920
 8004be0:	0a692520 	.word	0x0a692520
 8004be4:	00          	.byte	0x00
 8004be5:	73          	.byte	0x73
 8004be6:	6474      	.short	0x6474
 8004be8:	69206f69 	.word	0x69206f69
 8004bec:	2074696e 	.word	0x2074696e
 8004bf0:	656e6f64 	.word	0x656e6f64
 8004bf4:	0000000a 	.word	0x0000000a
 8004bf8:	00000043 	.word	0x00000043

08004bfc <__EH_FRAME_BEGIN__>:
 8004bfc:	00000000                                ....
