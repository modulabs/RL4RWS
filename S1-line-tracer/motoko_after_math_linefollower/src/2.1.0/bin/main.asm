
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
 80001c6:	f002 bcc7 	b.w	8002b58 <drv8834_run>

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
 80001e0:	f001 fd2c 	bl	8001c3c <rgb_get>
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
 800020e:	f001 fd15 	bl	8001c3c <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b88      	ldr	r3, [pc, #544]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fd0a 	bl	8001c3c <rgb_get>
 8000228:	4b85      	ldr	r3, [pc, #532]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fd00 	bl	8001c3c <rgb_get>
 800023c:	4b81      	ldr	r3, [pc, #516]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fcf7 	bl	8001c3c <rgb_get>
 800024e:	4b7e      	ldr	r3, [pc, #504]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fcee 	bl	8001c3c <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fce7 	bl	8001c3c <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fce2 	bl	8001c3c <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fcdb 	bl	8001c3c <rgb_get>
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
 80002a8:	f001 fcc8 	bl	8001c3c <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fcc5 	bl	8001c3c <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fcb9 	bl	8001c3c <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fcb6 	bl	8001c3c <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fcae 	bl	8001c3c <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fcab 	bl	8001c3c <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fca0 	bl	8001c3c <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fc9d 	bl	8001c3c <rgb_get>
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
 8000320:	f001 fc8c 	bl	8001c3c <rgb_get>
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
 80003f0:	f8d4 1088 	ldr.w	r1, [r4, #136]	; 0x88
 80003f4:	42a9      	cmp	r1, r5
 80003f6:	bfc4      	itt	gt
 80003f8:	4b14      	ldrgt	r3, [pc, #80]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 80003fa:	460a      	movgt	r2, r1
 80003fc:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
 80003fe:	bfc8      	it	gt
 8000400:	f9b3 300e 	ldrshgt.w	r3, [r3, #14]
 8000404:	42a9      	cmp	r1, r5
 8000406:	dd03      	ble.n	8000410 <_ZN6CRobot16line_sensor_readEv+0x23c>
 8000408:	4b10      	ldr	r3, [pc, #64]	; (800044c <_ZN6CRobot16line_sensor_readEv+0x278>)
 800040a:	f9b3 3000 	ldrsh.w	r3, [r3]
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
 8000440:	20000070 	.word	0x20000070
 8000444:	20000050 	.word	0x20000050
 8000448:	20000030 	.word	0x20000030
 800044c:	20000000 	.word	0x20000000

08000450 <_ZN6CRobot19process_rgb_sensorsEv>:
 8000450:	b510      	push	{r4, lr}
 8000452:	4604      	mov	r4, r0
 8000454:	f001 fbf6 	bl	8001c44 <rgb_read>
 8000458:	4620      	mov	r0, r4
 800045a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045e:	f7ff beb9 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

08000462 <_ZN6CRobot16line_sensor_initEv>:
 8000462:	b538      	push	{r3, r4, r5, lr}
 8000464:	4604      	mov	r4, r0
 8000466:	2500      	movs	r5, #0
 8000468:	f001 fba6 	bl	8001bb8 <rgb_init>
 800046c:	f001 fbea 	bl	8001c44 <rgb_read>
 8000470:	2192      	movs	r1, #146	; 0x92
 8000472:	2072      	movs	r0, #114	; 0x72
 8000474:	f104 0260 	add.w	r2, r4, #96	; 0x60
 8000478:	f001 fb83 	bl	8001b82 <rgb_i2c_read_reg>
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
 80004be:	f002 fa0e 	bl	80028de <i2c_read_reg>
 80004c2:	2129      	movs	r1, #41	; 0x29
 80004c4:	4605      	mov	r5, r0
 80004c6:	20d4      	movs	r0, #212	; 0xd4
 80004c8:	f002 fa09 	bl	80028de <i2c_read_reg>
 80004cc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004d0:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 80004d4:	212a      	movs	r1, #42	; 0x2a
 80004d6:	20d4      	movs	r0, #212	; 0xd4
 80004d8:	f002 fa01 	bl	80028de <i2c_read_reg>
 80004dc:	212b      	movs	r1, #43	; 0x2b
 80004de:	4605      	mov	r5, r0
 80004e0:	20d4      	movs	r0, #212	; 0xd4
 80004e2:	f002 f9fc 	bl	80028de <i2c_read_reg>
 80004e6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004ea:	f8a4 009a 	strh.w	r0, [r4, #154]	; 0x9a
 80004ee:	212c      	movs	r1, #44	; 0x2c
 80004f0:	20d4      	movs	r0, #212	; 0xd4
 80004f2:	f002 f9f4 	bl	80028de <i2c_read_reg>
 80004f6:	212d      	movs	r1, #45	; 0x2d
 80004f8:	4605      	mov	r5, r0
 80004fa:	20d4      	movs	r0, #212	; 0xd4
 80004fc:	f002 f9ef 	bl	80028de <i2c_read_reg>
 8000500:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000504:	f8a4 009c 	strh.w	r0, [r4, #156]	; 0x9c
 8000508:	2108      	movs	r1, #8
 800050a:	203c      	movs	r0, #60	; 0x3c
 800050c:	f002 f9e7 	bl	80028de <i2c_read_reg>
 8000510:	2109      	movs	r1, #9
 8000512:	4605      	mov	r5, r0
 8000514:	203c      	movs	r0, #60	; 0x3c
 8000516:	f002 f9e2 	bl	80028de <i2c_read_reg>
 800051a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000522:	210a      	movs	r1, #10
 8000524:	203c      	movs	r0, #60	; 0x3c
 8000526:	f002 f9da 	bl	80028de <i2c_read_reg>
 800052a:	210b      	movs	r1, #11
 800052c:	4605      	mov	r5, r0
 800052e:	203c      	movs	r0, #60	; 0x3c
 8000530:	f002 f9d5 	bl	80028de <i2c_read_reg>
 8000534:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000538:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 800053c:	210c      	movs	r1, #12
 800053e:	203c      	movs	r0, #60	; 0x3c
 8000540:	f002 f9cd 	bl	80028de <i2c_read_reg>
 8000544:	210d      	movs	r1, #13
 8000546:	4605      	mov	r5, r0
 8000548:	203c      	movs	r0, #60	; 0x3c
 800054a:	f002 f9c8 	bl	80028de <i2c_read_reg>
 800054e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000552:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 8000556:	2128      	movs	r1, #40	; 0x28
 8000558:	203c      	movs	r0, #60	; 0x3c
 800055a:	f002 f9c0 	bl	80028de <i2c_read_reg>
 800055e:	2129      	movs	r1, #41	; 0x29
 8000560:	4605      	mov	r5, r0
 8000562:	203c      	movs	r0, #60	; 0x3c
 8000564:	f002 f9bb 	bl	80028de <i2c_read_reg>
 8000568:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800056c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 8000570:	212a      	movs	r1, #42	; 0x2a
 8000572:	203c      	movs	r0, #60	; 0x3c
 8000574:	f002 f9b3 	bl	80028de <i2c_read_reg>
 8000578:	212b      	movs	r1, #43	; 0x2b
 800057a:	4605      	mov	r5, r0
 800057c:	203c      	movs	r0, #60	; 0x3c
 800057e:	f002 f9ae 	bl	80028de <i2c_read_reg>
 8000582:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000586:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800058a:	212c      	movs	r1, #44	; 0x2c
 800058c:	203c      	movs	r0, #60	; 0x3c
 800058e:	f002 f9a6 	bl	80028de <i2c_read_reg>
 8000592:	212d      	movs	r1, #45	; 0x2d
 8000594:	4605      	mov	r5, r0
 8000596:	203c      	movs	r0, #60	; 0x3c
 8000598:	f002 f9a1 	bl	80028de <i2c_read_reg>
 800059c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005a0:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 80005a4:	2105      	movs	r1, #5
 80005a6:	203c      	movs	r0, #60	; 0x3c
 80005a8:	f002 f999 	bl	80028de <i2c_read_reg>
 80005ac:	2106      	movs	r1, #6
 80005ae:	4605      	mov	r5, r0
 80005b0:	203c      	movs	r0, #60	; 0x3c
 80005b2:	f002 f994 	bl	80028de <i2c_read_reg>
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
 8000618:	f002 f961 	bl	80028de <i2c_read_reg>
 800061c:	28d4      	cmp	r0, #212	; 0xd4
 800061e:	4605      	mov	r5, r0
 8000620:	d164      	bne.n	80006ec <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000622:	203c      	movs	r0, #60	; 0x3c
 8000624:	210f      	movs	r1, #15
 8000626:	f002 f95a 	bl	80028de <i2c_read_reg>
 800062a:	2849      	cmp	r0, #73	; 0x49
 800062c:	d160      	bne.n	80006f0 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 800062e:	4628      	mov	r0, r5
 8000630:	2120      	movs	r1, #32
 8000632:	22ff      	movs	r2, #255	; 0xff
 8000634:	f002 f940 	bl	80028b8 <i2c_write_reg>
 8000638:	4628      	mov	r0, r5
 800063a:	2123      	movs	r1, #35	; 0x23
 800063c:	2210      	movs	r2, #16
 800063e:	f002 f93b 	bl	80028b8 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	211f      	movs	r1, #31
 8000646:	2200      	movs	r2, #0
 8000648:	f002 f936 	bl	80028b8 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2120      	movs	r1, #32
 8000650:	2267      	movs	r2, #103	; 0x67
 8000652:	f002 f931 	bl	80028b8 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2121      	movs	r1, #33	; 0x21
 800065a:	2200      	movs	r2, #0
 800065c:	f002 f92c 	bl	80028b8 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2124      	movs	r1, #36	; 0x24
 8000664:	22f4      	movs	r2, #244	; 0xf4
 8000666:	f002 f927 	bl	80028b8 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2125      	movs	r1, #37	; 0x25
 800066e:	2200      	movs	r2, #0
 8000670:	f002 f922 	bl	80028b8 <i2c_write_reg>
 8000674:	203c      	movs	r0, #60	; 0x3c
 8000676:	2126      	movs	r1, #38	; 0x26
 8000678:	2280      	movs	r2, #128	; 0x80
 800067a:	f002 f91d 	bl	80028b8 <i2c_write_reg>
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
 8000744:	f000 fed0 	bl	80014e8 <printf_>
 8000748:	2400      	movs	r4, #0
 800074a:	1ceb      	adds	r3, r5, #3
 800074c:	429c      	cmp	r4, r3
 800074e:	d20f      	bcs.n	8000770 <abort_error_+0x38>
 8000750:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000754:	f002 fbb0 	bl	8002eb8 <led_on>
 8000758:	2032      	movs	r0, #50	; 0x32
 800075a:	f001 fe45 	bl	80023e8 <timer_delay_ms>
 800075e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000762:	f002 fbb3 	bl	8002ecc <led_off>
 8000766:	2064      	movs	r0, #100	; 0x64
 8000768:	f001 fe3e 	bl	80023e8 <timer_delay_ms>
 800076c:	3401      	adds	r4, #1
 800076e:	e7ec      	b.n	800074a <abort_error_+0x12>
 8000770:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000774:	f001 fe38 	bl	80023e8 <timer_delay_ms>
 8000778:	e7e1      	b.n	800073e <abort_error_+0x6>
 800077a:	bf00      	nop
 800077c:	08004b44 	.word	0x08004b44

08000780 <_ZN9CObstacle4initEP6CRobot>:
 8000780:	b121      	cbz	r1, 800078c <_ZN9CObstacle4initEP6CRobot+0xc>
 8000782:	2300      	movs	r3, #0
 8000784:	6003      	str	r3, [r0, #0]
 8000786:	4b02      	ldr	r3, [pc, #8]	; (8000790 <_ZN9CObstacle4initEP6CRobot+0x10>)
 8000788:	6041      	str	r1, [r0, #4]
 800078a:	6019      	str	r1, [r3, #0]
 800078c:	4770      	bx	lr
 800078e:	bf00      	nop
 8000790:	2000051c 	.word	0x2000051c

08000794 <_ZN9CObstacle12rotate_robotEi>:
 8000794:	b538      	push	{r3, r4, r5, lr}
 8000796:	4605      	mov	r5, r0
 8000798:	ed2d 8b02 	vpush	{d8}
 800079c:	f240 644a 	movw	r4, #1610	; 0x64a
 80007a0:	6840      	ldr	r0, [r0, #4]
 80007a2:	ed9f 8a22 	vldr	s16, [pc, #136]	; 800082c <_ZN9CObstacle12rotate_robotEi+0x98>
 80007a6:	434c      	muls	r4, r1
 80007a8:	215a      	movs	r1, #90	; 0x5a
 80007aa:	fb94 f4f1 	sdiv	r4, r4, r1
 80007ae:	f7ff fd0c 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80007b2:	6868      	ldr	r0, [r5, #4]
 80007b4:	f7ff fd03 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007b8:	6883      	ldr	r3, [r0, #8]
 80007ba:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80007be:	2b00      	cmp	r3, #0
 80007c0:	bfb8      	it	lt
 80007c2:	425b      	neglt	r3, r3
 80007c4:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80007c8:	4293      	cmp	r3, r2
 80007ca:	da22      	bge.n	8000812 <_ZN9CObstacle12rotate_robotEi+0x7e>
 80007cc:	eddf 7a18 	vldr	s15, [pc, #96]	; 8000830 <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007d0:	6868      	ldr	r0, [r5, #4]
 80007d2:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007d6:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000834 <_ZN9CObstacle12rotate_robotEi+0xa0>
 80007da:	eeb4 8a67 	vcmp.f32	s16, s15
 80007de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007e2:	bfc8      	it	gt
 80007e4:	eeb0 8a67 	vmovgt.f32	s16, s15
 80007e8:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000838 <_ZN9CObstacle12rotate_robotEi+0xa4>
 80007ec:	ee68 7a27 	vmul.f32	s15, s16, s15
 80007f0:	2c00      	cmp	r4, #0
 80007f2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80007f6:	ee17 3a90 	vmov	r3, s15
 80007fa:	f1c3 0200 	rsb	r2, r3, #0
 80007fe:	bfd6      	itet	le
 8000800:	4611      	movle	r1, r2
 8000802:	4619      	movgt	r1, r3
 8000804:	461a      	movle	r2, r3
 8000806:	f7ff fcdc 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800080a:	200a      	movs	r0, #10
 800080c:	f001 fdec 	bl	80023e8 <timer_delay_ms>
 8000810:	e7cf      	b.n	80007b2 <_ZN9CObstacle12rotate_robotEi+0x1e>
 8000812:	2100      	movs	r1, #0
 8000814:	6868      	ldr	r0, [r5, #4]
 8000816:	460a      	mov	r2, r1
 8000818:	f7ff fcd3 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800081c:	ecbd 8b02 	vpop	{d8}
 8000820:	2064      	movs	r0, #100	; 0x64
 8000822:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000826:	f001 bddf 	b.w	80023e8 <timer_delay_ms>
 800082a:	bf00      	nop
 800082c:	00000000 	.word	0x00000000
 8000830:	3c23d70a 	.word	0x3c23d70a
 8000834:	3e4ccccd 	.word	0x3e4ccccd
 8000838:	42c80000 	.word	0x42c80000

0800083c <_ZN9CObstacle10go_forwardEijPFhvE>:
 800083c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000840:	460c      	mov	r4, r1
 8000842:	ed2d 8b06 	vpush	{d8-d10}
 8000846:	4605      	mov	r5, r0
 8000848:	4617      	mov	r7, r2
 800084a:	461e      	mov	r6, r3
 800084c:	f001 fdbe 	bl	80023cc <timer_get_time>
 8000850:	ee07 4a90 	vmov	s15, r4
 8000854:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000858:	4680      	mov	r8, r0
 800085a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800085e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000862:	bf48      	it	mi
 8000864:	4264      	negmi	r4, r4
 8000866:	6868      	ldr	r0, [r5, #4]
 8000868:	bf4c      	ite	mi
 800086a:	eddf 9a31 	vldrmi	s19, [pc, #196]	; 8000930 <_ZN9CObstacle10go_forwardEijPFhvE+0xf4>
 800086e:	eddf 9a31 	vldrpl	s19, [pc, #196]	; 8000934 <_ZN9CObstacle10go_forwardEijPFhvE+0xf8>
 8000872:	f7ff fcaa 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000876:	2c00      	cmp	r4, #0
 8000878:	d04f      	beq.n	800091a <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 800087a:	eddf 8a2f 	vldr	s17, [pc, #188]	; 8000938 <_ZN9CObstacle10go_forwardEijPFhvE+0xfc>
 800087e:	eeb0 8a68 	vmov.f32	s16, s17
 8000882:	eeb0 aa68 	vmov.f32	s20, s17
 8000886:	e004      	b.n	8000892 <_ZN9CObstacle10go_forwardEijPFhvE+0x56>
 8000888:	200a      	movs	r0, #10
 800088a:	f001 fdad 	bl	80023e8 <timer_delay_ms>
 800088e:	eeb0 8a49 	vmov.f32	s16, s18
 8000892:	f001 fd9b 	bl	80023cc <timer_get_time>
 8000896:	eb08 0307 	add.w	r3, r8, r7
 800089a:	4298      	cmp	r0, r3
 800089c:	d23d      	bcs.n	800091a <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 800089e:	6868      	ldr	r0, [r5, #4]
 80008a0:	f7ff fc8d 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80008a4:	ed90 9a02 	vldr	s18, [r0, #8]
 80008a8:	eddf 7a24 	vldr	s15, [pc, #144]	; 800093c <_ZN9CObstacle10go_forwardEijPFhvE+0x100>
 80008ac:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8000940 <_ZN9CObstacle10go_forwardEijPFhvE+0x104>
 80008b0:	6868      	ldr	r0, [r5, #4]
 80008b2:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80008b6:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80008ba:	ee39 8a48 	vsub.f32	s16, s18, s16
 80008be:	ee28 8a27 	vmul.f32	s16, s16, s15
 80008c2:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000944 <_ZN9CObstacle10go_forwardEijPFhvE+0x108>
 80008c6:	ee09 8a27 	vmla.f32	s16, s18, s15
 80008ca:	ee07 4a90 	vmov	s15, r4
 80008ce:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 80008d2:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000948 <_ZN9CObstacle10go_forwardEijPFhvE+0x10c>
 80008d6:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80008da:	ee48 7a87 	vmla.f32	s15, s17, s14
 80008de:	eef4 7ae6 	vcmpe.f32	s15, s13
 80008e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008e6:	eef0 8a67 	vmov.f32	s17, s15
 80008ea:	bf48      	it	mi
 80008ec:	ee77 8a87 	vaddmi.f32	s17, s15, s14
 80008f0:	ee69 7aa8 	vmul.f32	s15, s19, s17
 80008f4:	ee37 7ac8 	vsub.f32	s14, s15, s16
 80008f8:	ee37 8a88 	vadd.f32	s16, s15, s16
 80008fc:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000900:	ee17 1a90 	vmov	r1, s15
 8000904:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 8000908:	ee17 2a90 	vmov	r2, s15
 800090c:	f7ff fc59 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000910:	2e00      	cmp	r6, #0
 8000912:	d0b9      	beq.n	8000888 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000914:	47b0      	blx	r6
 8000916:	2800      	cmp	r0, #0
 8000918:	d0b6      	beq.n	8000888 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 800091a:	2000      	movs	r0, #0
 800091c:	4601      	mov	r1, r0
 800091e:	f002 f91b 	bl	8002b58 <drv8834_run>
 8000922:	ecbd 8b06 	vpop	{d8-d10}
 8000926:	2064      	movs	r0, #100	; 0x64
 8000928:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800092c:	f001 bd5c 	b.w	80023e8 <timer_delay_ms>
 8000930:	bf800000 	.word	0xbf800000
 8000934:	3f800000 	.word	0x3f800000
 8000938:	00000000 	.word	0x00000000
 800093c:	3dcccccd 	.word	0x3dcccccd
 8000940:	3f4ccccd 	.word	0x3f4ccccd
 8000944:	3cf5c28f 	.word	0x3cf5c28f
 8000948:	3e4ccccc 	.word	0x3e4ccccc

0800094c <_ZN9CObstacle18go_forward_encoderEijPFhvE>:
 800094c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800094e:	1e0d      	subs	r5, r1, #0
 8000950:	ed2d 8b06 	vpush	{d8-d10}
 8000954:	bfb8      	it	lt
 8000956:	426d      	neglt	r5, r5
 8000958:	4606      	mov	r6, r0
 800095a:	6840      	ldr	r0, [r0, #4]
 800095c:	bfb4      	ite	lt
 800095e:	eddf 9a3e 	vldrlt	s19, [pc, #248]	; 8000a58 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x10c>
 8000962:	eddf 9a3e 	vldrge	s19, [pc, #248]	; 8000a5c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x110>
 8000966:	4614      	mov	r4, r2
 8000968:	461f      	mov	r7, r3
 800096a:	f7ff fc2e 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800096e:	f002 fae3 	bl	8002f38 <encoder_get_distance>
 8000972:	b955      	cbnz	r5, 800098a <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3e>
 8000974:	2000      	movs	r0, #0
 8000976:	4601      	mov	r1, r0
 8000978:	f002 f8ee 	bl	8002b58 <drv8834_run>
 800097c:	ecbd 8b06 	vpop	{d8-d10}
 8000980:	2064      	movs	r0, #100	; 0x64
 8000982:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000986:	f001 bd2f 	b.w	80023e8 <timer_delay_ms>
 800098a:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000a60 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x114>
 800098e:	4404      	add	r4, r0
 8000990:	eef0 8a48 	vmov.f32	s17, s16
 8000994:	eeb0 aa48 	vmov.f32	s20, s16
 8000998:	f002 face 	bl	8002f38 <encoder_get_distance>
 800099c:	42a0      	cmp	r0, r4
 800099e:	d2e9      	bcs.n	8000974 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 80009a0:	6870      	ldr	r0, [r6, #4]
 80009a2:	f7ff fc0c 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80009a6:	ed90 9a02 	vldr	s18, [r0, #8]
 80009aa:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8000a64 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x118>
 80009ae:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80009b2:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80009b6:	ee79 8a68 	vsub.f32	s17, s18, s17
 80009ba:	ee68 8aa7 	vmul.f32	s17, s17, s15
 80009be:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8000a68 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x11c>
 80009c2:	ee49 8a27 	vmla.f32	s17, s18, s15
 80009c6:	f002 fab7 	bl	8002f38 <encoder_get_distance>
 80009ca:	1a20      	subs	r0, r4, r0
 80009cc:	ee07 0a90 	vmov	s15, r0
 80009d0:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80009d4:	ee17 0a90 	vmov	r0, s15
 80009d8:	f000 fe72 	bl	80016c0 <m_abs>
 80009dc:	eddf 7a23 	vldr	s15, [pc, #140]	; 8000a6c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x120>
 80009e0:	ee07 0a10 	vmov	s14, r0
 80009e4:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80009e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009ec:	d525      	bpl.n	8000a3a <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 80009ee:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000a70 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x124>
 80009f2:	eeb4 8ae7 	vcmpe.f32	s16, s15
 80009f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009fa:	dd1e      	ble.n	8000a3a <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 80009fc:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000a74 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a00:	ee38 8a67 	vsub.f32	s16, s16, s15
 8000a04:	ee69 7a88 	vmul.f32	s15, s19, s16
 8000a08:	6870      	ldr	r0, [r6, #4]
 8000a0a:	ee37 7ae8 	vsub.f32	s14, s15, s17
 8000a0e:	ee77 8aa8 	vadd.f32	s17, s15, s17
 8000a12:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000a16:	ee17 1a90 	vmov	r1, s15
 8000a1a:	eefd 7ae8 	vcvt.s32.f32	s15, s17
 8000a1e:	ee17 2a90 	vmov	r2, s15
 8000a22:	f7ff fbce 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000a26:	b117      	cbz	r7, 8000a2e <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe2>
 8000a28:	47b8      	blx	r7
 8000a2a:	2800      	cmp	r0, #0
 8000a2c:	d1a2      	bne.n	8000974 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 8000a2e:	200a      	movs	r0, #10
 8000a30:	f001 fcda 	bl	80023e8 <timer_delay_ms>
 8000a34:	eef0 8a49 	vmov.f32	s17, s18
 8000a38:	e7ae      	b.n	8000998 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x4c>
 8000a3a:	ee07 5a90 	vmov	s15, r5
 8000a3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000a42:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000a46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a4a:	d5db      	bpl.n	8000a04 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a4c:	eddf 7a09 	vldr	s15, [pc, #36]	; 8000a74 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a50:	ee38 8a27 	vadd.f32	s16, s16, s15
 8000a54:	e7d6      	b.n	8000a04 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a56:	bf00      	nop
 8000a58:	bf800000 	.word	0xbf800000
 8000a5c:	3f800000 	.word	0x3f800000
 8000a60:	00000000 	.word	0x00000000
 8000a64:	3dcccccd 	.word	0x3dcccccd
 8000a68:	3cf5c28f 	.word	0x3cf5c28f
 8000a6c:	42200000 	.word	0x42200000
 8000a70:	428c0000 	.word	0x428c0000
 8000a74:	40800000 	.word	0x40800000

08000a78 <_ZN9CObstacle7processEv>:
 8000a78:	2100      	movs	r1, #0
 8000a7a:	b510      	push	{r4, lr}
 8000a7c:	460b      	mov	r3, r1
 8000a7e:	4604      	mov	r4, r0
 8000a80:	2232      	movs	r2, #50	; 0x32
 8000a82:	f7ff fedb 	bl	800083c <_ZN9CObstacle10go_forwardEijPFhvE>
 8000a86:	4620      	mov	r0, r4
 8000a88:	221e      	movs	r2, #30
 8000a8a:	2300      	movs	r3, #0
 8000a8c:	f06f 0131 	mvn.w	r1, #49	; 0x31
 8000a90:	f7ff ff5c 	bl	800094c <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000a94:	4620      	mov	r0, r4
 8000a96:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000a9a:	f7ff fe7b 	bl	8000794 <_ZN9CObstacle12rotate_robotEi>
 8000a9e:	4620      	mov	r0, r4
 8000aa0:	22cf      	movs	r2, #207	; 0xcf
 8000aa2:	2300      	movs	r3, #0
 8000aa4:	215a      	movs	r1, #90	; 0x5a
 8000aa6:	f7ff ff51 	bl	800094c <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000aaa:	4620      	mov	r0, r4
 8000aac:	215a      	movs	r1, #90	; 0x5a
 8000aae:	f7ff fe71 	bl	8000794 <_ZN9CObstacle12rotate_robotEi>
 8000ab2:	4620      	mov	r0, r4
 8000ab4:	22dc      	movs	r2, #220	; 0xdc
 8000ab6:	2300      	movs	r3, #0
 8000ab8:	215a      	movs	r1, #90	; 0x5a
 8000aba:	f7ff ff47 	bl	800094c <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000abe:	4620      	mov	r0, r4
 8000ac0:	215a      	movs	r1, #90	; 0x5a
 8000ac2:	f7ff fe67 	bl	8000794 <_ZN9CObstacle12rotate_robotEi>
 8000ac6:	4620      	mov	r0, r4
 8000ac8:	2150      	movs	r1, #80	; 0x50
 8000aca:	22e6      	movs	r2, #230	; 0xe6
 8000acc:	2300      	movs	r3, #0
 8000ace:	f7ff ff3d 	bl	800094c <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ad2:	4620      	mov	r0, r4
 8000ad4:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000ad8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000adc:	f7ff be5a 	b.w	8000794 <_ZN9CObstacle12rotate_robotEi>

08000ae0 <_ZN4CMap4initEP6CRobot>:
 8000ae0:	b111      	cbz	r1, 8000ae8 <_ZN4CMap4initEP6CRobot+0x8>
 8000ae2:	2300      	movs	r3, #0
 8000ae4:	6041      	str	r1, [r0, #4]
 8000ae6:	6003      	str	r3, [r0, #0]
 8000ae8:	4770      	bx	lr

08000aea <_ZN4CMap10save_stateE6sStatej>:
 8000aea:	b507      	push	{r0, r1, r2, lr}
 8000aec:	ab02      	add	r3, sp, #8
 8000aee:	0090      	lsls	r0, r2, #2
 8000af0:	f843 1d04 	str.w	r1, [r3, #-4]!
 8000af4:	2204      	movs	r2, #4
 8000af6:	4619      	mov	r1, r3
 8000af8:	f000 fdc6 	bl	8001688 <log_write>
 8000afc:	b003      	add	sp, #12
 8000afe:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000b04 <_ZN4CMap10add_to_mapEv>:
 8000b04:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000b06:	4604      	mov	r4, r0
 8000b08:	6840      	ldr	r0, [r0, #4]
 8000b0a:	f7ff fb54 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000b0e:	2100      	movs	r1, #0
 8000b10:	6845      	ldr	r5, [r0, #4]
 8000b12:	460a      	mov	r2, r1
 8000b14:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000b18:	4b12      	ldr	r3, [pc, #72]	; (8000b64 <_ZN4CMap10add_to_mapEv+0x60>)
 8000b1a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000b1e:	1aeb      	subs	r3, r5, r3
 8000b20:	2b00      	cmp	r3, #0
 8000b22:	bfb8      	it	lt
 8000b24:	425b      	neglt	r3, r3
 8000b26:	4283      	cmp	r3, r0
 8000b28:	bfb8      	it	lt
 8000b2a:	4611      	movlt	r1, r2
 8000b2c:	f102 0201 	add.w	r2, r2, #1
 8000b30:	bfb8      	it	lt
 8000b32:	4618      	movlt	r0, r3
 8000b34:	2a0a      	cmp	r2, #10
 8000b36:	d1ef      	bne.n	8000b18 <_ZN4CMap10add_to_mapEv+0x14>
 8000b38:	2818      	cmp	r0, #24
 8000b3a:	dc11      	bgt.n	8000b60 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b3c:	6823      	ldr	r3, [r4, #0]
 8000b3e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000b42:	d20d      	bcs.n	8000b60 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b44:	f88d 1004 	strb.w	r1, [sp, #4]
 8000b48:	f002 f9f6 	bl	8002f38 <encoder_get_distance>
 8000b4c:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000b50:	9901      	ldr	r1, [sp, #4]
 8000b52:	6822      	ldr	r2, [r4, #0]
 8000b54:	4620      	mov	r0, r4
 8000b56:	f7ff ffc8 	bl	8000aea <_ZN4CMap10save_stateE6sStatej>
 8000b5a:	6823      	ldr	r3, [r4, #0]
 8000b5c:	3301      	adds	r3, #1
 8000b5e:	6023      	str	r3, [r4, #0]
 8000b60:	b003      	add	sp, #12
 8000b62:	bd30      	pop	{r4, r5, pc}
 8000b64:	20000090 	.word	0x20000090

08000b68 <_Z18line_sensor_threadv>:
 8000b68:	b508      	push	{r3, lr}
 8000b6a:	2000      	movs	r0, #0
 8000b6c:	2104      	movs	r1, #4
 8000b6e:	f001 fc4b 	bl	8002408 <event_timer_set_period>
 8000b72:	2000      	movs	r0, #0
 8000b74:	f001 fc60 	bl	8002438 <event_timer_wait>
 8000b78:	4801      	ldr	r0, [pc, #4]	; (8000b80 <_Z18line_sensor_threadv+0x18>)
 8000b7a:	f7ff fc69 	bl	8000450 <_ZN6CRobot19process_rgb_sensorsEv>
 8000b7e:	e7f8      	b.n	8000b72 <_Z18line_sensor_threadv+0xa>
 8000b80:	2000093c 	.word	0x2000093c

08000b84 <_Z17imu_sensor_threadv>:
 8000b84:	b508      	push	{r3, lr}
 8000b86:	2001      	movs	r0, #1
 8000b88:	210a      	movs	r1, #10
 8000b8a:	f001 fc3d 	bl	8002408 <event_timer_set_period>
 8000b8e:	2001      	movs	r0, #1
 8000b90:	f001 fc52 	bl	8002438 <event_timer_wait>
 8000b94:	4805      	ldr	r0, [pc, #20]	; (8000bac <_Z17imu_sensor_threadv+0x28>)
 8000b96:	f7ff fd13 	bl	80005c0 <_ZN6CRobot18process_imu_sensorEv>
 8000b9a:	4b05      	ldr	r3, [pc, #20]	; (8000bb0 <_Z17imu_sensor_threadv+0x2c>)
 8000b9c:	681b      	ldr	r3, [r3, #0]
 8000b9e:	2b00      	cmp	r3, #0
 8000ba0:	d0f5      	beq.n	8000b8e <_Z17imu_sensor_threadv+0xa>
 8000ba2:	4804      	ldr	r0, [pc, #16]	; (8000bb4 <_Z17imu_sensor_threadv+0x30>)
 8000ba4:	f7ff ffae 	bl	8000b04 <_ZN4CMap10add_to_mapEv>
 8000ba8:	e7f1      	b.n	8000b8e <_Z17imu_sensor_threadv+0xa>
 8000baa:	bf00      	nop
 8000bac:	2000093c 	.word	0x2000093c
 8000bb0:	20000a34 	.word	0x20000a34
 8000bb4:	2000052c 	.word	0x2000052c

08000bb8 <_Z13line_followerv>:
 8000bb8:	b510      	push	{r4, lr}
 8000bba:	2002      	movs	r0, #2
 8000bbc:	2104      	movs	r1, #4
 8000bbe:	f001 fc23 	bl	8002408 <event_timer_set_period>
 8000bc2:	2400      	movs	r4, #0
 8000bc4:	2002      	movs	r0, #2
 8000bc6:	f001 fc37 	bl	8002438 <event_timer_wait>
 8000bca:	4818      	ldr	r0, [pc, #96]	; (8000c2c <_Z13line_followerv+0x74>)
 8000bcc:	f7ff faf5 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000bd0:	7803      	ldrb	r3, [r0, #0]
 8000bd2:	2b01      	cmp	r3, #1
 8000bd4:	d11b      	bne.n	8000c0e <_Z13line_followerv+0x56>
 8000bd6:	4815      	ldr	r0, [pc, #84]	; (8000c2c <_Z13line_followerv+0x74>)
 8000bd8:	f7ff faf1 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000bdc:	68c0      	ldr	r0, [r0, #12]
 8000bde:	f000 fd7b 	bl	80016d8 <m_abs_int>
 8000be2:	f640 63d8 	movw	r3, #3800	; 0xed8
 8000be6:	4298      	cmp	r0, r3
 8000be8:	dd11      	ble.n	8000c0e <_Z13line_followerv+0x56>
 8000bea:	4811      	ldr	r0, [pc, #68]	; (8000c30 <_Z13line_followerv+0x78>)
 8000bec:	f7ff ff44 	bl	8000a78 <_ZN9CObstacle7processEv>
 8000bf0:	3401      	adds	r4, #1
 8000bf2:	2214      	movs	r2, #20
 8000bf4:	fbb4 f3f2 	udiv	r3, r4, r2
 8000bf8:	fb02 4313 	mls	r3, r2, r3, r4
 8000bfc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000c00:	b913      	cbnz	r3, 8000c08 <_Z13line_followerv+0x50>
 8000c02:	f002 f959 	bl	8002eb8 <led_on>
 8000c06:	e7dd      	b.n	8000bc4 <_Z13line_followerv+0xc>
 8000c08:	f002 f960 	bl	8002ecc <led_off>
 8000c0c:	e7da      	b.n	8000bc4 <_Z13line_followerv+0xc>
 8000c0e:	4807      	ldr	r0, [pc, #28]	; (8000c2c <_Z13line_followerv+0x74>)
 8000c10:	f7ff fad1 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000c14:	7803      	ldrb	r3, [r0, #0]
 8000c16:	2b01      	cmp	r3, #1
 8000c18:	d103      	bne.n	8000c22 <_Z13line_followerv+0x6a>
 8000c1a:	4806      	ldr	r0, [pc, #24]	; (8000c34 <_Z13line_followerv+0x7c>)
 8000c1c:	f000 f93c 	bl	8000e98 <_ZN13CLineFollower7processEv>
 8000c20:	e7e6      	b.n	8000bf0 <_Z13line_followerv+0x38>
 8000c22:	4805      	ldr	r0, [pc, #20]	; (8000c38 <_Z13line_followerv+0x80>)
 8000c24:	2100      	movs	r1, #0
 8000c26:	f000 f9b6 	bl	8000f96 <_ZN11CBrokenLine7processEj>
 8000c2a:	e7e1      	b.n	8000bf0 <_Z13line_followerv+0x38>
 8000c2c:	2000093c 	.word	0x2000093c
 8000c30:	20000734 	.word	0x20000734
 8000c34:	200009ec 	.word	0x200009ec
 8000c38:	20000520 	.word	0x20000520

08000c3c <main_thread>:
 8000c3c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c3e:	484c      	ldr	r0, [pc, #304]	; (8000d70 <main_thread+0x134>)
 8000c40:	4e4c      	ldr	r6, [pc, #304]	; (8000d74 <main_thread+0x138>)
 8000c42:	b097      	sub	sp, #92	; 0x5c
 8000c44:	f000 fc50 	bl	80014e8 <printf_>
 8000c48:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000c4c:	f001 fbcc 	bl	80023e8 <timer_delay_ms>
 8000c50:	2300      	movs	r3, #0
 8000c52:	6033      	str	r3, [r6, #0]
 8000c54:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000c58:	930d      	str	r3, [sp, #52]	; 0x34
 8000c5a:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c5c:	2328      	movs	r3, #40	; 0x28
 8000c5e:	22b4      	movs	r2, #180	; 0xb4
 8000c60:	9310      	str	r3, [sp, #64]	; 0x40
 8000c62:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000c66:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000c6a:	9312      	str	r3, [sp, #72]	; 0x48
 8000c6c:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000c70:	f240 2326 	movw	r3, #550	; 0x226
 8000c74:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000c78:	9313      	str	r3, [sp, #76]	; 0x4c
 8000c7a:	223c      	movs	r2, #60	; 0x3c
 8000c7c:	f44f 73c8 	mov.w	r3, #400	; 0x190
 8000c80:	920c      	str	r2, [sp, #48]	; 0x30
 8000c82:	9314      	str	r3, [sp, #80]	; 0x50
 8000c84:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000c88:	231e      	movs	r3, #30
 8000c8a:	483b      	ldr	r0, [pc, #236]	; (8000d78 <main_thread+0x13c>)
 8000c8c:	920e      	str	r2, [sp, #56]	; 0x38
 8000c8e:	ad0d      	add	r5, sp, #52	; 0x34
 8000c90:	9211      	str	r2, [sp, #68]	; 0x44
 8000c92:	9315      	str	r3, [sp, #84]	; 0x54
 8000c94:	f7ff fd30 	bl	80006f8 <_ZN6CRobot4initEv>
 8000c98:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000c9a:	466c      	mov	r4, sp
 8000c9c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000c9e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000ca0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000ca2:	682b      	ldr	r3, [r5, #0]
 8000ca4:	6023      	str	r3, [r4, #0]
 8000ca6:	ab0a      	add	r3, sp, #40	; 0x28
 8000ca8:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000caa:	4833      	ldr	r0, [pc, #204]	; (8000d78 <main_thread+0x13c>)
 8000cac:	f7ff fa70 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000cb0:	4832      	ldr	r0, [pc, #200]	; (8000d7c <main_thread+0x140>)
 8000cb2:	4931      	ldr	r1, [pc, #196]	; (8000d78 <main_thread+0x13c>)
 8000cb4:	f000 f874 	bl	8000da0 <_ZN13CLineFollower4initEP6CRobot>
 8000cb8:	4831      	ldr	r0, [pc, #196]	; (8000d80 <main_thread+0x144>)
 8000cba:	492f      	ldr	r1, [pc, #188]	; (8000d78 <main_thread+0x13c>)
 8000cbc:	f7ff fd60 	bl	8000780 <_ZN9CObstacle4initEP6CRobot>
 8000cc0:	4830      	ldr	r0, [pc, #192]	; (8000d84 <main_thread+0x148>)
 8000cc2:	492d      	ldr	r1, [pc, #180]	; (8000d78 <main_thread+0x13c>)
 8000cc4:	f000 f958 	bl	8000f78 <_ZN11CBrokenLine4initEP6CRobot>
 8000cc8:	482f      	ldr	r0, [pc, #188]	; (8000d88 <main_thread+0x14c>)
 8000cca:	492b      	ldr	r1, [pc, #172]	; (8000d78 <main_thread+0x13c>)
 8000ccc:	f7ff ff08 	bl	8000ae0 <_ZN4CMap4initEP6CRobot>
 8000cd0:	4829      	ldr	r0, [pc, #164]	; (8000d78 <main_thread+0x13c>)
 8000cd2:	f7ff fa59 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cd6:	b158      	cbz	r0, 8000cf0 <main_thread+0xb4>
 8000cd8:	4827      	ldr	r0, [pc, #156]	; (8000d78 <main_thread+0x13c>)
 8000cda:	f7ff fa55 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cde:	4604      	mov	r4, r0
 8000ce0:	4825      	ldr	r0, [pc, #148]	; (8000d78 <main_thread+0x13c>)
 8000ce2:	f7ff fa53 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ce6:	4601      	mov	r1, r0
 8000ce8:	4620      	mov	r0, r4
 8000cea:	f7ff fd25 	bl	8000738 <abort_error_>
 8000cee:	e7f3      	b.n	8000cd8 <main_thread+0x9c>
 8000cf0:	4926      	ldr	r1, [pc, #152]	; (8000d8c <main_thread+0x150>)
 8000cf2:	4827      	ldr	r0, [pc, #156]	; (8000d90 <main_thread+0x154>)
 8000cf4:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000cf8:	2306      	movs	r3, #6
 8000cfa:	f000 fac7 	bl	800128c <create_thread>
 8000cfe:	4825      	ldr	r0, [pc, #148]	; (8000d94 <main_thread+0x158>)
 8000d00:	4925      	ldr	r1, [pc, #148]	; (8000d98 <main_thread+0x15c>)
 8000d02:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000d06:	2306      	movs	r3, #6
 8000d08:	f000 fac0 	bl	800128c <create_thread>
 8000d0c:	f002 f8e8 	bl	8002ee0 <get_key>
 8000d10:	b150      	cbz	r0, 8000d28 <main_thread+0xec>
 8000d12:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000d16:	f001 fb67 	bl	80023e8 <timer_delay_ms>
 8000d1a:	2301      	movs	r3, #1
 8000d1c:	4817      	ldr	r0, [pc, #92]	; (8000d7c <main_thread+0x140>)
 8000d1e:	6033      	str	r3, [r6, #0]
 8000d20:	f000 f922 	bl	8000f68 <_ZN13CLineFollower5startEv>
 8000d24:	f7ff ff48 	bl	8000bb8 <_Z13line_followerv>
 8000d28:	f002 f906 	bl	8002f38 <encoder_get_distance>
 8000d2c:	4607      	mov	r7, r0
 8000d2e:	f002 f8df 	bl	8002ef0 <left_encoder_read>
 8000d32:	4605      	mov	r5, r0
 8000d34:	f002 f8ee 	bl	8002f14 <right_encoder_read>
 8000d38:	4604      	mov	r4, r0
 8000d3a:	480f      	ldr	r0, [pc, #60]	; (8000d78 <main_thread+0x13c>)
 8000d3c:	f7ff fa3f 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000d40:	6883      	ldr	r3, [r0, #8]
 8000d42:	9300      	str	r3, [sp, #0]
 8000d44:	4639      	mov	r1, r7
 8000d46:	462a      	mov	r2, r5
 8000d48:	4623      	mov	r3, r4
 8000d4a:	4814      	ldr	r0, [pc, #80]	; (8000d9c <main_thread+0x160>)
 8000d4c:	f000 fbcc 	bl	80014e8 <printf_>
 8000d50:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d54:	f002 f8b0 	bl	8002eb8 <led_on>
 8000d58:	2064      	movs	r0, #100	; 0x64
 8000d5a:	f001 fb45 	bl	80023e8 <timer_delay_ms>
 8000d5e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d62:	f002 f8b3 	bl	8002ecc <led_off>
 8000d66:	20c8      	movs	r0, #200	; 0xc8
 8000d68:	f001 fb3e 	bl	80023e8 <timer_delay_ms>
 8000d6c:	e7ce      	b.n	8000d0c <main_thread+0xd0>
 8000d6e:	bf00      	nop
 8000d70:	08004b9d 	.word	0x08004b9d
 8000d74:	20000a34 	.word	0x20000a34
 8000d78:	2000093c 	.word	0x2000093c
 8000d7c:	200009ec 	.word	0x200009ec
 8000d80:	20000734 	.word	0x20000734
 8000d84:	20000520 	.word	0x20000520
 8000d88:	2000052c 	.word	0x2000052c
 8000d8c:	20000534 	.word	0x20000534
 8000d90:	08000b69 	.word	0x08000b69
 8000d94:	08000b85 	.word	0x08000b85
 8000d98:	2000073c 	.word	0x2000073c
 8000d9c:	08004bd8 	.word	0x08004bd8

08000da0 <_ZN13CLineFollower4initEP6CRobot>:
 8000da0:	b510      	push	{r4, lr}
 8000da2:	ed2d 8b04 	vpush	{d8-d9}
 8000da6:	4604      	mov	r4, r0
 8000da8:	b082      	sub	sp, #8
 8000daa:	2900      	cmp	r1, #0
 8000dac:	d069      	beq.n	8000e82 <_ZN13CLineFollower4initEP6CRobot+0xe2>
 8000dae:	2300      	movs	r3, #0
 8000db0:	6103      	str	r3, [r0, #16]
 8000db2:	6143      	str	r3, [r0, #20]
 8000db4:	6441      	str	r1, [r0, #68]	; 0x44
 8000db6:	4835      	ldr	r0, [pc, #212]	; (8000e8c <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000db8:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000e90 <_ZN13CLineFollower4initEP6CRobot+0xf0>
 8000dbc:	f000 f9d5 	bl	800116a <_ZN11CQPredictor4initEv>
 8000dc0:	f001 fb04 	bl	80023cc <timer_get_time>
 8000dc4:	3064      	adds	r0, #100	; 0x64
 8000dc6:	61a0      	str	r0, [r4, #24]
 8000dc8:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000dca:	f7ff f9f3 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dce:	ed90 9a02 	vldr	s18, [r0, #8]
 8000dd2:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000dd4:	f7ff f9ee 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dd8:	edd0 8a03 	vldr	s17, [r0, #12]
 8000ddc:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000dde:	f7ff f9e9 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000de2:	edd0 9a04 	vldr	s19, [r0, #16]
 8000de6:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000de8:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000dec:	f7ff f9e2 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000df0:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000df4:	4927      	ldr	r1, [pc, #156]	; (8000e94 <_ZN13CLineFollower4initEP6CRobot+0xf4>)
 8000df6:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000dfa:	edcd 9a00 	vstr	s19, [sp]
 8000dfe:	edd0 7a05 	vldr	s15, [r0, #20]
 8000e02:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000e06:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e0a:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000e0e:	f104 001c 	add.w	r0, r4, #28
 8000e12:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e16:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000e1a:	ee19 2a10 	vmov	r2, s18
 8000e1e:	ee18 3a90 	vmov	r3, s17
 8000e22:	edcd 7a01 	vstr	s15, [sp, #4]
 8000e26:	f000 fc89 	bl	800173c <pid_init>
 8000e2a:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000e2c:	f7ff f9c2 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e30:	edd0 7a06 	vldr	s15, [r0, #24]
 8000e34:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000e36:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e3a:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e3e:	edc4 7a00 	vstr	s15, [r4]
 8000e42:	f7ff f9b7 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e46:	edd0 7a07 	vldr	s15, [r0, #28]
 8000e4a:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000e4c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e50:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e54:	edc4 7a01 	vstr	s15, [r4, #4]
 8000e58:	f7ff f9ac 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e5c:	edd0 7a08 	vldr	s15, [r0, #32]
 8000e60:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000e62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e66:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e6a:	edc4 7a02 	vstr	s15, [r4, #8]
 8000e6e:	f7ff f9a1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e72:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000e76:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e7a:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000e7e:	ed84 8a03 	vstr	s16, [r4, #12]
 8000e82:	b002      	add	sp, #8
 8000e84:	ecbd 8b04 	vpop	{d8-d9}
 8000e88:	bd10      	pop	{r4, pc}
 8000e8a:	bf00      	nop
 8000e8c:	20000a38 	.word	0x20000a38
 8000e90:	447a0000 	.word	0x447a0000
 8000e94:	42c80000 	.word	0x42c80000

08000e98 <_ZN13CLineFollower7processEv>:
 8000e98:	b538      	push	{r3, r4, r5, lr}
 8000e9a:	4604      	mov	r4, r0
 8000e9c:	ed2d 8b02 	vpush	{d8}
 8000ea0:	6c40      	ldr	r0, [r0, #68]	; 0x44
 8000ea2:	ed9f 8a2d 	vldr	s16, [pc, #180]	; 8000f58 <_ZN13CLineFollower7processEv+0xc0>
 8000ea6:	f7ff f986 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000eaa:	6845      	ldr	r5, [r0, #4]
 8000eac:	f001 fa8e 	bl	80023cc <timer_get_time>
 8000eb0:	69a3      	ldr	r3, [r4, #24]
 8000eb2:	4298      	cmp	r0, r3
 8000eb4:	bf21      	itttt	cs
 8000eb6:	ee07 5a90 	vmovcs	s15, r5
 8000eba:	eeb8 7ae7 	vcvtcs.f32.s32	s14, s15
 8000ebe:	eddf 7a27 	vldrcs	s15, [pc, #156]	; 8000f5c <_ZN13CLineFollower7processEv+0xc4>
 8000ec2:	ee67 7a27 	vmulcs.f32	s15, s14, s15
 8000ec6:	bf38      	it	cc
 8000ec8:	eef0 7a48 	vmovcc.f32	s15, s16
 8000ecc:	ee38 8a67 	vsub.f32	s16, s16, s15
 8000ed0:	ee18 0a10 	vmov	r0, s16
 8000ed4:	f000 fbf4 	bl	80016c0 <m_abs>
 8000ed8:	ed9f 7a21 	vldr	s14, [pc, #132]	; 8000f60 <_ZN13CLineFollower7processEv+0xc8>
 8000edc:	edd4 6a01 	vldr	s13, [r4, #4]
 8000ee0:	edd4 5a00 	vldr	s11, [r4]
 8000ee4:	ed94 6a04 	vldr	s12, [r4, #16]
 8000ee8:	ee07 0a90 	vmov	s15, r0
 8000eec:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000ef0:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000ef4:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000ef8:	ee17 1a10 	vmov	r1, s14
 8000efc:	ee16 0a10 	vmov	r0, s12
 8000f00:	f000 fc0e 	bl	8001720 <m_min>
 8000f04:	68e2      	ldr	r2, [r4, #12]
 8000f06:	68a1      	ldr	r1, [r4, #8]
 8000f08:	6120      	str	r0, [r4, #16]
 8000f0a:	f000 fbf2 	bl	80016f2 <m_saturate>
 8000f0e:	ee18 1a10 	vmov	r1, s16
 8000f12:	6120      	str	r0, [r4, #16]
 8000f14:	f104 001c 	add.w	r0, r4, #28
 8000f18:	f000 fc40 	bl	800179c <pid_process>
 8000f1c:	edd4 7a04 	vldr	s15, [r4, #16]
 8000f20:	ed9f 6a10 	vldr	s12, [pc, #64]	; 8000f64 <_ZN13CLineFollower7processEv+0xcc>
 8000f24:	6160      	str	r0, [r4, #20]
 8000f26:	ee06 0a90 	vmov	s13, r0
 8000f2a:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000f2e:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000f32:	ecbd 8b02 	vpop	{d8}
 8000f36:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000f3a:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000f3e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000f42:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000f46:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000f48:	ee17 1a10 	vmov	r1, s14
 8000f4c:	ee17 2a90 	vmov	r2, s15
 8000f50:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f54:	f7ff b935 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000f58:	00000000 	.word	0x00000000
 8000f5c:	3b800000 	.word	0x3b800000
 8000f60:	3f800000 	.word	0x3f800000
 8000f64:	42c80000 	.word	0x42c80000

08000f68 <_ZN13CLineFollower5startEv>:
 8000f68:	b510      	push	{r4, lr}
 8000f6a:	4604      	mov	r4, r0
 8000f6c:	f001 fa2e 	bl	80023cc <timer_get_time>
 8000f70:	f500 7096 	add.w	r0, r0, #300	; 0x12c
 8000f74:	61a0      	str	r0, [r4, #24]
 8000f76:	bd10      	pop	{r4, pc}

08000f78 <_ZN11CBrokenLine4initEP6CRobot>:
 8000f78:	b510      	push	{r4, lr}
 8000f7a:	4604      	mov	r4, r0
 8000f7c:	b151      	cbz	r1, 8000f94 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000f7e:	6001      	str	r1, [r0, #0]
 8000f80:	4608      	mov	r0, r1
 8000f82:	f7ff f917 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f86:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000f88:	6063      	str	r3, [r4, #4]
 8000f8a:	6820      	ldr	r0, [r4, #0]
 8000f8c:	f7ff f912 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f90:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000f92:	60a3      	str	r3, [r4, #8]
 8000f94:	bd10      	pop	{r4, pc}

08000f96 <_ZN11CBrokenLine7processEj>:
 8000f96:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000f9a:	4681      	mov	r9, r0
 8000f9c:	6800      	ldr	r0, [r0, #0]
 8000f9e:	9100      	str	r1, [sp, #0]
 8000fa0:	f7ff f909 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fa4:	f8d0 a004 	ldr.w	sl, [r0, #4]
 8000fa8:	f001 ffc6 	bl	8002f38 <encoder_get_distance>
 8000fac:	2500      	movs	r5, #0
 8000fae:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 8000fb2:	462c      	mov	r4, r5
 8000fb4:	f8d9 0000 	ldr.w	r0, [r9]
 8000fb8:	f7ff f8fd 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fbc:	7803      	ldrb	r3, [r0, #0]
 8000fbe:	2b01      	cmp	r3, #1
 8000fc0:	d003      	beq.n	8000fca <_ZN11CBrokenLine7processEj+0x34>
 8000fc2:	f001 ffb9 	bl	8002f38 <encoder_get_distance>
 8000fc6:	42b0      	cmp	r0, r6
 8000fc8:	d30e      	bcc.n	8000fe8 <_ZN11CBrokenLine7processEj+0x52>
 8000fca:	f04f 0b00 	mov.w	fp, #0
 8000fce:	465e      	mov	r6, fp
 8000fd0:	46d8      	mov	r8, fp
 8000fd2:	2701      	movs	r7, #1
 8000fd4:	f8d9 0000 	ldr.w	r0, [r9]
 8000fd8:	f7ff f8ed 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fdc:	7802      	ldrb	r2, [r0, #0]
 8000fde:	2a01      	cmp	r2, #1
 8000fe0:	d11b      	bne.n	800101a <_ZN11CBrokenLine7processEj+0x84>
 8000fe2:	9b00      	ldr	r3, [sp, #0]
 8000fe4:	b9cb      	cbnz	r3, 800101a <_ZN11CBrokenLine7processEj+0x84>
 8000fe6:	e0b9      	b.n	800115c <_ZN11CBrokenLine7processEj+0x1c6>
 8000fe8:	f8d9 5008 	ldr.w	r5, [r9, #8]
 8000fec:	f1ba 0f00 	cmp.w	sl, #0
 8000ff0:	bfd6      	itet	le
 8000ff2:	462c      	movle	r4, r5
 8000ff4:	2400      	movgt	r4, #0
 8000ff6:	2500      	movle	r5, #0
 8000ff8:	4629      	mov	r1, r5
 8000ffa:	4620      	mov	r0, r4
 8000ffc:	f001 fdac 	bl	8002b58 <drv8834_run>
 8001000:	200a      	movs	r0, #10
 8001002:	f001 f9f1 	bl	80023e8 <timer_delay_ms>
 8001006:	f8d9 0000 	ldr.w	r0, [r9]
 800100a:	f7ff f8d4 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 800100e:	7803      	ldrb	r3, [r0, #0]
 8001010:	2b01      	cmp	r3, #1
 8001012:	d1cf      	bne.n	8000fb4 <_ZN11CBrokenLine7processEj+0x1e>
 8001014:	b003      	add	sp, #12
 8001016:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800101a:	2f04      	cmp	r7, #4
 800101c:	d87a      	bhi.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 800101e:	e8df f007 	tbb	[pc, r7]
 8001022:	1c03      	.short	0x1c03
 8001024:	5037      	.short	0x5037
 8001026:	6b          	.byte	0x6b
 8001027:	00          	.byte	0x00
 8001028:	f001 ff86 	bl	8002f38 <encoder_get_distance>
 800102c:	4540      	cmp	r0, r8
 800102e:	d371      	bcc.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 8001030:	f001 ff82 	bl	8002f38 <encoder_get_distance>
 8001034:	f1ba 0f00 	cmp.w	sl, #0
 8001038:	f8d9 4008 	ldr.w	r4, [r9, #8]
 800103c:	bfca      	itet	gt
 800103e:	f04f 0b00 	movgt.w	fp, #0
 8001042:	f04f 0b00 	movle.w	fp, #0
 8001046:	4625      	movgt	r5, r4
 8001048:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 800104c:	bfc7      	ittee	gt
 800104e:	465e      	movgt	r6, fp
 8001050:	465c      	movgt	r4, fp
 8001052:	465e      	movle	r6, fp
 8001054:	465d      	movle	r5, fp
 8001056:	2701      	movs	r7, #1
 8001058:	e05c      	b.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 800105a:	f001 ff6d 	bl	8002f38 <encoder_get_distance>
 800105e:	4540      	cmp	r0, r8
 8001060:	d358      	bcc.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 8001062:	f001 ff69 	bl	8002f38 <encoder_get_distance>
 8001066:	f1ba 0f00 	cmp.w	sl, #0
 800106a:	f8d9 4008 	ldr.w	r4, [r9, #8]
 800106e:	bfca      	itet	gt
 8001070:	f04f 0b00 	movgt.w	fp, #0
 8001074:	f04f 0b00 	movle.w	fp, #0
 8001078:	4265      	neggt	r5, r4
 800107a:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 800107e:	bfc7      	ittee	gt
 8001080:	465e      	movgt	r6, fp
 8001082:	465c      	movgt	r4, fp
 8001084:	4264      	negle	r4, r4
 8001086:	465e      	movle	r6, fp
 8001088:	bfd8      	it	le
 800108a:	465d      	movle	r5, fp
 800108c:	2702      	movs	r7, #2
 800108e:	e041      	b.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 8001090:	f001 ff52 	bl	8002f38 <encoder_get_distance>
 8001094:	4540      	cmp	r0, r8
 8001096:	d33d      	bcc.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 8001098:	f001 ff4e 	bl	8002f38 <encoder_get_distance>
 800109c:	f1ba 0f00 	cmp.w	sl, #0
 80010a0:	f8d9 4008 	ldr.w	r4, [r9, #8]
 80010a4:	bfce      	itee	gt
 80010a6:	f04f 0b00 	movgt.w	fp, #0
 80010aa:	f04f 0b00 	movle.w	fp, #0
 80010ae:	4625      	movle	r5, r4
 80010b0:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 80010b4:	bfc7      	ittee	gt
 80010b6:	465e      	movgt	r6, fp
 80010b8:	465d      	movgt	r5, fp
 80010ba:	465e      	movle	r6, fp
 80010bc:	465c      	movle	r4, fp
 80010be:	2703      	movs	r7, #3
 80010c0:	e028      	b.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 80010c2:	f001 ff39 	bl	8002f38 <encoder_get_distance>
 80010c6:	4540      	cmp	r0, r8
 80010c8:	d324      	bcc.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 80010ca:	f001 ff35 	bl	8002f38 <encoder_get_distance>
 80010ce:	f1ba 0f00 	cmp.w	sl, #0
 80010d2:	f8d9 4008 	ldr.w	r4, [r9, #8]
 80010d6:	bfce      	itee	gt
 80010d8:	f04f 0b00 	movgt.w	fp, #0
 80010dc:	f04f 0b00 	movle.w	fp, #0
 80010e0:	4265      	negle	r5, r4
 80010e2:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 80010e6:	bfc3      	ittte	gt
 80010e8:	4264      	neggt	r4, r4
 80010ea:	465e      	movgt	r6, fp
 80010ec:	465d      	movgt	r5, fp
 80010ee:	465e      	movle	r6, fp
 80010f0:	bfd8      	it	le
 80010f2:	465c      	movle	r4, fp
 80010f4:	2704      	movs	r7, #4
 80010f6:	e00d      	b.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 80010f8:	f001 ff1e 	bl	8002f38 <encoder_get_distance>
 80010fc:	4540      	cmp	r0, r8
 80010fe:	d309      	bcc.n	8001114 <_ZN11CBrokenLine7processEj+0x17e>
 8001100:	f001 ff1a 	bl	8002f38 <encoder_get_distance>
 8001104:	f04f 0b00 	mov.w	fp, #0
 8001108:	2514      	movs	r5, #20
 800110a:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 800110e:	465e      	mov	r6, fp
 8001110:	462c      	mov	r4, r5
 8001112:	465f      	mov	r7, fp
 8001114:	4630      	mov	r0, r6
 8001116:	f000 fadf 	bl	80016d8 <m_abs_int>
 800111a:	9001      	str	r0, [sp, #4]
 800111c:	4620      	mov	r0, r4
 800111e:	f000 fadb 	bl	80016d8 <m_abs_int>
 8001122:	9a01      	ldr	r2, [sp, #4]
 8001124:	4282      	cmp	r2, r0
 8001126:	da03      	bge.n	8001130 <_ZN11CBrokenLine7processEj+0x19a>
 8001128:	4620      	mov	r0, r4
 800112a:	f000 fad9 	bl	80016e0 <m_sgn_int>
 800112e:	4406      	add	r6, r0
 8001130:	4658      	mov	r0, fp
 8001132:	f000 fad1 	bl	80016d8 <m_abs_int>
 8001136:	9001      	str	r0, [sp, #4]
 8001138:	4628      	mov	r0, r5
 800113a:	f000 facd 	bl	80016d8 <m_abs_int>
 800113e:	9a01      	ldr	r2, [sp, #4]
 8001140:	4282      	cmp	r2, r0
 8001142:	da03      	bge.n	800114c <_ZN11CBrokenLine7processEj+0x1b6>
 8001144:	4628      	mov	r0, r5
 8001146:	f000 facb 	bl	80016e0 <m_sgn_int>
 800114a:	4483      	add	fp, r0
 800114c:	4630      	mov	r0, r6
 800114e:	4659      	mov	r1, fp
 8001150:	f001 fd02 	bl	8002b58 <drv8834_run>
 8001154:	200a      	movs	r0, #10
 8001156:	f001 f947 	bl	80023e8 <timer_delay_ms>
 800115a:	e73b      	b.n	8000fd4 <_ZN11CBrokenLine7processEj+0x3e>
 800115c:	9800      	ldr	r0, [sp, #0]
 800115e:	4601      	mov	r1, r0
 8001160:	b003      	add	sp, #12
 8001162:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001166:	f001 bcf7 	b.w	8002b58 <drv8834_run>

0800116a <_ZN11CQPredictor4initEv>:
 800116a:	1d03      	adds	r3, r0, #4
 800116c:	3044      	adds	r0, #68	; 0x44
 800116e:	2200      	movs	r2, #0
 8001170:	f843 2b04 	str.w	r2, [r3], #4
 8001174:	4283      	cmp	r3, r0
 8001176:	d1fa      	bne.n	800116e <_ZN11CQPredictor4initEv+0x4>
 8001178:	4770      	bx	lr
	...

0800117c <thread_ending>:
 800117c:	b672      	cpsid	i
 800117e:	4b05      	ldr	r3, [pc, #20]	; (8001194 <thread_ending+0x18>)
 8001180:	681a      	ldr	r2, [r3, #0]
 8001182:	4b05      	ldr	r3, [pc, #20]	; (8001198 <thread_ending+0x1c>)
 8001184:	210c      	movs	r1, #12
 8001186:	fb01 3302 	mla	r3, r1, r2, r3
 800118a:	2200      	movs	r2, #0
 800118c:	605a      	str	r2, [r3, #4]
 800118e:	b662      	cpsie	i
 8001190:	bf00      	nop
 8001192:	e7fd      	b.n	8001190 <thread_ending+0x14>
 8001194:	20000ac4 	.word	0x20000ac4
 8001198:	20000a7c 	.word	0x20000a7c

0800119c <null_thread>:
 800119c:	b508      	push	{r3, lr}
 800119e:	f001 fc47 	bl	8002a30 <sleep>
 80011a2:	e7fc      	b.n	800119e <null_thread+0x2>

080011a4 <scheduler>:
 80011a4:	b570      	push	{r4, r5, r6, lr}
 80011a6:	2200      	movs	r2, #0
 80011a8:	4611      	mov	r1, r2
 80011aa:	4b15      	ldr	r3, [pc, #84]	; (8001200 <scheduler+0x5c>)
 80011ac:	200c      	movs	r0, #12
 80011ae:	fb00 f401 	mul.w	r4, r0, r1
 80011b2:	191e      	adds	r6, r3, r4
 80011b4:	6875      	ldr	r5, [r6, #4]
 80011b6:	f015 0f02 	tst.w	r5, #2
 80011ba:	461d      	mov	r5, r3
 80011bc:	d10a      	bne.n	80011d4 <scheduler+0x30>
 80011be:	6876      	ldr	r6, [r6, #4]
 80011c0:	07f6      	lsls	r6, r6, #31
 80011c2:	d507      	bpl.n	80011d4 <scheduler+0x30>
 80011c4:	4350      	muls	r0, r2
 80011c6:	5b1c      	ldrh	r4, [r3, r4]
 80011c8:	5a18      	ldrh	r0, [r3, r0]
 80011ca:	b2a4      	uxth	r4, r4
 80011cc:	b280      	uxth	r0, r0
 80011ce:	4284      	cmp	r4, r0
 80011d0:	bf38      	it	cc
 80011d2:	460a      	movcc	r2, r1
 80011d4:	200c      	movs	r0, #12
 80011d6:	4348      	muls	r0, r1
 80011d8:	5a1c      	ldrh	r4, [r3, r0]
 80011da:	b2a4      	uxth	r4, r4
 80011dc:	b11c      	cbz	r4, 80011e6 <scheduler+0x42>
 80011de:	5a1c      	ldrh	r4, [r3, r0]
 80011e0:	3c01      	subs	r4, #1
 80011e2:	b2a4      	uxth	r4, r4
 80011e4:	521c      	strh	r4, [r3, r0]
 80011e6:	3101      	adds	r1, #1
 80011e8:	2906      	cmp	r1, #6
 80011ea:	d1de      	bne.n	80011aa <scheduler+0x6>
 80011ec:	230c      	movs	r3, #12
 80011ee:	4353      	muls	r3, r2
 80011f0:	18e9      	adds	r1, r5, r3
 80011f2:	8849      	ldrh	r1, [r1, #2]
 80011f4:	b289      	uxth	r1, r1
 80011f6:	52e9      	strh	r1, [r5, r3]
 80011f8:	4b02      	ldr	r3, [pc, #8]	; (8001204 <scheduler+0x60>)
 80011fa:	601a      	str	r2, [r3, #0]
 80011fc:	bd70      	pop	{r4, r5, r6, pc}
 80011fe:	bf00      	nop
 8001200:	20000a7c 	.word	0x20000a7c
 8001204:	20000ac4 	.word	0x20000ac4

08001208 <SysTick_Handler>:
 8001208:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800120c:	f3ef 8308 	mrs	r3, MSP
 8001210:	4c0f      	ldr	r4, [pc, #60]	; (8001250 <SysTick_Handler+0x48>)
 8001212:	4d10      	ldr	r5, [pc, #64]	; (8001254 <SysTick_Handler+0x4c>)
 8001214:	6822      	ldr	r2, [r4, #0]
 8001216:	3201      	adds	r2, #1
 8001218:	bf1d      	ittte	ne
 800121a:	6822      	ldrne	r2, [r4, #0]
 800121c:	210c      	movne	r1, #12
 800121e:	fb01 5202 	mlane	r2, r1, r2, r5
 8001222:	2300      	moveq	r3, #0
 8001224:	bf14      	ite	ne
 8001226:	6093      	strne	r3, [r2, #8]
 8001228:	6023      	streq	r3, [r4, #0]
 800122a:	f7ff ffbb 	bl	80011a4 <scheduler>
 800122e:	4b0a      	ldr	r3, [pc, #40]	; (8001258 <SysTick_Handler+0x50>)
 8001230:	681a      	ldr	r2, [r3, #0]
 8001232:	3201      	adds	r2, #1
 8001234:	601a      	str	r2, [r3, #0]
 8001236:	6822      	ldr	r2, [r4, #0]
 8001238:	230c      	movs	r3, #12
 800123a:	fb03 5302 	mla	r3, r3, r2, r5
 800123e:	689a      	ldr	r2, [r3, #8]
 8001240:	f06f 0306 	mvn.w	r3, #6
 8001244:	469e      	mov	lr, r3
 8001246:	f382 8808 	msr	MSP, r2
 800124a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800124e:	4770      	bx	lr
 8001250:	20000ac4 	.word	0x20000ac4
 8001254:	20000a7c 	.word	0x20000a7c
 8001258:	20000ac8 	.word	0x20000ac8

0800125c <sched_off>:
 800125c:	b672      	cpsid	i
 800125e:	4770      	bx	lr

08001260 <sched_on>:
 8001260:	b662      	cpsie	i
 8001262:	4770      	bx	lr

08001264 <yield>:
 8001264:	bf00      	nop
 8001266:	4770      	bx	lr

08001268 <get_thread_id>:
 8001268:	b082      	sub	sp, #8
 800126a:	b672      	cpsid	i
 800126c:	4b03      	ldr	r3, [pc, #12]	; (800127c <get_thread_id+0x14>)
 800126e:	681b      	ldr	r3, [r3, #0]
 8001270:	9301      	str	r3, [sp, #4]
 8001272:	b662      	cpsie	i
 8001274:	9801      	ldr	r0, [sp, #4]
 8001276:	b002      	add	sp, #8
 8001278:	4770      	bx	lr
 800127a:	bf00      	nop
 800127c:	20000ac4 	.word	0x20000ac4

08001280 <kernel_start>:
 8001280:	b508      	push	{r3, lr}
 8001282:	f001 fbc3 	bl	8002a0c <sys_tick_init>
 8001286:	bf00      	nop
 8001288:	e7fd      	b.n	8001286 <kernel_start+0x6>
	...

0800128c <create_thread>:
 800128c:	f022 0203 	bic.w	r2, r2, #3
 8001290:	3a40      	subs	r2, #64	; 0x40
 8001292:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001296:	eb01 0e02 	add.w	lr, r1, r2
 800129a:	f102 0634 	add.w	r6, r2, #52	; 0x34
 800129e:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80012a2:	323c      	adds	r2, #60	; 0x3c
 80012a4:	440e      	add	r6, r1
 80012a6:	440f      	add	r7, r1
 80012a8:	4411      	add	r1, r2
 80012aa:	2200      	movs	r2, #0
 80012ac:	b672      	cpsid	i
 80012ae:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001304 <create_thread+0x78>
 80012b2:	250c      	movs	r5, #12
 80012b4:	4355      	muls	r5, r2
 80012b6:	eb0c 0405 	add.w	r4, ip, r5
 80012ba:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80012be:	f018 0f01 	tst.w	r8, #1
 80012c2:	d114      	bne.n	80012ee <create_thread+0x62>
 80012c4:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001308 <create_thread+0x7c>
 80012c8:	f8c4 e008 	str.w	lr, [r4, #8]
 80012cc:	2b05      	cmp	r3, #5
 80012ce:	f8c6 8000 	str.w	r8, [r6]
 80012d2:	bf98      	it	ls
 80012d4:	2306      	movls	r3, #6
 80012d6:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80012da:	6038      	str	r0, [r7, #0]
 80012dc:	f8c1 8000 	str.w	r8, [r1]
 80012e0:	8063      	strh	r3, [r4, #2]
 80012e2:	f82c 3005 	strh.w	r3, [ip, r5]
 80012e6:	2501      	movs	r5, #1
 80012e8:	6065      	str	r5, [r4, #4]
 80012ea:	4614      	mov	r4, r2
 80012ec:	e000      	b.n	80012f0 <create_thread+0x64>
 80012ee:	2406      	movs	r4, #6
 80012f0:	b662      	cpsie	i
 80012f2:	3201      	adds	r2, #1
 80012f4:	2a06      	cmp	r2, #6
 80012f6:	d001      	beq.n	80012fc <create_thread+0x70>
 80012f8:	2c06      	cmp	r4, #6
 80012fa:	d0d7      	beq.n	80012ac <create_thread+0x20>
 80012fc:	4620      	mov	r0, r4
 80012fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001302:	bf00      	nop
 8001304:	20000a7c 	.word	0x20000a7c
 8001308:	0800117d 	.word	0x0800117d

0800130c <kernel_init>:
 800130c:	b530      	push	{r4, r5, lr}
 800130e:	2300      	movs	r3, #0
 8001310:	480c      	ldr	r0, [pc, #48]	; (8001344 <kernel_init+0x38>)
 8001312:	220c      	movs	r2, #12
 8001314:	435a      	muls	r2, r3
 8001316:	2406      	movs	r4, #6
 8001318:	1885      	adds	r5, r0, r2
 800131a:	3301      	adds	r3, #1
 800131c:	2100      	movs	r1, #0
 800131e:	42a3      	cmp	r3, r4
 8001320:	6069      	str	r1, [r5, #4]
 8001322:	806c      	strh	r4, [r5, #2]
 8001324:	5284      	strh	r4, [r0, r2]
 8001326:	d1f3      	bne.n	8001310 <kernel_init+0x4>
 8001328:	4b07      	ldr	r3, [pc, #28]	; (8001348 <kernel_init+0x3c>)
 800132a:	4808      	ldr	r0, [pc, #32]	; (800134c <kernel_init+0x40>)
 800132c:	6019      	str	r1, [r3, #0]
 800132e:	4b08      	ldr	r3, [pc, #32]	; (8001350 <kernel_init+0x44>)
 8001330:	4908      	ldr	r1, [pc, #32]	; (8001354 <kernel_init+0x48>)
 8001332:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001336:	601a      	str	r2, [r3, #0]
 8001338:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800133c:	2280      	movs	r2, #128	; 0x80
 800133e:	23ff      	movs	r3, #255	; 0xff
 8001340:	f7ff bfa4 	b.w	800128c <create_thread>
 8001344:	20000a7c 	.word	0x20000a7c
 8001348:	20000ac8 	.word	0x20000ac8
 800134c:	0800119d 	.word	0x0800119d
 8001350:	20000ac4 	.word	0x20000ac4
 8001354:	20000acc 	.word	0x20000acc

08001358 <set_wait_state>:
 8001358:	b507      	push	{r0, r1, r2, lr}
 800135a:	f7ff ff85 	bl	8001268 <get_thread_id>
 800135e:	9000      	str	r0, [sp, #0]
 8001360:	b672      	cpsid	i
 8001362:	4b0d      	ldr	r3, [pc, #52]	; (8001398 <set_wait_state+0x40>)
 8001364:	9a00      	ldr	r2, [sp, #0]
 8001366:	210c      	movs	r1, #12
 8001368:	fb01 3202 	mla	r2, r1, r2, r3
 800136c:	6851      	ldr	r1, [r2, #4]
 800136e:	f041 0102 	orr.w	r1, r1, #2
 8001372:	6051      	str	r1, [r2, #4]
 8001374:	b672      	cpsid	i
 8001376:	9a00      	ldr	r2, [sp, #0]
 8001378:	210c      	movs	r1, #12
 800137a:	fb01 3202 	mla	r2, r1, r2, r3
 800137e:	6852      	ldr	r2, [r2, #4]
 8001380:	9201      	str	r2, [sp, #4]
 8001382:	b662      	cpsie	i
 8001384:	9a01      	ldr	r2, [sp, #4]
 8001386:	0791      	lsls	r1, r2, #30
 8001388:	d500      	bpl.n	800138c <set_wait_state+0x34>
 800138a:	bf00      	nop
 800138c:	9a01      	ldr	r2, [sp, #4]
 800138e:	0792      	lsls	r2, r2, #30
 8001390:	d4f0      	bmi.n	8001374 <set_wait_state+0x1c>
 8001392:	b003      	add	sp, #12
 8001394:	f85d fb04 	ldr.w	pc, [sp], #4
 8001398:	20000a7c 	.word	0x20000a7c

0800139c <wake_up_threads>:
 800139c:	2300      	movs	r3, #0
 800139e:	b672      	cpsid	i
 80013a0:	4906      	ldr	r1, [pc, #24]	; (80013bc <wake_up_threads+0x20>)
 80013a2:	220c      	movs	r2, #12
 80013a4:	fb02 1203 	mla	r2, r2, r3, r1
 80013a8:	6851      	ldr	r1, [r2, #4]
 80013aa:	f021 0102 	bic.w	r1, r1, #2
 80013ae:	6051      	str	r1, [r2, #4]
 80013b0:	b662      	cpsie	i
 80013b2:	3301      	adds	r3, #1
 80013b4:	2b06      	cmp	r3, #6
 80013b6:	d1f2      	bne.n	800139e <wake_up_threads+0x2>
 80013b8:	4770      	bx	lr
 80013ba:	bf00      	nop
 80013bc:	20000a7c 	.word	0x20000a7c

080013c0 <messages_init>:
 80013c0:	4a0a      	ldr	r2, [pc, #40]	; (80013ec <messages_init+0x2c>)
 80013c2:	2300      	movs	r3, #0
 80013c4:	b510      	push	{r4, lr}
 80013c6:	6013      	str	r3, [r2, #0]
 80013c8:	6053      	str	r3, [r2, #4]
 80013ca:	6093      	str	r3, [r2, #8]
 80013cc:	60d3      	str	r3, [r2, #12]
 80013ce:	6113      	str	r3, [r2, #16]
 80013d0:	6153      	str	r3, [r2, #20]
 80013d2:	4c07      	ldr	r4, [pc, #28]	; (80013f0 <messages_init+0x30>)
 80013d4:	0118      	lsls	r0, r3, #4
 80013d6:	1821      	adds	r1, r4, r0
 80013d8:	3301      	adds	r3, #1
 80013da:	2200      	movs	r2, #0
 80013dc:	2b04      	cmp	r3, #4
 80013de:	604a      	str	r2, [r1, #4]
 80013e0:	5022      	str	r2, [r4, r0]
 80013e2:	60ca      	str	r2, [r1, #12]
 80013e4:	608a      	str	r2, [r1, #8]
 80013e6:	d1f4      	bne.n	80013d2 <messages_init+0x12>
 80013e8:	bd10      	pop	{r4, pc}
 80013ea:	bf00      	nop
 80013ec:	20000b4c 	.word	0x20000b4c
 80013f0:	20000b64 	.word	0x20000b64

080013f4 <putc_>:
 80013f4:	b538      	push	{r3, r4, r5, lr}
 80013f6:	4c06      	ldr	r4, [pc, #24]	; (8001410 <putc_+0x1c>)
 80013f8:	4605      	mov	r5, r0
 80013fa:	4620      	mov	r0, r4
 80013fc:	f000 f91f 	bl	800163e <mutex_lock>
 8001400:	4628      	mov	r0, r5
 8001402:	f001 f8dd 	bl	80025c0 <uart_write>
 8001406:	4620      	mov	r0, r4
 8001408:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800140c:	f000 b933 	b.w	8001676 <mutex_unlock>
 8001410:	20000ba4 	.word	0x20000ba4

08001414 <puts_>:
 8001414:	b510      	push	{r4, lr}
 8001416:	4604      	mov	r4, r0
 8001418:	4807      	ldr	r0, [pc, #28]	; (8001438 <puts_+0x24>)
 800141a:	f000 f910 	bl	800163e <mutex_lock>
 800141e:	3c01      	subs	r4, #1
 8001420:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001424:	b110      	cbz	r0, 800142c <puts_+0x18>
 8001426:	f7ff ffe5 	bl	80013f4 <putc_>
 800142a:	e7f9      	b.n	8001420 <puts_+0xc>
 800142c:	4802      	ldr	r0, [pc, #8]	; (8001438 <puts_+0x24>)
 800142e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001432:	f000 b920 	b.w	8001676 <mutex_unlock>
 8001436:	bf00      	nop
 8001438:	20000bb0 	.word	0x20000bb0

0800143c <puti_>:
 800143c:	b530      	push	{r4, r5, lr}
 800143e:	b085      	sub	sp, #20
 8001440:	1e03      	subs	r3, r0, #0
 8001442:	f04f 0200 	mov.w	r2, #0
 8001446:	bfba      	itte	lt
 8001448:	425b      	neglt	r3, r3
 800144a:	2401      	movlt	r4, #1
 800144c:	4614      	movge	r4, r2
 800144e:	f88d 200f 	strb.w	r2, [sp, #15]
 8001452:	210a      	movs	r1, #10
 8001454:	220a      	movs	r2, #10
 8001456:	a801      	add	r0, sp, #4
 8001458:	fb93 f5f2 	sdiv	r5, r3, r2
 800145c:	fb02 3315 	mls	r3, r2, r5, r3
 8001460:	3330      	adds	r3, #48	; 0x30
 8001462:	540b      	strb	r3, [r1, r0]
 8001464:	1e4a      	subs	r2, r1, #1
 8001466:	462b      	mov	r3, r5
 8001468:	b10d      	cbz	r5, 800146e <puti_+0x32>
 800146a:	4611      	mov	r1, r2
 800146c:	e7f2      	b.n	8001454 <puti_+0x18>
 800146e:	b12c      	cbz	r4, 800147c <puti_+0x40>
 8001470:	ab04      	add	r3, sp, #16
 8001472:	4413      	add	r3, r2
 8001474:	212d      	movs	r1, #45	; 0x2d
 8001476:	f803 1c0c 	strb.w	r1, [r3, #-12]
 800147a:	4611      	mov	r1, r2
 800147c:	4408      	add	r0, r1
 800147e:	f7ff ffc9 	bl	8001414 <puts_>
 8001482:	b005      	add	sp, #20
 8001484:	bd30      	pop	{r4, r5, pc}

08001486 <putui_>:
 8001486:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001488:	2300      	movs	r3, #0
 800148a:	f88d 300f 	strb.w	r3, [sp, #15]
 800148e:	220a      	movs	r2, #10
 8001490:	230a      	movs	r3, #10
 8001492:	a901      	add	r1, sp, #4
 8001494:	fbb0 f4f3 	udiv	r4, r0, r3
 8001498:	fb03 0314 	mls	r3, r3, r4, r0
 800149c:	3330      	adds	r3, #48	; 0x30
 800149e:	5453      	strb	r3, [r2, r1]
 80014a0:	4620      	mov	r0, r4
 80014a2:	1e53      	subs	r3, r2, #1
 80014a4:	b10c      	cbz	r4, 80014aa <putui_+0x24>
 80014a6:	461a      	mov	r2, r3
 80014a8:	e7f2      	b.n	8001490 <putui_+0xa>
 80014aa:	1888      	adds	r0, r1, r2
 80014ac:	f7ff ffb2 	bl	8001414 <puts_>
 80014b0:	b004      	add	sp, #16
 80014b2:	bd10      	pop	{r4, pc}

080014b4 <putx_>:
 80014b4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80014b6:	2300      	movs	r3, #0
 80014b8:	f88d 300f 	strb.w	r3, [sp, #15]
 80014bc:	220a      	movs	r2, #10
 80014be:	f000 030f 	and.w	r3, r0, #15
 80014c2:	2b09      	cmp	r3, #9
 80014c4:	a901      	add	r1, sp, #4
 80014c6:	bf94      	ite	ls
 80014c8:	3330      	addls	r3, #48	; 0x30
 80014ca:	3357      	addhi	r3, #87	; 0x57
 80014cc:	0900      	lsrs	r0, r0, #4
 80014ce:	548b      	strb	r3, [r1, r2]
 80014d0:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80014d4:	d001      	beq.n	80014da <putx_+0x26>
 80014d6:	461a      	mov	r2, r3
 80014d8:	e7f1      	b.n	80014be <putx_+0xa>
 80014da:	1888      	adds	r0, r1, r2
 80014dc:	f7ff ff9a 	bl	8001414 <puts_>
 80014e0:	b005      	add	sp, #20
 80014e2:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080014e8 <printf_>:
 80014e8:	b40f      	push	{r0, r1, r2, r3}
 80014ea:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80014ec:	ac06      	add	r4, sp, #24
 80014ee:	4826      	ldr	r0, [pc, #152]	; (8001588 <printf_+0xa0>)
 80014f0:	f854 5b04 	ldr.w	r5, [r4], #4
 80014f4:	f000 f8a3 	bl	800163e <mutex_lock>
 80014f8:	9401      	str	r4, [sp, #4]
 80014fa:	2400      	movs	r4, #0
 80014fc:	5d28      	ldrb	r0, [r5, r4]
 80014fe:	2800      	cmp	r0, #0
 8001500:	d039      	beq.n	8001576 <printf_+0x8e>
 8001502:	2825      	cmp	r0, #37	; 0x25
 8001504:	d003      	beq.n	800150e <printf_+0x26>
 8001506:	f7ff ff75 	bl	80013f4 <putc_>
 800150a:	3401      	adds	r4, #1
 800150c:	e7f6      	b.n	80014fc <printf_+0x14>
 800150e:	192b      	adds	r3, r5, r4
 8001510:	7858      	ldrb	r0, [r3, #1]
 8001512:	2869      	cmp	r0, #105	; 0x69
 8001514:	d016      	beq.n	8001544 <printf_+0x5c>
 8001516:	d808      	bhi.n	800152a <printf_+0x42>
 8001518:	2825      	cmp	r0, #37	; 0x25
 800151a:	d028      	beq.n	800156e <printf_+0x86>
 800151c:	2863      	cmp	r0, #99	; 0x63
 800151e:	d128      	bne.n	8001572 <printf_+0x8a>
 8001520:	9b01      	ldr	r3, [sp, #4]
 8001522:	1d1a      	adds	r2, r3, #4
 8001524:	9201      	str	r2, [sp, #4]
 8001526:	7818      	ldrb	r0, [r3, #0]
 8001528:	e021      	b.n	800156e <printf_+0x86>
 800152a:	2875      	cmp	r0, #117	; 0x75
 800152c:	d011      	beq.n	8001552 <printf_+0x6a>
 800152e:	2878      	cmp	r0, #120	; 0x78
 8001530:	d016      	beq.n	8001560 <printf_+0x78>
 8001532:	2873      	cmp	r0, #115	; 0x73
 8001534:	d11d      	bne.n	8001572 <printf_+0x8a>
 8001536:	9b01      	ldr	r3, [sp, #4]
 8001538:	1d1a      	adds	r2, r3, #4
 800153a:	6818      	ldr	r0, [r3, #0]
 800153c:	9201      	str	r2, [sp, #4]
 800153e:	f7ff ff69 	bl	8001414 <puts_>
 8001542:	e016      	b.n	8001572 <printf_+0x8a>
 8001544:	9b01      	ldr	r3, [sp, #4]
 8001546:	1d1a      	adds	r2, r3, #4
 8001548:	6818      	ldr	r0, [r3, #0]
 800154a:	9201      	str	r2, [sp, #4]
 800154c:	f7ff ff76 	bl	800143c <puti_>
 8001550:	e00f      	b.n	8001572 <printf_+0x8a>
 8001552:	9b01      	ldr	r3, [sp, #4]
 8001554:	1d1a      	adds	r2, r3, #4
 8001556:	6818      	ldr	r0, [r3, #0]
 8001558:	9201      	str	r2, [sp, #4]
 800155a:	f7ff ff94 	bl	8001486 <putui_>
 800155e:	e008      	b.n	8001572 <printf_+0x8a>
 8001560:	9b01      	ldr	r3, [sp, #4]
 8001562:	1d1a      	adds	r2, r3, #4
 8001564:	6818      	ldr	r0, [r3, #0]
 8001566:	9201      	str	r2, [sp, #4]
 8001568:	f7ff ffa4 	bl	80014b4 <putx_>
 800156c:	e001      	b.n	8001572 <printf_+0x8a>
 800156e:	f7ff ff41 	bl	80013f4 <putc_>
 8001572:	3402      	adds	r4, #2
 8001574:	e7c2      	b.n	80014fc <printf_+0x14>
 8001576:	4804      	ldr	r0, [pc, #16]	; (8001588 <printf_+0xa0>)
 8001578:	f000 f87d 	bl	8001676 <mutex_unlock>
 800157c:	b003      	add	sp, #12
 800157e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001582:	b004      	add	sp, #16
 8001584:	4770      	bx	lr
 8001586:	bf00      	nop
 8001588:	20000bac 	.word	0x20000bac

0800158c <stdio_init>:
 800158c:	b510      	push	{r4, lr}
 800158e:	480e      	ldr	r0, [pc, #56]	; (80015c8 <stdio_init+0x3c>)
 8001590:	f000 f84b 	bl	800162a <mutex_init>
 8001594:	480d      	ldr	r0, [pc, #52]	; (80015cc <stdio_init+0x40>)
 8001596:	f000 f848 	bl	800162a <mutex_init>
 800159a:	480d      	ldr	r0, [pc, #52]	; (80015d0 <stdio_init+0x44>)
 800159c:	f000 f845 	bl	800162a <mutex_init>
 80015a0:	480c      	ldr	r0, [pc, #48]	; (80015d4 <stdio_init+0x48>)
 80015a2:	f000 f842 	bl	800162a <mutex_init>
 80015a6:	2408      	movs	r4, #8
 80015a8:	2020      	movs	r0, #32
 80015aa:	f7ff ff23 	bl	80013f4 <putc_>
 80015ae:	3c01      	subs	r4, #1
 80015b0:	d1fa      	bne.n	80015a8 <stdio_init+0x1c>
 80015b2:	2420      	movs	r4, #32
 80015b4:	200a      	movs	r0, #10
 80015b6:	f7ff ff1d 	bl	80013f4 <putc_>
 80015ba:	3c01      	subs	r4, #1
 80015bc:	d1fa      	bne.n	80015b4 <stdio_init+0x28>
 80015be:	4806      	ldr	r0, [pc, #24]	; (80015d8 <stdio_init+0x4c>)
 80015c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80015c4:	f7ff bf90 	b.w	80014e8 <printf_>
 80015c8:	20000ba4 	.word	0x20000ba4
 80015cc:	20000ba8 	.word	0x20000ba8
 80015d0:	20000bb0 	.word	0x20000bb0
 80015d4:	20000bac 	.word	0x20000bac
 80015d8:	08004bf3 	.word	0x08004bf3

080015dc <mem_init>:
 80015dc:	4b06      	ldr	r3, [pc, #24]	; (80015f8 <mem_init+0x1c>)
 80015de:	4a07      	ldr	r2, [pc, #28]	; (80015fc <mem_init+0x20>)
 80015e0:	601a      	str	r2, [r3, #0]
 80015e2:	4907      	ldr	r1, [pc, #28]	; (8001600 <mem_init+0x24>)
 80015e4:	4b07      	ldr	r3, [pc, #28]	; (8001604 <mem_init+0x28>)
 80015e6:	4808      	ldr	r0, [pc, #32]	; (8001608 <mem_init+0x2c>)
 80015e8:	1a5b      	subs	r3, r3, r1
 80015ea:	4908      	ldr	r1, [pc, #32]	; (800160c <mem_init+0x30>)
 80015ec:	4413      	add	r3, r2
 80015ee:	600b      	str	r3, [r1, #0]
 80015f0:	4b07      	ldr	r3, [pc, #28]	; (8001610 <mem_init+0x34>)
 80015f2:	601a      	str	r2, [r3, #0]
 80015f4:	f000 b819 	b.w	800162a <mutex_init>
 80015f8:	20000bb4 	.word	0x20000bb4
 80015fc:	20001094 	.word	0x20001094
 8001600:	20001094 	.word	0x20001094
 8001604:	20004000 	.word	0x20004000
 8001608:	20000bc0 	.word	0x20000bc0
 800160c:	20000bbc 	.word	0x20000bbc
 8001610:	20000bb8 	.word	0x20000bb8

08001614 <lib_os_init>:
 8001614:	b508      	push	{r3, lr}
 8001616:	f7ff fe79 	bl	800130c <kernel_init>
 800161a:	f7ff ffdf 	bl	80015dc <mem_init>
 800161e:	f7ff fecf 	bl	80013c0 <messages_init>
 8001622:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001626:	f7ff bfb1 	b.w	800158c <stdio_init>

0800162a <mutex_init>:
 800162a:	b510      	push	{r4, lr}
 800162c:	4604      	mov	r4, r0
 800162e:	f7ff fe15 	bl	800125c <sched_off>
 8001632:	2300      	movs	r3, #0
 8001634:	6023      	str	r3, [r4, #0]
 8001636:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800163a:	f7ff be11 	b.w	8001260 <sched_on>

0800163e <mutex_lock>:
 800163e:	b513      	push	{r0, r1, r4, lr}
 8001640:	4604      	mov	r4, r0
 8001642:	f7ff fe0b 	bl	800125c <sched_off>
 8001646:	6823      	ldr	r3, [r4, #0]
 8001648:	9301      	str	r3, [sp, #4]
 800164a:	f7ff fe09 	bl	8001260 <sched_on>
 800164e:	9b01      	ldr	r3, [sp, #4]
 8001650:	b10b      	cbz	r3, 8001656 <mutex_lock+0x18>
 8001652:	f7ff fe81 	bl	8001358 <set_wait_state>
 8001656:	9b01      	ldr	r3, [sp, #4]
 8001658:	2b00      	cmp	r3, #0
 800165a:	d1f2      	bne.n	8001642 <mutex_lock+0x4>
 800165c:	f7ff fdfe 	bl	800125c <sched_off>
 8001660:	6823      	ldr	r3, [r4, #0]
 8001662:	9301      	str	r3, [sp, #4]
 8001664:	9b01      	ldr	r3, [sp, #4]
 8001666:	2b00      	cmp	r3, #0
 8001668:	d1eb      	bne.n	8001642 <mutex_lock+0x4>
 800166a:	2301      	movs	r3, #1
 800166c:	6023      	str	r3, [r4, #0]
 800166e:	f7ff fdf7 	bl	8001260 <sched_on>
 8001672:	b002      	add	sp, #8
 8001674:	bd10      	pop	{r4, pc}

08001676 <mutex_unlock>:
 8001676:	b508      	push	{r3, lr}
 8001678:	f7ff ffd7 	bl	800162a <mutex_init>
 800167c:	f7ff fe8e 	bl	800139c <wake_up_threads>
 8001680:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001684:	f7ff bdee 	b.w	8001264 <yield>

08001688 <log_write>:
 8001688:	b570      	push	{r4, r5, r6, lr}
 800168a:	f3c0 060a 	ubfx	r6, r0, #0, #11
 800168e:	460c      	mov	r4, r1
 8001690:	4615      	mov	r5, r2
 8001692:	f001 f8a3 	bl	80027dc <i2cStart>
 8001696:	0a30      	lsrs	r0, r6, #8
 8001698:	0040      	lsls	r0, r0, #1
 800169a:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 800169e:	f001 f8bb 	bl	8002818 <i2cWrite>
 80016a2:	b2f0      	uxtb	r0, r6
 80016a4:	f001 f8b8 	bl	8002818 <i2cWrite>
 80016a8:	4425      	add	r5, r4
 80016aa:	42ac      	cmp	r4, r5
 80016ac:	d004      	beq.n	80016b8 <log_write+0x30>
 80016ae:	f814 0b01 	ldrb.w	r0, [r4], #1
 80016b2:	f001 f8b1 	bl	8002818 <i2cWrite>
 80016b6:	e7f8      	b.n	80016aa <log_write+0x22>
 80016b8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80016bc:	f001 b89d 	b.w	80027fa <i2cStop>

080016c0 <m_abs>:
 80016c0:	ee07 0a90 	vmov	s15, r0
 80016c4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80016c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016cc:	bf48      	it	mi
 80016ce:	eef1 7a67 	vnegmi.f32	s15, s15
 80016d2:	ee17 0a90 	vmov	r0, s15
 80016d6:	4770      	bx	lr

080016d8 <m_abs_int>:
 80016d8:	2800      	cmp	r0, #0
 80016da:	bfb8      	it	lt
 80016dc:	4240      	neglt	r0, r0
 80016de:	4770      	bx	lr

080016e0 <m_sgn_int>:
 80016e0:	2800      	cmp	r0, #0
 80016e2:	db03      	blt.n	80016ec <m_sgn_int+0xc>
 80016e4:	bf14      	ite	ne
 80016e6:	2001      	movne	r0, #1
 80016e8:	2000      	moveq	r0, #0
 80016ea:	4770      	bx	lr
 80016ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80016f0:	4770      	bx	lr

080016f2 <m_saturate>:
 80016f2:	ee07 0a90 	vmov	s15, r0
 80016f6:	ee06 1a90 	vmov	s13, r1
 80016fa:	eef4 7a66 	vcmp.f32	s15, s13
 80016fe:	ee07 2a10 	vmov	s14, r2
 8001702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001706:	bf48      	it	mi
 8001708:	eef0 7a66 	vmovmi.f32	s15, s13
 800170c:	eef4 7a47 	vcmp.f32	s15, s14
 8001710:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001714:	bfcc      	ite	gt
 8001716:	ee17 0a10 	vmovgt	r0, s14
 800171a:	ee17 0a90 	vmovle	r0, s15
 800171e:	4770      	bx	lr

08001720 <m_min>:
 8001720:	ee07 0a10 	vmov	s14, r0
 8001724:	ee07 1a90 	vmov	s15, r1
 8001728:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800172c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001730:	bf54      	ite	pl
 8001732:	ee17 0a90 	vmovpl	r0, s15
 8001736:	ee17 0a10 	vmovmi	r0, s14
 800173a:	4770      	bx	lr

0800173c <pid_init>:
 800173c:	ee07 2a90 	vmov	s15, r2
 8001740:	ee06 3a10 	vmov	s12, r3
 8001744:	ed9d 7a00 	vldr	s14, [sp]
 8001748:	eddd 6a01 	vldr	s13, [sp, #4]
 800174c:	6241      	str	r1, [r0, #36]	; 0x24
 800174e:	ee37 6a86 	vadd.f32	s12, s15, s12
 8001752:	ee77 5a07 	vadd.f32	s11, s14, s14
 8001756:	ee36 6a07 	vadd.f32	s12, s12, s14
 800175a:	eef1 7a67 	vneg.f32	s15, s15
 800175e:	ee36 6a26 	vadd.f32	s12, s12, s13
 8001762:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8001766:	ed80 6a04 	vstr	s12, [r0, #16]
 800176a:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001798 <pid_init+0x5c>
 800176e:	ee26 6a86 	vmul.f32	s12, s13, s12
 8001772:	2200      	movs	r2, #0
 8001774:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001778:	ee37 7a06 	vadd.f32	s14, s14, s12
 800177c:	eef1 6a66 	vneg.f32	s13, s13
 8001780:	6002      	str	r2, [r0, #0]
 8001782:	6042      	str	r2, [r0, #4]
 8001784:	6082      	str	r2, [r0, #8]
 8001786:	60c2      	str	r2, [r0, #12]
 8001788:	edc0 7a05 	vstr	s15, [r0, #20]
 800178c:	ed80 7a06 	vstr	s14, [r0, #24]
 8001790:	edc0 6a07 	vstr	s13, [r0, #28]
 8001794:	6202      	str	r2, [r0, #32]
 8001796:	4770      	bx	lr
 8001798:	40400000 	.word	0x40400000

0800179c <pid_process>:
 800179c:	edd0 7a08 	vldr	s15, [r0, #32]
 80017a0:	ed90 5a04 	vldr	s10, [r0, #16]
 80017a4:	ed90 6a00 	vldr	s12, [r0]
 80017a8:	edd0 6a01 	vldr	s13, [r0, #4]
 80017ac:	ed80 6a01 	vstr	s12, [r0, #4]
 80017b0:	ee05 1a90 	vmov	s11, r1
 80017b4:	ee45 7a85 	vmla.f32	s15, s11, s10
 80017b8:	6001      	str	r1, [r0, #0]
 80017ba:	edd0 5a05 	vldr	s11, [r0, #20]
 80017be:	ed90 7a02 	vldr	s14, [r0, #8]
 80017c2:	edc0 6a02 	vstr	s13, [r0, #8]
 80017c6:	ee46 7a25 	vmla.f32	s15, s12, s11
 80017ca:	ed90 6a06 	vldr	s12, [r0, #24]
 80017ce:	ed80 7a03 	vstr	s14, [r0, #12]
 80017d2:	ee46 7a86 	vmla.f32	s15, s13, s12
 80017d6:	edd0 6a07 	vldr	s13, [r0, #28]
 80017da:	ee47 7a26 	vmla.f32	s15, s14, s13
 80017de:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 80017e2:	edc0 7a08 	vstr	s15, [r0, #32]
 80017e6:	eef4 7ac7 	vcmpe.f32	s15, s14
 80017ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80017ee:	bfc8      	it	gt
 80017f0:	ed80 7a08 	vstrgt	s14, [r0, #32]
 80017f4:	edd0 7a08 	vldr	s15, [r0, #32]
 80017f8:	eeb1 7a47 	vneg.f32	s14, s14
 80017fc:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001804:	bf48      	it	mi
 8001806:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800180a:	6a00      	ldr	r0, [r0, #32]
 800180c:	4770      	bx	lr
	...

08001810 <TIM2_IRQHandler>:
 8001810:	4a21      	ldr	r2, [pc, #132]	; (8001898 <TIM2_IRQHandler+0x88>)
 8001812:	4922      	ldr	r1, [pc, #136]	; (800189c <TIM2_IRQHandler+0x8c>)
 8001814:	6813      	ldr	r3, [r2, #0]
 8001816:	2b01      	cmp	r3, #1
 8001818:	b510      	push	{r4, lr}
 800181a:	d011      	beq.n	8001840 <TIM2_IRQHandler+0x30>
 800181c:	d306      	bcc.n	800182c <TIM2_IRQHandler+0x1c>
 800181e:	2b02      	cmp	r3, #2
 8001820:	d113      	bne.n	800184a <TIM2_IRQHandler+0x3a>
 8001822:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001826:	850b      	strh	r3, [r1, #40]	; 0x28
 8001828:	2304      	movs	r3, #4
 800182a:	e023      	b.n	8001874 <TIM2_IRQHandler+0x64>
 800182c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001830:	850b      	strh	r3, [r1, #40]	; 0x28
 8001832:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001836:	618b      	str	r3, [r1, #24]
 8001838:	2301      	movs	r3, #1
 800183a:	6013      	str	r3, [r2, #0]
 800183c:	6093      	str	r3, [r2, #8]
 800183e:	e023      	b.n	8001888 <TIM2_IRQHandler+0x78>
 8001840:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001844:	618b      	str	r3, [r1, #24]
 8001846:	2302      	movs	r3, #2
 8001848:	e014      	b.n	8001874 <TIM2_IRQHandler+0x64>
 800184a:	f013 0f01 	tst.w	r3, #1
 800184e:	4814      	ldr	r0, [pc, #80]	; (80018a0 <TIM2_IRQHandler+0x90>)
 8001850:	f103 0401 	add.w	r4, r3, #1
 8001854:	d010      	beq.n	8001878 <TIM2_IRQHandler+0x68>
 8001856:	3b04      	subs	r3, #4
 8001858:	f023 0301 	bic.w	r3, r3, #1
 800185c:	4413      	add	r3, r2
 800185e:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001860:	8298      	strh	r0, [r3, #20]
 8001862:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001866:	f44f 7380 	mov.w	r3, #256	; 0x100
 800186a:	850b      	strh	r3, [r1, #40]	; 0x28
 800186c:	d201      	bcs.n	8001872 <TIM2_IRQHandler+0x62>
 800186e:	6014      	str	r4, [r2, #0]
 8001870:	e00a      	b.n	8001888 <TIM2_IRQHandler+0x78>
 8001872:	2300      	movs	r3, #0
 8001874:	6013      	str	r3, [r2, #0]
 8001876:	e007      	b.n	8001888 <TIM2_IRQHandler+0x78>
 8001878:	f44f 7380 	mov.w	r3, #256	; 0x100
 800187c:	618b      	str	r3, [r1, #24]
 800187e:	6883      	ldr	r3, [r0, #8]
 8001880:	6014      	str	r4, [r2, #0]
 8001882:	f043 0304 	orr.w	r3, r3, #4
 8001886:	6083      	str	r3, [r0, #8]
 8001888:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 800188c:	2101      	movs	r1, #1
 800188e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001892:	f000 bd1e 	b.w	80022d2 <TIM_ClearITPendingBit>
 8001896:	bf00      	nop
 8001898:	20000bc4 	.word	0x20000bc4
 800189c:	48000400 	.word	0x48000400
 80018a0:	50000500 	.word	0x50000500

080018a4 <rgb_i2c_delay>:
 80018a4:	bf00      	nop
 80018a6:	bf00      	nop
 80018a8:	bf00      	nop
 80018aa:	bf00      	nop
 80018ac:	4770      	bx	lr
	...

080018b0 <RGBSetLowSDA>:
 80018b0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80018b2:	4f15      	ldr	r7, [pc, #84]	; (8001908 <RGBSetLowSDA+0x58>)
 80018b4:	2401      	movs	r4, #1
 80018b6:	783b      	ldrb	r3, [r7, #0]
 80018b8:	9300      	str	r3, [sp, #0]
 80018ba:	2603      	movs	r6, #3
 80018bc:	2500      	movs	r5, #0
 80018be:	4669      	mov	r1, sp
 80018c0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80018c4:	f88d 5007 	strb.w	r5, [sp, #7]
 80018c8:	f88d 4004 	strb.w	r4, [sp, #4]
 80018cc:	f88d 6005 	strb.w	r6, [sp, #5]
 80018d0:	f88d 4006 	strb.w	r4, [sp, #6]
 80018d4:	f001 fa7c 	bl	8002dd0 <GPIO_Init>
 80018d8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80018dc:	783a      	ldrb	r2, [r7, #0]
 80018de:	851a      	strh	r2, [r3, #40]	; 0x28
 80018e0:	f88d 5007 	strb.w	r5, [sp, #7]
 80018e4:	4d09      	ldr	r5, [pc, #36]	; (800190c <RGBSetLowSDA+0x5c>)
 80018e6:	9400      	str	r4, [sp, #0]
 80018e8:	4628      	mov	r0, r5
 80018ea:	4669      	mov	r1, sp
 80018ec:	f88d 4004 	strb.w	r4, [sp, #4]
 80018f0:	f88d 6005 	strb.w	r6, [sp, #5]
 80018f4:	f88d 4006 	strb.w	r4, [sp, #6]
 80018f8:	f001 fa6a 	bl	8002dd0 <GPIO_Init>
 80018fc:	852c      	strh	r4, [r5, #40]	; 0x28
 80018fe:	f7ff ffd1 	bl	80018a4 <rgb_i2c_delay>
 8001902:	b003      	add	sp, #12
 8001904:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001906:	bf00      	nop
 8001908:	20000e32 	.word	0x20000e32
 800190c:	48000400 	.word	0x48000400

08001910 <RGBSetHighSDA>:
 8001910:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001912:	4d13      	ldr	r5, [pc, #76]	; (8001960 <RGBSetHighSDA+0x50>)
 8001914:	2400      	movs	r4, #0
 8001916:	782b      	ldrb	r3, [r5, #0]
 8001918:	9300      	str	r3, [sp, #0]
 800191a:	2603      	movs	r6, #3
 800191c:	4669      	mov	r1, sp
 800191e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001922:	f88d 4004 	strb.w	r4, [sp, #4]
 8001926:	f88d 4007 	strb.w	r4, [sp, #7]
 800192a:	f88d 6005 	strb.w	r6, [sp, #5]
 800192e:	f001 fa4f 	bl	8002dd0 <GPIO_Init>
 8001932:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001936:	782a      	ldrb	r2, [r5, #0]
 8001938:	619a      	str	r2, [r3, #24]
 800193a:	f88d 4004 	strb.w	r4, [sp, #4]
 800193e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001942:	4c08      	ldr	r4, [pc, #32]	; (8001964 <RGBSetHighSDA+0x54>)
 8001944:	f88d 6005 	strb.w	r6, [sp, #5]
 8001948:	2501      	movs	r5, #1
 800194a:	4620      	mov	r0, r4
 800194c:	4669      	mov	r1, sp
 800194e:	9500      	str	r5, [sp, #0]
 8001950:	f001 fa3e 	bl	8002dd0 <GPIO_Init>
 8001954:	61a5      	str	r5, [r4, #24]
 8001956:	f7ff ffa5 	bl	80018a4 <rgb_i2c_delay>
 800195a:	b002      	add	sp, #8
 800195c:	bd70      	pop	{r4, r5, r6, pc}
 800195e:	bf00      	nop
 8001960:	20000e32 	.word	0x20000e32
 8001964:	48000400 	.word	0x48000400

08001968 <RGBSetLowSCL>:
 8001968:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800196c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001970:	851a      	strh	r2, [r3, #40]	; 0x28
 8001972:	f7ff bf97 	b.w	80018a4 <rgb_i2c_delay>

08001976 <RGBSetHighSCL>:
 8001976:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800197a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800197e:	619a      	str	r2, [r3, #24]
 8001980:	f7ff bf90 	b.w	80018a4 <rgb_i2c_delay>

08001984 <rgb_i2c_init>:
 8001984:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001986:	4f1f      	ldr	r7, [pc, #124]	; (8001a04 <rgb_i2c_init+0x80>)
 8001988:	2400      	movs	r4, #0
 800198a:	2501      	movs	r5, #1
 800198c:	2603      	movs	r6, #3
 800198e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001992:	4669      	mov	r1, sp
 8001994:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001998:	9300      	str	r3, [sp, #0]
 800199a:	f88d 4006 	strb.w	r4, [sp, #6]
 800199e:	f88d 4007 	strb.w	r4, [sp, #7]
 80019a2:	f88d 5004 	strb.w	r5, [sp, #4]
 80019a6:	f88d 6005 	strb.w	r6, [sp, #5]
 80019aa:	f001 fa11 	bl	8002dd0 <GPIO_Init>
 80019ae:	783b      	ldrb	r3, [r7, #0]
 80019b0:	9300      	str	r3, [sp, #0]
 80019b2:	4669      	mov	r1, sp
 80019b4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80019b8:	f88d 4004 	strb.w	r4, [sp, #4]
 80019bc:	f88d 4007 	strb.w	r4, [sp, #7]
 80019c0:	f88d 6005 	strb.w	r6, [sp, #5]
 80019c4:	f001 fa04 	bl	8002dd0 <GPIO_Init>
 80019c8:	7839      	ldrb	r1, [r7, #0]
 80019ca:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80019ce:	f001 fa41 	bl	8002e54 <GPIO_SetBits>
 80019d2:	f88d 4004 	strb.w	r4, [sp, #4]
 80019d6:	f88d 4007 	strb.w	r4, [sp, #7]
 80019da:	4c0b      	ldr	r4, [pc, #44]	; (8001a08 <rgb_i2c_init+0x84>)
 80019dc:	9500      	str	r5, [sp, #0]
 80019de:	4620      	mov	r0, r4
 80019e0:	4669      	mov	r1, sp
 80019e2:	f88d 6005 	strb.w	r6, [sp, #5]
 80019e6:	f001 f9f3 	bl	8002dd0 <GPIO_Init>
 80019ea:	4620      	mov	r0, r4
 80019ec:	4629      	mov	r1, r5
 80019ee:	f001 fa31 	bl	8002e54 <GPIO_SetBits>
 80019f2:	f7ff ffc0 	bl	8001976 <RGBSetHighSCL>
 80019f6:	f7ff ff5b 	bl	80018b0 <RGBSetLowSDA>
 80019fa:	f7ff ff89 	bl	8001910 <RGBSetHighSDA>
 80019fe:	b003      	add	sp, #12
 8001a00:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001a02:	bf00      	nop
 8001a04:	20000e32 	.word	0x20000e32
 8001a08:	48000400 	.word	0x48000400

08001a0c <rgb_i2cStart>:
 8001a0c:	b508      	push	{r3, lr}
 8001a0e:	f7ff ffb2 	bl	8001976 <RGBSetHighSCL>
 8001a12:	f7ff ff7d 	bl	8001910 <RGBSetHighSDA>
 8001a16:	f7ff ffae 	bl	8001976 <RGBSetHighSCL>
 8001a1a:	f7ff ff49 	bl	80018b0 <RGBSetLowSDA>
 8001a1e:	f7ff ffa3 	bl	8001968 <RGBSetLowSCL>
 8001a22:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a26:	f7ff bf73 	b.w	8001910 <RGBSetHighSDA>

08001a2a <rgb_i2cStop>:
 8001a2a:	b508      	push	{r3, lr}
 8001a2c:	f7ff ff9c 	bl	8001968 <RGBSetLowSCL>
 8001a30:	f7ff ff3e 	bl	80018b0 <RGBSetLowSDA>
 8001a34:	f7ff ff9f 	bl	8001976 <RGBSetHighSCL>
 8001a38:	f7ff ff3a 	bl	80018b0 <RGBSetLowSDA>
 8001a3c:	f7ff ff9b 	bl	8001976 <RGBSetHighSCL>
 8001a40:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a44:	f7ff bf64 	b.w	8001910 <RGBSetHighSDA>

08001a48 <rgb_i2cWrite>:
 8001a48:	b538      	push	{r3, r4, r5, lr}
 8001a4a:	4605      	mov	r5, r0
 8001a4c:	2408      	movs	r4, #8
 8001a4e:	f7ff ff8b 	bl	8001968 <RGBSetLowSCL>
 8001a52:	062b      	lsls	r3, r5, #24
 8001a54:	d502      	bpl.n	8001a5c <rgb_i2cWrite+0x14>
 8001a56:	f7ff ff5b 	bl	8001910 <RGBSetHighSDA>
 8001a5a:	e001      	b.n	8001a60 <rgb_i2cWrite+0x18>
 8001a5c:	f7ff ff28 	bl	80018b0 <RGBSetLowSDA>
 8001a60:	3c01      	subs	r4, #1
 8001a62:	f7ff ff88 	bl	8001976 <RGBSetHighSCL>
 8001a66:	006d      	lsls	r5, r5, #1
 8001a68:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001a6c:	b2ed      	uxtb	r5, r5
 8001a6e:	d1ee      	bne.n	8001a4e <rgb_i2cWrite+0x6>
 8001a70:	f7ff ff7a 	bl	8001968 <RGBSetLowSCL>
 8001a74:	f7ff ff4c 	bl	8001910 <RGBSetHighSDA>
 8001a78:	f7ff ff7d 	bl	8001976 <RGBSetHighSCL>
 8001a7c:	f7ff ff74 	bl	8001968 <RGBSetLowSCL>
 8001a80:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001a84:	f7ff bf0e 	b.w	80018a4 <rgb_i2c_delay>

08001a88 <rgb_i2cRead>:
 8001a88:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a8c:	1e4e      	subs	r6, r1, #1
 8001a8e:	4680      	mov	r8, r0
 8001a90:	460c      	mov	r4, r1
 8001a92:	f101 0708 	add.w	r7, r1, #8
 8001a96:	4633      	mov	r3, r6
 8001a98:	2200      	movs	r2, #0
 8001a9a:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001a9e:	42bb      	cmp	r3, r7
 8001aa0:	d1fa      	bne.n	8001a98 <rgb_i2cRead+0x10>
 8001aa2:	f7ff ff61 	bl	8001968 <RGBSetLowSCL>
 8001aa6:	f7ff ff33 	bl	8001910 <RGBSetHighSDA>
 8001aaa:	2508      	movs	r5, #8
 8001aac:	4633      	mov	r3, r6
 8001aae:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001ab2:	0052      	lsls	r2, r2, #1
 8001ab4:	42bb      	cmp	r3, r7
 8001ab6:	701a      	strb	r2, [r3, #0]
 8001ab8:	d1f9      	bne.n	8001aae <rgb_i2cRead+0x26>
 8001aba:	f7ff ff5c 	bl	8001976 <RGBSetHighSCL>
 8001abe:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001ac2:	8a1b      	ldrh	r3, [r3, #16]
 8001ac4:	b29b      	uxth	r3, r3
 8001ac6:	07d9      	lsls	r1, r3, #31
 8001ac8:	bf42      	ittt	mi
 8001aca:	7822      	ldrbmi	r2, [r4, #0]
 8001acc:	f042 0201 	orrmi.w	r2, r2, #1
 8001ad0:	7022      	strbmi	r2, [r4, #0]
 8001ad2:	079a      	lsls	r2, r3, #30
 8001ad4:	bf42      	ittt	mi
 8001ad6:	7862      	ldrbmi	r2, [r4, #1]
 8001ad8:	f042 0201 	orrmi.w	r2, r2, #1
 8001adc:	7062      	strbmi	r2, [r4, #1]
 8001ade:	0758      	lsls	r0, r3, #29
 8001ae0:	bf42      	ittt	mi
 8001ae2:	78a2      	ldrbmi	r2, [r4, #2]
 8001ae4:	f042 0201 	orrmi.w	r2, r2, #1
 8001ae8:	70a2      	strbmi	r2, [r4, #2]
 8001aea:	0719      	lsls	r1, r3, #28
 8001aec:	bf42      	ittt	mi
 8001aee:	78e2      	ldrbmi	r2, [r4, #3]
 8001af0:	f042 0201 	orrmi.w	r2, r2, #1
 8001af4:	70e2      	strbmi	r2, [r4, #3]
 8001af6:	06da      	lsls	r2, r3, #27
 8001af8:	bf42      	ittt	mi
 8001afa:	7922      	ldrbmi	r2, [r4, #4]
 8001afc:	f042 0201 	orrmi.w	r2, r2, #1
 8001b00:	7122      	strbmi	r2, [r4, #4]
 8001b02:	0698      	lsls	r0, r3, #26
 8001b04:	bf42      	ittt	mi
 8001b06:	7962      	ldrbmi	r2, [r4, #5]
 8001b08:	f042 0201 	orrmi.w	r2, r2, #1
 8001b0c:	7162      	strbmi	r2, [r4, #5]
 8001b0e:	0659      	lsls	r1, r3, #25
 8001b10:	bf42      	ittt	mi
 8001b12:	79a2      	ldrbmi	r2, [r4, #6]
 8001b14:	f042 0201 	orrmi.w	r2, r2, #1
 8001b18:	71a2      	strbmi	r2, [r4, #6]
 8001b1a:	061a      	lsls	r2, r3, #24
 8001b1c:	bf42      	ittt	mi
 8001b1e:	79e3      	ldrbmi	r3, [r4, #7]
 8001b20:	f043 0301 	orrmi.w	r3, r3, #1
 8001b24:	71e3      	strbmi	r3, [r4, #7]
 8001b26:	4b0c      	ldr	r3, [pc, #48]	; (8001b58 <rgb_i2cRead+0xd0>)
 8001b28:	8a1b      	ldrh	r3, [r3, #16]
 8001b2a:	07db      	lsls	r3, r3, #31
 8001b2c:	bf42      	ittt	mi
 8001b2e:	7a23      	ldrbmi	r3, [r4, #8]
 8001b30:	f043 0301 	orrmi.w	r3, r3, #1
 8001b34:	7223      	strbmi	r3, [r4, #8]
 8001b36:	f7ff ff17 	bl	8001968 <RGBSetLowSCL>
 8001b3a:	3d01      	subs	r5, #1
 8001b3c:	d1b6      	bne.n	8001aac <rgb_i2cRead+0x24>
 8001b3e:	f1b8 0f00 	cmp.w	r8, #0
 8001b42:	d001      	beq.n	8001b48 <rgb_i2cRead+0xc0>
 8001b44:	f7ff feb4 	bl	80018b0 <RGBSetLowSDA>
 8001b48:	f7ff ff15 	bl	8001976 <RGBSetHighSCL>
 8001b4c:	f7ff ff0c 	bl	8001968 <RGBSetLowSCL>
 8001b50:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001b54:	f7ff bea6 	b.w	80018a4 <rgb_i2c_delay>
 8001b58:	48000400 	.word	0x48000400

08001b5c <rgb_i2c_write_reg>:
 8001b5c:	b570      	push	{r4, r5, r6, lr}
 8001b5e:	4606      	mov	r6, r0
 8001b60:	460d      	mov	r5, r1
 8001b62:	4614      	mov	r4, r2
 8001b64:	f7ff ff52 	bl	8001a0c <rgb_i2cStart>
 8001b68:	4630      	mov	r0, r6
 8001b6a:	f7ff ff6d 	bl	8001a48 <rgb_i2cWrite>
 8001b6e:	4628      	mov	r0, r5
 8001b70:	f7ff ff6a 	bl	8001a48 <rgb_i2cWrite>
 8001b74:	4620      	mov	r0, r4
 8001b76:	f7ff ff67 	bl	8001a48 <rgb_i2cWrite>
 8001b7a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b7e:	f7ff bf54 	b.w	8001a2a <rgb_i2cStop>

08001b82 <rgb_i2c_read_reg>:
 8001b82:	b570      	push	{r4, r5, r6, lr}
 8001b84:	4604      	mov	r4, r0
 8001b86:	460e      	mov	r6, r1
 8001b88:	4615      	mov	r5, r2
 8001b8a:	f7ff ff3f 	bl	8001a0c <rgb_i2cStart>
 8001b8e:	4620      	mov	r0, r4
 8001b90:	f7ff ff5a 	bl	8001a48 <rgb_i2cWrite>
 8001b94:	4630      	mov	r0, r6
 8001b96:	f7ff ff57 	bl	8001a48 <rgb_i2cWrite>
 8001b9a:	f7ff ff37 	bl	8001a0c <rgb_i2cStart>
 8001b9e:	f044 0001 	orr.w	r0, r4, #1
 8001ba2:	f7ff ff51 	bl	8001a48 <rgb_i2cWrite>
 8001ba6:	4629      	mov	r1, r5
 8001ba8:	2000      	movs	r0, #0
 8001baa:	f7ff ff6d 	bl	8001a88 <rgb_i2cRead>
 8001bae:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001bb2:	f7ff bf3a 	b.w	8001a2a <rgb_i2cStop>
	...

08001bb8 <rgb_init>:
 8001bb8:	b570      	push	{r4, r5, r6, lr}
 8001bba:	4b1e      	ldr	r3, [pc, #120]	; (8001c34 <rgb_init+0x7c>)
 8001bbc:	2200      	movs	r2, #0
 8001bbe:	3201      	adds	r2, #1
 8001bc0:	2400      	movs	r4, #0
 8001bc2:	2a09      	cmp	r2, #9
 8001bc4:	801c      	strh	r4, [r3, #0]
 8001bc6:	825c      	strh	r4, [r3, #18]
 8001bc8:	849c      	strh	r4, [r3, #36]	; 0x24
 8001bca:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001bce:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001bd0:	f103 0302 	add.w	r3, r3, #2
 8001bd4:	d1f3      	bne.n	8001bbe <rgb_init+0x6>
 8001bd6:	4d18      	ldr	r5, [pc, #96]	; (8001c38 <rgb_init+0x80>)
 8001bd8:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001bdc:	802e      	strh	r6, [r5, #0]
 8001bde:	f7ff fed1 	bl	8001984 <rgb_i2c_init>
 8001be2:	2072      	movs	r0, #114	; 0x72
 8001be4:	2181      	movs	r1, #129	; 0x81
 8001be6:	22ff      	movs	r2, #255	; 0xff
 8001be8:	f7ff ffb8 	bl	8001b5c <rgb_i2c_write_reg>
 8001bec:	2072      	movs	r0, #114	; 0x72
 8001bee:	2183      	movs	r1, #131	; 0x83
 8001bf0:	22ff      	movs	r2, #255	; 0xff
 8001bf2:	f7ff ffb3 	bl	8001b5c <rgb_i2c_write_reg>
 8001bf6:	2072      	movs	r0, #114	; 0x72
 8001bf8:	218d      	movs	r1, #141	; 0x8d
 8001bfa:	4622      	mov	r2, r4
 8001bfc:	f7ff ffae 	bl	8001b5c <rgb_i2c_write_reg>
 8001c00:	2072      	movs	r0, #114	; 0x72
 8001c02:	2180      	movs	r1, #128	; 0x80
 8001c04:	2203      	movs	r2, #3
 8001c06:	f7ff ffa9 	bl	8001b5c <rgb_i2c_write_reg>
 8001c0a:	2072      	movs	r0, #114	; 0x72
 8001c0c:	218f      	movs	r1, #143	; 0x8f
 8001c0e:	2223      	movs	r2, #35	; 0x23
 8001c10:	f7ff ffa4 	bl	8001b5c <rgb_i2c_write_reg>
 8001c14:	f7ff fe7c 	bl	8001910 <RGBSetHighSDA>
 8001c18:	2072      	movs	r0, #114	; 0x72
 8001c1a:	2180      	movs	r1, #128	; 0x80
 8001c1c:	2207      	movs	r2, #7
 8001c1e:	802c      	strh	r4, [r5, #0]
 8001c20:	f7ff ff9c 	bl	8001b5c <rgb_i2c_write_reg>
 8001c24:	2072      	movs	r0, #114	; 0x72
 8001c26:	218e      	movs	r1, #142	; 0x8e
 8001c28:	2208      	movs	r2, #8
 8001c2a:	f7ff ff97 	bl	8001b5c <rgb_i2c_write_reg>
 8001c2e:	802e      	strh	r6, [r5, #0]
 8001c30:	bd70      	pop	{r4, r5, r6, pc}
 8001c32:	bf00      	nop
 8001c34:	20000dd8 	.word	0x20000dd8
 8001c38:	20000e32 	.word	0x20000e32

08001c3c <rgb_get>:
 8001c3c:	4800      	ldr	r0, [pc, #0]	; (8001c40 <rgb_get+0x4>)
 8001c3e:	4770      	bx	lr
 8001c40:	20000dd8 	.word	0x20000dd8

08001c44 <rgb_read>:
 8001c44:	b538      	push	{r3, r4, r5, lr}
 8001c46:	f7ff fee1 	bl	8001a0c <rgb_i2cStart>
 8001c4a:	2072      	movs	r0, #114	; 0x72
 8001c4c:	f7ff fefc 	bl	8001a48 <rgb_i2cWrite>
 8001c50:	20b4      	movs	r0, #180	; 0xb4
 8001c52:	f7ff fef9 	bl	8001a48 <rgb_i2cWrite>
 8001c56:	4d48      	ldr	r5, [pc, #288]	; (8001d78 <rgb_read+0x134>)
 8001c58:	f7ff fed8 	bl	8001a0c <rgb_i2cStart>
 8001c5c:	2073      	movs	r0, #115	; 0x73
 8001c5e:	f7ff fef3 	bl	8001a48 <rgb_i2cWrite>
 8001c62:	2001      	movs	r0, #1
 8001c64:	4945      	ldr	r1, [pc, #276]	; (8001d7c <rgb_read+0x138>)
 8001c66:	f7ff ff0f 	bl	8001a88 <rgb_i2cRead>
 8001c6a:	462a      	mov	r2, r5
 8001c6c:	2300      	movs	r3, #0
 8001c6e:	4c43      	ldr	r4, [pc, #268]	; (8001d7c <rgb_read+0x138>)
 8001c70:	5d19      	ldrb	r1, [r3, r4]
 8001c72:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001c76:	3301      	adds	r3, #1
 8001c78:	2b09      	cmp	r3, #9
 8001c7a:	d1f8      	bne.n	8001c6e <rgb_read+0x2a>
 8001c7c:	2001      	movs	r0, #1
 8001c7e:	4621      	mov	r1, r4
 8001c80:	f7ff ff02 	bl	8001a88 <rgb_i2cRead>
 8001c84:	2300      	movs	r3, #0
 8001c86:	5ce1      	ldrb	r1, [r4, r3]
 8001c88:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c8c:	3301      	adds	r3, #1
 8001c8e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c92:	2b09      	cmp	r3, #9
 8001c94:	802a      	strh	r2, [r5, #0]
 8001c96:	d1f6      	bne.n	8001c86 <rgb_read+0x42>
 8001c98:	2001      	movs	r0, #1
 8001c9a:	4938      	ldr	r1, [pc, #224]	; (8001d7c <rgb_read+0x138>)
 8001c9c:	f7ff fef4 	bl	8001a88 <rgb_i2cRead>
 8001ca0:	2300      	movs	r3, #0
 8001ca2:	4d37      	ldr	r5, [pc, #220]	; (8001d80 <rgb_read+0x13c>)
 8001ca4:	5ce2      	ldrb	r2, [r4, r3]
 8001ca6:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001caa:	3301      	adds	r3, #1
 8001cac:	2b09      	cmp	r3, #9
 8001cae:	d1f8      	bne.n	8001ca2 <rgb_read+0x5e>
 8001cb0:	2001      	movs	r0, #1
 8001cb2:	4932      	ldr	r1, [pc, #200]	; (8001d7c <rgb_read+0x138>)
 8001cb4:	f7ff fee8 	bl	8001a88 <rgb_i2cRead>
 8001cb8:	2300      	movs	r3, #0
 8001cba:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001cbe:	5ce1      	ldrb	r1, [r4, r3]
 8001cc0:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001cc4:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001cc8:	3301      	adds	r3, #1
 8001cca:	2b09      	cmp	r3, #9
 8001ccc:	d1f5      	bne.n	8001cba <rgb_read+0x76>
 8001cce:	4d2d      	ldr	r5, [pc, #180]	; (8001d84 <rgb_read+0x140>)
 8001cd0:	492a      	ldr	r1, [pc, #168]	; (8001d7c <rgb_read+0x138>)
 8001cd2:	2001      	movs	r0, #1
 8001cd4:	f7ff fed8 	bl	8001a88 <rgb_i2cRead>
 8001cd8:	462a      	mov	r2, r5
 8001cda:	2300      	movs	r3, #0
 8001cdc:	5ce1      	ldrb	r1, [r4, r3]
 8001cde:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001ce2:	3301      	adds	r3, #1
 8001ce4:	2b09      	cmp	r3, #9
 8001ce6:	d1f9      	bne.n	8001cdc <rgb_read+0x98>
 8001ce8:	2001      	movs	r0, #1
 8001cea:	4924      	ldr	r1, [pc, #144]	; (8001d7c <rgb_read+0x138>)
 8001cec:	f7ff fecc 	bl	8001a88 <rgb_i2cRead>
 8001cf0:	2300      	movs	r3, #0
 8001cf2:	5ce1      	ldrb	r1, [r4, r3]
 8001cf4:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001cf8:	3301      	adds	r3, #1
 8001cfa:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001cfe:	2b09      	cmp	r3, #9
 8001d00:	802a      	strh	r2, [r5, #0]
 8001d02:	d1f6      	bne.n	8001cf2 <rgb_read+0xae>
 8001d04:	4d20      	ldr	r5, [pc, #128]	; (8001d88 <rgb_read+0x144>)
 8001d06:	491d      	ldr	r1, [pc, #116]	; (8001d7c <rgb_read+0x138>)
 8001d08:	2001      	movs	r0, #1
 8001d0a:	f7ff febd 	bl	8001a88 <rgb_i2cRead>
 8001d0e:	462a      	mov	r2, r5
 8001d10:	2300      	movs	r3, #0
 8001d12:	5ce1      	ldrb	r1, [r4, r3]
 8001d14:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001d18:	3301      	adds	r3, #1
 8001d1a:	2b09      	cmp	r3, #9
 8001d1c:	d1f9      	bne.n	8001d12 <rgb_read+0xce>
 8001d1e:	2001      	movs	r0, #1
 8001d20:	4916      	ldr	r1, [pc, #88]	; (8001d7c <rgb_read+0x138>)
 8001d22:	f7ff feb1 	bl	8001a88 <rgb_i2cRead>
 8001d26:	2300      	movs	r3, #0
 8001d28:	5ce1      	ldrb	r1, [r4, r3]
 8001d2a:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001d2e:	3301      	adds	r3, #1
 8001d30:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001d34:	2b09      	cmp	r3, #9
 8001d36:	802a      	strh	r2, [r5, #0]
 8001d38:	d1f6      	bne.n	8001d28 <rgb_read+0xe4>
 8001d3a:	4d14      	ldr	r5, [pc, #80]	; (8001d8c <rgb_read+0x148>)
 8001d3c:	490f      	ldr	r1, [pc, #60]	; (8001d7c <rgb_read+0x138>)
 8001d3e:	2001      	movs	r0, #1
 8001d40:	f7ff fea2 	bl	8001a88 <rgb_i2cRead>
 8001d44:	462a      	mov	r2, r5
 8001d46:	2300      	movs	r3, #0
 8001d48:	5ce1      	ldrb	r1, [r4, r3]
 8001d4a:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001d4e:	3301      	adds	r3, #1
 8001d50:	2b09      	cmp	r3, #9
 8001d52:	d1f9      	bne.n	8001d48 <rgb_read+0x104>
 8001d54:	2000      	movs	r0, #0
 8001d56:	4909      	ldr	r1, [pc, #36]	; (8001d7c <rgb_read+0x138>)
 8001d58:	f7ff fe96 	bl	8001a88 <rgb_i2cRead>
 8001d5c:	2300      	movs	r3, #0
 8001d5e:	5ce1      	ldrb	r1, [r4, r3]
 8001d60:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001d64:	3301      	adds	r3, #1
 8001d66:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001d6a:	2b09      	cmp	r3, #9
 8001d6c:	802a      	strh	r2, [r5, #0]
 8001d6e:	d1f6      	bne.n	8001d5e <rgb_read+0x11a>
 8001d70:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001d74:	f7ff be59 	b.w	8001a2a <rgb_i2cStop>
 8001d78:	20000e0c 	.word	0x20000e0c
 8001d7c:	20000e34 	.word	0x20000e34
 8001d80:	20000dd8 	.word	0x20000dd8
 8001d84:	20000de8 	.word	0x20000de8
 8001d88:	20000dfa 	.word	0x20000dfa
 8001d8c:	20000e1e 	.word	0x20000e1e

08001d90 <main>:
 8001d90:	b508      	push	{r3, lr}
 8001d92:	f000 ff79 	bl	8002c88 <lib_low_level_init>
 8001d96:	f7ff fc3d 	bl	8001614 <lib_os_init>
 8001d9a:	4905      	ldr	r1, [pc, #20]	; (8001db0 <main+0x20>)
 8001d9c:	4805      	ldr	r0, [pc, #20]	; (8001db4 <main+0x24>)
 8001d9e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001da2:	2306      	movs	r3, #6
 8001da4:	f7ff fa72 	bl	800128c <create_thread>
 8001da8:	f7ff fa6a 	bl	8001280 <kernel_start>
 8001dac:	2000      	movs	r0, #0
 8001dae:	bd08      	pop	{r3, pc}
 8001db0:	20000e40 	.word	0x20000e40
 8001db4:	08000c3d 	.word	0x08000c3d

08001db8 <RCC_GetClocksFreq>:
 8001db8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001dbc:	4f9b      	ldr	r7, [pc, #620]	; (800202c <RCC_GetClocksFreq+0x274>)
 8001dbe:	687b      	ldr	r3, [r7, #4]
 8001dc0:	f003 030c 	and.w	r3, r3, #12
 8001dc4:	2b04      	cmp	r3, #4
 8001dc6:	d005      	beq.n	8001dd4 <RCC_GetClocksFreq+0x1c>
 8001dc8:	2b08      	cmp	r3, #8
 8001dca:	d006      	beq.n	8001dda <RCC_GetClocksFreq+0x22>
 8001dcc:	4a98      	ldr	r2, [pc, #608]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001dce:	6002      	str	r2, [r0, #0]
 8001dd0:	b9b3      	cbnz	r3, 8001e00 <RCC_GetClocksFreq+0x48>
 8001dd2:	e016      	b.n	8001e02 <RCC_GetClocksFreq+0x4a>
 8001dd4:	4b96      	ldr	r3, [pc, #600]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001dd6:	6003      	str	r3, [r0, #0]
 8001dd8:	e012      	b.n	8001e00 <RCC_GetClocksFreq+0x48>
 8001dda:	687b      	ldr	r3, [r7, #4]
 8001ddc:	6879      	ldr	r1, [r7, #4]
 8001dde:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001de2:	1c9a      	adds	r2, r3, #2
 8001de4:	03cb      	lsls	r3, r1, #15
 8001de6:	bf49      	itett	mi
 8001de8:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001dea:	4b92      	ldrpl	r3, [pc, #584]	; (8002034 <RCC_GetClocksFreq+0x27c>)
 8001dec:	4990      	ldrmi	r1, [pc, #576]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001dee:	f003 030f 	andmi.w	r3, r3, #15
 8001df2:	bf44      	itt	mi
 8001df4:	3301      	addmi	r3, #1
 8001df6:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001dfa:	4353      	muls	r3, r2
 8001dfc:	6003      	str	r3, [r0, #0]
 8001dfe:	e000      	b.n	8001e02 <RCC_GetClocksFreq+0x4a>
 8001e00:	2300      	movs	r3, #0
 8001e02:	687a      	ldr	r2, [r7, #4]
 8001e04:	4e8c      	ldr	r6, [pc, #560]	; (8002038 <RCC_GetClocksFreq+0x280>)
 8001e06:	f8df c234 	ldr.w	ip, [pc, #564]	; 800203c <RCC_GetClocksFreq+0x284>
 8001e0a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001e0e:	5cb4      	ldrb	r4, [r6, r2]
 8001e10:	6802      	ldr	r2, [r0, #0]
 8001e12:	b2e4      	uxtb	r4, r4
 8001e14:	fa22 f104 	lsr.w	r1, r2, r4
 8001e18:	6041      	str	r1, [r0, #4]
 8001e1a:	687d      	ldr	r5, [r7, #4]
 8001e1c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001e20:	5d75      	ldrb	r5, [r6, r5]
 8001e22:	fa21 fe05 	lsr.w	lr, r1, r5
 8001e26:	f8c0 e008 	str.w	lr, [r0, #8]
 8001e2a:	687d      	ldr	r5, [r7, #4]
 8001e2c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001e30:	5d75      	ldrb	r5, [r6, r5]
 8001e32:	b2ed      	uxtb	r5, r5
 8001e34:	40e9      	lsrs	r1, r5
 8001e36:	60c1      	str	r1, [r0, #12]
 8001e38:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e3a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001e3e:	f008 060f 	and.w	r6, r8, #15
 8001e42:	f018 0f10 	tst.w	r8, #16
 8001e46:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001e4a:	46e0      	mov	r8, ip
 8001e4c:	b2b6      	uxth	r6, r6
 8001e4e:	d004      	beq.n	8001e5a <RCC_GetClocksFreq+0xa2>
 8001e50:	b11e      	cbz	r6, 8001e5a <RCC_GetClocksFreq+0xa2>
 8001e52:	fbb3 f6f6 	udiv	r6, r3, r6
 8001e56:	6106      	str	r6, [r0, #16]
 8001e58:	e000      	b.n	8001e5c <RCC_GetClocksFreq+0xa4>
 8001e5a:	6102      	str	r2, [r0, #16]
 8001e5c:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e5e:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001e62:	f00c 060f 	and.w	r6, ip, #15
 8001e66:	f01c 0f10 	tst.w	ip, #16
 8001e6a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001e6e:	b2b6      	uxth	r6, r6
 8001e70:	d004      	beq.n	8001e7c <RCC_GetClocksFreq+0xc4>
 8001e72:	b11e      	cbz	r6, 8001e7c <RCC_GetClocksFreq+0xc4>
 8001e74:	fbb3 f6f6 	udiv	r6, r3, r6
 8001e78:	6146      	str	r6, [r0, #20]
 8001e7a:	e000      	b.n	8001e7e <RCC_GetClocksFreq+0xc6>
 8001e7c:	6142      	str	r2, [r0, #20]
 8001e7e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e80:	06f6      	lsls	r6, r6, #27
 8001e82:	bf5a      	itte	pl
 8001e84:	4e6a      	ldrpl	r6, [pc, #424]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001e86:	6186      	strpl	r6, [r0, #24]
 8001e88:	6182      	strmi	r2, [r0, #24]
 8001e8a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e8c:	06b6      	lsls	r6, r6, #26
 8001e8e:	bf5a      	itte	pl
 8001e90:	4e67      	ldrpl	r6, [pc, #412]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001e92:	61c6      	strpl	r6, [r0, #28]
 8001e94:	61c2      	strmi	r2, [r0, #28]
 8001e96:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e98:	0676      	lsls	r6, r6, #25
 8001e9a:	bf5a      	itte	pl
 8001e9c:	4e64      	ldrpl	r6, [pc, #400]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001e9e:	6206      	strpl	r6, [r0, #32]
 8001ea0:	6202      	strmi	r2, [r0, #32]
 8001ea2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ea4:	05f6      	lsls	r6, r6, #23
 8001ea6:	d506      	bpl.n	8001eb6 <RCC_GetClocksFreq+0xfe>
 8001ea8:	429a      	cmp	r2, r3
 8001eaa:	d104      	bne.n	8001eb6 <RCC_GetClocksFreq+0xfe>
 8001eac:	42a5      	cmp	r5, r4
 8001eae:	d102      	bne.n	8001eb6 <RCC_GetClocksFreq+0xfe>
 8001eb0:	0056      	lsls	r6, r2, #1
 8001eb2:	6246      	str	r6, [r0, #36]	; 0x24
 8001eb4:	e000      	b.n	8001eb8 <RCC_GetClocksFreq+0x100>
 8001eb6:	6241      	str	r1, [r0, #36]	; 0x24
 8001eb8:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001eba:	04f6      	lsls	r6, r6, #19
 8001ebc:	d506      	bpl.n	8001ecc <RCC_GetClocksFreq+0x114>
 8001ebe:	429a      	cmp	r2, r3
 8001ec0:	d104      	bne.n	8001ecc <RCC_GetClocksFreq+0x114>
 8001ec2:	42a5      	cmp	r5, r4
 8001ec4:	d102      	bne.n	8001ecc <RCC_GetClocksFreq+0x114>
 8001ec6:	0056      	lsls	r6, r2, #1
 8001ec8:	6286      	str	r6, [r0, #40]	; 0x28
 8001eca:	e000      	b.n	8001ece <RCC_GetClocksFreq+0x116>
 8001ecc:	6281      	str	r1, [r0, #40]	; 0x28
 8001ece:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ed0:	05b6      	lsls	r6, r6, #22
 8001ed2:	d506      	bpl.n	8001ee2 <RCC_GetClocksFreq+0x12a>
 8001ed4:	429a      	cmp	r2, r3
 8001ed6:	d104      	bne.n	8001ee2 <RCC_GetClocksFreq+0x12a>
 8001ed8:	42a5      	cmp	r5, r4
 8001eda:	d102      	bne.n	8001ee2 <RCC_GetClocksFreq+0x12a>
 8001edc:	0056      	lsls	r6, r2, #1
 8001ede:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001ee0:	e000      	b.n	8001ee4 <RCC_GetClocksFreq+0x12c>
 8001ee2:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001ee4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ee6:	0576      	lsls	r6, r6, #21
 8001ee8:	d506      	bpl.n	8001ef8 <RCC_GetClocksFreq+0x140>
 8001eea:	429a      	cmp	r2, r3
 8001eec:	d104      	bne.n	8001ef8 <RCC_GetClocksFreq+0x140>
 8001eee:	42a5      	cmp	r5, r4
 8001ef0:	d102      	bne.n	8001ef8 <RCC_GetClocksFreq+0x140>
 8001ef2:	0056      	lsls	r6, r2, #1
 8001ef4:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001ef6:	e000      	b.n	8001efa <RCC_GetClocksFreq+0x142>
 8001ef8:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001efa:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001efc:	0536      	lsls	r6, r6, #20
 8001efe:	d506      	bpl.n	8001f0e <RCC_GetClocksFreq+0x156>
 8001f00:	429a      	cmp	r2, r3
 8001f02:	d104      	bne.n	8001f0e <RCC_GetClocksFreq+0x156>
 8001f04:	42a5      	cmp	r5, r4
 8001f06:	d102      	bne.n	8001f0e <RCC_GetClocksFreq+0x156>
 8001f08:	0056      	lsls	r6, r2, #1
 8001f0a:	6506      	str	r6, [r0, #80]	; 0x50
 8001f0c:	e000      	b.n	8001f10 <RCC_GetClocksFreq+0x158>
 8001f0e:	6501      	str	r1, [r0, #80]	; 0x50
 8001f10:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f12:	04b6      	lsls	r6, r6, #18
 8001f14:	d506      	bpl.n	8001f24 <RCC_GetClocksFreq+0x16c>
 8001f16:	429a      	cmp	r2, r3
 8001f18:	d104      	bne.n	8001f24 <RCC_GetClocksFreq+0x16c>
 8001f1a:	42a5      	cmp	r5, r4
 8001f1c:	d102      	bne.n	8001f24 <RCC_GetClocksFreq+0x16c>
 8001f1e:	0056      	lsls	r6, r2, #1
 8001f20:	6546      	str	r6, [r0, #84]	; 0x54
 8001f22:	e000      	b.n	8001f26 <RCC_GetClocksFreq+0x16e>
 8001f24:	6501      	str	r1, [r0, #80]	; 0x50
 8001f26:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f28:	0436      	lsls	r6, r6, #16
 8001f2a:	d506      	bpl.n	8001f3a <RCC_GetClocksFreq+0x182>
 8001f2c:	429a      	cmp	r2, r3
 8001f2e:	d104      	bne.n	8001f3a <RCC_GetClocksFreq+0x182>
 8001f30:	42a5      	cmp	r5, r4
 8001f32:	d102      	bne.n	8001f3a <RCC_GetClocksFreq+0x182>
 8001f34:	0053      	lsls	r3, r2, #1
 8001f36:	6583      	str	r3, [r0, #88]	; 0x58
 8001f38:	e000      	b.n	8001f3c <RCC_GetClocksFreq+0x184>
 8001f3a:	6581      	str	r1, [r0, #88]	; 0x58
 8001f3c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001f3e:	4b3b      	ldr	r3, [pc, #236]	; (800202c <RCC_GetClocksFreq+0x274>)
 8001f40:	07a4      	lsls	r4, r4, #30
 8001f42:	d101      	bne.n	8001f48 <RCC_GetClocksFreq+0x190>
 8001f44:	6381      	str	r1, [r0, #56]	; 0x38
 8001f46:	e015      	b.n	8001f74 <RCC_GetClocksFreq+0x1bc>
 8001f48:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f4a:	f001 0103 	and.w	r1, r1, #3
 8001f4e:	2901      	cmp	r1, #1
 8001f50:	d101      	bne.n	8001f56 <RCC_GetClocksFreq+0x19e>
 8001f52:	6382      	str	r2, [r0, #56]	; 0x38
 8001f54:	e00e      	b.n	8001f74 <RCC_GetClocksFreq+0x1bc>
 8001f56:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f58:	f001 0103 	and.w	r1, r1, #3
 8001f5c:	2902      	cmp	r1, #2
 8001f5e:	d102      	bne.n	8001f66 <RCC_GetClocksFreq+0x1ae>
 8001f60:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f64:	e005      	b.n	8001f72 <RCC_GetClocksFreq+0x1ba>
 8001f66:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f68:	f003 0303 	and.w	r3, r3, #3
 8001f6c:	2b03      	cmp	r3, #3
 8001f6e:	d101      	bne.n	8001f74 <RCC_GetClocksFreq+0x1bc>
 8001f70:	4b2f      	ldr	r3, [pc, #188]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001f72:	6383      	str	r3, [r0, #56]	; 0x38
 8001f74:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f76:	4b2d      	ldr	r3, [pc, #180]	; (800202c <RCC_GetClocksFreq+0x274>)
 8001f78:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001f7c:	d102      	bne.n	8001f84 <RCC_GetClocksFreq+0x1cc>
 8001f7e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001f82:	e018      	b.n	8001fb6 <RCC_GetClocksFreq+0x1fe>
 8001f84:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f86:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001f8a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001f8e:	d101      	bne.n	8001f94 <RCC_GetClocksFreq+0x1dc>
 8001f90:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001f92:	e010      	b.n	8001fb6 <RCC_GetClocksFreq+0x1fe>
 8001f94:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f96:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001f9a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001f9e:	d102      	bne.n	8001fa6 <RCC_GetClocksFreq+0x1ee>
 8001fa0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fa4:	e006      	b.n	8001fb4 <RCC_GetClocksFreq+0x1fc>
 8001fa6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fa8:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001fac:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001fb0:	d101      	bne.n	8001fb6 <RCC_GetClocksFreq+0x1fe>
 8001fb2:	4b1f      	ldr	r3, [pc, #124]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001fb4:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001fb6:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001fb8:	4b1c      	ldr	r3, [pc, #112]	; (800202c <RCC_GetClocksFreq+0x274>)
 8001fba:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001fbe:	d102      	bne.n	8001fc6 <RCC_GetClocksFreq+0x20e>
 8001fc0:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001fc4:	e018      	b.n	8001ff8 <RCC_GetClocksFreq+0x240>
 8001fc6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fc8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fcc:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001fd0:	d101      	bne.n	8001fd6 <RCC_GetClocksFreq+0x21e>
 8001fd2:	6402      	str	r2, [r0, #64]	; 0x40
 8001fd4:	e010      	b.n	8001ff8 <RCC_GetClocksFreq+0x240>
 8001fd6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fd8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fdc:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001fe0:	d102      	bne.n	8001fe8 <RCC_GetClocksFreq+0x230>
 8001fe2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fe6:	e006      	b.n	8001ff6 <RCC_GetClocksFreq+0x23e>
 8001fe8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fea:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001fee:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001ff2:	d101      	bne.n	8001ff8 <RCC_GetClocksFreq+0x240>
 8001ff4:	4b0e      	ldr	r3, [pc, #56]	; (8002030 <RCC_GetClocksFreq+0x278>)
 8001ff6:	6403      	str	r3, [r0, #64]	; 0x40
 8001ff8:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ffa:	4b0c      	ldr	r3, [pc, #48]	; (800202c <RCC_GetClocksFreq+0x274>)
 8001ffc:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002000:	d102      	bne.n	8002008 <RCC_GetClocksFreq+0x250>
 8002002:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002006:	e023      	b.n	8002050 <RCC_GetClocksFreq+0x298>
 8002008:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800200a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800200e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002012:	d101      	bne.n	8002018 <RCC_GetClocksFreq+0x260>
 8002014:	6442      	str	r2, [r0, #68]	; 0x44
 8002016:	e01b      	b.n	8002050 <RCC_GetClocksFreq+0x298>
 8002018:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800201a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800201e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002022:	d10d      	bne.n	8002040 <RCC_GetClocksFreq+0x288>
 8002024:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002028:	e011      	b.n	800204e <RCC_GetClocksFreq+0x296>
 800202a:	bf00      	nop
 800202c:	40021000 	.word	0x40021000
 8002030:	007a1200 	.word	0x007a1200
 8002034:	003d0900 	.word	0x003d0900
 8002038:	200000d8 	.word	0x200000d8
 800203c:	200000b8 	.word	0x200000b8
 8002040:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002042:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8002046:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 800204a:	d101      	bne.n	8002050 <RCC_GetClocksFreq+0x298>
 800204c:	4b13      	ldr	r3, [pc, #76]	; (800209c <RCC_GetClocksFreq+0x2e4>)
 800204e:	6443      	str	r3, [r0, #68]	; 0x44
 8002050:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002052:	4b13      	ldr	r3, [pc, #76]	; (80020a0 <RCC_GetClocksFreq+0x2e8>)
 8002054:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8002058:	d103      	bne.n	8002062 <RCC_GetClocksFreq+0x2aa>
 800205a:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800205e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002062:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002064:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002068:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800206c:	d102      	bne.n	8002074 <RCC_GetClocksFreq+0x2bc>
 800206e:	6482      	str	r2, [r0, #72]	; 0x48
 8002070:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002074:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8002076:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800207a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800207e:	d102      	bne.n	8002086 <RCC_GetClocksFreq+0x2ce>
 8002080:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002084:	e006      	b.n	8002094 <RCC_GetClocksFreq+0x2dc>
 8002086:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002088:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800208c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002090:	d101      	bne.n	8002096 <RCC_GetClocksFreq+0x2de>
 8002092:	4b02      	ldr	r3, [pc, #8]	; (800209c <RCC_GetClocksFreq+0x2e4>)
 8002094:	6483      	str	r3, [r0, #72]	; 0x48
 8002096:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800209a:	bf00      	nop
 800209c:	007a1200 	.word	0x007a1200
 80020a0:	40021000 	.word	0x40021000

080020a4 <RCC_AHBPeriphClockCmd>:
 80020a4:	bf00      	nop
 80020a6:	bf00      	nop
 80020a8:	4b04      	ldr	r3, [pc, #16]	; (80020bc <RCC_AHBPeriphClockCmd+0x18>)
 80020aa:	695a      	ldr	r2, [r3, #20]
 80020ac:	b109      	cbz	r1, 80020b2 <RCC_AHBPeriphClockCmd+0xe>
 80020ae:	4310      	orrs	r0, r2
 80020b0:	e001      	b.n	80020b6 <RCC_AHBPeriphClockCmd+0x12>
 80020b2:	ea22 0000 	bic.w	r0, r2, r0
 80020b6:	6158      	str	r0, [r3, #20]
 80020b8:	4770      	bx	lr
 80020ba:	bf00      	nop
 80020bc:	40021000 	.word	0x40021000

080020c0 <RCC_APB2PeriphClockCmd>:
 80020c0:	bf00      	nop
 80020c2:	bf00      	nop
 80020c4:	4b04      	ldr	r3, [pc, #16]	; (80020d8 <RCC_APB2PeriphClockCmd+0x18>)
 80020c6:	699a      	ldr	r2, [r3, #24]
 80020c8:	b109      	cbz	r1, 80020ce <RCC_APB2PeriphClockCmd+0xe>
 80020ca:	4310      	orrs	r0, r2
 80020cc:	e001      	b.n	80020d2 <RCC_APB2PeriphClockCmd+0x12>
 80020ce:	ea22 0000 	bic.w	r0, r2, r0
 80020d2:	6198      	str	r0, [r3, #24]
 80020d4:	4770      	bx	lr
 80020d6:	bf00      	nop
 80020d8:	40021000 	.word	0x40021000

080020dc <RCC_APB1PeriphClockCmd>:
 80020dc:	bf00      	nop
 80020de:	bf00      	nop
 80020e0:	4b04      	ldr	r3, [pc, #16]	; (80020f4 <RCC_APB1PeriphClockCmd+0x18>)
 80020e2:	69da      	ldr	r2, [r3, #28]
 80020e4:	b109      	cbz	r1, 80020ea <RCC_APB1PeriphClockCmd+0xe>
 80020e6:	4310      	orrs	r0, r2
 80020e8:	e001      	b.n	80020ee <RCC_APB1PeriphClockCmd+0x12>
 80020ea:	ea22 0000 	bic.w	r0, r2, r0
 80020ee:	61d8      	str	r0, [r3, #28]
 80020f0:	4770      	bx	lr
 80020f2:	bf00      	nop
 80020f4:	40021000 	.word	0x40021000

080020f8 <TIM_TimeBaseInit>:
 80020f8:	bf00      	nop
 80020fa:	bf00      	nop
 80020fc:	bf00      	nop
 80020fe:	4a24      	ldr	r2, [pc, #144]	; (8002190 <TIM_TimeBaseInit+0x98>)
 8002100:	8803      	ldrh	r3, [r0, #0]
 8002102:	4290      	cmp	r0, r2
 8002104:	b29b      	uxth	r3, r3
 8002106:	d012      	beq.n	800212e <TIM_TimeBaseInit+0x36>
 8002108:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800210c:	4290      	cmp	r0, r2
 800210e:	d00e      	beq.n	800212e <TIM_TimeBaseInit+0x36>
 8002110:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002114:	d00b      	beq.n	800212e <TIM_TimeBaseInit+0x36>
 8002116:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800211a:	4290      	cmp	r0, r2
 800211c:	d007      	beq.n	800212e <TIM_TimeBaseInit+0x36>
 800211e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002122:	4290      	cmp	r0, r2
 8002124:	d003      	beq.n	800212e <TIM_TimeBaseInit+0x36>
 8002126:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 800212a:	4290      	cmp	r0, r2
 800212c:	d103      	bne.n	8002136 <TIM_TimeBaseInit+0x3e>
 800212e:	884a      	ldrh	r2, [r1, #2]
 8002130:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002134:	4313      	orrs	r3, r2
 8002136:	4a17      	ldr	r2, [pc, #92]	; (8002194 <TIM_TimeBaseInit+0x9c>)
 8002138:	4290      	cmp	r0, r2
 800213a:	d008      	beq.n	800214e <TIM_TimeBaseInit+0x56>
 800213c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002140:	4290      	cmp	r0, r2
 8002142:	bf1f      	itttt	ne
 8002144:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002148:	890a      	ldrhne	r2, [r1, #8]
 800214a:	b29b      	uxthne	r3, r3
 800214c:	4313      	orrne	r3, r2
 800214e:	8003      	strh	r3, [r0, #0]
 8002150:	684b      	ldr	r3, [r1, #4]
 8002152:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002154:	880b      	ldrh	r3, [r1, #0]
 8002156:	8503      	strh	r3, [r0, #40]	; 0x28
 8002158:	4b0d      	ldr	r3, [pc, #52]	; (8002190 <TIM_TimeBaseInit+0x98>)
 800215a:	4298      	cmp	r0, r3
 800215c:	d013      	beq.n	8002186 <TIM_TimeBaseInit+0x8e>
 800215e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002162:	4298      	cmp	r0, r3
 8002164:	d00f      	beq.n	8002186 <TIM_TimeBaseInit+0x8e>
 8002166:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800216a:	4298      	cmp	r0, r3
 800216c:	d00b      	beq.n	8002186 <TIM_TimeBaseInit+0x8e>
 800216e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002172:	4298      	cmp	r0, r3
 8002174:	d007      	beq.n	8002186 <TIM_TimeBaseInit+0x8e>
 8002176:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800217a:	4298      	cmp	r0, r3
 800217c:	d003      	beq.n	8002186 <TIM_TimeBaseInit+0x8e>
 800217e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002182:	4298      	cmp	r0, r3
 8002184:	d101      	bne.n	800218a <TIM_TimeBaseInit+0x92>
 8002186:	894b      	ldrh	r3, [r1, #10]
 8002188:	8603      	strh	r3, [r0, #48]	; 0x30
 800218a:	2301      	movs	r3, #1
 800218c:	6143      	str	r3, [r0, #20]
 800218e:	4770      	bx	lr
 8002190:	40012c00 	.word	0x40012c00
 8002194:	40001000 	.word	0x40001000

08002198 <TIM_Cmd>:
 8002198:	bf00      	nop
 800219a:	bf00      	nop
 800219c:	8803      	ldrh	r3, [r0, #0]
 800219e:	b119      	cbz	r1, 80021a8 <TIM_Cmd+0x10>
 80021a0:	b29b      	uxth	r3, r3
 80021a2:	f043 0301 	orr.w	r3, r3, #1
 80021a6:	e003      	b.n	80021b0 <TIM_Cmd+0x18>
 80021a8:	f023 0301 	bic.w	r3, r3, #1
 80021ac:	041b      	lsls	r3, r3, #16
 80021ae:	0c1b      	lsrs	r3, r3, #16
 80021b0:	8003      	strh	r3, [r0, #0]
 80021b2:	4770      	bx	lr

080021b4 <TIM_OC1Init>:
 80021b4:	b570      	push	{r4, r5, r6, lr}
 80021b6:	bf00      	nop
 80021b8:	bf00      	nop
 80021ba:	bf00      	nop
 80021bc:	bf00      	nop
 80021be:	6a03      	ldr	r3, [r0, #32]
 80021c0:	680d      	ldr	r5, [r1, #0]
 80021c2:	f023 0301 	bic.w	r3, r3, #1
 80021c6:	6203      	str	r3, [r0, #32]
 80021c8:	6a03      	ldr	r3, [r0, #32]
 80021ca:	6844      	ldr	r4, [r0, #4]
 80021cc:	6982      	ldr	r2, [r0, #24]
 80021ce:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80021d2:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 80021d6:	4315      	orrs	r5, r2
 80021d8:	898a      	ldrh	r2, [r1, #12]
 80021da:	f023 0302 	bic.w	r3, r3, #2
 80021de:	4313      	orrs	r3, r2
 80021e0:	888a      	ldrh	r2, [r1, #4]
 80021e2:	4313      	orrs	r3, r2
 80021e4:	4a15      	ldr	r2, [pc, #84]	; (800223c <TIM_OC1Init+0x88>)
 80021e6:	4290      	cmp	r0, r2
 80021e8:	d00f      	beq.n	800220a <TIM_OC1Init+0x56>
 80021ea:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80021ee:	4290      	cmp	r0, r2
 80021f0:	d00b      	beq.n	800220a <TIM_OC1Init+0x56>
 80021f2:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 80021f6:	4290      	cmp	r0, r2
 80021f8:	d007      	beq.n	800220a <TIM_OC1Init+0x56>
 80021fa:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80021fe:	4290      	cmp	r0, r2
 8002200:	d003      	beq.n	800220a <TIM_OC1Init+0x56>
 8002202:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002206:	4290      	cmp	r0, r2
 8002208:	d111      	bne.n	800222e <TIM_OC1Init+0x7a>
 800220a:	bf00      	nop
 800220c:	bf00      	nop
 800220e:	bf00      	nop
 8002210:	bf00      	nop
 8002212:	89ca      	ldrh	r2, [r1, #14]
 8002214:	88ce      	ldrh	r6, [r1, #6]
 8002216:	f023 0308 	bic.w	r3, r3, #8
 800221a:	4313      	orrs	r3, r2
 800221c:	8a0a      	ldrh	r2, [r1, #16]
 800221e:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8002222:	4314      	orrs	r4, r2
 8002224:	8a4a      	ldrh	r2, [r1, #18]
 8002226:	f023 0304 	bic.w	r3, r3, #4
 800222a:	4333      	orrs	r3, r6
 800222c:	4314      	orrs	r4, r2
 800222e:	688a      	ldr	r2, [r1, #8]
 8002230:	6044      	str	r4, [r0, #4]
 8002232:	6185      	str	r5, [r0, #24]
 8002234:	6342      	str	r2, [r0, #52]	; 0x34
 8002236:	6203      	str	r3, [r0, #32]
 8002238:	bd70      	pop	{r4, r5, r6, pc}
 800223a:	bf00      	nop
 800223c:	40012c00 	.word	0x40012c00

08002240 <TIM_OC2Init>:
 8002240:	b570      	push	{r4, r5, r6, lr}
 8002242:	bf00      	nop
 8002244:	bf00      	nop
 8002246:	bf00      	nop
 8002248:	bf00      	nop
 800224a:	6a03      	ldr	r3, [r0, #32]
 800224c:	680d      	ldr	r5, [r1, #0]
 800224e:	898e      	ldrh	r6, [r1, #12]
 8002250:	f023 0310 	bic.w	r3, r3, #16
 8002254:	6203      	str	r3, [r0, #32]
 8002256:	6a03      	ldr	r3, [r0, #32]
 8002258:	6844      	ldr	r4, [r0, #4]
 800225a:	6982      	ldr	r2, [r0, #24]
 800225c:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002260:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002264:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002268:	f023 0220 	bic.w	r2, r3, #32
 800226c:	888b      	ldrh	r3, [r1, #4]
 800226e:	4333      	orrs	r3, r6
 8002270:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8002274:	4a10      	ldr	r2, [pc, #64]	; (80022b8 <TIM_OC2Init+0x78>)
 8002276:	4290      	cmp	r0, r2
 8002278:	d003      	beq.n	8002282 <TIM_OC2Init+0x42>
 800227a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800227e:	4290      	cmp	r0, r2
 8002280:	d114      	bne.n	80022ac <TIM_OC2Init+0x6c>
 8002282:	bf00      	nop
 8002284:	bf00      	nop
 8002286:	bf00      	nop
 8002288:	bf00      	nop
 800228a:	89ca      	ldrh	r2, [r1, #14]
 800228c:	8a0e      	ldrh	r6, [r1, #16]
 800228e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002292:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002296:	88ca      	ldrh	r2, [r1, #6]
 8002298:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800229c:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80022a0:	8a4a      	ldrh	r2, [r1, #18]
 80022a2:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 80022a6:	4332      	orrs	r2, r6
 80022a8:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 80022ac:	688a      	ldr	r2, [r1, #8]
 80022ae:	6044      	str	r4, [r0, #4]
 80022b0:	6185      	str	r5, [r0, #24]
 80022b2:	6382      	str	r2, [r0, #56]	; 0x38
 80022b4:	6203      	str	r3, [r0, #32]
 80022b6:	bd70      	pop	{r4, r5, r6, pc}
 80022b8:	40012c00 	.word	0x40012c00

080022bc <TIM_CtrlPWMOutputs>:
 80022bc:	bf00      	nop
 80022be:	bf00      	nop
 80022c0:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80022c2:	b111      	cbz	r1, 80022ca <TIM_CtrlPWMOutputs+0xe>
 80022c4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80022c8:	e001      	b.n	80022ce <TIM_CtrlPWMOutputs+0x12>
 80022ca:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80022ce:	6443      	str	r3, [r0, #68]	; 0x44
 80022d0:	4770      	bx	lr

080022d2 <TIM_ClearITPendingBit>:
 80022d2:	bf00      	nop
 80022d4:	43c9      	mvns	r1, r1
 80022d6:	b289      	uxth	r1, r1
 80022d8:	6101      	str	r1, [r0, #16]
 80022da:	4770      	bx	lr

080022dc <timer_init>:
 80022dc:	b530      	push	{r4, r5, lr}
 80022de:	2300      	movs	r3, #0
 80022e0:	b085      	sub	sp, #20
 80022e2:	491f      	ldr	r1, [pc, #124]	; (8002360 <timer_init+0x84>)
 80022e4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80022e8:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022ec:	491d      	ldr	r1, [pc, #116]	; (8002364 <timer_init+0x88>)
 80022ee:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022f2:	4a1d      	ldr	r2, [pc, #116]	; (8002368 <timer_init+0x8c>)
 80022f4:	2400      	movs	r4, #0
 80022f6:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80022fa:	3301      	adds	r3, #1
 80022fc:	2b04      	cmp	r3, #4
 80022fe:	4625      	mov	r5, r4
 8002300:	d1ef      	bne.n	80022e2 <timer_init+0x6>
 8002302:	4b1a      	ldr	r3, [pc, #104]	; (800236c <timer_init+0x90>)
 8002304:	2002      	movs	r0, #2
 8002306:	2101      	movs	r1, #1
 8002308:	601c      	str	r4, [r3, #0]
 800230a:	f7ff fee7 	bl	80020dc <RCC_APB1PeriphClockCmd>
 800230e:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002312:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002316:	f8ad 400e 	strh.w	r4, [sp, #14]
 800231a:	4c15      	ldr	r4, [pc, #84]	; (8002370 <timer_init+0x94>)
 800231c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002320:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002324:	4620      	mov	r0, r4
 8002326:	2331      	movs	r3, #49	; 0x31
 8002328:	a901      	add	r1, sp, #4
 800232a:	9302      	str	r3, [sp, #8]
 800232c:	f7ff fee4 	bl	80020f8 <TIM_TimeBaseInit>
 8002330:	4620      	mov	r0, r4
 8002332:	2101      	movs	r1, #1
 8002334:	f7ff ff30 	bl	8002198 <TIM_Cmd>
 8002338:	68e3      	ldr	r3, [r4, #12]
 800233a:	f043 0301 	orr.w	r3, r3, #1
 800233e:	60e3      	str	r3, [r4, #12]
 8002340:	231d      	movs	r3, #29
 8002342:	f88d 3000 	strb.w	r3, [sp]
 8002346:	4668      	mov	r0, sp
 8002348:	2301      	movs	r3, #1
 800234a:	f88d 5001 	strb.w	r5, [sp, #1]
 800234e:	f88d 3002 	strb.w	r3, [sp, #2]
 8002352:	f88d 3003 	strb.w	r3, [sp, #3]
 8002356:	f000 fc5d 	bl	8002c14 <NVIC_Init>
 800235a:	b005      	add	sp, #20
 800235c:	bd30      	pop	{r4, r5, pc}
 800235e:	bf00      	nop
 8002360:	20001054 	.word	0x20001054
 8002364:	20001048 	.word	0x20001048
 8002368:	20001040 	.word	0x20001040
 800236c:	20001050 	.word	0x20001050
 8002370:	40000400 	.word	0x40000400

08002374 <TIM3_IRQHandler>:
 8002374:	2300      	movs	r3, #0
 8002376:	4910      	ldr	r1, [pc, #64]	; (80023b8 <TIM3_IRQHandler+0x44>)
 8002378:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 800237c:	b292      	uxth	r2, r2
 800237e:	b132      	cbz	r2, 800238e <TIM3_IRQHandler+0x1a>
 8002380:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002384:	3a01      	subs	r2, #1
 8002386:	b292      	uxth	r2, r2
 8002388:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800238c:	e009      	b.n	80023a2 <TIM3_IRQHandler+0x2e>
 800238e:	4a0b      	ldr	r2, [pc, #44]	; (80023bc <TIM3_IRQHandler+0x48>)
 8002390:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8002394:	b292      	uxth	r2, r2
 8002396:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800239a:	4a09      	ldr	r2, [pc, #36]	; (80023c0 <TIM3_IRQHandler+0x4c>)
 800239c:	2101      	movs	r1, #1
 800239e:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80023a2:	3301      	adds	r3, #1
 80023a4:	2b04      	cmp	r3, #4
 80023a6:	d1e6      	bne.n	8002376 <TIM3_IRQHandler+0x2>
 80023a8:	4a06      	ldr	r2, [pc, #24]	; (80023c4 <TIM3_IRQHandler+0x50>)
 80023aa:	4807      	ldr	r0, [pc, #28]	; (80023c8 <TIM3_IRQHandler+0x54>)
 80023ac:	6813      	ldr	r3, [r2, #0]
 80023ae:	2101      	movs	r1, #1
 80023b0:	3301      	adds	r3, #1
 80023b2:	6013      	str	r3, [r2, #0]
 80023b4:	f7ff bf8d 	b.w	80022d2 <TIM_ClearITPendingBit>
 80023b8:	20001054 	.word	0x20001054
 80023bc:	20001048 	.word	0x20001048
 80023c0:	20001040 	.word	0x20001040
 80023c4:	20001050 	.word	0x20001050
 80023c8:	40000400 	.word	0x40000400

080023cc <timer_get_time>:
 80023cc:	b082      	sub	sp, #8
 80023ce:	b672      	cpsid	i
 80023d0:	4b04      	ldr	r3, [pc, #16]	; (80023e4 <timer_get_time+0x18>)
 80023d2:	681b      	ldr	r3, [r3, #0]
 80023d4:	9301      	str	r3, [sp, #4]
 80023d6:	b662      	cpsie	i
 80023d8:	230a      	movs	r3, #10
 80023da:	9801      	ldr	r0, [sp, #4]
 80023dc:	fbb0 f0f3 	udiv	r0, r0, r3
 80023e0:	b002      	add	sp, #8
 80023e2:	4770      	bx	lr
 80023e4:	20001050 	.word	0x20001050

080023e8 <timer_delay_ms>:
 80023e8:	b513      	push	{r0, r1, r4, lr}
 80023ea:	4604      	mov	r4, r0
 80023ec:	f7ff ffee 	bl	80023cc <timer_get_time>
 80023f0:	4420      	add	r0, r4
 80023f2:	9001      	str	r0, [sp, #4]
 80023f4:	9c01      	ldr	r4, [sp, #4]
 80023f6:	f7ff ffe9 	bl	80023cc <timer_get_time>
 80023fa:	4284      	cmp	r4, r0
 80023fc:	d902      	bls.n	8002404 <timer_delay_ms+0x1c>
 80023fe:	f000 fb19 	bl	8002a34 <core_yield>
 8002402:	e7f7      	b.n	80023f4 <timer_delay_ms+0xc>
 8002404:	b002      	add	sp, #8
 8002406:	bd10      	pop	{r4, pc}

08002408 <event_timer_set_period>:
 8002408:	b672      	cpsid	i
 800240a:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 800240e:	4b07      	ldr	r3, [pc, #28]	; (800242c <event_timer_set_period+0x24>)
 8002410:	0049      	lsls	r1, r1, #1
 8002412:	b289      	uxth	r1, r1
 8002414:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002418:	4b05      	ldr	r3, [pc, #20]	; (8002430 <event_timer_set_period+0x28>)
 800241a:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800241e:	4b05      	ldr	r3, [pc, #20]	; (8002434 <event_timer_set_period+0x2c>)
 8002420:	2200      	movs	r2, #0
 8002422:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002426:	b662      	cpsie	i
 8002428:	4770      	bx	lr
 800242a:	bf00      	nop
 800242c:	20001054 	.word	0x20001054
 8002430:	20001048 	.word	0x20001048
 8002434:	20001040 	.word	0x20001040

08002438 <event_timer_wait>:
 8002438:	b510      	push	{r4, lr}
 800243a:	4604      	mov	r4, r0
 800243c:	4a06      	ldr	r2, [pc, #24]	; (8002458 <event_timer_wait+0x20>)
 800243e:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 8002442:	b29b      	uxth	r3, r3
 8002444:	b913      	cbnz	r3, 800244c <event_timer_wait+0x14>
 8002446:	f000 faf5 	bl	8002a34 <core_yield>
 800244a:	e7f7      	b.n	800243c <event_timer_wait+0x4>
 800244c:	b672      	cpsid	i
 800244e:	2300      	movs	r3, #0
 8002450:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8002454:	b662      	cpsie	i
 8002456:	bd10      	pop	{r4, pc}
 8002458:	20001040 	.word	0x20001040

0800245c <USART_Init>:
 800245c:	b530      	push	{r4, r5, lr}
 800245e:	4604      	mov	r4, r0
 8002460:	b099      	sub	sp, #100	; 0x64
 8002462:	460d      	mov	r5, r1
 8002464:	bf00      	nop
 8002466:	bf00      	nop
 8002468:	bf00      	nop
 800246a:	bf00      	nop
 800246c:	bf00      	nop
 800246e:	bf00      	nop
 8002470:	bf00      	nop
 8002472:	6803      	ldr	r3, [r0, #0]
 8002474:	f023 0301 	bic.w	r3, r3, #1
 8002478:	6003      	str	r3, [r0, #0]
 800247a:	6843      	ldr	r3, [r0, #4]
 800247c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002480:	688b      	ldr	r3, [r1, #8]
 8002482:	68c9      	ldr	r1, [r1, #12]
 8002484:	4313      	orrs	r3, r2
 8002486:	6043      	str	r3, [r0, #4]
 8002488:	686a      	ldr	r2, [r5, #4]
 800248a:	6803      	ldr	r3, [r0, #0]
 800248c:	4311      	orrs	r1, r2
 800248e:	692a      	ldr	r2, [r5, #16]
 8002490:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002494:	430a      	orrs	r2, r1
 8002496:	f023 030c 	bic.w	r3, r3, #12
 800249a:	4313      	orrs	r3, r2
 800249c:	6003      	str	r3, [r0, #0]
 800249e:	6883      	ldr	r3, [r0, #8]
 80024a0:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80024a4:	696b      	ldr	r3, [r5, #20]
 80024a6:	4313      	orrs	r3, r2
 80024a8:	6083      	str	r3, [r0, #8]
 80024aa:	a801      	add	r0, sp, #4
 80024ac:	f7ff fc84 	bl	8001db8 <RCC_GetClocksFreq>
 80024b0:	4b17      	ldr	r3, [pc, #92]	; (8002510 <USART_Init+0xb4>)
 80024b2:	429c      	cmp	r4, r3
 80024b4:	d101      	bne.n	80024ba <USART_Init+0x5e>
 80024b6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80024b8:	e00e      	b.n	80024d8 <USART_Init+0x7c>
 80024ba:	4b16      	ldr	r3, [pc, #88]	; (8002514 <USART_Init+0xb8>)
 80024bc:	429c      	cmp	r4, r3
 80024be:	d101      	bne.n	80024c4 <USART_Init+0x68>
 80024c0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80024c2:	e009      	b.n	80024d8 <USART_Init+0x7c>
 80024c4:	4b14      	ldr	r3, [pc, #80]	; (8002518 <USART_Init+0xbc>)
 80024c6:	429c      	cmp	r4, r3
 80024c8:	d101      	bne.n	80024ce <USART_Init+0x72>
 80024ca:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80024cc:	e004      	b.n	80024d8 <USART_Init+0x7c>
 80024ce:	4b13      	ldr	r3, [pc, #76]	; (800251c <USART_Init+0xc0>)
 80024d0:	429c      	cmp	r4, r3
 80024d2:	bf0c      	ite	eq
 80024d4:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 80024d6:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 80024d8:	6822      	ldr	r2, [r4, #0]
 80024da:	6829      	ldr	r1, [r5, #0]
 80024dc:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80024e0:	bf18      	it	ne
 80024e2:	005b      	lslne	r3, r3, #1
 80024e4:	fbb3 f2f1 	udiv	r2, r3, r1
 80024e8:	fb01 3312 	mls	r3, r1, r2, r3
 80024ec:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80024f0:	6823      	ldr	r3, [r4, #0]
 80024f2:	bf28      	it	cs
 80024f4:	3201      	addcs	r2, #1
 80024f6:	041b      	lsls	r3, r3, #16
 80024f8:	bf41      	itttt	mi
 80024fa:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80024fe:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002502:	4013      	andmi	r3, r2
 8002504:	ea41 0203 	orrmi.w	r2, r1, r3
 8002508:	b292      	uxth	r2, r2
 800250a:	81a2      	strh	r2, [r4, #12]
 800250c:	b019      	add	sp, #100	; 0x64
 800250e:	bd30      	pop	{r4, r5, pc}
 8002510:	40013800 	.word	0x40013800
 8002514:	40004400 	.word	0x40004400
 8002518:	40004800 	.word	0x40004800
 800251c:	40004c00 	.word	0x40004c00

08002520 <USART_Cmd>:
 8002520:	bf00      	nop
 8002522:	bf00      	nop
 8002524:	6803      	ldr	r3, [r0, #0]
 8002526:	b111      	cbz	r1, 800252e <USART_Cmd+0xe>
 8002528:	f043 0301 	orr.w	r3, r3, #1
 800252c:	e001      	b.n	8002532 <USART_Cmd+0x12>
 800252e:	f023 0301 	bic.w	r3, r3, #1
 8002532:	6003      	str	r3, [r0, #0]
 8002534:	4770      	bx	lr

08002536 <USART_ReceiveData>:
 8002536:	bf00      	nop
 8002538:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800253a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800253e:	4770      	bx	lr

08002540 <USART_ITConfig>:
 8002540:	b510      	push	{r4, lr}
 8002542:	bf00      	nop
 8002544:	bf00      	nop
 8002546:	bf00      	nop
 8002548:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800254c:	2301      	movs	r3, #1
 800254e:	b2c9      	uxtb	r1, r1
 8002550:	2c02      	cmp	r4, #2
 8002552:	fa03 f301 	lsl.w	r3, r3, r1
 8002556:	d101      	bne.n	800255c <USART_ITConfig+0x1c>
 8002558:	3004      	adds	r0, #4
 800255a:	e002      	b.n	8002562 <USART_ITConfig+0x22>
 800255c:	2c03      	cmp	r4, #3
 800255e:	bf08      	it	eq
 8002560:	3008      	addeq	r0, #8
 8002562:	b112      	cbz	r2, 800256a <USART_ITConfig+0x2a>
 8002564:	6802      	ldr	r2, [r0, #0]
 8002566:	4313      	orrs	r3, r2
 8002568:	e002      	b.n	8002570 <USART_ITConfig+0x30>
 800256a:	6802      	ldr	r2, [r0, #0]
 800256c:	ea22 0303 	bic.w	r3, r2, r3
 8002570:	6003      	str	r3, [r0, #0]
 8002572:	bd10      	pop	{r4, pc}

08002574 <USART_GetITStatus>:
 8002574:	b510      	push	{r4, lr}
 8002576:	bf00      	nop
 8002578:	bf00      	nop
 800257a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800257e:	b2cc      	uxtb	r4, r1
 8002580:	2301      	movs	r3, #1
 8002582:	2a01      	cmp	r2, #1
 8002584:	fa03 f304 	lsl.w	r3, r3, r4
 8002588:	d101      	bne.n	800258e <USART_GetITStatus+0x1a>
 800258a:	6802      	ldr	r2, [r0, #0]
 800258c:	e003      	b.n	8002596 <USART_GetITStatus+0x22>
 800258e:	2a02      	cmp	r2, #2
 8002590:	bf0c      	ite	eq
 8002592:	6842      	ldreq	r2, [r0, #4]
 8002594:	6882      	ldrne	r2, [r0, #8]
 8002596:	4013      	ands	r3, r2
 8002598:	69c2      	ldr	r2, [r0, #28]
 800259a:	b13b      	cbz	r3, 80025ac <USART_GetITStatus+0x38>
 800259c:	0c09      	lsrs	r1, r1, #16
 800259e:	2301      	movs	r3, #1
 80025a0:	408b      	lsls	r3, r1
 80025a2:	4213      	tst	r3, r2
 80025a4:	bf14      	ite	ne
 80025a6:	2001      	movne	r0, #1
 80025a8:	2000      	moveq	r0, #0
 80025aa:	bd10      	pop	{r4, pc}
 80025ac:	4618      	mov	r0, r3
 80025ae:	bd10      	pop	{r4, pc}

080025b0 <USART_ClearITPendingBit>:
 80025b0:	bf00      	nop
 80025b2:	bf00      	nop
 80025b4:	2301      	movs	r3, #1
 80025b6:	0c09      	lsrs	r1, r1, #16
 80025b8:	408b      	lsls	r3, r1
 80025ba:	6203      	str	r3, [r0, #32]
 80025bc:	4770      	bx	lr
	...

080025c0 <uart_write>:
 80025c0:	4b04      	ldr	r3, [pc, #16]	; (80025d4 <uart_write+0x14>)
 80025c2:	69da      	ldr	r2, [r3, #28]
 80025c4:	0612      	lsls	r2, r2, #24
 80025c6:	d401      	bmi.n	80025cc <uart_write+0xc>
 80025c8:	bf00      	nop
 80025ca:	e7f9      	b.n	80025c0 <uart_write>
 80025cc:	b280      	uxth	r0, r0
 80025ce:	8518      	strh	r0, [r3, #40]	; 0x28
 80025d0:	4770      	bx	lr
 80025d2:	bf00      	nop
 80025d4:	40013800 	.word	0x40013800

080025d8 <uart_init>:
 80025d8:	b530      	push	{r4, r5, lr}
 80025da:	4b2c      	ldr	r3, [pc, #176]	; (800268c <uart_init+0xb4>)
 80025dc:	4d2c      	ldr	r5, [pc, #176]	; (8002690 <uart_init+0xb8>)
 80025de:	2400      	movs	r4, #0
 80025e0:	601c      	str	r4, [r3, #0]
 80025e2:	4b2c      	ldr	r3, [pc, #176]	; (8002694 <uart_init+0xbc>)
 80025e4:	b08b      	sub	sp, #44	; 0x2c
 80025e6:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80025ea:	2101      	movs	r1, #1
 80025ec:	601c      	str	r4, [r3, #0]
 80025ee:	f7ff fd59 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 80025f2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80025f6:	2101      	movs	r1, #1
 80025f8:	f7ff fd62 	bl	80020c0 <RCC_APB2PeriphClockCmd>
 80025fc:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002600:	9302      	str	r3, [sp, #8]
 8002602:	2302      	movs	r3, #2
 8002604:	f88d 300c 	strb.w	r3, [sp, #12]
 8002608:	a902      	add	r1, sp, #8
 800260a:	2303      	movs	r3, #3
 800260c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002610:	f88d 300d 	strb.w	r3, [sp, #13]
 8002614:	f88d 400e 	strb.w	r4, [sp, #14]
 8002618:	f88d 400f 	strb.w	r4, [sp, #15]
 800261c:	f000 fbd8 	bl	8002dd0 <GPIO_Init>
 8002620:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002624:	2109      	movs	r1, #9
 8002626:	2207      	movs	r2, #7
 8002628:	f000 fc1c 	bl	8002e64 <GPIO_PinAFConfig>
 800262c:	2207      	movs	r2, #7
 800262e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002632:	210a      	movs	r1, #10
 8002634:	f000 fc16 	bl	8002e64 <GPIO_PinAFConfig>
 8002638:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800263c:	9304      	str	r3, [sp, #16]
 800263e:	4628      	mov	r0, r5
 8002640:	230c      	movs	r3, #12
 8002642:	a904      	add	r1, sp, #16
 8002644:	9308      	str	r3, [sp, #32]
 8002646:	9405      	str	r4, [sp, #20]
 8002648:	9406      	str	r4, [sp, #24]
 800264a:	9407      	str	r4, [sp, #28]
 800264c:	9409      	str	r4, [sp, #36]	; 0x24
 800264e:	f7ff ff05 	bl	800245c <USART_Init>
 8002652:	4628      	mov	r0, r5
 8002654:	2101      	movs	r1, #1
 8002656:	f7ff ff63 	bl	8002520 <USART_Cmd>
 800265a:	2201      	movs	r2, #1
 800265c:	4628      	mov	r0, r5
 800265e:	490e      	ldr	r1, [pc, #56]	; (8002698 <uart_init+0xc0>)
 8002660:	f7ff ff6e 	bl	8002540 <USART_ITConfig>
 8002664:	2325      	movs	r3, #37	; 0x25
 8002666:	f88d 4005 	strb.w	r4, [sp, #5]
 800266a:	f88d 4006 	strb.w	r4, [sp, #6]
 800266e:	a801      	add	r0, sp, #4
 8002670:	2401      	movs	r4, #1
 8002672:	f88d 3004 	strb.w	r3, [sp, #4]
 8002676:	f88d 4007 	strb.w	r4, [sp, #7]
 800267a:	f000 facb 	bl	8002c14 <NVIC_Init>
 800267e:	4628      	mov	r0, r5
 8002680:	4621      	mov	r1, r4
 8002682:	f7ff ff4d 	bl	8002520 <USART_Cmd>
 8002686:	b00b      	add	sp, #44	; 0x2c
 8002688:	bd30      	pop	{r4, r5, pc}
 800268a:	bf00      	nop
 800268c:	2000107c 	.word	0x2000107c
 8002690:	40013800 	.word	0x40013800
 8002694:	20001080 	.word	0x20001080
 8002698:	00050105 	.word	0x00050105

0800269c <USART1_IRQHandler>:
 800269c:	b508      	push	{r3, lr}
 800269e:	480d      	ldr	r0, [pc, #52]	; (80026d4 <USART1_IRQHandler+0x38>)
 80026a0:	490d      	ldr	r1, [pc, #52]	; (80026d8 <USART1_IRQHandler+0x3c>)
 80026a2:	f7ff ff67 	bl	8002574 <USART_GetITStatus>
 80026a6:	b178      	cbz	r0, 80026c8 <USART1_IRQHandler+0x2c>
 80026a8:	480a      	ldr	r0, [pc, #40]	; (80026d4 <USART1_IRQHandler+0x38>)
 80026aa:	f7ff ff44 	bl	8002536 <USART_ReceiveData>
 80026ae:	4b0b      	ldr	r3, [pc, #44]	; (80026dc <USART1_IRQHandler+0x40>)
 80026b0:	490b      	ldr	r1, [pc, #44]	; (80026e0 <USART1_IRQHandler+0x44>)
 80026b2:	681a      	ldr	r2, [r3, #0]
 80026b4:	b2c0      	uxtb	r0, r0
 80026b6:	5488      	strb	r0, [r1, r2]
 80026b8:	681a      	ldr	r2, [r3, #0]
 80026ba:	3201      	adds	r2, #1
 80026bc:	601a      	str	r2, [r3, #0]
 80026be:	681a      	ldr	r2, [r3, #0]
 80026c0:	2a1f      	cmp	r2, #31
 80026c2:	bf84      	itt	hi
 80026c4:	2200      	movhi	r2, #0
 80026c6:	601a      	strhi	r2, [r3, #0]
 80026c8:	4802      	ldr	r0, [pc, #8]	; (80026d4 <USART1_IRQHandler+0x38>)
 80026ca:	4903      	ldr	r1, [pc, #12]	; (80026d8 <USART1_IRQHandler+0x3c>)
 80026cc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80026d0:	f7ff bf6e 	b.w	80025b0 <USART_ClearITPendingBit>
 80026d4:	40013800 	.word	0x40013800
 80026d8:	00050105 	.word	0x00050105
 80026dc:	2000107c 	.word	0x2000107c
 80026e0:	2000105c 	.word	0x2000105c

080026e4 <i2c_delay>:
 80026e4:	bf00      	nop
 80026e6:	bf00      	nop
 80026e8:	bf00      	nop
 80026ea:	bf00      	nop
 80026ec:	4770      	bx	lr
	...

080026f0 <SetLowSDA>:
 80026f0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80026f2:	4d0d      	ldr	r5, [pc, #52]	; (8002728 <SetLowSDA+0x38>)
 80026f4:	2301      	movs	r3, #1
 80026f6:	2203      	movs	r2, #3
 80026f8:	2480      	movs	r4, #128	; 0x80
 80026fa:	f88d 3004 	strb.w	r3, [sp, #4]
 80026fe:	f88d 3006 	strb.w	r3, [sp, #6]
 8002702:	4628      	mov	r0, r5
 8002704:	2300      	movs	r3, #0
 8002706:	4669      	mov	r1, sp
 8002708:	f88d 2005 	strb.w	r2, [sp, #5]
 800270c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002710:	9400      	str	r4, [sp, #0]
 8002712:	f000 fb5d 	bl	8002dd0 <GPIO_Init>
 8002716:	4628      	mov	r0, r5
 8002718:	4621      	mov	r1, r4
 800271a:	f000 fb9f 	bl	8002e5c <GPIO_ResetBits>
 800271e:	f7ff ffe1 	bl	80026e4 <i2c_delay>
 8002722:	b003      	add	sp, #12
 8002724:	bd30      	pop	{r4, r5, pc}
 8002726:	bf00      	nop
 8002728:	48000400 	.word	0x48000400

0800272c <SetHighSDA>:
 800272c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800272e:	4d0d      	ldr	r5, [pc, #52]	; (8002764 <SetHighSDA+0x38>)
 8002730:	2203      	movs	r2, #3
 8002732:	2300      	movs	r3, #0
 8002734:	2480      	movs	r4, #128	; 0x80
 8002736:	f88d 2005 	strb.w	r2, [sp, #5]
 800273a:	4628      	mov	r0, r5
 800273c:	2201      	movs	r2, #1
 800273e:	4669      	mov	r1, sp
 8002740:	f88d 3004 	strb.w	r3, [sp, #4]
 8002744:	f88d 2006 	strb.w	r2, [sp, #6]
 8002748:	f88d 3007 	strb.w	r3, [sp, #7]
 800274c:	9400      	str	r4, [sp, #0]
 800274e:	f000 fb3f 	bl	8002dd0 <GPIO_Init>
 8002752:	4628      	mov	r0, r5
 8002754:	4621      	mov	r1, r4
 8002756:	f000 fb7d 	bl	8002e54 <GPIO_SetBits>
 800275a:	f7ff ffc3 	bl	80026e4 <i2c_delay>
 800275e:	b003      	add	sp, #12
 8002760:	bd30      	pop	{r4, r5, pc}
 8002762:	bf00      	nop
 8002764:	48000400 	.word	0x48000400

08002768 <SetLowSCL>:
 8002768:	b508      	push	{r3, lr}
 800276a:	4804      	ldr	r0, [pc, #16]	; (800277c <SetLowSCL+0x14>)
 800276c:	2140      	movs	r1, #64	; 0x40
 800276e:	f000 fb75 	bl	8002e5c <GPIO_ResetBits>
 8002772:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002776:	f7ff bfb5 	b.w	80026e4 <i2c_delay>
 800277a:	bf00      	nop
 800277c:	48000400 	.word	0x48000400

08002780 <SetHighSCL>:
 8002780:	b508      	push	{r3, lr}
 8002782:	4804      	ldr	r0, [pc, #16]	; (8002794 <SetHighSCL+0x14>)
 8002784:	2140      	movs	r1, #64	; 0x40
 8002786:	f000 fb65 	bl	8002e54 <GPIO_SetBits>
 800278a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800278e:	f7ff bfa9 	b.w	80026e4 <i2c_delay>
 8002792:	bf00      	nop
 8002794:	48000400 	.word	0x48000400

08002798 <i2c_0_init>:
 8002798:	b507      	push	{r0, r1, r2, lr}
 800279a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800279e:	2101      	movs	r1, #1
 80027a0:	f7ff fc80 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 80027a4:	23c0      	movs	r3, #192	; 0xc0
 80027a6:	9300      	str	r3, [sp, #0]
 80027a8:	2301      	movs	r3, #1
 80027aa:	2203      	movs	r2, #3
 80027ac:	480a      	ldr	r0, [pc, #40]	; (80027d8 <i2c_0_init+0x40>)
 80027ae:	f88d 3004 	strb.w	r3, [sp, #4]
 80027b2:	4669      	mov	r1, sp
 80027b4:	f88d 3006 	strb.w	r3, [sp, #6]
 80027b8:	2300      	movs	r3, #0
 80027ba:	f88d 2005 	strb.w	r2, [sp, #5]
 80027be:	f88d 3007 	strb.w	r3, [sp, #7]
 80027c2:	f000 fb05 	bl	8002dd0 <GPIO_Init>
 80027c6:	f7ff ffdb 	bl	8002780 <SetHighSCL>
 80027ca:	f7ff ff91 	bl	80026f0 <SetLowSDA>
 80027ce:	f7ff ffad 	bl	800272c <SetHighSDA>
 80027d2:	b003      	add	sp, #12
 80027d4:	f85d fb04 	ldr.w	pc, [sp], #4
 80027d8:	48000400 	.word	0x48000400

080027dc <i2cStart>:
 80027dc:	b508      	push	{r3, lr}
 80027de:	f7ff ffcf 	bl	8002780 <SetHighSCL>
 80027e2:	f7ff ffa3 	bl	800272c <SetHighSDA>
 80027e6:	f7ff ffcb 	bl	8002780 <SetHighSCL>
 80027ea:	f7ff ff81 	bl	80026f0 <SetLowSDA>
 80027ee:	f7ff ffbb 	bl	8002768 <SetLowSCL>
 80027f2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80027f6:	f7ff bf99 	b.w	800272c <SetHighSDA>

080027fa <i2cStop>:
 80027fa:	b508      	push	{r3, lr}
 80027fc:	f7ff ffb4 	bl	8002768 <SetLowSCL>
 8002800:	f7ff ff76 	bl	80026f0 <SetLowSDA>
 8002804:	f7ff ffbc 	bl	8002780 <SetHighSCL>
 8002808:	f7ff ff72 	bl	80026f0 <SetLowSDA>
 800280c:	f7ff ffb8 	bl	8002780 <SetHighSCL>
 8002810:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002814:	f7ff bf8a 	b.w	800272c <SetHighSDA>

08002818 <i2cWrite>:
 8002818:	b538      	push	{r3, r4, r5, lr}
 800281a:	4605      	mov	r5, r0
 800281c:	2408      	movs	r4, #8
 800281e:	f7ff ffa3 	bl	8002768 <SetLowSCL>
 8002822:	062b      	lsls	r3, r5, #24
 8002824:	d502      	bpl.n	800282c <i2cWrite+0x14>
 8002826:	f7ff ff81 	bl	800272c <SetHighSDA>
 800282a:	e001      	b.n	8002830 <i2cWrite+0x18>
 800282c:	f7ff ff60 	bl	80026f0 <SetLowSDA>
 8002830:	3c01      	subs	r4, #1
 8002832:	f7ff ffa5 	bl	8002780 <SetHighSCL>
 8002836:	006d      	lsls	r5, r5, #1
 8002838:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 800283c:	b2ed      	uxtb	r5, r5
 800283e:	d1ee      	bne.n	800281e <i2cWrite+0x6>
 8002840:	f7ff ff92 	bl	8002768 <SetLowSCL>
 8002844:	f7ff ff72 	bl	800272c <SetHighSDA>
 8002848:	f7ff ff9a 	bl	8002780 <SetHighSCL>
 800284c:	4b05      	ldr	r3, [pc, #20]	; (8002864 <i2cWrite+0x4c>)
 800284e:	8a1c      	ldrh	r4, [r3, #16]
 8002850:	b2a4      	uxth	r4, r4
 8002852:	f7ff ff89 	bl	8002768 <SetLowSCL>
 8002856:	f7ff ff45 	bl	80026e4 <i2c_delay>
 800285a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800285e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002862:	bd38      	pop	{r3, r4, r5, pc}
 8002864:	48000400 	.word	0x48000400

08002868 <i2cRead>:
 8002868:	b570      	push	{r4, r5, r6, lr}
 800286a:	4606      	mov	r6, r0
 800286c:	f7ff ff7c 	bl	8002768 <SetLowSCL>
 8002870:	f7ff ff5c 	bl	800272c <SetHighSDA>
 8002874:	2508      	movs	r5, #8
 8002876:	2400      	movs	r4, #0
 8002878:	f7ff ff82 	bl	8002780 <SetHighSCL>
 800287c:	4b0d      	ldr	r3, [pc, #52]	; (80028b4 <i2cRead+0x4c>)
 800287e:	8a1b      	ldrh	r3, [r3, #16]
 8002880:	0064      	lsls	r4, r4, #1
 8002882:	061b      	lsls	r3, r3, #24
 8002884:	b2e4      	uxtb	r4, r4
 8002886:	bf48      	it	mi
 8002888:	3401      	addmi	r4, #1
 800288a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800288e:	bf48      	it	mi
 8002890:	b2e4      	uxtbmi	r4, r4
 8002892:	f7ff ff69 	bl	8002768 <SetLowSCL>
 8002896:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800289a:	d1ed      	bne.n	8002878 <i2cRead+0x10>
 800289c:	b10e      	cbz	r6, 80028a2 <i2cRead+0x3a>
 800289e:	f7ff ff27 	bl	80026f0 <SetLowSDA>
 80028a2:	f7ff ff6d 	bl	8002780 <SetHighSCL>
 80028a6:	f7ff ff5f 	bl	8002768 <SetLowSCL>
 80028aa:	f7ff ff1b 	bl	80026e4 <i2c_delay>
 80028ae:	4620      	mov	r0, r4
 80028b0:	bd70      	pop	{r4, r5, r6, pc}
 80028b2:	bf00      	nop
 80028b4:	48000400 	.word	0x48000400

080028b8 <i2c_write_reg>:
 80028b8:	b570      	push	{r4, r5, r6, lr}
 80028ba:	4606      	mov	r6, r0
 80028bc:	460d      	mov	r5, r1
 80028be:	4614      	mov	r4, r2
 80028c0:	f7ff ff8c 	bl	80027dc <i2cStart>
 80028c4:	4630      	mov	r0, r6
 80028c6:	f7ff ffa7 	bl	8002818 <i2cWrite>
 80028ca:	4628      	mov	r0, r5
 80028cc:	f7ff ffa4 	bl	8002818 <i2cWrite>
 80028d0:	4620      	mov	r0, r4
 80028d2:	f7ff ffa1 	bl	8002818 <i2cWrite>
 80028d6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80028da:	f7ff bf8e 	b.w	80027fa <i2cStop>

080028de <i2c_read_reg>:
 80028de:	b538      	push	{r3, r4, r5, lr}
 80028e0:	4604      	mov	r4, r0
 80028e2:	460d      	mov	r5, r1
 80028e4:	f7ff ff7a 	bl	80027dc <i2cStart>
 80028e8:	4620      	mov	r0, r4
 80028ea:	f7ff ff95 	bl	8002818 <i2cWrite>
 80028ee:	4628      	mov	r0, r5
 80028f0:	f7ff ff92 	bl	8002818 <i2cWrite>
 80028f4:	f7ff ff72 	bl	80027dc <i2cStart>
 80028f8:	f044 0001 	orr.w	r0, r4, #1
 80028fc:	f7ff ff8c 	bl	8002818 <i2cWrite>
 8002900:	2000      	movs	r0, #0
 8002902:	f7ff ffb1 	bl	8002868 <i2cRead>
 8002906:	4604      	mov	r4, r0
 8002908:	f7ff ff77 	bl	80027fa <i2cStop>
 800290c:	4620      	mov	r0, r4
 800290e:	bd38      	pop	{r3, r4, r5, pc}

08002910 <SystemInit>:
 8002910:	4a39      	ldr	r2, [pc, #228]	; (80029f8 <SystemInit+0xe8>)
 8002912:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002916:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800291a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800291e:	4b37      	ldr	r3, [pc, #220]	; (80029fc <SystemInit+0xec>)
 8002920:	681a      	ldr	r2, [r3, #0]
 8002922:	f042 0201 	orr.w	r2, r2, #1
 8002926:	601a      	str	r2, [r3, #0]
 8002928:	6859      	ldr	r1, [r3, #4]
 800292a:	4a35      	ldr	r2, [pc, #212]	; (8002a00 <SystemInit+0xf0>)
 800292c:	400a      	ands	r2, r1
 800292e:	605a      	str	r2, [r3, #4]
 8002930:	681a      	ldr	r2, [r3, #0]
 8002932:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002936:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800293a:	601a      	str	r2, [r3, #0]
 800293c:	681a      	ldr	r2, [r3, #0]
 800293e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002942:	601a      	str	r2, [r3, #0]
 8002944:	685a      	ldr	r2, [r3, #4]
 8002946:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800294a:	605a      	str	r2, [r3, #4]
 800294c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800294e:	f022 020f 	bic.w	r2, r2, #15
 8002952:	62da      	str	r2, [r3, #44]	; 0x2c
 8002954:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002956:	4a2b      	ldr	r2, [pc, #172]	; (8002a04 <SystemInit+0xf4>)
 8002958:	b082      	sub	sp, #8
 800295a:	400a      	ands	r2, r1
 800295c:	631a      	str	r2, [r3, #48]	; 0x30
 800295e:	2200      	movs	r2, #0
 8002960:	609a      	str	r2, [r3, #8]
 8002962:	9200      	str	r2, [sp, #0]
 8002964:	9201      	str	r2, [sp, #4]
 8002966:	681a      	ldr	r2, [r3, #0]
 8002968:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800296c:	601a      	str	r2, [r3, #0]
 800296e:	681a      	ldr	r2, [r3, #0]
 8002970:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002974:	9201      	str	r2, [sp, #4]
 8002976:	9a00      	ldr	r2, [sp, #0]
 8002978:	3201      	adds	r2, #1
 800297a:	9200      	str	r2, [sp, #0]
 800297c:	9a01      	ldr	r2, [sp, #4]
 800297e:	b91a      	cbnz	r2, 8002988 <SystemInit+0x78>
 8002980:	9a00      	ldr	r2, [sp, #0]
 8002982:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002986:	d1f2      	bne.n	800296e <SystemInit+0x5e>
 8002988:	681a      	ldr	r2, [r3, #0]
 800298a:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800298e:	bf18      	it	ne
 8002990:	2201      	movne	r2, #1
 8002992:	9201      	str	r2, [sp, #4]
 8002994:	9a01      	ldr	r2, [sp, #4]
 8002996:	2a01      	cmp	r2, #1
 8002998:	d005      	beq.n	80029a6 <SystemInit+0x96>
 800299a:	4b17      	ldr	r3, [pc, #92]	; (80029f8 <SystemInit+0xe8>)
 800299c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80029a0:	609a      	str	r2, [r3, #8]
 80029a2:	b002      	add	sp, #8
 80029a4:	4770      	bx	lr
 80029a6:	4a18      	ldr	r2, [pc, #96]	; (8002a08 <SystemInit+0xf8>)
 80029a8:	2112      	movs	r1, #18
 80029aa:	6011      	str	r1, [r2, #0]
 80029ac:	685a      	ldr	r2, [r3, #4]
 80029ae:	605a      	str	r2, [r3, #4]
 80029b0:	685a      	ldr	r2, [r3, #4]
 80029b2:	605a      	str	r2, [r3, #4]
 80029b4:	685a      	ldr	r2, [r3, #4]
 80029b6:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80029ba:	605a      	str	r2, [r3, #4]
 80029bc:	685a      	ldr	r2, [r3, #4]
 80029be:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80029c2:	605a      	str	r2, [r3, #4]
 80029c4:	685a      	ldr	r2, [r3, #4]
 80029c6:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80029ca:	605a      	str	r2, [r3, #4]
 80029cc:	681a      	ldr	r2, [r3, #0]
 80029ce:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80029d2:	601a      	str	r2, [r3, #0]
 80029d4:	6819      	ldr	r1, [r3, #0]
 80029d6:	4a09      	ldr	r2, [pc, #36]	; (80029fc <SystemInit+0xec>)
 80029d8:	0189      	lsls	r1, r1, #6
 80029da:	d5fb      	bpl.n	80029d4 <SystemInit+0xc4>
 80029dc:	6851      	ldr	r1, [r2, #4]
 80029de:	f021 0103 	bic.w	r1, r1, #3
 80029e2:	6051      	str	r1, [r2, #4]
 80029e4:	6851      	ldr	r1, [r2, #4]
 80029e6:	f041 0102 	orr.w	r1, r1, #2
 80029ea:	6051      	str	r1, [r2, #4]
 80029ec:	685a      	ldr	r2, [r3, #4]
 80029ee:	f002 020c 	and.w	r2, r2, #12
 80029f2:	2a08      	cmp	r2, #8
 80029f4:	d1fa      	bne.n	80029ec <SystemInit+0xdc>
 80029f6:	e7d0      	b.n	800299a <SystemInit+0x8a>
 80029f8:	e000ed00 	.word	0xe000ed00
 80029fc:	40021000 	.word	0x40021000
 8002a00:	f87fc00c 	.word	0xf87fc00c
 8002a04:	ff00fccc 	.word	0xff00fccc
 8002a08:	40022000 	.word	0x40022000

08002a0c <sys_tick_init>:
 8002a0c:	4b06      	ldr	r3, [pc, #24]	; (8002a28 <sys_tick_init+0x1c>)
 8002a0e:	f244 6250 	movw	r2, #18000	; 0x4650
 8002a12:	605a      	str	r2, [r3, #4]
 8002a14:	4a05      	ldr	r2, [pc, #20]	; (8002a2c <sys_tick_init+0x20>)
 8002a16:	21f0      	movs	r1, #240	; 0xf0
 8002a18:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002a1c:	2200      	movs	r2, #0
 8002a1e:	609a      	str	r2, [r3, #8]
 8002a20:	2207      	movs	r2, #7
 8002a22:	601a      	str	r2, [r3, #0]
 8002a24:	4770      	bx	lr
 8002a26:	bf00      	nop
 8002a28:	e000e010 	.word	0xe000e010
 8002a2c:	e000ed00 	.word	0xe000ed00

08002a30 <sleep>:
 8002a30:	bf30      	wfi
 8002a32:	4770      	bx	lr

08002a34 <core_yield>:
 8002a34:	bf00      	nop
 8002a36:	4770      	bx	lr

08002a38 <sytem_clock_init>:
 8002a38:	f7ff bf6a 	b.w	8002910 <SystemInit>

08002a3c <pwm_set>:
 8002a3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002a40:	b086      	sub	sp, #24
 8002a42:	2370      	movs	r3, #112	; 0x70
 8002a44:	9301      	str	r3, [sp, #4]
 8002a46:	2301      	movs	r3, #1
 8002a48:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002a4c:	2304      	movs	r3, #4
 8002a4e:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002a52:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002ab8 <pwm_set+0x7c>
 8002a56:	4c17      	ldr	r4, [pc, #92]	; (8002ab4 <pwm_set+0x78>)
 8002a58:	2302      	movs	r3, #2
 8002a5a:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002a5e:	2300      	movs	r3, #0
 8002a60:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002a64:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002a68:	f242 7710 	movw	r7, #10000	; 0x2710
 8002a6c:	f8d8 3000 	ldr.w	r3, [r8]
 8002a70:	fbb3 f3f7 	udiv	r3, r3, r7
 8002a74:	3b02      	subs	r3, #2
 8002a76:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002a7a:	460e      	mov	r6, r1
 8002a7c:	2564      	movs	r5, #100	; 0x64
 8002a7e:	a901      	add	r1, sp, #4
 8002a80:	4358      	muls	r0, r3
 8002a82:	fbb0 f3f5 	udiv	r3, r0, r5
 8002a86:	4620      	mov	r0, r4
 8002a88:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002a8c:	9303      	str	r3, [sp, #12]
 8002a8e:	f7ff fb91 	bl	80021b4 <TIM_OC1Init>
 8002a92:	f8d8 1000 	ldr.w	r1, [r8]
 8002a96:	fbb1 f1f7 	udiv	r1, r1, r7
 8002a9a:	3902      	subs	r1, #2
 8002a9c:	4371      	muls	r1, r6
 8002a9e:	4620      	mov	r0, r4
 8002aa0:	fbb1 f1f5 	udiv	r1, r1, r5
 8002aa4:	9103      	str	r1, [sp, #12]
 8002aa6:	a901      	add	r1, sp, #4
 8002aa8:	f7ff fbca 	bl	8002240 <TIM_OC2Init>
 8002aac:	b006      	add	sp, #24
 8002aae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002ab2:	bf00      	nop
 8002ab4:	40012c00 	.word	0x40012c00
 8002ab8:	200000e8 	.word	0x200000e8

08002abc <pwm_init>:
 8002abc:	b530      	push	{r4, r5, lr}
 8002abe:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002ac2:	b087      	sub	sp, #28
 8002ac4:	2101      	movs	r1, #1
 8002ac6:	f7ff fafb 	bl	80020c0 <RCC_APB2PeriphClockCmd>
 8002aca:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002ace:	2101      	movs	r1, #1
 8002ad0:	f7ff fae8 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 8002ad4:	4c1d      	ldr	r4, [pc, #116]	; (8002b4c <pwm_init+0x90>)
 8002ad6:	4d1e      	ldr	r5, [pc, #120]	; (8002b50 <pwm_init+0x94>)
 8002ad8:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002adc:	9301      	str	r3, [sp, #4]
 8002ade:	2302      	movs	r3, #2
 8002ae0:	f88d 3008 	strb.w	r3, [sp, #8]
 8002ae4:	4620      	mov	r0, r4
 8002ae6:	2303      	movs	r3, #3
 8002ae8:	a901      	add	r1, sp, #4
 8002aea:	f88d 3009 	strb.w	r3, [sp, #9]
 8002aee:	f000 f96f 	bl	8002dd0 <GPIO_Init>
 8002af2:	4620      	mov	r0, r4
 8002af4:	210d      	movs	r1, #13
 8002af6:	2206      	movs	r2, #6
 8002af8:	f000 f9b4 	bl	8002e64 <GPIO_PinAFConfig>
 8002afc:	4620      	mov	r0, r4
 8002afe:	210e      	movs	r1, #14
 8002b00:	2206      	movs	r2, #6
 8002b02:	f000 f9af 	bl	8002e64 <GPIO_PinAFConfig>
 8002b06:	4b13      	ldr	r3, [pc, #76]	; (8002b54 <pwm_init+0x98>)
 8002b08:	2400      	movs	r4, #0
 8002b0a:	f242 7210 	movw	r2, #10000	; 0x2710
 8002b0e:	4628      	mov	r0, r5
 8002b10:	a903      	add	r1, sp, #12
 8002b12:	681b      	ldr	r3, [r3, #0]
 8002b14:	fbb3 f3f2 	udiv	r3, r3, r2
 8002b18:	3b01      	subs	r3, #1
 8002b1a:	9304      	str	r3, [sp, #16]
 8002b1c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002b20:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002b24:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002b28:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002b2c:	f7ff fae4 	bl	80020f8 <TIM_TimeBaseInit>
 8002b30:	4620      	mov	r0, r4
 8002b32:	4621      	mov	r1, r4
 8002b34:	f7ff ff82 	bl	8002a3c <pwm_set>
 8002b38:	4628      	mov	r0, r5
 8002b3a:	2101      	movs	r1, #1
 8002b3c:	f7ff fb2c 	bl	8002198 <TIM_Cmd>
 8002b40:	4628      	mov	r0, r5
 8002b42:	2101      	movs	r1, #1
 8002b44:	f7ff fbba 	bl	80022bc <TIM_CtrlPWMOutputs>
 8002b48:	b007      	add	sp, #28
 8002b4a:	bd30      	pop	{r4, r5, pc}
 8002b4c:	48000400 	.word	0x48000400
 8002b50:	40012c00 	.word	0x40012c00
 8002b54:	200000e8 	.word	0x200000e8

08002b58 <drv8834_run>:
 8002b58:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8002b5c:	1e03      	subs	r3, r0, #0
 8002b5e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b62:	bfce      	itee	gt
 8002b64:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002b66:	6190      	strle	r0, [r2, #24]
 8002b68:	425b      	negle	r3, r3
 8002b6a:	4a09      	ldr	r2, [pc, #36]	; (8002b90 <drv8834_run+0x38>)
 8002b6c:	2900      	cmp	r1, #0
 8002b6e:	bfd8      	it	le
 8002b70:	4249      	negle	r1, r1
 8002b72:	f04f 0020 	mov.w	r0, #32
 8002b76:	bfcc      	ite	gt
 8002b78:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002b7a:	6190      	strle	r0, [r2, #24]
 8002b7c:	2964      	cmp	r1, #100	; 0x64
 8002b7e:	bfa8      	it	ge
 8002b80:	2164      	movge	r1, #100	; 0x64
 8002b82:	2b64      	cmp	r3, #100	; 0x64
 8002b84:	bfa8      	it	ge
 8002b86:	2364      	movge	r3, #100	; 0x64
 8002b88:	4608      	mov	r0, r1
 8002b8a:	4619      	mov	r1, r3
 8002b8c:	f7ff bf56 	b.w	8002a3c <pwm_set>
 8002b90:	48000400 	.word	0x48000400

08002b94 <drv8834_init>:
 8002b94:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002b98:	4f1d      	ldr	r7, [pc, #116]	; (8002c10 <drv8834_init+0x7c>)
 8002b9a:	2400      	movs	r4, #0
 8002b9c:	2601      	movs	r6, #1
 8002b9e:	2503      	movs	r5, #3
 8002ba0:	f04f 0810 	mov.w	r8, #16
 8002ba4:	4638      	mov	r0, r7
 8002ba6:	4669      	mov	r1, sp
 8002ba8:	f8cd 8000 	str.w	r8, [sp]
 8002bac:	f88d 6004 	strb.w	r6, [sp, #4]
 8002bb0:	f88d 4006 	strb.w	r4, [sp, #6]
 8002bb4:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bb8:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bbc:	f000 f908 	bl	8002dd0 <GPIO_Init>
 8002bc0:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002bc4:	2320      	movs	r3, #32
 8002bc6:	4638      	mov	r0, r7
 8002bc8:	4669      	mov	r1, sp
 8002bca:	9300      	str	r3, [sp, #0]
 8002bcc:	f88d 6004 	strb.w	r6, [sp, #4]
 8002bd0:	f88d 4006 	strb.w	r4, [sp, #6]
 8002bd4:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bd8:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bdc:	f000 f8f8 	bl	8002dd0 <GPIO_Init>
 8002be0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002be4:	4669      	mov	r1, sp
 8002be6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002bea:	9300      	str	r3, [sp, #0]
 8002bec:	f88d 6004 	strb.w	r6, [sp, #4]
 8002bf0:	f88d 4006 	strb.w	r4, [sp, #6]
 8002bf4:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bf8:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bfc:	f000 f8e8 	bl	8002dd0 <GPIO_Init>
 8002c00:	4620      	mov	r0, r4
 8002c02:	4621      	mov	r1, r4
 8002c04:	f7ff ffa8 	bl	8002b58 <drv8834_run>
 8002c08:	b002      	add	sp, #8
 8002c0a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002c0e:	bf00      	nop
 8002c10:	48000400 	.word	0x48000400

08002c14 <NVIC_Init>:
 8002c14:	b510      	push	{r4, lr}
 8002c16:	bf00      	nop
 8002c18:	bf00      	nop
 8002c1a:	bf00      	nop
 8002c1c:	78c2      	ldrb	r2, [r0, #3]
 8002c1e:	7803      	ldrb	r3, [r0, #0]
 8002c20:	b312      	cbz	r2, 8002c68 <NVIC_Init+0x54>
 8002c22:	4a17      	ldr	r2, [pc, #92]	; (8002c80 <NVIC_Init+0x6c>)
 8002c24:	68d1      	ldr	r1, [r2, #12]
 8002c26:	7842      	ldrb	r2, [r0, #1]
 8002c28:	43c9      	mvns	r1, r1
 8002c2a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002c2e:	f1c1 0404 	rsb	r4, r1, #4
 8002c32:	b2e4      	uxtb	r4, r4
 8002c34:	40a2      	lsls	r2, r4
 8002c36:	b2d4      	uxtb	r4, r2
 8002c38:	220f      	movs	r2, #15
 8002c3a:	410a      	asrs	r2, r1
 8002c3c:	7881      	ldrb	r1, [r0, #2]
 8002c3e:	400a      	ands	r2, r1
 8002c40:	4322      	orrs	r2, r4
 8002c42:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002c46:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002c4a:	0112      	lsls	r2, r2, #4
 8002c4c:	b2d2      	uxtb	r2, r2
 8002c4e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002c52:	7803      	ldrb	r3, [r0, #0]
 8002c54:	2201      	movs	r2, #1
 8002c56:	0959      	lsrs	r1, r3, #5
 8002c58:	f003 031f 	and.w	r3, r3, #31
 8002c5c:	fa02 f303 	lsl.w	r3, r2, r3
 8002c60:	4a08      	ldr	r2, [pc, #32]	; (8002c84 <NVIC_Init+0x70>)
 8002c62:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002c66:	bd10      	pop	{r4, pc}
 8002c68:	095a      	lsrs	r2, r3, #5
 8002c6a:	2101      	movs	r1, #1
 8002c6c:	f003 031f 	and.w	r3, r3, #31
 8002c70:	4099      	lsls	r1, r3
 8002c72:	f102 0320 	add.w	r3, r2, #32
 8002c76:	4a03      	ldr	r2, [pc, #12]	; (8002c84 <NVIC_Init+0x70>)
 8002c78:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002c7c:	bd10      	pop	{r4, pc}
 8002c7e:	bf00      	nop
 8002c80:	e000ed00 	.word	0xe000ed00
 8002c84:	e000e100 	.word	0xe000e100

08002c88 <lib_low_level_init>:
 8002c88:	b508      	push	{r3, lr}
 8002c8a:	f7ff fed5 	bl	8002a38 <sytem_clock_init>
 8002c8e:	f000 f969 	bl	8002f64 <gpio_init>
 8002c92:	f7ff fca1 	bl	80025d8 <uart_init>
 8002c96:	f7ff fb21 	bl	80022dc <timer_init>
 8002c9a:	f7ff ff0f 	bl	8002abc <pwm_init>
 8002c9e:	f7ff ff79 	bl	8002b94 <drv8834_init>
 8002ca2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002ca6:	f7ff bd77 	b.w	8002798 <i2c_0_init>
	...

08002cac <EXTI_Init>:
 8002cac:	b570      	push	{r4, r5, r6, lr}
 8002cae:	bf00      	nop
 8002cb0:	bf00      	nop
 8002cb2:	bf00      	nop
 8002cb4:	bf00      	nop
 8002cb6:	7982      	ldrb	r2, [r0, #6]
 8002cb8:	6803      	ldr	r3, [r0, #0]
 8002cba:	7904      	ldrb	r4, [r0, #4]
 8002cbc:	2a00      	cmp	r2, #0
 8002cbe:	d064      	beq.n	8002d8a <EXTI_Init+0xde>
 8002cc0:	f023 011f 	bic.w	r1, r3, #31
 8002cc4:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002cc8:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002ccc:	f003 021f 	and.w	r2, r3, #31
 8002cd0:	680d      	ldr	r5, [r1, #0]
 8002cd2:	2301      	movs	r3, #1
 8002cd4:	fa03 f202 	lsl.w	r2, r3, r2
 8002cd8:	ea25 0202 	bic.w	r2, r5, r2
 8002cdc:	600a      	str	r2, [r1, #0]
 8002cde:	6802      	ldr	r2, [r0, #0]
 8002ce0:	4d32      	ldr	r5, [pc, #200]	; (8002dac <EXTI_Init+0x100>)
 8002ce2:	f022 061f 	bic.w	r6, r2, #31
 8002ce6:	f002 021f 	and.w	r2, r2, #31
 8002cea:	5971      	ldr	r1, [r6, r5]
 8002cec:	fa03 f202 	lsl.w	r2, r3, r2
 8002cf0:	ea21 0202 	bic.w	r2, r1, r2
 8002cf4:	5172      	str	r2, [r6, r5]
 8002cf6:	6801      	ldr	r1, [r0, #0]
 8002cf8:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002cfc:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002d00:	f021 041f 	bic.w	r4, r1, #31
 8002d04:	f001 011f 	and.w	r1, r1, #31
 8002d08:	5915      	ldr	r5, [r2, r4]
 8002d0a:	fa03 f101 	lsl.w	r1, r3, r1
 8002d0e:	4329      	orrs	r1, r5
 8002d10:	5111      	str	r1, [r2, r4]
 8002d12:	6802      	ldr	r2, [r0, #0]
 8002d14:	4d26      	ldr	r5, [pc, #152]	; (8002db0 <EXTI_Init+0x104>)
 8002d16:	f022 041f 	bic.w	r4, r2, #31
 8002d1a:	f002 021f 	and.w	r2, r2, #31
 8002d1e:	5961      	ldr	r1, [r4, r5]
 8002d20:	fa03 f202 	lsl.w	r2, r3, r2
 8002d24:	ea21 0202 	bic.w	r2, r1, r2
 8002d28:	5162      	str	r2, [r4, r5]
 8002d2a:	6802      	ldr	r2, [r0, #0]
 8002d2c:	4c21      	ldr	r4, [pc, #132]	; (8002db4 <EXTI_Init+0x108>)
 8002d2e:	f022 061f 	bic.w	r6, r2, #31
 8002d32:	f002 021f 	and.w	r2, r2, #31
 8002d36:	5931      	ldr	r1, [r6, r4]
 8002d38:	fa03 f202 	lsl.w	r2, r3, r2
 8002d3c:	ea21 0202 	bic.w	r2, r1, r2
 8002d40:	7941      	ldrb	r1, [r0, #5]
 8002d42:	5132      	str	r2, [r6, r4]
 8002d44:	2910      	cmp	r1, #16
 8002d46:	6802      	ldr	r2, [r0, #0]
 8002d48:	d112      	bne.n	8002d70 <EXTI_Init+0xc4>
 8002d4a:	f022 011f 	bic.w	r1, r2, #31
 8002d4e:	f002 021f 	and.w	r2, r2, #31
 8002d52:	594e      	ldr	r6, [r1, r5]
 8002d54:	fa03 f202 	lsl.w	r2, r3, r2
 8002d58:	4332      	orrs	r2, r6
 8002d5a:	514a      	str	r2, [r1, r5]
 8002d5c:	6802      	ldr	r2, [r0, #0]
 8002d5e:	f022 011f 	bic.w	r1, r2, #31
 8002d62:	f002 021f 	and.w	r2, r2, #31
 8002d66:	5908      	ldr	r0, [r1, r4]
 8002d68:	4093      	lsls	r3, r2
 8002d6a:	4303      	orrs	r3, r0
 8002d6c:	510b      	str	r3, [r1, r4]
 8002d6e:	bd70      	pop	{r4, r5, r6, pc}
 8002d70:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002d74:	f022 001f 	bic.w	r0, r2, #31
 8002d78:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002d7c:	f002 021f 	and.w	r2, r2, #31
 8002d80:	580c      	ldr	r4, [r1, r0]
 8002d82:	4093      	lsls	r3, r2
 8002d84:	4323      	orrs	r3, r4
 8002d86:	500b      	str	r3, [r1, r0]
 8002d88:	bd70      	pop	{r4, r5, r6, pc}
 8002d8a:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002d8e:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002d92:	f023 041f 	bic.w	r4, r3, #31
 8002d96:	2001      	movs	r0, #1
 8002d98:	5911      	ldr	r1, [r2, r4]
 8002d9a:	f003 031f 	and.w	r3, r3, #31
 8002d9e:	fa00 f303 	lsl.w	r3, r0, r3
 8002da2:	ea21 0303 	bic.w	r3, r1, r3
 8002da6:	5113      	str	r3, [r2, r4]
 8002da8:	bd70      	pop	{r4, r5, r6, pc}
 8002daa:	bf00      	nop
 8002dac:	40010404 	.word	0x40010404
 8002db0:	40010408 	.word	0x40010408
 8002db4:	4001040c 	.word	0x4001040c

08002db8 <EXTI_ClearITPendingBit>:
 8002db8:	f020 011f 	bic.w	r1, r0, #31
 8002dbc:	2301      	movs	r3, #1
 8002dbe:	f000 001f 	and.w	r0, r0, #31
 8002dc2:	4a02      	ldr	r2, [pc, #8]	; (8002dcc <EXTI_ClearITPendingBit+0x14>)
 8002dc4:	4083      	lsls	r3, r0
 8002dc6:	508b      	str	r3, [r1, r2]
 8002dc8:	4770      	bx	lr
 8002dca:	bf00      	nop
 8002dcc:	40010414 	.word	0x40010414

08002dd0 <GPIO_Init>:
 8002dd0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002dd2:	bf00      	nop
 8002dd4:	bf00      	nop
 8002dd6:	bf00      	nop
 8002dd8:	bf00      	nop
 8002dda:	2300      	movs	r3, #0
 8002ddc:	680e      	ldr	r6, [r1, #0]
 8002dde:	461c      	mov	r4, r3
 8002de0:	2501      	movs	r5, #1
 8002de2:	40a5      	lsls	r5, r4
 8002de4:	ea05 0e06 	and.w	lr, r5, r6
 8002de8:	45ae      	cmp	lr, r5
 8002dea:	d12d      	bne.n	8002e48 <GPIO_Init+0x78>
 8002dec:	790f      	ldrb	r7, [r1, #4]
 8002dee:	1e7a      	subs	r2, r7, #1
 8002df0:	2a01      	cmp	r2, #1
 8002df2:	d817      	bhi.n	8002e24 <GPIO_Init+0x54>
 8002df4:	bf00      	nop
 8002df6:	2203      	movs	r2, #3
 8002df8:	6885      	ldr	r5, [r0, #8]
 8002dfa:	409a      	lsls	r2, r3
 8002dfc:	ea25 0202 	bic.w	r2, r5, r2
 8002e00:	6082      	str	r2, [r0, #8]
 8002e02:	794d      	ldrb	r5, [r1, #5]
 8002e04:	6882      	ldr	r2, [r0, #8]
 8002e06:	409d      	lsls	r5, r3
 8002e08:	4315      	orrs	r5, r2
 8002e0a:	6085      	str	r5, [r0, #8]
 8002e0c:	bf00      	nop
 8002e0e:	8882      	ldrh	r2, [r0, #4]
 8002e10:	b292      	uxth	r2, r2
 8002e12:	ea22 020e 	bic.w	r2, r2, lr
 8002e16:	8082      	strh	r2, [r0, #4]
 8002e18:	798a      	ldrb	r2, [r1, #6]
 8002e1a:	8885      	ldrh	r5, [r0, #4]
 8002e1c:	40a2      	lsls	r2, r4
 8002e1e:	432a      	orrs	r2, r5
 8002e20:	b292      	uxth	r2, r2
 8002e22:	8082      	strh	r2, [r0, #4]
 8002e24:	2203      	movs	r2, #3
 8002e26:	6805      	ldr	r5, [r0, #0]
 8002e28:	409a      	lsls	r2, r3
 8002e2a:	43d2      	mvns	r2, r2
 8002e2c:	4015      	ands	r5, r2
 8002e2e:	6005      	str	r5, [r0, #0]
 8002e30:	6805      	ldr	r5, [r0, #0]
 8002e32:	409f      	lsls	r7, r3
 8002e34:	432f      	orrs	r7, r5
 8002e36:	6007      	str	r7, [r0, #0]
 8002e38:	68c7      	ldr	r7, [r0, #12]
 8002e3a:	4017      	ands	r7, r2
 8002e3c:	79ca      	ldrb	r2, [r1, #7]
 8002e3e:	fa02 f503 	lsl.w	r5, r2, r3
 8002e42:	ea47 0205 	orr.w	r2, r7, r5
 8002e46:	60c2      	str	r2, [r0, #12]
 8002e48:	3401      	adds	r4, #1
 8002e4a:	2c10      	cmp	r4, #16
 8002e4c:	f103 0302 	add.w	r3, r3, #2
 8002e50:	d1c6      	bne.n	8002de0 <GPIO_Init+0x10>
 8002e52:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002e54 <GPIO_SetBits>:
 8002e54:	bf00      	nop
 8002e56:	bf00      	nop
 8002e58:	6181      	str	r1, [r0, #24]
 8002e5a:	4770      	bx	lr

08002e5c <GPIO_ResetBits>:
 8002e5c:	bf00      	nop
 8002e5e:	bf00      	nop
 8002e60:	8501      	strh	r1, [r0, #40]	; 0x28
 8002e62:	4770      	bx	lr

08002e64 <GPIO_PinAFConfig>:
 8002e64:	b510      	push	{r4, lr}
 8002e66:	bf00      	nop
 8002e68:	bf00      	nop
 8002e6a:	bf00      	nop
 8002e6c:	f001 0307 	and.w	r3, r1, #7
 8002e70:	08c9      	lsrs	r1, r1, #3
 8002e72:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002e76:	009b      	lsls	r3, r3, #2
 8002e78:	6a04      	ldr	r4, [r0, #32]
 8002e7a:	210f      	movs	r1, #15
 8002e7c:	4099      	lsls	r1, r3
 8002e7e:	ea24 0101 	bic.w	r1, r4, r1
 8002e82:	6201      	str	r1, [r0, #32]
 8002e84:	6a01      	ldr	r1, [r0, #32]
 8002e86:	409a      	lsls	r2, r3
 8002e88:	430a      	orrs	r2, r1
 8002e8a:	6202      	str	r2, [r0, #32]
 8002e8c:	bd10      	pop	{r4, pc}
	...

08002e90 <EXTI9_5_IRQHandler>:
 8002e90:	4a03      	ldr	r2, [pc, #12]	; (8002ea0 <EXTI9_5_IRQHandler+0x10>)
 8002e92:	6813      	ldr	r3, [r2, #0]
 8002e94:	2006      	movs	r0, #6
 8002e96:	3301      	adds	r3, #1
 8002e98:	6013      	str	r3, [r2, #0]
 8002e9a:	f7ff bf8d 	b.w	8002db8 <EXTI_ClearITPendingBit>
 8002e9e:	bf00      	nop
 8002ea0:	2000108c 	.word	0x2000108c

08002ea4 <EXTI15_10_IRQHandler>:
 8002ea4:	4a03      	ldr	r2, [pc, #12]	; (8002eb4 <EXTI15_10_IRQHandler+0x10>)
 8002ea6:	6813      	ldr	r3, [r2, #0]
 8002ea8:	200c      	movs	r0, #12
 8002eaa:	3301      	adds	r3, #1
 8002eac:	6013      	str	r3, [r2, #0]
 8002eae:	f7ff bf83 	b.w	8002db8 <EXTI_ClearITPendingBit>
 8002eb2:	bf00      	nop
 8002eb4:	20001084 	.word	0x20001084

08002eb8 <led_on>:
 8002eb8:	0403      	lsls	r3, r0, #16
 8002eba:	bf42      	ittt	mi
 8002ebc:	4b02      	ldrmi	r3, [pc, #8]	; (8002ec8 <led_on+0x10>)
 8002ebe:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002ec2:	619a      	strmi	r2, [r3, #24]
 8002ec4:	4770      	bx	lr
 8002ec6:	bf00      	nop
 8002ec8:	48000400 	.word	0x48000400

08002ecc <led_off>:
 8002ecc:	0403      	lsls	r3, r0, #16
 8002ece:	bf42      	ittt	mi
 8002ed0:	4b02      	ldrmi	r3, [pc, #8]	; (8002edc <led_off+0x10>)
 8002ed2:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002ed6:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002ed8:	4770      	bx	lr
 8002eda:	bf00      	nop
 8002edc:	48000400 	.word	0x48000400

08002ee0 <get_key>:
 8002ee0:	4b02      	ldr	r3, [pc, #8]	; (8002eec <get_key+0xc>)
 8002ee2:	8a18      	ldrh	r0, [r3, #16]
 8002ee4:	43c0      	mvns	r0, r0
 8002ee6:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002eea:	4770      	bx	lr
 8002eec:	48000400 	.word	0x48000400

08002ef0 <left_encoder_read>:
 8002ef0:	b082      	sub	sp, #8
 8002ef2:	b672      	cpsid	i
 8002ef4:	4b06      	ldr	r3, [pc, #24]	; (8002f10 <left_encoder_read+0x20>)
 8002ef6:	681b      	ldr	r3, [r3, #0]
 8002ef8:	9301      	str	r3, [sp, #4]
 8002efa:	b662      	cpsie	i
 8002efc:	9801      	ldr	r0, [sp, #4]
 8002efe:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002f02:	4343      	muls	r3, r0
 8002f04:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002f08:	fbb3 f0f0 	udiv	r0, r3, r0
 8002f0c:	b002      	add	sp, #8
 8002f0e:	4770      	bx	lr
 8002f10:	2000108c 	.word	0x2000108c

08002f14 <right_encoder_read>:
 8002f14:	b082      	sub	sp, #8
 8002f16:	b672      	cpsid	i
 8002f18:	4b06      	ldr	r3, [pc, #24]	; (8002f34 <right_encoder_read+0x20>)
 8002f1a:	681b      	ldr	r3, [r3, #0]
 8002f1c:	9301      	str	r3, [sp, #4]
 8002f1e:	b662      	cpsie	i
 8002f20:	9801      	ldr	r0, [sp, #4]
 8002f22:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002f26:	4343      	muls	r3, r0
 8002f28:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002f2c:	fbb3 f0f0 	udiv	r0, r3, r0
 8002f30:	b002      	add	sp, #8
 8002f32:	4770      	bx	lr
 8002f34:	20001084 	.word	0x20001084

08002f38 <encoder_get_distance>:
 8002f38:	b510      	push	{r4, lr}
 8002f3a:	f7ff ffd9 	bl	8002ef0 <left_encoder_read>
 8002f3e:	4604      	mov	r4, r0
 8002f40:	f7ff ffe8 	bl	8002f14 <right_encoder_read>
 8002f44:	4420      	add	r0, r4
 8002f46:	0840      	lsrs	r0, r0, #1
 8002f48:	bd10      	pop	{r4, pc}
	...

08002f4c <encoder_reset>:
 8002f4c:	b672      	cpsid	i
 8002f4e:	4a03      	ldr	r2, [pc, #12]	; (8002f5c <encoder_reset+0x10>)
 8002f50:	2300      	movs	r3, #0
 8002f52:	6013      	str	r3, [r2, #0]
 8002f54:	4a02      	ldr	r2, [pc, #8]	; (8002f60 <encoder_reset+0x14>)
 8002f56:	6013      	str	r3, [r2, #0]
 8002f58:	b662      	cpsie	i
 8002f5a:	4770      	bx	lr
 8002f5c:	2000108c 	.word	0x2000108c
 8002f60:	20001084 	.word	0x20001084

08002f64 <gpio_init>:
 8002f64:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002f68:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002f6c:	b087      	sub	sp, #28
 8002f6e:	2101      	movs	r1, #1
 8002f70:	f7ff f898 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 8002f74:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002f78:	2101      	movs	r1, #1
 8002f7a:	f7ff f893 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 8002f7e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002f82:	2101      	movs	r1, #1
 8002f84:	f7ff f88e 	bl	80020a4 <RCC_AHBPeriphClockCmd>
 8002f88:	2400      	movs	r4, #0
 8002f8a:	2603      	movs	r6, #3
 8002f8c:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002f90:	f04f 0801 	mov.w	r8, #1
 8002f94:	a902      	add	r1, sp, #8
 8002f96:	4846      	ldr	r0, [pc, #280]	; (80030b0 <gpio_init+0x14c>)
 8002f98:	9502      	str	r5, [sp, #8]
 8002f9a:	f88d 800c 	strb.w	r8, [sp, #12]
 8002f9e:	f88d 400e 	strb.w	r4, [sp, #14]
 8002fa2:	f88d 600d 	strb.w	r6, [sp, #13]
 8002fa6:	f88d 400f 	strb.w	r4, [sp, #15]
 8002faa:	f7ff ff11 	bl	8002dd0 <GPIO_Init>
 8002fae:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002fb2:	a902      	add	r1, sp, #8
 8002fb4:	483e      	ldr	r0, [pc, #248]	; (80030b0 <gpio_init+0x14c>)
 8002fb6:	9302      	str	r3, [sp, #8]
 8002fb8:	f88d 400c 	strb.w	r4, [sp, #12]
 8002fbc:	f88d 600d 	strb.w	r6, [sp, #13]
 8002fc0:	f88d 400f 	strb.w	r4, [sp, #15]
 8002fc4:	4f3b      	ldr	r7, [pc, #236]	; (80030b4 <gpio_init+0x150>)
 8002fc6:	f7ff ff03 	bl	8002dd0 <GPIO_Init>
 8002fca:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002fce:	9302      	str	r3, [sp, #8]
 8002fd0:	a902      	add	r1, sp, #8
 8002fd2:	2302      	movs	r3, #2
 8002fd4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002fd8:	603c      	str	r4, [r7, #0]
 8002fda:	f88d 400c 	strb.w	r4, [sp, #12]
 8002fde:	f88d 600d 	strb.w	r6, [sp, #13]
 8002fe2:	f88d 300f 	strb.w	r3, [sp, #15]
 8002fe6:	f7ff fef3 	bl	8002dd0 <GPIO_Init>
 8002fea:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002fee:	2401      	movs	r4, #1
 8002ff0:	8a1b      	ldrh	r3, [r3, #16]
 8002ff2:	4831      	ldr	r0, [pc, #196]	; (80030b8 <gpio_init+0x154>)
 8002ff4:	055b      	lsls	r3, r3, #21
 8002ff6:	4b2e      	ldr	r3, [pc, #184]	; (80030b0 <gpio_init+0x14c>)
 8002ff8:	bf48      	it	mi
 8002ffa:	f8c7 8000 	strmi.w	r8, [r7]
 8002ffe:	2600      	movs	r6, #0
 8003000:	619d      	str	r5, [r3, #24]
 8003002:	a902      	add	r1, sp, #8
 8003004:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8003008:	9302      	str	r3, [sp, #8]
 800300a:	f88d 600c 	strb.w	r6, [sp, #12]
 800300e:	f88d 400f 	strb.w	r4, [sp, #15]
 8003012:	f7ff fedd 	bl	8002dd0 <GPIO_Init>
 8003016:	4620      	mov	r0, r4
 8003018:	4621      	mov	r1, r4
 800301a:	f7ff f851 	bl	80020c0 <RCC_APB2PeriphClockCmd>
 800301e:	f04f 0910 	mov.w	r9, #16
 8003022:	2106      	movs	r1, #6
 8003024:	2002      	movs	r0, #2
 8003026:	f000 f88d 	bl	8003144 <SYSCFG_EXTILineConfig>
 800302a:	f04f 0806 	mov.w	r8, #6
 800302e:	eb0d 0009 	add.w	r0, sp, r9
 8003032:	250f      	movs	r5, #15
 8003034:	f8cd 8010 	str.w	r8, [sp, #16]
 8003038:	f88d 6014 	strb.w	r6, [sp, #20]
 800303c:	f88d 9015 	strb.w	r9, [sp, #21]
 8003040:	f88d 4016 	strb.w	r4, [sp, #22]
 8003044:	f7ff fe32 	bl	8002cac <EXTI_Init>
 8003048:	2317      	movs	r3, #23
 800304a:	a801      	add	r0, sp, #4
 800304c:	f88d 3004 	strb.w	r3, [sp, #4]
 8003050:	f88d 5005 	strb.w	r5, [sp, #5]
 8003054:	f88d 5006 	strb.w	r5, [sp, #6]
 8003058:	f88d 4007 	strb.w	r4, [sp, #7]
 800305c:	f7ff fdda 	bl	8002c14 <NVIC_Init>
 8003060:	210c      	movs	r1, #12
 8003062:	2002      	movs	r0, #2
 8003064:	f000 f86e 	bl	8003144 <SYSCFG_EXTILineConfig>
 8003068:	270c      	movs	r7, #12
 800306a:	eb0d 0009 	add.w	r0, sp, r9
 800306e:	9704      	str	r7, [sp, #16]
 8003070:	f88d 6014 	strb.w	r6, [sp, #20]
 8003074:	f88d 9015 	strb.w	r9, [sp, #21]
 8003078:	f88d 4016 	strb.w	r4, [sp, #22]
 800307c:	f7ff fe16 	bl	8002cac <EXTI_Init>
 8003080:	2328      	movs	r3, #40	; 0x28
 8003082:	a801      	add	r0, sp, #4
 8003084:	f88d 3004 	strb.w	r3, [sp, #4]
 8003088:	f88d 5005 	strb.w	r5, [sp, #5]
 800308c:	f88d 5006 	strb.w	r5, [sp, #6]
 8003090:	f88d 4007 	strb.w	r4, [sp, #7]
 8003094:	f7ff fdbe 	bl	8002c14 <NVIC_Init>
 8003098:	4640      	mov	r0, r8
 800309a:	f7ff fe8d 	bl	8002db8 <EXTI_ClearITPendingBit>
 800309e:	4638      	mov	r0, r7
 80030a0:	f7ff fe8a 	bl	8002db8 <EXTI_ClearITPendingBit>
 80030a4:	f7ff ff52 	bl	8002f4c <encoder_reset>
 80030a8:	b007      	add	sp, #28
 80030aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80030ae:	bf00      	nop
 80030b0:	48000400 	.word	0x48000400
 80030b4:	20001088 	.word	0x20001088
 80030b8:	48000800 	.word	0x48000800

080030bc <Default_Handler>:
 80030bc:	4668      	mov	r0, sp
 80030be:	f020 0107 	bic.w	r1, r0, #7
 80030c2:	468d      	mov	sp, r1
 80030c4:	b501      	push	{r0, lr}
 80030c6:	bf00      	nop
 80030c8:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80030cc:	4685      	mov	sp, r0
 80030ce:	4770      	bx	lr

080030d0 <HardFault_Handler>:
 80030d0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80030d4:	f7ff fef0 	bl	8002eb8 <led_on>
 80030d8:	4b06      	ldr	r3, [pc, #24]	; (80030f4 <HardFault_Handler+0x24>)
 80030da:	3b01      	subs	r3, #1
 80030dc:	d001      	beq.n	80030e2 <HardFault_Handler+0x12>
 80030de:	bf00      	nop
 80030e0:	e7fb      	b.n	80030da <HardFault_Handler+0xa>
 80030e2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80030e6:	f7ff fef1 	bl	8002ecc <led_off>
 80030ea:	4b02      	ldr	r3, [pc, #8]	; (80030f4 <HardFault_Handler+0x24>)
 80030ec:	3b01      	subs	r3, #1
 80030ee:	d0ef      	beq.n	80030d0 <HardFault_Handler>
 80030f0:	bf00      	nop
 80030f2:	e7fb      	b.n	80030ec <HardFault_Handler+0x1c>
 80030f4:	00989681 	.word	0x00989681

080030f8 <_reset_init>:
 80030f8:	490e      	ldr	r1, [pc, #56]	; (8003134 <_reset_init+0x3c>)
 80030fa:	4b0f      	ldr	r3, [pc, #60]	; (8003138 <_reset_init+0x40>)
 80030fc:	1a5b      	subs	r3, r3, r1
 80030fe:	109b      	asrs	r3, r3, #2
 8003100:	2200      	movs	r2, #0
 8003102:	429a      	cmp	r2, r3
 8003104:	d006      	beq.n	8003114 <_reset_init+0x1c>
 8003106:	480d      	ldr	r0, [pc, #52]	; (800313c <_reset_init+0x44>)
 8003108:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 800310c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8003110:	3201      	adds	r2, #1
 8003112:	e7f6      	b.n	8003102 <_reset_init+0xa>
 8003114:	4a0a      	ldr	r2, [pc, #40]	; (8003140 <_reset_init+0x48>)
 8003116:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800311a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800311e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8003122:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8003126:	6853      	ldr	r3, [r2, #4]
 8003128:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 800312c:	6053      	str	r3, [r2, #4]
 800312e:	f7fe be2f 	b.w	8001d90 <main>
 8003132:	bf00      	nop
 8003134:	20000000 	.word	0x20000000
 8003138:	2000051c 	.word	0x2000051c
 800313c:	08004de4 	.word	0x08004de4
 8003140:	e000ed00 	.word	0xe000ed00

08003144 <SYSCFG_EXTILineConfig>:
 8003144:	b510      	push	{r4, lr}
 8003146:	bf00      	nop
 8003148:	bf00      	nop
 800314a:	f001 0303 	and.w	r3, r1, #3
 800314e:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8003152:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003156:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 800315a:	009b      	lsls	r3, r3, #2
 800315c:	688c      	ldr	r4, [r1, #8]
 800315e:	220f      	movs	r2, #15
 8003160:	409a      	lsls	r2, r3
 8003162:	ea24 0202 	bic.w	r2, r4, r2
 8003166:	608a      	str	r2, [r1, #8]
 8003168:	688a      	ldr	r2, [r1, #8]
 800316a:	4098      	lsls	r0, r3
 800316c:	4310      	orrs	r0, r2
 800316e:	6088      	str	r0, [r1, #8]
 8003170:	bd10      	pop	{r4, pc}
	...

08003174 <selfrel_offset31>:
 8003174:	e5903000 	ldr	r3, [r0]
 8003178:	e3130101 	tst	r3, #1073741824	; 0x40000000
 800317c:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8003180:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8003184:	e0800003 	add	r0, r0, r3
 8003188:	e12fff1e 	bx	lr

0800318c <search_EIT_table>:
 800318c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003190:	e3510000 	cmp	r1, #0
 8003194:	e24dd00c 	sub	sp, sp, #12
 8003198:	0a000029 	beq	8003244 <search_EIT_table+0xb8>
 800319c:	e2413001 	sub	r3, r1, #1
 80031a0:	e1a07002 	mov	r7, r2
 80031a4:	e1a05000 	mov	r5, r0
 80031a8:	e1a08003 	mov	r8, r3
 80031ac:	e3a06000 	mov	r6, #0
 80031b0:	e58d3004 	str	r3, [sp, #4]
 80031b4:	e0864008 	add	r4, r6, r8
 80031b8:	e0844fa4 	add	r4, r4, r4, lsr #31
 80031bc:	e1a040c4 	asr	r4, r4, #1
 80031c0:	e1a0a184 	lsl	sl, r4, #3
 80031c4:	e085b00a 	add	fp, r5, sl
 80031c8:	e1a0000b 	mov	r0, fp
 80031cc:	ebffffe8 	bl	8003174 <selfrel_offset31>
 80031d0:	e59d3004 	ldr	r3, [sp, #4]
 80031d4:	e1a09000 	mov	r9, r0
 80031d8:	e1530004 	cmp	r3, r4
 80031dc:	e28a0008 	add	r0, sl, #8
 80031e0:	e0850000 	add	r0, r5, r0
 80031e4:	0a00000b 	beq	8003218 <search_EIT_table+0x8c>
 80031e8:	ebffffe1 	bl	8003174 <selfrel_offset31>
 80031ec:	e1590007 	cmp	r9, r7
 80031f0:	e2400001 	sub	r0, r0, #1
 80031f4:	9a000003 	bls	8003208 <search_EIT_table+0x7c>
 80031f8:	e1540006 	cmp	r4, r6
 80031fc:	0a00000b 	beq	8003230 <search_EIT_table+0xa4>
 8003200:	e2448001 	sub	r8, r4, #1
 8003204:	eaffffea 	b	80031b4 <search_EIT_table+0x28>
 8003208:	e1500007 	cmp	r0, r7
 800320c:	2a000003 	bcs	8003220 <search_EIT_table+0x94>
 8003210:	e2846001 	add	r6, r4, #1
 8003214:	eaffffe6 	b	80031b4 <search_EIT_table+0x28>
 8003218:	e1590007 	cmp	r9, r7
 800321c:	8afffff5 	bhi	80031f8 <search_EIT_table+0x6c>
 8003220:	e1a0000b 	mov	r0, fp
 8003224:	e28dd00c 	add	sp, sp, #12
 8003228:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800322c:	e12fff1e 	bx	lr
 8003230:	e3a0b000 	mov	fp, #0
 8003234:	e1a0000b 	mov	r0, fp
 8003238:	e28dd00c 	add	sp, sp, #12
 800323c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003240:	e12fff1e 	bx	lr
 8003244:	e1a0b001 	mov	fp, r1
 8003248:	e1a0000b 	mov	r0, fp
 800324c:	e28dd00c 	add	sp, sp, #12
 8003250:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003254:	e12fff1e 	bx	lr

08003258 <__gnu_unwind_get_pr_addr>:
 8003258:	e3500001 	cmp	r0, #1
 800325c:	0a000006 	beq	800327c <__gnu_unwind_get_pr_addr+0x24>
 8003260:	e3500002 	cmp	r0, #2
 8003264:	0a000006 	beq	8003284 <__gnu_unwind_get_pr_addr+0x2c>
 8003268:	e59f301c 	ldr	r3, [pc, #28]	; 800328c <__gnu_unwind_get_pr_addr+0x34>
 800326c:	e3500000 	cmp	r0, #0
 8003270:	01a00003 	moveq	r0, r3
 8003274:	13a00000 	movne	r0, #0
 8003278:	e12fff1e 	bx	lr
 800327c:	e59f000c 	ldr	r0, [pc, #12]	; 8003290 <__gnu_unwind_get_pr_addr+0x38>
 8003280:	e12fff1e 	bx	lr
 8003284:	e59f0008 	ldr	r0, [pc, #8]	; 8003294 <__gnu_unwind_get_pr_addr+0x3c>
 8003288:	e12fff1e 	bx	lr
 800328c:	08003e00 	.word	0x08003e00
 8003290:	08003e08 	.word	0x08003e08
 8003294:	08003e10 	.word	0x08003e10

08003298 <get_eit_entry>:
 8003298:	e92d4030 	push	{r4, r5, lr}
 800329c:	e59f3118 	ldr	r3, [pc, #280]	; 80033bc <get_eit_entry+0x124>
 80032a0:	e3530000 	cmp	r3, #0
 80032a4:	e24dd00c 	sub	sp, sp, #12
 80032a8:	e1a04000 	mov	r4, r0
 80032ac:	e2415002 	sub	r5, r1, #2
 80032b0:	0a00002d 	beq	800336c <get_eit_entry+0xd4>
 80032b4:	e1a00005 	mov	r0, r5
 80032b8:	e28d1004 	add	r1, sp, #4
 80032bc:	e320f000 	nop	{0}
 80032c0:	e3500000 	cmp	r0, #0
 80032c4:	0a000021 	beq	8003350 <get_eit_entry+0xb8>
 80032c8:	e59d1004 	ldr	r1, [sp, #4]
 80032cc:	e1a02005 	mov	r2, r5
 80032d0:	ebffffad 	bl	800318c <search_EIT_table>
 80032d4:	e2505000 	subs	r5, r0, #0
 80032d8:	0a00001c 	beq	8003350 <get_eit_entry+0xb8>
 80032dc:	ebffffa4 	bl	8003174 <selfrel_offset31>
 80032e0:	e5953004 	ldr	r3, [r5, #4]
 80032e4:	e3530001 	cmp	r3, #1
 80032e8:	e5840048 	str	r0, [r4, #72]	; 0x48
 80032ec:	0a000010 	beq	8003334 <get_eit_entry+0x9c>
 80032f0:	e3530000 	cmp	r3, #0
 80032f4:	ba000023 	blt	8003388 <get_eit_entry+0xf0>
 80032f8:	e2850004 	add	r0, r5, #4
 80032fc:	ebffff9c 	bl	8003174 <selfrel_offset31>
 8003300:	e3a03000 	mov	r3, #0
 8003304:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003308:	e5843050 	str	r3, [r4, #80]	; 0x50
 800330c:	e5903000 	ldr	r3, [r0]
 8003310:	e3530000 	cmp	r3, #0
 8003314:	ba000020 	blt	800339c <get_eit_entry+0x104>
 8003318:	ebffff95 	bl	8003174 <selfrel_offset31>
 800331c:	e3a03000 	mov	r3, #0
 8003320:	e5840010 	str	r0, [r4, #16]
 8003324:	e1a00003 	mov	r0, r3
 8003328:	e28dd00c 	add	sp, sp, #12
 800332c:	e8bd4030 	pop	{r4, r5, lr}
 8003330:	e12fff1e 	bx	lr
 8003334:	e3a03005 	mov	r3, #5
 8003338:	e3a02000 	mov	r2, #0
 800333c:	e1a00003 	mov	r0, r3
 8003340:	e5842010 	str	r2, [r4, #16]
 8003344:	e28dd00c 	add	sp, sp, #12
 8003348:	e8bd4030 	pop	{r4, r5, lr}
 800334c:	e12fff1e 	bx	lr
 8003350:	e3a03009 	mov	r3, #9
 8003354:	e3a02000 	mov	r2, #0
 8003358:	e1a00003 	mov	r0, r3
 800335c:	e5842010 	str	r2, [r4, #16]
 8003360:	e28dd00c 	add	sp, sp, #12
 8003364:	e8bd4030 	pop	{r4, r5, lr}
 8003368:	e12fff1e 	bx	lr
 800336c:	e59f104c 	ldr	r1, [pc, #76]	; 80033c0 <get_eit_entry+0x128>
 8003370:	e59f304c 	ldr	r3, [pc, #76]	; 80033c4 <get_eit_entry+0x12c>
 8003374:	e1a00001 	mov	r0, r1
 8003378:	e0611003 	rsb	r1, r1, r3
 800337c:	e1a011c1 	asr	r1, r1, #3
 8003380:	e58d1004 	str	r1, [sp, #4]
 8003384:	eaffffd0 	b	80032cc <get_eit_entry+0x34>
 8003388:	e3a03001 	mov	r3, #1
 800338c:	e2850004 	add	r0, r5, #4
 8003390:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003394:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003398:	eaffffdb 	b	800330c <get_eit_entry+0x74>
 800339c:	e1a00c23 	lsr	r0, r3, #24
 80033a0:	e200000f 	and	r0, r0, #15
 80033a4:	ebffffab 	bl	8003258 <__gnu_unwind_get_pr_addr>
 80033a8:	e3500000 	cmp	r0, #0
 80033ac:	e5840010 	str	r0, [r4, #16]
 80033b0:	03a03009 	moveq	r3, #9
 80033b4:	13a03000 	movne	r3, #0
 80033b8:	eaffffd9 	b	8003324 <get_eit_entry+0x8c>
 80033bc:	00000000 	.word	0x00000000
 80033c0:	08004c6c 	.word	0x08004c6c
 80033c4:	08004de4 	.word	0x08004de4

080033c8 <restore_non_core_regs>:
 80033c8:	e5903000 	ldr	r3, [r0]
 80033cc:	e3130001 	tst	r3, #1
 80033d0:	e92d4010 	push	{r4, lr}
 80033d4:	e1a04000 	mov	r4, r0
 80033d8:	1a000004 	bne	80033f0 <restore_non_core_regs+0x28>
 80033dc:	e3130002 	tst	r3, #2
 80033e0:	e2800048 	add	r0, r0, #72	; 0x48
 80033e4:	0a00000a 	beq	8003414 <restore_non_core_regs+0x4c>
 80033e8:	eb0003a2 	bl	8004278 <__gnu_Unwind_Restore_VFP_D>
 80033ec:	e5943000 	ldr	r3, [r4]
 80033f0:	e3130004 	tst	r3, #4
 80033f4:	0a00000a 	beq	8003424 <restore_non_core_regs+0x5c>
 80033f8:	e3130008 	tst	r3, #8
 80033fc:	0a00000d 	beq	8003438 <restore_non_core_regs+0x70>
 8003400:	e3130010 	tst	r3, #16
 8003404:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8003408:	0b0003c4 	bleq	8004320 <__gnu_Unwind_Restore_WMMXC>
 800340c:	e8bd4010 	pop	{r4, lr}
 8003410:	e12fff1e 	bx	lr
 8003414:	eb000393 	bl	8004268 <__gnu_Unwind_Restore_VFP>
 8003418:	e5943000 	ldr	r3, [r4]
 800341c:	e3130004 	tst	r3, #4
 8003420:	1afffff4 	bne	80033f8 <restore_non_core_regs+0x30>
 8003424:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003428:	eb000396 	bl	8004288 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 800342c:	e5943000 	ldr	r3, [r4]
 8003430:	e3130008 	tst	r3, #8
 8003434:	1afffff1 	bne	8003400 <restore_non_core_regs+0x38>
 8003438:	e2840e15 	add	r0, r4, #336	; 0x150
 800343c:	eb000395 	bl	8004298 <__gnu_Unwind_Restore_WMMXD>
 8003440:	e5943000 	ldr	r3, [r4]
 8003444:	eaffffed 	b	8003400 <restore_non_core_regs+0x38>

08003448 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003448:	e5903000 	ldr	r3, [r0]
 800344c:	e3530000 	cmp	r3, #0
 8003450:	10830000 	addne	r0, r3, r0
 8003454:	01a00003 	moveq	r0, r3
 8003458:	e12fff1e 	bx	lr

0800345c <__gnu_unwind_24bit.isra.1>:
 800345c:	e3a00009 	mov	r0, #9
 8003460:	e12fff1e 	bx	lr

08003464 <_Unwind_DebugHook>:
 8003464:	e12fff1e 	bx	lr

08003468 <unwind_phase2>:
 8003468:	e92d4070 	push	{r4, r5, r6, lr}
 800346c:	e1a04000 	mov	r4, r0
 8003470:	e1a05001 	mov	r5, r1
 8003474:	ea000009 	b	80034a0 <unwind_phase2+0x38>
 8003478:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 800347c:	e3a00001 	mov	r0, #1
 8003480:	e5843014 	str	r3, [r4, #20]
 8003484:	e1a01004 	mov	r1, r4
 8003488:	e1a02005 	mov	r2, r5
 800348c:	e594c010 	ldr	ip, [r4, #16]
 8003490:	e1a0e00f 	mov	lr, pc
 8003494:	e12fff1c 	bx	ip
 8003498:	e3500008 	cmp	r0, #8
 800349c:	1a000005 	bne	80034b8 <unwind_phase2+0x50>
 80034a0:	e1a00004 	mov	r0, r4
 80034a4:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80034a8:	ebffff7a 	bl	8003298 <get_eit_entry>
 80034ac:	e2506000 	subs	r6, r0, #0
 80034b0:	0afffff0 	beq	8003478 <unwind_phase2+0x10>
 80034b4:	eb000509 	bl	80048e0 <abort>
 80034b8:	e3500007 	cmp	r0, #7
 80034bc:	1afffffc 	bne	80034b4 <unwind_phase2+0x4c>
 80034c0:	e1a00006 	mov	r0, r6
 80034c4:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80034c8:	ebffffe5 	bl	8003464 <_Unwind_DebugHook>
 80034cc:	e2850004 	add	r0, r5, #4
 80034d0:	eb00035d 	bl	800424c <__restore_core_regs>

080034d4 <unwind_phase2_forced>:
 80034d4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 80034d8:	e1a05000 	mov	r5, r0
 80034dc:	e1a06002 	mov	r6, r2
 80034e0:	e3a04000 	mov	r4, #0
 80034e4:	e281e004 	add	lr, r1, #4
 80034e8:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 80034ec:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034f0:	e28dc00c 	add	ip, sp, #12
 80034f4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034f8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034fc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003500:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003504:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003508:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 800350c:	e1560004 	cmp	r6, r4
 8003510:	e595800c 	ldr	r8, [r5, #12]
 8003514:	e5959018 	ldr	r9, [r5, #24]
 8003518:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 800351c:	e1a00005 	mov	r0, r5
 8003520:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003524:	e58d4008 	str	r4, [sp, #8]
 8003528:	03a06009 	moveq	r6, #9
 800352c:	13a0600a 	movne	r6, #10
 8003530:	ebffff58 	bl	8003298 <get_eit_entry>
 8003534:	e1a04000 	mov	r4, r0
 8003538:	e28d7008 	add	r7, sp, #8
 800353c:	e3540000 	cmp	r4, #0
 8003540:	0a00000e 	beq	8003580 <unwind_phase2_forced+0xac>
 8003544:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003548:	e88d0280 	stm	sp, {r7, r9}
 800354c:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8003550:	e3861010 	orr	r1, r6, #16
 8003554:	e3a00001 	mov	r0, #1
 8003558:	e1a02005 	mov	r2, r5
 800355c:	e1a03005 	mov	r3, r5
 8003560:	e1a0e00f 	mov	lr, pc
 8003564:	e12fff18 	bx	r8
 8003568:	e3500000 	cmp	r0, #0
 800356c:	1a000029 	bne	8003618 <unwind_phase2_forced+0x144>
 8003570:	e1a00004 	mov	r0, r4
 8003574:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003578:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 800357c:	e12fff1e 	bx	lr
 8003580:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8003584:	e1a01007 	mov	r1, r7
 8003588:	e5853014 	str	r3, [r5, #20]
 800358c:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003590:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8003594:	eb0004d6 	bl	80048f4 <memcpy>
 8003598:	e1a01005 	mov	r1, r5
 800359c:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 80035a0:	e1a00006 	mov	r0, r6
 80035a4:	e595c010 	ldr	ip, [r5, #16]
 80035a8:	e1a0e00f 	mov	lr, pc
 80035ac:	e12fff1c 	bx	ip
 80035b0:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80035b4:	e1a0a000 	mov	sl, r0
 80035b8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80035bc:	e88d0280 	stm	sp, {r7, r9}
 80035c0:	e1a01006 	mov	r1, r6
 80035c4:	e3a00001 	mov	r0, #1
 80035c8:	e1a02005 	mov	r2, r5
 80035cc:	e1a03005 	mov	r3, r5
 80035d0:	e1a0e00f 	mov	lr, pc
 80035d4:	e12fff18 	bx	r8
 80035d8:	e3500000 	cmp	r0, #0
 80035dc:	1a00000d 	bne	8003618 <unwind_phase2_forced+0x144>
 80035e0:	e1a00007 	mov	r0, r7
 80035e4:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 80035e8:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80035ec:	eb0004c0 	bl	80048f4 <memcpy>
 80035f0:	e35a0008 	cmp	sl, #8
 80035f4:	1a000005 	bne	8003610 <unwind_phase2_forced+0x13c>
 80035f8:	e1a00005 	mov	r0, r5
 80035fc:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003600:	ebffff24 	bl	8003298 <get_eit_entry>
 8003604:	e3a06009 	mov	r6, #9
 8003608:	e1a04000 	mov	r4, r0
 800360c:	eaffffca 	b	800353c <unwind_phase2_forced+0x68>
 8003610:	e35a0007 	cmp	sl, #7
 8003614:	0a000003 	beq	8003628 <unwind_phase2_forced+0x154>
 8003618:	e3a00009 	mov	r0, #9
 800361c:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003620:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003624:	e12fff1e 	bx	lr
 8003628:	e1a00004 	mov	r0, r4
 800362c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003630:	ebffff8b 	bl	8003464 <_Unwind_DebugHook>
 8003634:	e28d000c 	add	r0, sp, #12
 8003638:	eb000303 	bl	800424c <__restore_core_regs>

0800363c <_Unwind_GetCFA>:
 800363c:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8003640:	e12fff1e 	bx	lr

08003644 <__gnu_Unwind_RaiseException>:
 8003644:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003648:	e3e05000 	mvn	r5, #0
 800364c:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 8003650:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003654:	e281e004 	add	lr, r1, #4
 8003658:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 800365c:	e1a07001 	mov	r7, r1
 8003660:	e1a04000 	mov	r4, r0
 8003664:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003668:	e28dc004 	add	ip, sp, #4
 800366c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003670:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003674:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003678:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800367c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003680:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003684:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8003688:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 800368c:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 8003690:	ea000007 	b	80036b4 <__gnu_Unwind_RaiseException+0x70>
 8003694:	e1a01004 	mov	r1, r4
 8003698:	e1a02006 	mov	r2, r6
 800369c:	e594c010 	ldr	ip, [r4, #16]
 80036a0:	e1a0e00f 	mov	lr, pc
 80036a4:	e12fff1c 	bx	ip
 80036a8:	e3500008 	cmp	r0, #8
 80036ac:	e1a05000 	mov	r5, r0
 80036b0:	1a000008 	bne	80036d8 <__gnu_Unwind_RaiseException+0x94>
 80036b4:	e1a00004 	mov	r0, r4
 80036b8:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80036bc:	ebfffef5 	bl	8003298 <get_eit_entry>
 80036c0:	e3500000 	cmp	r0, #0
 80036c4:	0afffff2 	beq	8003694 <__gnu_Unwind_RaiseException+0x50>
 80036c8:	e3a00009 	mov	r0, #9
 80036cc:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80036d0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 80036d4:	e12fff1e 	bx	lr
 80036d8:	e1a00006 	mov	r0, r6
 80036dc:	ebffff39 	bl	80033c8 <restore_non_core_regs>
 80036e0:	e3550006 	cmp	r5, #6
 80036e4:	1afffff7 	bne	80036c8 <__gnu_Unwind_RaiseException+0x84>
 80036e8:	e1a00004 	mov	r0, r4
 80036ec:	e1a01007 	mov	r1, r7
 80036f0:	ebffff5c 	bl	8003468 <unwind_phase2>

080036f4 <__gnu_Unwind_ForcedUnwind>:
 80036f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80036f8:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 80036fc:	e580100c 	str	r1, [r0, #12]
 8003700:	e5802018 	str	r2, [r0, #24]
 8003704:	e1a01003 	mov	r1, r3
 8003708:	e583e040 	str	lr, [r3, #64]	; 0x40
 800370c:	e3a02000 	mov	r2, #0
 8003710:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003714:	eaffff6e 	b	80034d4 <unwind_phase2_forced>

08003718 <__gnu_Unwind_Resume>:
 8003718:	e92d4070 	push	{r4, r5, r6, lr}
 800371c:	e590600c 	ldr	r6, [r0, #12]
 8003720:	e5903014 	ldr	r3, [r0, #20]
 8003724:	e3560000 	cmp	r6, #0
 8003728:	e1a04000 	mov	r4, r0
 800372c:	e1a05001 	mov	r5, r1
 8003730:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003734:	0a000002 	beq	8003744 <__gnu_Unwind_Resume+0x2c>
 8003738:	e3a02001 	mov	r2, #1
 800373c:	ebffff64 	bl	80034d4 <unwind_phase2_forced>
 8003740:	eb000466 	bl	80048e0 <abort>
 8003744:	e3a00002 	mov	r0, #2
 8003748:	e1a01004 	mov	r1, r4
 800374c:	e1a02005 	mov	r2, r5
 8003750:	e594c010 	ldr	ip, [r4, #16]
 8003754:	e1a0e00f 	mov	lr, pc
 8003758:	e12fff1c 	bx	ip
 800375c:	e3500007 	cmp	r0, #7
 8003760:	0a000004 	beq	8003778 <__gnu_Unwind_Resume+0x60>
 8003764:	e3500008 	cmp	r0, #8
 8003768:	01a00004 	moveq	r0, r4
 800376c:	01a01005 	moveq	r1, r5
 8003770:	0bffff3c 	bleq	8003468 <unwind_phase2>
 8003774:	eb000459 	bl	80048e0 <abort>
 8003778:	e1a00006 	mov	r0, r6
 800377c:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003780:	ebffff37 	bl	8003464 <_Unwind_DebugHook>
 8003784:	e2850004 	add	r0, r5, #4
 8003788:	eb0002af 	bl	800424c <__restore_core_regs>

0800378c <__gnu_Unwind_Resume_or_Rethrow>:
 800378c:	e590300c 	ldr	r3, [r0, #12]
 8003790:	e3530000 	cmp	r3, #0
 8003794:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003798:	13a02000 	movne	r2, #0
 800379c:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80037a0:	1affff4b 	bne	80034d4 <unwind_phase2_forced>
 80037a4:	eaffffa6 	b	8003644 <__gnu_Unwind_RaiseException>

080037a8 <_Unwind_Complete>:
 80037a8:	e12fff1e 	bx	lr

080037ac <_Unwind_DeleteException>:
 80037ac:	e5903008 	ldr	r3, [r0, #8]
 80037b0:	e3530000 	cmp	r3, #0
 80037b4:	012fff1e 	bxeq	lr
 80037b8:	e1a01000 	mov	r1, r0
 80037bc:	e3a00001 	mov	r0, #1
 80037c0:	e12fff13 	bx	r3

080037c4 <_Unwind_VRS_Get>:
 80037c4:	e3510004 	cmp	r1, #4
 80037c8:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80037cc:	ea000009 	b	80037f8 <_Unwind_VRS_Get+0x34>
 80037d0:	080037e4 	.word	0x080037e4
 80037d4:	08003800 	.word	0x08003800
 80037d8:	080037f8 	.word	0x080037f8
 80037dc:	08003800 	.word	0x08003800
 80037e0:	08003800 	.word	0x08003800
 80037e4:	e352000f 	cmp	r2, #15
 80037e8:	93530000 	cmpls	r3, #0
 80037ec:	13a03001 	movne	r3, #1
 80037f0:	03a03000 	moveq	r3, #0
 80037f4:	0a000003 	beq	8003808 <_Unwind_VRS_Get+0x44>
 80037f8:	e3a00002 	mov	r0, #2
 80037fc:	e12fff1e 	bx	lr
 8003800:	e3a00001 	mov	r0, #1
 8003804:	e12fff1e 	bx	lr
 8003808:	e0802102 	add	r2, r0, r2, lsl #2
 800380c:	e5922004 	ldr	r2, [r2, #4]
 8003810:	e1a00003 	mov	r0, r3
 8003814:	e59d3000 	ldr	r3, [sp]
 8003818:	e5832000 	str	r2, [r3]
 800381c:	e12fff1e 	bx	lr

08003820 <_Unwind_GetGR>:
 8003820:	e1a02001 	mov	r2, r1
 8003824:	e3a01000 	mov	r1, #0
 8003828:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800382c:	e24dd014 	sub	sp, sp, #20
 8003830:	e28dc00c 	add	ip, sp, #12
 8003834:	e1a03001 	mov	r3, r1
 8003838:	e58dc000 	str	ip, [sp]
 800383c:	ebffffe0 	bl	80037c4 <_Unwind_VRS_Get>
 8003840:	e59d000c 	ldr	r0, [sp, #12]
 8003844:	e28dd014 	add	sp, sp, #20
 8003848:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 800384c:	e12fff1e 	bx	lr

08003850 <_Unwind_VRS_Set>:
 8003850:	e3510004 	cmp	r1, #4
 8003854:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003858:	ea000009 	b	8003884 <_Unwind_VRS_Set+0x34>
 800385c:	08003870 	.word	0x08003870
 8003860:	0800388c 	.word	0x0800388c
 8003864:	08003884 	.word	0x08003884
 8003868:	0800388c 	.word	0x0800388c
 800386c:	0800388c 	.word	0x0800388c
 8003870:	e352000f 	cmp	r2, #15
 8003874:	93530000 	cmpls	r3, #0
 8003878:	13a03001 	movne	r3, #1
 800387c:	03a03000 	moveq	r3, #0
 8003880:	0a000003 	beq	8003894 <_Unwind_VRS_Set+0x44>
 8003884:	e3a00002 	mov	r0, #2
 8003888:	e12fff1e 	bx	lr
 800388c:	e3a00001 	mov	r0, #1
 8003890:	e12fff1e 	bx	lr
 8003894:	e59d1000 	ldr	r1, [sp]
 8003898:	e5911000 	ldr	r1, [r1]
 800389c:	e0802102 	add	r2, r0, r2, lsl #2
 80038a0:	e5821004 	str	r1, [r2, #4]
 80038a4:	e1a00003 	mov	r0, r3
 80038a8:	e12fff1e 	bx	lr

080038ac <_Unwind_SetGR>:
 80038ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80038b0:	e1a0e001 	mov	lr, r1
 80038b4:	e3a01000 	mov	r1, #0
 80038b8:	e24dd014 	sub	sp, sp, #20
 80038bc:	e28dc010 	add	ip, sp, #16
 80038c0:	e52c2004 	str	r2, [ip, #-4]!
 80038c4:	e1a03001 	mov	r3, r1
 80038c8:	e58dc000 	str	ip, [sp]
 80038cc:	e1a0200e 	mov	r2, lr
 80038d0:	ebffffde 	bl	8003850 <_Unwind_VRS_Set>
 80038d4:	e28dd014 	add	sp, sp, #20
 80038d8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80038dc:	e12fff1e 	bx	lr

080038e0 <__gnu_Unwind_Backtrace>:
 80038e0:	e92d4070 	push	{r4, r5, r6, lr}
 80038e4:	e3e04000 	mvn	r4, #0
 80038e8:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 80038ec:	e5823040 	str	r3, [r2, #64]	; 0x40
 80038f0:	e282c004 	add	ip, r2, #4
 80038f4:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 80038f8:	e1a06000 	mov	r6, r0
 80038fc:	e1a05001 	mov	r5, r1
 8003900:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003904:	e28de05c 	add	lr, sp, #92	; 0x5c
 8003908:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 800390c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003910:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003914:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003918:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 800391c:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8003920:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003924:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003928:	ea000013 	b	800397c <__gnu_Unwind_Backtrace+0x9c>
 800392c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003930:	e3a0100c 	mov	r1, #12
 8003934:	e1a0200d 	mov	r2, sp
 8003938:	ebffffdb 	bl	80038ac <_Unwind_SetGR>
 800393c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003940:	e1a01005 	mov	r1, r5
 8003944:	e1a0e00f 	mov	lr, pc
 8003948:	e12fff16 	bx	r6
 800394c:	e3500000 	cmp	r0, #0
 8003950:	1a00000e 	bne	8003990 <__gnu_Unwind_Backtrace+0xb0>
 8003954:	e3a00008 	mov	r0, #8
 8003958:	e1a0100d 	mov	r1, sp
 800395c:	e28d2058 	add	r2, sp, #88	; 0x58
 8003960:	e59dc010 	ldr	ip, [sp, #16]
 8003964:	e1a0e00f 	mov	lr, pc
 8003968:	e12fff1c 	bx	ip
 800396c:	e2403005 	sub	r3, r0, #5
 8003970:	e31300fb 	tst	r3, #251	; 0xfb
 8003974:	e1a04000 	mov	r4, r0
 8003978:	0a000005 	beq	8003994 <__gnu_Unwind_Backtrace+0xb4>
 800397c:	e1a0000d 	mov	r0, sp
 8003980:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003984:	ebfffe43 	bl	8003298 <get_eit_entry>
 8003988:	e3500000 	cmp	r0, #0
 800398c:	0affffe6 	beq	800392c <__gnu_Unwind_Backtrace+0x4c>
 8003990:	e3a04009 	mov	r4, #9
 8003994:	e28d0058 	add	r0, sp, #88	; 0x58
 8003998:	ebfffe8a 	bl	80033c8 <restore_non_core_regs>
 800399c:	e1a00004 	mov	r0, r4
 80039a0:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80039a4:	e8bd4070 	pop	{r4, r5, r6, lr}
 80039a8:	e12fff1e 	bx	lr

080039ac <__gnu_unwind_pr_common>:
 80039ac:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80039b0:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80039b4:	e1a05001 	mov	r5, r1
 80039b8:	e5961000 	ldr	r1, [r6]
 80039bc:	e24dd024 	sub	sp, sp, #36	; 0x24
 80039c0:	e2866004 	add	r6, r6, #4
 80039c4:	e2537000 	subs	r7, r3, #0
 80039c8:	e58d0004 	str	r0, [sp, #4]
 80039cc:	e1a09002 	mov	r9, r2
 80039d0:	e58d1014 	str	r1, [sp, #20]
 80039d4:	e58d6018 	str	r6, [sp, #24]
 80039d8:	e2008003 	and	r8, r0, #3
 80039dc:	1a000076 	bne	8003bbc <__gnu_unwind_pr_common+0x210>
 80039e0:	e3a03003 	mov	r3, #3
 80039e4:	e1a01401 	lsl	r1, r1, #8
 80039e8:	e58d1014 	str	r1, [sp, #20]
 80039ec:	e5cd701d 	strb	r7, [sp, #29]
 80039f0:	e5cd301c 	strb	r3, [sp, #28]
 80039f4:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 80039f8:	e3580002 	cmp	r8, #2
 80039fc:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003a00:	e2133001 	ands	r3, r3, #1
 8003a04:	1a000061 	bne	8003b90 <__gnu_unwind_pr_common+0x1e4>
 8003a08:	e58d3000 	str	r3, [sp]
 8003a0c:	e2853058 	add	r3, r5, #88	; 0x58
 8003a10:	e58d3008 	str	r3, [sp, #8]
 8003a14:	e5964000 	ldr	r4, [r6]
 8003a18:	e3540000 	cmp	r4, #0
 8003a1c:	0a00005d 	beq	8003b98 <__gnu_unwind_pr_common+0x1ec>
 8003a20:	e3570002 	cmp	r7, #2
 8003a24:	0596b004 	ldreq	fp, [r6, #4]
 8003a28:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003a2c:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003a30:	e3cba001 	bic	sl, fp, #1
 8003a34:	e1a00009 	mov	r0, r9
 8003a38:	e3a0100f 	mov	r1, #15
 8003a3c:	11d640b0 	ldrhne	r4, [r6]
 8003a40:	02866008 	addeq	r6, r6, #8
 8003a44:	12866004 	addne	r6, r6, #4
 8003a48:	e08aa003 	add	sl, sl, r3
 8003a4c:	ebffff73 	bl	8003820 <_Unwind_GetGR>
 8003a50:	e15a0000 	cmp	sl, r0
 8003a54:	e20bb001 	and	fp, fp, #1
 8003a58:	8a00003c 	bhi	8003b50 <__gnu_unwind_pr_common+0x1a4>
 8003a5c:	e3c43001 	bic	r3, r4, #1
 8003a60:	e08aa003 	add	sl, sl, r3
 8003a64:	e150000a 	cmp	r0, sl
 8003a68:	2a000038 	bcs	8003b50 <__gnu_unwind_pr_common+0x1a4>
 8003a6c:	e2044001 	and	r4, r4, #1
 8003a70:	e184408b 	orr	r4, r4, fp, lsl #1
 8003a74:	e3540001 	cmp	r4, #1
 8003a78:	0a00005e 	beq	8003bf8 <__gnu_unwind_pr_common+0x24c>
 8003a7c:	3a000059 	bcc	8003be8 <__gnu_unwind_pr_common+0x23c>
 8003a80:	e3540002 	cmp	r4, #2
 8003a84:	1a000048 	bne	8003bac <__gnu_unwind_pr_common+0x200>
 8003a88:	e5963000 	ldr	r3, [r6]
 8003a8c:	e3580000 	cmp	r8, #0
 8003a90:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003a94:	1a000090 	bne	8003cdc <__gnu_unwind_pr_common+0x330>
 8003a98:	e59d2004 	ldr	r2, [sp, #4]
 8003a9c:	e3120008 	tst	r2, #8
 8003aa0:	03a02001 	moveq	r2, #1
 8003aa4:	13a02000 	movne	r2, #0
 8003aa8:	e3540000 	cmp	r4, #0
 8003aac:	03822001 	orreq	r2, r2, #1
 8003ab0:	e3520000 	cmp	r2, #0
 8003ab4:	0a000030 	beq	8003b7c <__gnu_unwind_pr_common+0x1d0>
 8003ab8:	e3540000 	cmp	r4, #0
 8003abc:	0a00001a 	beq	8003b2c <__gnu_unwind_pr_common+0x180>
 8003ac0:	e1a0a007 	mov	sl, r7
 8003ac4:	e286b004 	add	fp, r6, #4
 8003ac8:	e1a07004 	mov	r7, r4
 8003acc:	e58d800c 	str	r8, [sp, #12]
 8003ad0:	e59d4008 	ldr	r4, [sp, #8]
 8003ad4:	ea000003 	b	8003ae8 <__gnu_unwind_pr_common+0x13c>
 8003ad8:	e1530007 	cmp	r3, r7
 8003adc:	e1a08003 	mov	r8, r3
 8003ae0:	e28bb004 	add	fp, fp, #4
 8003ae4:	0a000010 	beq	8003b2c <__gnu_unwind_pr_common+0x180>
 8003ae8:	e1a0000b 	mov	r0, fp
 8003aec:	e58d4010 	str	r4, [sp, #16]
 8003af0:	ebfffe54 	bl	8003448 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003af4:	e28d3010 	add	r3, sp, #16
 8003af8:	e1a01000 	mov	r1, r0
 8003afc:	e3a02000 	mov	r2, #0
 8003b00:	e1a00005 	mov	r0, r5
 8003b04:	e320f000 	nop	{0}
 8003b08:	e3500000 	cmp	r0, #0
 8003b0c:	e2883001 	add	r3, r8, #1
 8003b10:	0afffff0 	beq	8003ad8 <__gnu_unwind_pr_common+0x12c>
 8003b14:	e1a04007 	mov	r4, r7
 8003b18:	e1a0700a 	mov	r7, sl
 8003b1c:	e1a0a008 	mov	sl, r8
 8003b20:	e15a0004 	cmp	sl, r4
 8003b24:	e59d800c 	ldr	r8, [sp, #12]
 8003b28:	1a000071 	bne	8003cf4 <__gnu_unwind_pr_common+0x348>
 8003b2c:	e1a00009 	mov	r0, r9
 8003b30:	e3a0100d 	mov	r1, #13
 8003b34:	ebffff39 	bl	8003820 <_Unwind_GetGR>
 8003b38:	e59d3010 	ldr	r3, [sp, #16]
 8003b3c:	e5850020 	str	r0, [r5, #32]
 8003b40:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003b44:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003b48:	e3a00006 	mov	r0, #6
 8003b4c:	ea000017 	b	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003b50:	e2044001 	and	r4, r4, #1
 8003b54:	e184408b 	orr	r4, r4, fp, lsl #1
 8003b58:	e3540001 	cmp	r4, #1
 8003b5c:	0a000044 	beq	8003c74 <__gnu_unwind_pr_common+0x2c8>
 8003b60:	3a000022 	bcc	8003bf0 <__gnu_unwind_pr_common+0x244>
 8003b64:	e3540002 	cmp	r4, #2
 8003b68:	1a00000f 	bne	8003bac <__gnu_unwind_pr_common+0x200>
 8003b6c:	e5963000 	ldr	r3, [r6]
 8003b70:	e3580000 	cmp	r8, #0
 8003b74:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003b78:	1a000057 	bne	8003cdc <__gnu_unwind_pr_common+0x330>
 8003b7c:	e3530000 	cmp	r3, #0
 8003b80:	b2866004 	addlt	r6, r6, #4
 8003b84:	e2844001 	add	r4, r4, #1
 8003b88:	e0866104 	add	r6, r6, r4, lsl #2
 8003b8c:	eaffffa0 	b	8003a14 <__gnu_unwind_pr_common+0x68>
 8003b90:	e3a03000 	mov	r3, #0
 8003b94:	e58d3000 	str	r3, [sp]
 8003b98:	e3570002 	cmp	r7, #2
 8003b9c:	da000038 	ble	8003c84 <__gnu_unwind_pr_common+0x2d8>
 8003ba0:	ebfffe2d 	bl	800345c <__gnu_unwind_24bit.isra.1>
 8003ba4:	e3500000 	cmp	r0, #0
 8003ba8:	0a00003a 	beq	8003c98 <__gnu_unwind_pr_common+0x2ec>
 8003bac:	e3a00009 	mov	r0, #9
 8003bb0:	e28dd024 	add	sp, sp, #36	; 0x24
 8003bb4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003bb8:	e12fff1e 	bx	lr
 8003bbc:	e3570002 	cmp	r7, #2
 8003bc0:	caffff8b 	bgt	80039f4 <__gnu_unwind_pr_common+0x48>
 8003bc4:	e3a02002 	mov	r2, #2
 8003bc8:	e1a03821 	lsr	r3, r1, #16
 8003bcc:	e5cd301d 	strb	r3, [sp, #29]
 8003bd0:	e1a01801 	lsl	r1, r1, #16
 8003bd4:	e20330ff 	and	r3, r3, #255	; 0xff
 8003bd8:	e58d1014 	str	r1, [sp, #20]
 8003bdc:	e5cd201c 	strb	r2, [sp, #28]
 8003be0:	e0866103 	add	r6, r6, r3, lsl #2
 8003be4:	eaffff82 	b	80039f4 <__gnu_unwind_pr_common+0x48>
 8003be8:	e3580000 	cmp	r8, #0
 8003bec:	1a000070 	bne	8003db4 <__gnu_unwind_pr_common+0x408>
 8003bf0:	e2866004 	add	r6, r6, #4
 8003bf4:	eaffff86 	b	8003a14 <__gnu_unwind_pr_common+0x68>
 8003bf8:	e3580000 	cmp	r8, #0
 8003bfc:	1a00003e 	bne	8003cfc <__gnu_unwind_pr_common+0x350>
 8003c00:	e896000c 	ldm	r6, {r2, r3}
 8003c04:	e3730002 	cmn	r3, #2
 8003c08:	e1a04fa2 	lsr	r4, r2, #31
 8003c0c:	0affffe6 	beq	8003bac <__gnu_unwind_pr_common+0x200>
 8003c10:	e3730001 	cmn	r3, #1
 8003c14:	e59d3008 	ldr	r3, [sp, #8]
 8003c18:	e58d3010 	str	r3, [sp, #16]
 8003c1c:	0a00005b 	beq	8003d90 <__gnu_unwind_pr_common+0x3e4>
 8003c20:	e2860004 	add	r0, r6, #4
 8003c24:	ebfffe07 	bl	8003448 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003c28:	e1a02004 	mov	r2, r4
 8003c2c:	e1a01000 	mov	r1, r0
 8003c30:	e28d3010 	add	r3, sp, #16
 8003c34:	e1a00005 	mov	r0, r5
 8003c38:	e320f000 	nop	{0}
 8003c3c:	e3500000 	cmp	r0, #0
 8003c40:	0a00000d 	beq	8003c7c <__gnu_unwind_pr_common+0x2d0>
 8003c44:	e1a04000 	mov	r4, r0
 8003c48:	e3a0100d 	mov	r1, #13
 8003c4c:	e1a00009 	mov	r0, r9
 8003c50:	ebfffef2 	bl	8003820 <_Unwind_GetGR>
 8003c54:	e3540002 	cmp	r4, #2
 8003c58:	e5850020 	str	r0, [r5, #32]
 8003c5c:	1a00004f 	bne	8003da0 <__gnu_unwind_pr_common+0x3f4>
 8003c60:	e1a03005 	mov	r3, r5
 8003c64:	e59d2010 	ldr	r2, [sp, #16]
 8003c68:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003c6c:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003c70:	ea00004c 	b	8003da8 <__gnu_unwind_pr_common+0x3fc>
 8003c74:	e3580000 	cmp	r8, #0
 8003c78:	1a00001f 	bne	8003cfc <__gnu_unwind_pr_common+0x350>
 8003c7c:	e2866008 	add	r6, r6, #8
 8003c80:	eaffff63 	b	8003a14 <__gnu_unwind_pr_common+0x68>
 8003c84:	e1a00009 	mov	r0, r9
 8003c88:	e28d1014 	add	r1, sp, #20
 8003c8c:	eb0001ff 	bl	8004490 <__gnu_unwind_execute>
 8003c90:	e3500000 	cmp	r0, #0
 8003c94:	1affffc4 	bne	8003bac <__gnu_unwind_pr_common+0x200>
 8003c98:	e59d3000 	ldr	r3, [sp]
 8003c9c:	e3530000 	cmp	r3, #0
 8003ca0:	03a00008 	moveq	r0, #8
 8003ca4:	0affffc1 	beq	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003ca8:	e3a0100f 	mov	r1, #15
 8003cac:	e1a00009 	mov	r0, r9
 8003cb0:	ebfffeda 	bl	8003820 <_Unwind_GetGR>
 8003cb4:	e3a0100e 	mov	r1, #14
 8003cb8:	e1a02000 	mov	r2, r0
 8003cbc:	e1a00009 	mov	r0, r9
 8003cc0:	ebfffef9 	bl	80038ac <_Unwind_SetGR>
 8003cc4:	e1a00009 	mov	r0, r9
 8003cc8:	e3a0100f 	mov	r1, #15
 8003ccc:	e59f2128 	ldr	r2, [pc, #296]	; 8003dfc <__gnu_unwind_pr_common+0x450>
 8003cd0:	ebfffef5 	bl	80038ac <_Unwind_SetGR>
 8003cd4:	e3a00007 	mov	r0, #7
 8003cd8:	eaffffb4 	b	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003cdc:	e1a00009 	mov	r0, r9
 8003ce0:	e3a0100d 	mov	r1, #13
 8003ce4:	e595a020 	ldr	sl, [r5, #32]
 8003ce8:	ebfffecc 	bl	8003820 <_Unwind_GetGR>
 8003cec:	e15a0000 	cmp	sl, r0
 8003cf0:	0a000016 	beq	8003d50 <__gnu_unwind_pr_common+0x3a4>
 8003cf4:	e5963000 	ldr	r3, [r6]
 8003cf8:	eaffff9f 	b	8003b7c <__gnu_unwind_pr_common+0x1d0>
 8003cfc:	e1a00009 	mov	r0, r9
 8003d00:	e3a0100d 	mov	r1, #13
 8003d04:	e5954020 	ldr	r4, [r5, #32]
 8003d08:	ebfffec4 	bl	8003820 <_Unwind_GetGR>
 8003d0c:	e1540000 	cmp	r4, r0
 8003d10:	1affffd9 	bne	8003c7c <__gnu_unwind_pr_common+0x2d0>
 8003d14:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003d18:	e1560003 	cmp	r6, r3
 8003d1c:	1affffd6 	bne	8003c7c <__gnu_unwind_pr_common+0x2d0>
 8003d20:	e1a00006 	mov	r0, r6
 8003d24:	ebfffd12 	bl	8003174 <selfrel_offset31>
 8003d28:	e3a0100f 	mov	r1, #15
 8003d2c:	e1a02000 	mov	r2, r0
 8003d30:	e1a00009 	mov	r0, r9
 8003d34:	ebfffedc 	bl	80038ac <_Unwind_SetGR>
 8003d38:	e1a00009 	mov	r0, r9
 8003d3c:	e1a02005 	mov	r2, r5
 8003d40:	e3a01000 	mov	r1, #0
 8003d44:	ebfffed8 	bl	80038ac <_Unwind_SetGR>
 8003d48:	e3a00007 	mov	r0, #7
 8003d4c:	eaffff97 	b	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003d50:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003d54:	e1560003 	cmp	r6, r3
 8003d58:	1affffe5 	bne	8003cf4 <__gnu_unwind_pr_common+0x348>
 8003d5c:	e3a02000 	mov	r2, #0
 8003d60:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003d64:	e3a02004 	mov	r2, #4
 8003d68:	e2863004 	add	r3, r6, #4
 8003d6c:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003d70:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003d74:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003d78:	e5963000 	ldr	r3, [r6]
 8003d7c:	e3530000 	cmp	r3, #0
 8003d80:	ba00001a 	blt	8003df0 <__gnu_unwind_pr_common+0x444>
 8003d84:	e3a03001 	mov	r3, #1
 8003d88:	e58d3000 	str	r3, [sp]
 8003d8c:	eaffff7c 	b	8003b84 <__gnu_unwind_pr_common+0x1d8>
 8003d90:	e1a00009 	mov	r0, r9
 8003d94:	e3a0100d 	mov	r1, #13
 8003d98:	ebfffea0 	bl	8003820 <_Unwind_GetGR>
 8003d9c:	e5850020 	str	r0, [r5, #32]
 8003da0:	e59d3010 	ldr	r3, [sp, #16]
 8003da4:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003da8:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003dac:	e3a00006 	mov	r0, #6
 8003db0:	eaffff7e 	b	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003db4:	e1a00006 	mov	r0, r6
 8003db8:	ebfffced 	bl	8003174 <selfrel_offset31>
 8003dbc:	e2866004 	add	r6, r6, #4
 8003dc0:	e1a04000 	mov	r4, r0
 8003dc4:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003dc8:	e1a00005 	mov	r0, r5
 8003dcc:	e320f000 	nop	{0}
 8003dd0:	e3500000 	cmp	r0, #0
 8003dd4:	0affff74 	beq	8003bac <__gnu_unwind_pr_common+0x200>
 8003dd8:	e1a00009 	mov	r0, r9
 8003ddc:	e1a02004 	mov	r2, r4
 8003de0:	e3a0100f 	mov	r1, #15
 8003de4:	ebfffeb0 	bl	80038ac <_Unwind_SetGR>
 8003de8:	e3a00007 	mov	r0, #7
 8003dec:	eaffff6f 	b	8003bb0 <__gnu_unwind_pr_common+0x204>
 8003df0:	e2840001 	add	r0, r4, #1
 8003df4:	e0860100 	add	r0, r6, r0, lsl #2
 8003df8:	eaffffc9 	b	8003d24 <__gnu_unwind_pr_common+0x378>
 8003dfc:	00000000 	.word	0x00000000

08003e00 <__aeabi_unwind_cpp_pr0>:
 8003e00:	e3a03000 	mov	r3, #0
 8003e04:	eafffee8 	b	80039ac <__gnu_unwind_pr_common>

08003e08 <__aeabi_unwind_cpp_pr1>:
 8003e08:	e3a03001 	mov	r3, #1
 8003e0c:	eafffee6 	b	80039ac <__gnu_unwind_pr_common>

08003e10 <__aeabi_unwind_cpp_pr2>:
 8003e10:	e3a03002 	mov	r3, #2
 8003e14:	eafffee4 	b	80039ac <__gnu_unwind_pr_common>

08003e18 <_Unwind_VRS_Pop>:
 8003e18:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003e1c:	e1a04000 	mov	r4, r0
 8003e20:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003e24:	e3510004 	cmp	r1, #4
 8003e28:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003e2c:	ea000006 	b	8003e4c <_Unwind_VRS_Pop+0x34>
 8003e30:	0800402c 	.word	0x0800402c
 8003e34:	08003ec4 	.word	0x08003ec4
 8003e38:	08003e4c 	.word	0x08003e4c
 8003e3c:	08003e44 	.word	0x08003e44
 8003e40:	08003e5c 	.word	0x08003e5c
 8003e44:	e3530003 	cmp	r3, #3
 8003e48:	0a00009c 	beq	80040c0 <_Unwind_VRS_Pop+0x2a8>
 8003e4c:	e3a00002 	mov	r0, #2
 8003e50:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003e54:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003e58:	e12fff1e 	bx	lr
 8003e5c:	e3520010 	cmp	r2, #16
 8003e60:	93530000 	cmpls	r3, #0
 8003e64:	1afffff8 	bne	8003e4c <_Unwind_VRS_Pop+0x34>
 8003e68:	e5903000 	ldr	r3, [r0]
 8003e6c:	e3130010 	tst	r3, #16
 8003e70:	1a0000b1 	bne	800413c <_Unwind_VRS_Pop+0x324>
 8003e74:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e78:	e1a00005 	mov	r0, r5
 8003e7c:	e58d2004 	str	r2, [sp, #4]
 8003e80:	eb00012b 	bl	8004334 <__gnu_Unwind_Save_WMMXC>
 8003e84:	e3a03000 	mov	r3, #0
 8003e88:	e3a00001 	mov	r0, #1
 8003e8c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e90:	e59d2004 	ldr	r2, [sp, #4]
 8003e94:	e012c310 	ands	ip, r2, r0, lsl r3
 8003e98:	1591c000 	ldrne	ip, [r1]
 8003e9c:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003ea0:	e2833001 	add	r3, r3, #1
 8003ea4:	12811004 	addne	r1, r1, #4
 8003ea8:	e3530004 	cmp	r3, #4
 8003eac:	1afffff8 	bne	8003e94 <_Unwind_VRS_Pop+0x7c>
 8003eb0:	e1a00005 	mov	r0, r5
 8003eb4:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003eb8:	eb000118 	bl	8004320 <__gnu_Unwind_Restore_WMMXC>
 8003ebc:	e3a00000 	mov	r0, #0
 8003ec0:	eaffffe2 	b	8003e50 <_Unwind_VRS_Pop+0x38>
 8003ec4:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003ec8:	e3510001 	cmp	r1, #1
 8003ecc:	1affffde 	bne	8003e4c <_Unwind_VRS_Pop+0x34>
 8003ed0:	e1a06802 	lsl	r6, r2, #16
 8003ed4:	e1a06826 	lsr	r6, r6, #16
 8003ed8:	e1a08822 	lsr	r8, r2, #16
 8003edc:	e3530001 	cmp	r3, #1
 8003ee0:	e0861008 	add	r1, r6, r8
 8003ee4:	0a000063 	beq	8004078 <_Unwind_VRS_Pop+0x260>
 8003ee8:	e3510020 	cmp	r1, #32
 8003eec:	8affffd6 	bhi	8003e4c <_Unwind_VRS_Pop+0x34>
 8003ef0:	e358000f 	cmp	r8, #15
 8003ef4:	9a000096 	bls	8004154 <_Unwind_VRS_Pop+0x33c>
 8003ef8:	e1a07006 	mov	r7, r6
 8003efc:	e3570000 	cmp	r7, #0
 8003f00:	13530005 	cmpne	r3, #5
 8003f04:	13a09001 	movne	r9, #1
 8003f08:	03a09000 	moveq	r9, #0
 8003f0c:	1affffce 	bne	8003e4c <_Unwind_VRS_Pop+0x34>
 8003f10:	e358000f 	cmp	r8, #15
 8003f14:	8a000096 	bhi	8004174 <_Unwind_VRS_Pop+0x35c>
 8003f18:	e5942000 	ldr	r2, [r4]
 8003f1c:	e3120001 	tst	r2, #1
 8003f20:	0a000093 	beq	8004174 <_Unwind_VRS_Pop+0x35c>
 8003f24:	e3530005 	cmp	r3, #5
 8003f28:	e3c23001 	bic	r3, r2, #1
 8003f2c:	e5843000 	str	r3, [r4]
 8003f30:	0a0000bb 	beq	8004224 <_Unwind_VRS_Pop+0x40c>
 8003f34:	e1a00004 	mov	r0, r4
 8003f38:	e3c22003 	bic	r2, r2, #3
 8003f3c:	e4802048 	str	r2, [r0], #72	; 0x48
 8003f40:	eb0000ca 	bl	8004270 <__gnu_Unwind_Save_VFP>
 8003f44:	e3570000 	cmp	r7, #0
 8003f48:	0a000099 	beq	80041b4 <_Unwind_VRS_Pop+0x39c>
 8003f4c:	e5943000 	ldr	r3, [r4]
 8003f50:	e3130004 	tst	r3, #4
 8003f54:	1a0000ad 	bne	8004210 <_Unwind_VRS_Pop+0x3f8>
 8003f58:	e3590000 	cmp	r9, #0
 8003f5c:	1a0000b7 	bne	8004240 <_Unwind_VRS_Pop+0x428>
 8003f60:	e358000f 	cmp	r8, #15
 8003f64:	8a000004 	bhi	8003f7c <_Unwind_VRS_Pop+0x164>
 8003f68:	e28d5088 	add	r5, sp, #136	; 0x88
 8003f6c:	e1a00005 	mov	r0, r5
 8003f70:	eb0000c2 	bl	8004280 <__gnu_Unwind_Save_VFP_D>
 8003f74:	e3570000 	cmp	r7, #0
 8003f78:	0a00009b 	beq	80041ec <_Unwind_VRS_Pop+0x3d4>
 8003f7c:	e28d0008 	add	r0, sp, #8
 8003f80:	eb0000c2 	bl	8004290 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003f84:	e2683010 	rsb	r3, r8, #16
 8003f88:	e3530000 	cmp	r3, #0
 8003f8c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003f90:	da00000d 	ble	8003fcc <_Unwind_VRS_Pop+0x1b4>
 8003f94:	e28d5088 	add	r5, sp, #136	; 0x88
 8003f98:	e1a00001 	mov	r0, r1
 8003f9c:	e1a0e083 	lsl	lr, r3, #1
 8003fa0:	e0852188 	add	r2, r5, r8, lsl #3
 8003fa4:	e2422004 	sub	r2, r2, #4
 8003fa8:	e24e3001 	sub	r3, lr, #1
 8003fac:	e2433001 	sub	r3, r3, #1
 8003fb0:	e490c004 	ldr	ip, [r0], #4
 8003fb4:	e3730001 	cmn	r3, #1
 8003fb8:	e5a2c004 	str	ip, [r2, #4]!
 8003fbc:	1afffffa 	bne	8003fac <_Unwind_VRS_Pop+0x194>
 8003fc0:	e3570000 	cmp	r7, #0
 8003fc4:	e081110e 	add	r1, r1, lr, lsl #2
 8003fc8:	0a00000d 	beq	8004004 <_Unwind_VRS_Pop+0x1ec>
 8003fcc:	e3580010 	cmp	r8, #16
 8003fd0:	21a02008 	movcs	r2, r8
 8003fd4:	33a02010 	movcc	r2, #16
 8003fd8:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003fdc:	e0832182 	add	r2, r3, r2, lsl #3
 8003fe0:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003fe4:	e1a00087 	lsl	r0, r7, #1
 8003fe8:	e1a03001 	mov	r3, r1
 8003fec:	e2422004 	sub	r2, r2, #4
 8003ff0:	e0811100 	add	r1, r1, r0, lsl #2
 8003ff4:	e4930004 	ldr	r0, [r3], #4
 8003ff8:	e1530001 	cmp	r3, r1
 8003ffc:	e5a20004 	str	r0, [r2, #4]!
 8004000:	1afffffb 	bne	8003ff4 <_Unwind_VRS_Pop+0x1dc>
 8004004:	e3590000 	cmp	r9, #0
 8004008:	1a00007b 	bne	80041fc <_Unwind_VRS_Pop+0x3e4>
 800400c:	e358000f 	cmp	r8, #15
 8004010:	e5841038 	str	r1, [r4, #56]	; 0x38
 8004014:	9a00007a 	bls	8004204 <_Unwind_VRS_Pop+0x3ec>
 8004018:	e3570000 	cmp	r7, #0
 800401c:	128d0008 	addne	r0, sp, #8
 8004020:	1b000098 	blne	8004288 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8004024:	e3a00000 	mov	r0, #0
 8004028:	eaffff88 	b	8003e50 <_Unwind_VRS_Pop+0x38>
 800402c:	e3530000 	cmp	r3, #0
 8004030:	1affff85 	bne	8003e4c <_Unwind_VRS_Pop+0x34>
 8004034:	e3a0e001 	mov	lr, #1
 8004038:	e1a00802 	lsl	r0, r2, #16
 800403c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8004040:	e1a00820 	lsr	r0, r0, #16
 8004044:	e2841004 	add	r1, r4, #4
 8004048:	e010531e 	ands	r5, r0, lr, lsl r3
 800404c:	159c5000 	ldrne	r5, [ip]
 8004050:	e2833001 	add	r3, r3, #1
 8004054:	15815000 	strne	r5, [r1]
 8004058:	128cc004 	addne	ip, ip, #4
 800405c:	e3530010 	cmp	r3, #16
 8004060:	e2811004 	add	r1, r1, #4
 8004064:	1afffff7 	bne	8004048 <_Unwind_VRS_Pop+0x230>
 8004068:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 800406c:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8004070:	0affff76 	beq	8003e50 <_Unwind_VRS_Pop+0x38>
 8004074:	eaffffea 	b	8004024 <_Unwind_VRS_Pop+0x20c>
 8004078:	e3510010 	cmp	r1, #16
 800407c:	8affff72 	bhi	8003e4c <_Unwind_VRS_Pop+0x34>
 8004080:	e358000f 	cmp	r8, #15
 8004084:	91a09003 	movls	r9, r3
 8004088:	8affff6f 	bhi	8003e4c <_Unwind_VRS_Pop+0x34>
 800408c:	e5942000 	ldr	r2, [r4]
 8004090:	e3120001 	tst	r2, #1
 8004094:	0a000046 	beq	80041b4 <_Unwind_VRS_Pop+0x39c>
 8004098:	e3530005 	cmp	r3, #5
 800409c:	e3c23001 	bic	r3, r2, #1
 80040a0:	e5843000 	str	r3, [r4]
 80040a4:	e3a07000 	mov	r7, #0
 80040a8:	1affffa1 	bne	8003f34 <_Unwind_VRS_Pop+0x11c>
 80040ac:	e1a00004 	mov	r0, r4
 80040b0:	e3833002 	orr	r3, r3, #2
 80040b4:	e4803048 	str	r3, [r0], #72	; 0x48
 80040b8:	eb000070 	bl	8004280 <__gnu_Unwind_Save_VFP_D>
 80040bc:	eaffffa9 	b	8003f68 <_Unwind_VRS_Pop+0x150>
 80040c0:	e1a07802 	lsl	r7, r2, #16
 80040c4:	e1a07827 	lsr	r7, r7, #16
 80040c8:	e1a06822 	lsr	r6, r2, #16
 80040cc:	e0873006 	add	r3, r7, r6
 80040d0:	e3530010 	cmp	r3, #16
 80040d4:	8affff5c 	bhi	8003e4c <_Unwind_VRS_Pop+0x34>
 80040d8:	e5903000 	ldr	r3, [r0]
 80040dc:	e3130008 	tst	r3, #8
 80040e0:	1a00001f 	bne	8004164 <_Unwind_VRS_Pop+0x34c>
 80040e4:	e28d5088 	add	r5, sp, #136	; 0x88
 80040e8:	e1a07087 	lsl	r7, r7, #1
 80040ec:	e1a00005 	mov	r0, r5
 80040f0:	eb000079 	bl	80042dc <__gnu_Unwind_Save_WMMXD>
 80040f4:	e3570000 	cmp	r7, #0
 80040f8:	e0852186 	add	r2, r5, r6, lsl #3
 80040fc:	e2473001 	sub	r3, r7, #1
 8004100:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8004104:	0a000007 	beq	8004128 <_Unwind_VRS_Pop+0x310>
 8004108:	e1a0100c 	mov	r1, ip
 800410c:	e2422004 	sub	r2, r2, #4
 8004110:	e2433001 	sub	r3, r3, #1
 8004114:	e4910004 	ldr	r0, [r1], #4
 8004118:	e3730001 	cmn	r3, #1
 800411c:	e5a20004 	str	r0, [r2, #4]!
 8004120:	1afffffa 	bne	8004110 <_Unwind_VRS_Pop+0x2f8>
 8004124:	e08cc107 	add	ip, ip, r7, lsl #2
 8004128:	e1a00005 	mov	r0, r5
 800412c:	e584c038 	str	ip, [r4, #56]	; 0x38
 8004130:	eb000058 	bl	8004298 <__gnu_Unwind_Restore_WMMXD>
 8004134:	e3a00000 	mov	r0, #0
 8004138:	eaffff44 	b	8003e50 <_Unwind_VRS_Pop+0x38>
 800413c:	e3c33010 	bic	r3, r3, #16
 8004140:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8004144:	e58d2004 	str	r2, [sp, #4]
 8004148:	eb000079 	bl	8004334 <__gnu_Unwind_Save_WMMXC>
 800414c:	e59d2004 	ldr	r2, [sp, #4]
 8004150:	eaffff47 	b	8003e74 <_Unwind_VRS_Pop+0x5c>
 8004154:	e3510010 	cmp	r1, #16
 8004158:	9a000013 	bls	80041ac <_Unwind_VRS_Pop+0x394>
 800415c:	e2417010 	sub	r7, r1, #16
 8004160:	eaffff65 	b	8003efc <_Unwind_VRS_Pop+0xe4>
 8004164:	e3c33008 	bic	r3, r3, #8
 8004168:	e4803150 	str	r3, [r0], #336	; 0x150
 800416c:	eb00005a 	bl	80042dc <__gnu_Unwind_Save_WMMXD>
 8004170:	eaffffdb 	b	80040e4 <_Unwind_VRS_Pop+0x2cc>
 8004174:	e3570000 	cmp	r7, #0
 8004178:	1affff73 	bne	8003f4c <_Unwind_VRS_Pop+0x134>
 800417c:	e358000f 	cmp	r8, #15
 8004180:	93a09000 	movls	r9, #0
 8004184:	91a07009 	movls	r7, r9
 8004188:	9affff76 	bls	8003f68 <_Unwind_VRS_Pop+0x150>
 800418c:	e3a09000 	mov	r9, #0
 8004190:	e3560000 	cmp	r6, #0
 8004194:	e1a03006 	mov	r3, r6
 8004198:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 800419c:	11a07009 	movne	r7, r9
 80041a0:	1affff7b 	bne	8003f94 <_Unwind_VRS_Pop+0x17c>
 80041a4:	e1a07006 	mov	r7, r6
 80041a8:	eaffff97 	b	800400c <_Unwind_VRS_Pop+0x1f4>
 80041ac:	e3a09000 	mov	r9, #0
 80041b0:	eaffffb5 	b	800408c <_Unwind_VRS_Pop+0x274>
 80041b4:	e3590000 	cmp	r9, #0
 80041b8:	0affffef 	beq	800417c <_Unwind_VRS_Pop+0x364>
 80041bc:	e28d5088 	add	r5, sp, #136	; 0x88
 80041c0:	e1a00005 	mov	r0, r5
 80041c4:	eb000029 	bl	8004270 <__gnu_Unwind_Save_VFP>
 80041c8:	e2563000 	subs	r3, r6, #0
 80041cc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80041d0:	13a07000 	movne	r7, #0
 80041d4:	1affff6f 	bne	8003f98 <_Unwind_VRS_Pop+0x180>
 80041d8:	e2811004 	add	r1, r1, #4
 80041dc:	e5841038 	str	r1, [r4, #56]	; 0x38
 80041e0:	e1a00005 	mov	r0, r5
 80041e4:	eb00001f 	bl	8004268 <__gnu_Unwind_Restore_VFP>
 80041e8:	eaffff8d 	b	8004024 <_Unwind_VRS_Pop+0x20c>
 80041ec:	e2563000 	subs	r3, r6, #0
 80041f0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80041f4:	1affff67 	bne	8003f98 <_Unwind_VRS_Pop+0x180>
 80041f8:	eaffff81 	b	8004004 <_Unwind_VRS_Pop+0x1ec>
 80041fc:	e28d5088 	add	r5, sp, #136	; 0x88
 8004200:	eafffff4 	b	80041d8 <_Unwind_VRS_Pop+0x3c0>
 8004204:	e28d0088 	add	r0, sp, #136	; 0x88
 8004208:	eb00001a 	bl	8004278 <__gnu_Unwind_Restore_VFP_D>
 800420c:	eaffff81 	b	8004018 <_Unwind_VRS_Pop+0x200>
 8004210:	e1a00004 	mov	r0, r4
 8004214:	e3c33004 	bic	r3, r3, #4
 8004218:	e48030d0 	str	r3, [r0], #208	; 0xd0
 800421c:	eb00001b 	bl	8004290 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8004220:	eaffff4c 	b	8003f58 <_Unwind_VRS_Pop+0x140>
 8004224:	e1a00004 	mov	r0, r4
 8004228:	e3833002 	orr	r3, r3, #2
 800422c:	e4803048 	str	r3, [r0], #72	; 0x48
 8004230:	eb000012 	bl	8004280 <__gnu_Unwind_Save_VFP_D>
 8004234:	e3570000 	cmp	r7, #0
 8004238:	1affff43 	bne	8003f4c <_Unwind_VRS_Pop+0x134>
 800423c:	eaffff49 	b	8003f68 <_Unwind_VRS_Pop+0x150>
 8004240:	e28d0088 	add	r0, sp, #136	; 0x88
 8004244:	eb000009 	bl	8004270 <__gnu_Unwind_Save_VFP>
 8004248:	eaffff4d 	b	8003f84 <_Unwind_VRS_Pop+0x16c>

0800424c <__restore_core_regs>:
 800424c:	e2801034 	add	r1, r0, #52	; 0x34
 8004250:	e8910038 	ldm	r1, {r3, r4, r5}
 8004254:	e1a02005 	mov	r2, r5
 8004258:	e92d001c 	push	{r2, r3, r4}
 800425c:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8004260:	e89d7000 	ldm	sp, {ip, sp, lr}
 8004264:	e12fff1c 	bx	ip

08004268 <__gnu_Unwind_Restore_VFP>:
 8004268:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 800426c:	e12fff1e 	bx	lr

08004270 <__gnu_Unwind_Save_VFP>:
 8004270:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8004274:	e12fff1e 	bx	lr

08004278 <__gnu_Unwind_Restore_VFP_D>:
 8004278:	ec900b20 	vldmia	r0, {d0-d15}
 800427c:	e12fff1e 	bx	lr

08004280 <__gnu_Unwind_Save_VFP_D>:
 8004280:	ec800b20 	vstmia	r0, {d0-d15}
 8004284:	e12fff1e 	bx	lr

08004288 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8004288:	ecd00b20 	vldmia	r0, {d16-d31}
 800428c:	e12fff1e 	bx	lr

08004290 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8004290:	ecc00b20 	vstmia	r0, {d16-d31}
 8004294:	e12fff1e 	bx	lr

08004298 <__gnu_Unwind_Restore_WMMXD>:
 8004298:	ecf00102 	ldfe	f0, [r0], #8
 800429c:	ecf01102 	ldfe	f1, [r0], #8
 80042a0:	ecf02102 	ldfe	f2, [r0], #8
 80042a4:	ecf03102 	ldfe	f3, [r0], #8
 80042a8:	ecf04102 	ldfe	f4, [r0], #8
 80042ac:	ecf05102 	ldfe	f5, [r0], #8
 80042b0:	ecf06102 	ldfe	f6, [r0], #8
 80042b4:	ecf07102 	ldfe	f7, [r0], #8
 80042b8:	ecf08102 	ldfp	f0, [r0], #8
 80042bc:	ecf09102 	ldfp	f1, [r0], #8
 80042c0:	ecf0a102 	ldfp	f2, [r0], #8
 80042c4:	ecf0b102 	ldfp	f3, [r0], #8
 80042c8:	ecf0c102 	ldfp	f4, [r0], #8
 80042cc:	ecf0d102 	ldfp	f5, [r0], #8
 80042d0:	ecf0e102 	ldfp	f6, [r0], #8
 80042d4:	ecf0f102 	ldfp	f7, [r0], #8
 80042d8:	e12fff1e 	bx	lr

080042dc <__gnu_Unwind_Save_WMMXD>:
 80042dc:	ece00102 	stfe	f0, [r0], #8
 80042e0:	ece01102 	stfe	f1, [r0], #8
 80042e4:	ece02102 	stfe	f2, [r0], #8
 80042e8:	ece03102 	stfe	f3, [r0], #8
 80042ec:	ece04102 	stfe	f4, [r0], #8
 80042f0:	ece05102 	stfe	f5, [r0], #8
 80042f4:	ece06102 	stfe	f6, [r0], #8
 80042f8:	ece07102 	stfe	f7, [r0], #8
 80042fc:	ece08102 	stfp	f0, [r0], #8
 8004300:	ece09102 	stfp	f1, [r0], #8
 8004304:	ece0a102 	stfp	f2, [r0], #8
 8004308:	ece0b102 	stfp	f3, [r0], #8
 800430c:	ece0c102 	stfp	f4, [r0], #8
 8004310:	ece0d102 	stfp	f5, [r0], #8
 8004314:	ece0e102 	stfp	f6, [r0], #8
 8004318:	ece0f102 	stfp	f7, [r0], #8
 800431c:	e12fff1e 	bx	lr

08004320 <__gnu_Unwind_Restore_WMMXC>:
 8004320:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004324:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004328:	fcb0a101 	ldc2	1, cr10, [r0], #4
 800432c:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8004330:	e12fff1e 	bx	lr

08004334 <__gnu_Unwind_Save_WMMXC>:
 8004334:	fca08101 	stc2	1, cr8, [r0], #4
 8004338:	fca09101 	stc2	1, cr9, [r0], #4
 800433c:	fca0a101 	stc2	1, cr10, [r0], #4
 8004340:	fca0b101 	stc2	1, cr11, [r0], #4
 8004344:	e12fff1e 	bx	lr

08004348 <_Unwind_RaiseException>:
 8004348:	e92de000 	push	{sp, lr, pc}
 800434c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004350:	e3a03000 	mov	r3, #0
 8004354:	e92d000c 	push	{r2, r3}
 8004358:	e28d1004 	add	r1, sp, #4
 800435c:	ebfffcb8 	bl	8003644 <__gnu_Unwind_RaiseException>
 8004360:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004364:	e28dd048 	add	sp, sp, #72	; 0x48
 8004368:	e12fff1e 	bx	lr

0800436c <_Unwind_Resume>:
 800436c:	e92de000 	push	{sp, lr, pc}
 8004370:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004374:	e3a03000 	mov	r3, #0
 8004378:	e92d000c 	push	{r2, r3}
 800437c:	e28d1004 	add	r1, sp, #4
 8004380:	ebfffce4 	bl	8003718 <__gnu_Unwind_Resume>
 8004384:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004388:	e28dd048 	add	sp, sp, #72	; 0x48
 800438c:	e12fff1e 	bx	lr

08004390 <_Unwind_Resume_or_Rethrow>:
 8004390:	e92de000 	push	{sp, lr, pc}
 8004394:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004398:	e3a03000 	mov	r3, #0
 800439c:	e92d000c 	push	{r2, r3}
 80043a0:	e28d1004 	add	r1, sp, #4
 80043a4:	ebfffcf8 	bl	800378c <__gnu_Unwind_Resume_or_Rethrow>
 80043a8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80043ac:	e28dd048 	add	sp, sp, #72	; 0x48
 80043b0:	e12fff1e 	bx	lr

080043b4 <_Unwind_ForcedUnwind>:
 80043b4:	e92de000 	push	{sp, lr, pc}
 80043b8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80043bc:	e3a03000 	mov	r3, #0
 80043c0:	e92d000c 	push	{r2, r3}
 80043c4:	e28d3004 	add	r3, sp, #4
 80043c8:	ebfffcc9 	bl	80036f4 <__gnu_Unwind_ForcedUnwind>
 80043cc:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80043d0:	e28dd048 	add	sp, sp, #72	; 0x48
 80043d4:	e12fff1e 	bx	lr

080043d8 <_Unwind_Backtrace>:
 80043d8:	e92de000 	push	{sp, lr, pc}
 80043dc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80043e0:	e3a03000 	mov	r3, #0
 80043e4:	e92d000c 	push	{r2, r3}
 80043e8:	e28d2004 	add	r2, sp, #4
 80043ec:	ebfffd3b 	bl	80038e0 <__gnu_Unwind_Backtrace>
 80043f0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80043f4:	e28dd048 	add	sp, sp, #72	; 0x48
 80043f8:	e12fff1e 	bx	lr

080043fc <next_unwind_byte>:
 80043fc:	e5d03008 	ldrb	r3, [r0, #8]
 8004400:	e3530000 	cmp	r3, #0
 8004404:	1a000004 	bne	800441c <next_unwind_byte+0x20>
 8004408:	e5d03009 	ldrb	r3, [r0, #9]
 800440c:	e3530000 	cmp	r3, #0
 8004410:	1a000008 	bne	8004438 <next_unwind_byte+0x3c>
 8004414:	e3a000b0 	mov	r0, #176	; 0xb0
 8004418:	e12fff1e 	bx	lr
 800441c:	e2433001 	sub	r3, r3, #1
 8004420:	e5c03008 	strb	r3, [r0, #8]
 8004424:	e5903000 	ldr	r3, [r0]
 8004428:	e1a02403 	lsl	r2, r3, #8
 800442c:	e5802000 	str	r2, [r0]
 8004430:	e1a00c23 	lsr	r0, r3, #24
 8004434:	e12fff1e 	bx	lr
 8004438:	e3a01003 	mov	r1, #3
 800443c:	e5902004 	ldr	r2, [r0, #4]
 8004440:	e2433001 	sub	r3, r3, #1
 8004444:	e5c03009 	strb	r3, [r0, #9]
 8004448:	e282c004 	add	ip, r2, #4
 800444c:	e5923000 	ldr	r3, [r2]
 8004450:	e580c004 	str	ip, [r0, #4]
 8004454:	e5c01008 	strb	r1, [r0, #8]
 8004458:	eafffff2 	b	8004428 <next_unwind_byte+0x2c>

0800445c <_Unwind_GetGR.constprop.0>:
 800445c:	e3a01000 	mov	r1, #0
 8004460:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004464:	e24dd014 	sub	sp, sp, #20
 8004468:	e28d200c 	add	r2, sp, #12
 800446c:	e58d2000 	str	r2, [sp]
 8004470:	e1a03001 	mov	r3, r1
 8004474:	e3a0200c 	mov	r2, #12
 8004478:	ebfffcd1 	bl	80037c4 <_Unwind_VRS_Get>
 800447c:	e59d000c 	ldr	r0, [sp, #12]
 8004480:	e28dd014 	add	sp, sp, #20
 8004484:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004488:	e12fff1e 	bx	lr

0800448c <unwind_UCB_from_context>:
 800448c:	eafffff2 	b	800445c <_Unwind_GetGR.constprop.0>

08004490 <__gnu_unwind_execute>:
 8004490:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8004494:	e1a07000 	mov	r7, r0
 8004498:	e1a05001 	mov	r5, r1
 800449c:	e3a08000 	mov	r8, #0
 80044a0:	e24dd010 	sub	sp, sp, #16
 80044a4:	e1a00005 	mov	r0, r5
 80044a8:	ebffffd3 	bl	80043fc <next_unwind_byte>
 80044ac:	e35000b0 	cmp	r0, #176	; 0xb0
 80044b0:	e1a04000 	mov	r4, r0
 80044b4:	0a00007d 	beq	80046b0 <__gnu_unwind_execute+0x220>
 80044b8:	e2101080 	ands	r1, r0, #128	; 0x80
 80044bc:	0a00001a 	beq	800452c <__gnu_unwind_execute+0x9c>
 80044c0:	e20030f0 	and	r3, r0, #240	; 0xf0
 80044c4:	e3530080 	cmp	r3, #128	; 0x80
 80044c8:	0a000054 	beq	8004620 <__gnu_unwind_execute+0x190>
 80044cc:	e3530090 	cmp	r3, #144	; 0x90
 80044d0:	0a00002b 	beq	8004584 <__gnu_unwind_execute+0xf4>
 80044d4:	e35300a0 	cmp	r3, #160	; 0xa0
 80044d8:	0a000034 	beq	80045b0 <__gnu_unwind_execute+0x120>
 80044dc:	e35300b0 	cmp	r3, #176	; 0xb0
 80044e0:	0a000040 	beq	80045e8 <__gnu_unwind_execute+0x158>
 80044e4:	e35300c0 	cmp	r3, #192	; 0xc0
 80044e8:	0a00005e 	beq	8004668 <__gnu_unwind_execute+0x1d8>
 80044ec:	e20030f8 	and	r3, r0, #248	; 0xf8
 80044f0:	e35300d0 	cmp	r3, #208	; 0xd0
 80044f4:	1a000008 	bne	800451c <__gnu_unwind_execute+0x8c>
 80044f8:	e2002007 	and	r2, r0, #7
 80044fc:	e2822001 	add	r2, r2, #1
 8004500:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004504:	e1a00007 	mov	r0, r7
 8004508:	e3a01001 	mov	r1, #1
 800450c:	e3a03005 	mov	r3, #5
 8004510:	ebfffe40 	bl	8003e18 <_Unwind_VRS_Pop>
 8004514:	e3500000 	cmp	r0, #0
 8004518:	0affffe1 	beq	80044a4 <__gnu_unwind_execute+0x14>
 800451c:	e3a00009 	mov	r0, #9
 8004520:	e28dd010 	add	sp, sp, #16
 8004524:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004528:	e12fff1e 	bx	lr
 800452c:	e28d300c 	add	r3, sp, #12
 8004530:	e1a06100 	lsl	r6, r0, #2
 8004534:	e58d3000 	str	r3, [sp]
 8004538:	e1a00007 	mov	r0, r7
 800453c:	e1a03001 	mov	r3, r1
 8004540:	e3a0200d 	mov	r2, #13
 8004544:	ebfffc9e 	bl	80037c4 <_Unwind_VRS_Get>
 8004548:	e20660ff 	and	r6, r6, #255	; 0xff
 800454c:	e59d300c 	ldr	r3, [sp, #12]
 8004550:	e2866004 	add	r6, r6, #4
 8004554:	e3140040 	tst	r4, #64	; 0x40
 8004558:	10666003 	rsbne	r6, r6, r3
 800455c:	00836006 	addeq	r6, r3, r6
 8004560:	e58d600c 	str	r6, [sp, #12]
 8004564:	e3a01000 	mov	r1, #0
 8004568:	e28d300c 	add	r3, sp, #12
 800456c:	e58d3000 	str	r3, [sp]
 8004570:	e1a00007 	mov	r0, r7
 8004574:	e1a03001 	mov	r3, r1
 8004578:	e3a0200d 	mov	r2, #13
 800457c:	ebfffcb3 	bl	8003850 <_Unwind_VRS_Set>
 8004580:	eaffffc7 	b	80044a4 <__gnu_unwind_execute+0x14>
 8004584:	e200300d 	and	r3, r0, #13
 8004588:	e353000d 	cmp	r3, #13
 800458c:	0affffe2 	beq	800451c <__gnu_unwind_execute+0x8c>
 8004590:	e3a01000 	mov	r1, #0
 8004594:	e28d300c 	add	r3, sp, #12
 8004598:	e58d3000 	str	r3, [sp]
 800459c:	e200200f 	and	r2, r0, #15
 80045a0:	e1a03001 	mov	r3, r1
 80045a4:	e1a00007 	mov	r0, r7
 80045a8:	ebfffc85 	bl	80037c4 <_Unwind_VRS_Get>
 80045ac:	eaffffec 	b	8004564 <__gnu_unwind_execute+0xd4>
 80045b0:	e1e02000 	mvn	r2, r0
 80045b4:	e3a03eff 	mov	r3, #4080	; 0xff0
 80045b8:	e3a01000 	mov	r1, #0
 80045bc:	e2022007 	and	r2, r2, #7
 80045c0:	e1a02253 	asr	r2, r3, r2
 80045c4:	e3100008 	tst	r0, #8
 80045c8:	e0022003 	and	r2, r2, r3
 80045cc:	13822901 	orrne	r2, r2, #16384	; 0x4000
 80045d0:	e1a03001 	mov	r3, r1
 80045d4:	e1a00007 	mov	r0, r7
 80045d8:	ebfffe0e 	bl	8003e18 <_Unwind_VRS_Pop>
 80045dc:	e3500000 	cmp	r0, #0
 80045e0:	1affffcd 	bne	800451c <__gnu_unwind_execute+0x8c>
 80045e4:	eaffffae 	b	80044a4 <__gnu_unwind_execute+0x14>
 80045e8:	e35000b1 	cmp	r0, #177	; 0xb1
 80045ec:	0a000041 	beq	80046f8 <__gnu_unwind_execute+0x268>
 80045f0:	e35000b2 	cmp	r0, #178	; 0xb2
 80045f4:	0a00004b 	beq	8004728 <__gnu_unwind_execute+0x298>
 80045f8:	e35000b3 	cmp	r0, #179	; 0xb3
 80045fc:	0a00006b 	beq	80047b0 <__gnu_unwind_execute+0x320>
 8004600:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004604:	e35300b4 	cmp	r3, #180	; 0xb4
 8004608:	0affffc3 	beq	800451c <__gnu_unwind_execute+0x8c>
 800460c:	e3a01001 	mov	r1, #1
 8004610:	e2002007 	and	r2, r0, #7
 8004614:	e0822001 	add	r2, r2, r1
 8004618:	e3822702 	orr	r2, r2, #524288	; 0x80000
 800461c:	eaffffeb 	b	80045d0 <__gnu_unwind_execute+0x140>
 8004620:	e1a00005 	mov	r0, r5
 8004624:	ebffff74 	bl	80043fc <next_unwind_byte>
 8004628:	e1a04404 	lsl	r4, r4, #8
 800462c:	e1804004 	orr	r4, r0, r4
 8004630:	e3540902 	cmp	r4, #32768	; 0x8000
 8004634:	0affffb8 	beq	800451c <__gnu_unwind_execute+0x8c>
 8004638:	e3a01000 	mov	r1, #0
 800463c:	e1a02a04 	lsl	r2, r4, #20
 8004640:	e1a03001 	mov	r3, r1
 8004644:	e1a02822 	lsr	r2, r2, #16
 8004648:	e1a00007 	mov	r0, r7
 800464c:	ebfffdf1 	bl	8003e18 <_Unwind_VRS_Pop>
 8004650:	e3500000 	cmp	r0, #0
 8004654:	e1a04204 	lsl	r4, r4, #4
 8004658:	1affffaf 	bne	800451c <__gnu_unwind_execute+0x8c>
 800465c:	e3140902 	tst	r4, #32768	; 0x8000
 8004660:	13a08001 	movne	r8, #1
 8004664:	eaffff8e 	b	80044a4 <__gnu_unwind_execute+0x14>
 8004668:	e35000c6 	cmp	r0, #198	; 0xc6
 800466c:	0a000057 	beq	80047d0 <__gnu_unwind_execute+0x340>
 8004670:	e35000c7 	cmp	r0, #199	; 0xc7
 8004674:	0a00005d 	beq	80047f0 <__gnu_unwind_execute+0x360>
 8004678:	e20030f8 	and	r3, r0, #248	; 0xf8
 800467c:	e35300c0 	cmp	r3, #192	; 0xc0
 8004680:	0a000066 	beq	8004820 <__gnu_unwind_execute+0x390>
 8004684:	e35000c8 	cmp	r0, #200	; 0xc8
 8004688:	0a000069 	beq	8004834 <__gnu_unwind_execute+0x3a4>
 800468c:	e35000c9 	cmp	r0, #201	; 0xc9
 8004690:	1affffa1 	bne	800451c <__gnu_unwind_execute+0x8c>
 8004694:	e1a00005 	mov	r0, r5
 8004698:	ebffff57 	bl	80043fc <next_unwind_byte>
 800469c:	e200200f 	and	r2, r0, #15
 80046a0:	e2822001 	add	r2, r2, #1
 80046a4:	e20000f0 	and	r0, r0, #240	; 0xf0
 80046a8:	e1822600 	orr	r2, r2, r0, lsl #12
 80046ac:	eaffff94 	b	8004504 <__gnu_unwind_execute+0x74>
 80046b0:	e3580000 	cmp	r8, #0
 80046b4:	13a00000 	movne	r0, #0
 80046b8:	1affff98 	bne	8004520 <__gnu_unwind_execute+0x90>
 80046bc:	e28d400c 	add	r4, sp, #12
 80046c0:	e1a01008 	mov	r1, r8
 80046c4:	e3a0200e 	mov	r2, #14
 80046c8:	e1a03008 	mov	r3, r8
 80046cc:	e58d4000 	str	r4, [sp]
 80046d0:	e1a00007 	mov	r0, r7
 80046d4:	ebfffc3a 	bl	80037c4 <_Unwind_VRS_Get>
 80046d8:	e58d4000 	str	r4, [sp]
 80046dc:	e1a00007 	mov	r0, r7
 80046e0:	e1a01008 	mov	r1, r8
 80046e4:	e3a0200f 	mov	r2, #15
 80046e8:	e1a03008 	mov	r3, r8
 80046ec:	ebfffc57 	bl	8003850 <_Unwind_VRS_Set>
 80046f0:	e1a00008 	mov	r0, r8
 80046f4:	eaffff89 	b	8004520 <__gnu_unwind_execute+0x90>
 80046f8:	e1a00005 	mov	r0, r5
 80046fc:	ebffff3e 	bl	80043fc <next_unwind_byte>
 8004700:	e2502000 	subs	r2, r0, #0
 8004704:	0affff84 	beq	800451c <__gnu_unwind_execute+0x8c>
 8004708:	e21210f0 	ands	r1, r2, #240	; 0xf0
 800470c:	1affff82 	bne	800451c <__gnu_unwind_execute+0x8c>
 8004710:	e1a00007 	mov	r0, r7
 8004714:	e1a03001 	mov	r3, r1
 8004718:	ebfffdbe 	bl	8003e18 <_Unwind_VRS_Pop>
 800471c:	e3500000 	cmp	r0, #0
 8004720:	1affff7d 	bne	800451c <__gnu_unwind_execute+0x8c>
 8004724:	eaffff5e 	b	80044a4 <__gnu_unwind_execute+0x14>
 8004728:	e3a01000 	mov	r1, #0
 800472c:	e28d300c 	add	r3, sp, #12
 8004730:	e58d3000 	str	r3, [sp]
 8004734:	e3a0200d 	mov	r2, #13
 8004738:	e1a03001 	mov	r3, r1
 800473c:	e1a00007 	mov	r0, r7
 8004740:	ebfffc1f 	bl	80037c4 <_Unwind_VRS_Get>
 8004744:	e1a00005 	mov	r0, r5
 8004748:	ebffff2b 	bl	80043fc <next_unwind_byte>
 800474c:	e3100080 	tst	r0, #128	; 0x80
 8004750:	e3a04002 	mov	r4, #2
 8004754:	0a000008 	beq	800477c <__gnu_unwind_execute+0x2ec>
 8004758:	e59d300c 	ldr	r3, [sp, #12]
 800475c:	e200007f 	and	r0, r0, #127	; 0x7f
 8004760:	e0833410 	add	r3, r3, r0, lsl r4
 8004764:	e1a00005 	mov	r0, r5
 8004768:	e58d300c 	str	r3, [sp, #12]
 800476c:	ebffff22 	bl	80043fc <next_unwind_byte>
 8004770:	e3100080 	tst	r0, #128	; 0x80
 8004774:	e2844007 	add	r4, r4, #7
 8004778:	1afffff6 	bne	8004758 <__gnu_unwind_execute+0x2c8>
 800477c:	e3a01000 	mov	r1, #0
 8004780:	e59d300c 	ldr	r3, [sp, #12]
 8004784:	e28d200c 	add	r2, sp, #12
 8004788:	e200007f 	and	r0, r0, #127	; 0x7f
 800478c:	e2833f81 	add	r3, r3, #516	; 0x204
 8004790:	e0834410 	add	r4, r3, r0, lsl r4
 8004794:	e58d2000 	str	r2, [sp]
 8004798:	e1a03001 	mov	r3, r1
 800479c:	e1a00007 	mov	r0, r7
 80047a0:	e3a0200d 	mov	r2, #13
 80047a4:	e58d400c 	str	r4, [sp, #12]
 80047a8:	ebfffc28 	bl	8003850 <_Unwind_VRS_Set>
 80047ac:	eaffff3c 	b	80044a4 <__gnu_unwind_execute+0x14>
 80047b0:	e1a00005 	mov	r0, r5
 80047b4:	ebffff10 	bl	80043fc <next_unwind_byte>
 80047b8:	e3a01001 	mov	r1, #1
 80047bc:	e200200f 	and	r2, r0, #15
 80047c0:	e0822001 	add	r2, r2, r1
 80047c4:	e20000f0 	and	r0, r0, #240	; 0xf0
 80047c8:	e1822600 	orr	r2, r2, r0, lsl #12
 80047cc:	eaffff7f 	b	80045d0 <__gnu_unwind_execute+0x140>
 80047d0:	e1a00005 	mov	r0, r5
 80047d4:	ebffff08 	bl	80043fc <next_unwind_byte>
 80047d8:	e200200f 	and	r2, r0, #15
 80047dc:	e2822001 	add	r2, r2, #1
 80047e0:	e20000f0 	and	r0, r0, #240	; 0xf0
 80047e4:	e3a01003 	mov	r1, #3
 80047e8:	e1822600 	orr	r2, r2, r0, lsl #12
 80047ec:	eaffff77 	b	80045d0 <__gnu_unwind_execute+0x140>
 80047f0:	e1a00005 	mov	r0, r5
 80047f4:	ebffff00 	bl	80043fc <next_unwind_byte>
 80047f8:	e2502000 	subs	r2, r0, #0
 80047fc:	0affff46 	beq	800451c <__gnu_unwind_execute+0x8c>
 8004800:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004804:	1affff44 	bne	800451c <__gnu_unwind_execute+0x8c>
 8004808:	e1a00007 	mov	r0, r7
 800480c:	e3a01004 	mov	r1, #4
 8004810:	ebfffd80 	bl	8003e18 <_Unwind_VRS_Pop>
 8004814:	e3500000 	cmp	r0, #0
 8004818:	1affff3f 	bne	800451c <__gnu_unwind_execute+0x8c>
 800481c:	eaffff20 	b	80044a4 <__gnu_unwind_execute+0x14>
 8004820:	e200200f 	and	r2, r0, #15
 8004824:	e2822001 	add	r2, r2, #1
 8004828:	e3a01003 	mov	r1, #3
 800482c:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8004830:	eaffff66 	b	80045d0 <__gnu_unwind_execute+0x140>
 8004834:	e1a00005 	mov	r0, r5
 8004838:	ebfffeef 	bl	80043fc <next_unwind_byte>
 800483c:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004840:	e200300f 	and	r3, r0, #15
 8004844:	e2822010 	add	r2, r2, #16
 8004848:	e2833001 	add	r3, r3, #1
 800484c:	e1832602 	orr	r2, r3, r2, lsl #12
 8004850:	eaffff2b 	b	8004504 <__gnu_unwind_execute+0x74>

08004854 <__gnu_unwind_frame>:
 8004854:	e3a0c003 	mov	ip, #3
 8004858:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800485c:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004860:	e24dd014 	sub	sp, sp, #20
 8004864:	e5932004 	ldr	r2, [r3, #4]
 8004868:	e5cdc00c 	strb	ip, [sp, #12]
 800486c:	e5d3c007 	ldrb	ip, [r3, #7]
 8004870:	e1a02402 	lsl	r2, r2, #8
 8004874:	e2833008 	add	r3, r3, #8
 8004878:	e1a00001 	mov	r0, r1
 800487c:	e28d1004 	add	r1, sp, #4
 8004880:	e58d2004 	str	r2, [sp, #4]
 8004884:	e5cdc00d 	strb	ip, [sp, #13]
 8004888:	e58d3008 	str	r3, [sp, #8]
 800488c:	ebfffeff 	bl	8004490 <__gnu_unwind_execute>
 8004890:	e28dd014 	add	sp, sp, #20
 8004894:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004898:	e12fff1e 	bx	lr

0800489c <_Unwind_GetRegionStart>:
 800489c:	e92d4008 	push	{r3, lr}
 80048a0:	ebfffef9 	bl	800448c <unwind_UCB_from_context>
 80048a4:	e8bd4008 	pop	{r3, lr}
 80048a8:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 80048ac:	e12fff1e 	bx	lr

080048b0 <_Unwind_GetLanguageSpecificData>:
 80048b0:	e92d4008 	push	{r3, lr}
 80048b4:	ebfffef4 	bl	800448c <unwind_UCB_from_context>
 80048b8:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80048bc:	e5d30007 	ldrb	r0, [r3, #7]
 80048c0:	e0830100 	add	r0, r3, r0, lsl #2
 80048c4:	e2800008 	add	r0, r0, #8
 80048c8:	e8bd4008 	pop	{r3, lr}
 80048cc:	e12fff1e 	bx	lr

080048d0 <_Unwind_GetDataRelBase>:
 80048d0:	e92d4008 	push	{r3, lr}
 80048d4:	eb000001 	bl	80048e0 <abort>

080048d8 <_Unwind_GetTextRelBase>:
 80048d8:	e92d4008 	push	{r3, lr}
 80048dc:	ebffffff 	bl	80048e0 <abort>

080048e0 <abort>:
 80048e0:	e92d4008 	push	{r3, lr}
 80048e4:	e3a00006 	mov	r0, #6
 80048e8:	eb000063 	bl	8004a7c <raise>
 80048ec:	e3a00001 	mov	r0, #1
 80048f0:	eb000086 	bl	8004b10 <_exit>

080048f4 <memcpy>:
 80048f4:	e352000f 	cmp	r2, #15
 80048f8:	e92d4070 	push	{r4, r5, r6, lr}
 80048fc:	9a000029 	bls	80049a8 <memcpy+0xb4>
 8004900:	e1803001 	orr	r3, r0, r1
 8004904:	e3130003 	tst	r3, #3
 8004908:	1a000031 	bne	80049d4 <memcpy+0xe0>
 800490c:	e1a0e002 	mov	lr, r2
 8004910:	e280c010 	add	ip, r0, #16
 8004914:	e2813010 	add	r3, r1, #16
 8004918:	e5134010 	ldr	r4, [r3, #-16]
 800491c:	e50c4010 	str	r4, [ip, #-16]
 8004920:	e513400c 	ldr	r4, [r3, #-12]
 8004924:	e50c400c 	str	r4, [ip, #-12]
 8004928:	e5134008 	ldr	r4, [r3, #-8]
 800492c:	e50c4008 	str	r4, [ip, #-8]
 8004930:	e24ee010 	sub	lr, lr, #16
 8004934:	e5134004 	ldr	r4, [r3, #-4]
 8004938:	e35e000f 	cmp	lr, #15
 800493c:	e50c4004 	str	r4, [ip, #-4]
 8004940:	e2833010 	add	r3, r3, #16
 8004944:	e28cc010 	add	ip, ip, #16
 8004948:	8afffff2 	bhi	8004918 <memcpy+0x24>
 800494c:	e2423010 	sub	r3, r2, #16
 8004950:	e3c3300f 	bic	r3, r3, #15
 8004954:	e202600f 	and	r6, r2, #15
 8004958:	e2833010 	add	r3, r3, #16
 800495c:	e3560003 	cmp	r6, #3
 8004960:	e0811003 	add	r1, r1, r3
 8004964:	e0803003 	add	r3, r0, r3
 8004968:	9a00001b 	bls	80049dc <memcpy+0xe8>
 800496c:	e1a04001 	mov	r4, r1
 8004970:	e1a0c006 	mov	ip, r6
 8004974:	e243e004 	sub	lr, r3, #4
 8004978:	e24cc004 	sub	ip, ip, #4
 800497c:	e4945004 	ldr	r5, [r4], #4
 8004980:	e35c0003 	cmp	ip, #3
 8004984:	e5ae5004 	str	r5, [lr, #4]!
 8004988:	8afffffa 	bhi	8004978 <memcpy+0x84>
 800498c:	e246c004 	sub	ip, r6, #4
 8004990:	e3ccc003 	bic	ip, ip, #3
 8004994:	e28cc004 	add	ip, ip, #4
 8004998:	e083300c 	add	r3, r3, ip
 800499c:	e081100c 	add	r1, r1, ip
 80049a0:	e2022003 	and	r2, r2, #3
 80049a4:	ea000000 	b	80049ac <memcpy+0xb8>
 80049a8:	e1a03000 	mov	r3, r0
 80049ac:	e3520000 	cmp	r2, #0
 80049b0:	0a000005 	beq	80049cc <memcpy+0xd8>
 80049b4:	e2433001 	sub	r3, r3, #1
 80049b8:	e0812002 	add	r2, r1, r2
 80049bc:	e4d1c001 	ldrb	ip, [r1], #1
 80049c0:	e1510002 	cmp	r1, r2
 80049c4:	e5e3c001 	strb	ip, [r3, #1]!
 80049c8:	1afffffb 	bne	80049bc <memcpy+0xc8>
 80049cc:	e8bd4070 	pop	{r4, r5, r6, lr}
 80049d0:	e12fff1e 	bx	lr
 80049d4:	e1a03000 	mov	r3, r0
 80049d8:	eafffff5 	b	80049b4 <memcpy+0xc0>
 80049dc:	e1a02006 	mov	r2, r6
 80049e0:	eafffff1 	b	80049ac <memcpy+0xb8>

080049e4 <_raise_r>:
 80049e4:	e351001f 	cmp	r1, #31
 80049e8:	e92d4038 	push	{r3, r4, r5, lr}
 80049ec:	e1a05000 	mov	r5, r0
 80049f0:	83a03016 	movhi	r3, #22
 80049f4:	83e00000 	mvnhi	r0, #0
 80049f8:	85853000 	strhi	r3, [r5]
 80049fc:	8a000013 	bhi	8004a50 <_raise_r+0x6c>
 8004a00:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004a04:	e3520000 	cmp	r2, #0
 8004a08:	e1a04001 	mov	r4, r1
 8004a0c:	0a000013 	beq	8004a60 <_raise_r+0x7c>
 8004a10:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004a14:	e3530000 	cmp	r3, #0
 8004a18:	0a000010 	beq	8004a60 <_raise_r+0x7c>
 8004a1c:	e3530001 	cmp	r3, #1
 8004a20:	0a00000c 	beq	8004a58 <_raise_r+0x74>
 8004a24:	e3730001 	cmn	r3, #1
 8004a28:	03a03016 	moveq	r3, #22
 8004a2c:	03a00001 	moveq	r0, #1
 8004a30:	05853000 	streq	r3, [r5]
 8004a34:	0a000005 	beq	8004a50 <_raise_r+0x6c>
 8004a38:	e3a05000 	mov	r5, #0
 8004a3c:	e1a00001 	mov	r0, r1
 8004a40:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004a44:	e1a0e00f 	mov	lr, pc
 8004a48:	e12fff13 	bx	r3
 8004a4c:	e1a00005 	mov	r0, r5
 8004a50:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004a54:	e12fff1e 	bx	lr
 8004a58:	e3a00000 	mov	r0, #0
 8004a5c:	eafffffb 	b	8004a50 <_raise_r+0x6c>
 8004a60:	e1a00005 	mov	r0, r5
 8004a64:	eb000019 	bl	8004ad0 <_getpid_r>
 8004a68:	e1a02004 	mov	r2, r4
 8004a6c:	e1a01000 	mov	r1, r0
 8004a70:	e1a00005 	mov	r0, r5
 8004a74:	eb000005 	bl	8004a90 <_kill_r>
 8004a78:	eafffff4 	b	8004a50 <_raise_r+0x6c>

08004a7c <raise>:
 8004a7c:	e59f3008 	ldr	r3, [pc, #8]	; 8004a8c <raise+0x10>
 8004a80:	e1a01000 	mov	r1, r0
 8004a84:	e5930000 	ldr	r0, [r3]
 8004a88:	eaffffd5 	b	80049e4 <_raise_r>
 8004a8c:	20000518 	.word	0x20000518

08004a90 <_kill_r>:
 8004a90:	e92d4038 	push	{r3, r4, r5, lr}
 8004a94:	e3a03000 	mov	r3, #0
 8004a98:	e59f402c 	ldr	r4, [pc, #44]	; 8004acc <_kill_r+0x3c>
 8004a9c:	e1a05000 	mov	r5, r0
 8004aa0:	e1a00001 	mov	r0, r1
 8004aa4:	e1a01002 	mov	r1, r2
 8004aa8:	e5843000 	str	r3, [r4]
 8004aac:	eb000011 	bl	8004af8 <_kill>
 8004ab0:	e3700001 	cmn	r0, #1
 8004ab4:	1a000002 	bne	8004ac4 <_kill_r+0x34>
 8004ab8:	e5943000 	ldr	r3, [r4]
 8004abc:	e3530000 	cmp	r3, #0
 8004ac0:	15853000 	strne	r3, [r5]
 8004ac4:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004ac8:	e12fff1e 	bx	lr
 8004acc:	20001090 	.word	0x20001090

08004ad0 <_getpid_r>:
 8004ad0:	e92d4008 	push	{r3, lr}
 8004ad4:	eb000001 	bl	8004ae0 <_getpid>
 8004ad8:	e8bd4008 	pop	{r3, lr}
 8004adc:	e12fff1e 	bx	lr

08004ae0 <_getpid>:
 8004ae0:	e3a02058 	mov	r2, #88	; 0x58
 8004ae4:	e59f3008 	ldr	r3, [pc, #8]	; 8004af4 <_getpid+0x14>
 8004ae8:	e3e00000 	mvn	r0, #0
 8004aec:	e5832000 	str	r2, [r3]
 8004af0:	e12fff1e 	bx	lr
 8004af4:	20001090 	.word	0x20001090

08004af8 <_kill>:
 8004af8:	e3a02058 	mov	r2, #88	; 0x58
 8004afc:	e59f3008 	ldr	r3, [pc, #8]	; 8004b0c <_kill+0x14>
 8004b00:	e3e00000 	mvn	r0, #0
 8004b04:	e5832000 	str	r2, [r3]
 8004b08:	e12fff1e 	bx	lr
 8004b0c:	20001090 	.word	0x20001090

08004b10 <_exit>:
 8004b10:	eafffffe 	b	8004b10 <_exit>

08004b14 <_init>:
 8004b14:	e1a0c00d 	mov	ip, sp
 8004b18:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004b1c:	e24cb004 	sub	fp, ip, #4
 8004b20:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004b24:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004b28:	e12fff1e 	bx	lr

08004b2c <_fini>:
 8004b2c:	e1a0c00d 	mov	ip, sp
 8004b30:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004b34:	e24cb004 	sub	fp, ip, #4
 8004b38:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004b3c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004b40:	e12fff1e 	bx	lr
 8004b44:	453e3e3e 	.word	0x453e3e3e
 8004b48:	72652020 	.word	0x72652020
 8004b4c:	20726f72 	.word	0x20726f72
 8004b50:	65646f63 	.word	0x65646f63
 8004b54:	3a752520 	.word	0x3a752520
 8004b58:	000a7525 	.word	0x000a7525
 8004b5c:	433e3e3e 	.word	0x433e3e3e
 8004b60:	69250020 	.word	0x69250020
 8004b64:	20692520 	.word	0x20692520
 8004b68:	25206925 	.word	0x25206925
 8004b6c:	25002069 	.word	0x25002069
 8004b70:	69252069 	.word	0x69252069
 8004b74:	20752520 	.word	0x20752520
 8004b78:	00206925 	.word	0x00206925
 8004b7c:	3e000a0a 	.word	0x3e000a0a
 8004b80:	204c3e3e 	.word	0x204c3e3e
 8004b84:	20692500 	.word	0x20692500
 8004b88:	25206925 	.word	0x25206925
 8004b8c:	75252075 	.word	0x75252075
 8004b90:	3e3e0020 	.word	0x3e3e0020
 8004b94:	00204f3e 	.word	0x00204f3e
 8004b98:	20533e3e 	.word	0x20533e3e
 8004b9c:	65770a00 	.word	0x65770a00
 8004ba0:	6d6f636c 	.word	0x6d6f636c
 8004ba4:	6f742065 	.word	0x6f742065
 8004ba8:	7a755320 	.word	0x7a755320
 8004bac:	4f616875 	.word	0x4f616875
 8004bb0:	5f5e2053 	.word	0x5f5e2053
 8004bb4:	2e32205e 	.word	0x2e32205e
 8004bb8:	0a362e30 	.word	0x0a362e30
 8004bbc:	4c495542 	.word	0x4c495542
 8004bc0:	754a2044 	.word	0x754a2044
 8004bc4:	3532206e 	.word	0x3532206e
 8004bc8:	31303220 	.word	0x31303220
 8004bcc:	38312036 	.word	0x38312036
 8004bd0:	3a32303a 	.word	0x3a32303a
 8004bd4:	000a3733 	.word	0x000a3733
 8004bd8:	6f636e65 	.word	0x6f636e65
 8004bdc:	73726564 	.word	0x73726564
 8004be0:	20752520 	.word	0x20752520
 8004be4:	25207525 	.word	0x25207525
 8004be8:	79202c75 	.word	0x79202c75
 8004bec:	25207761 	.word	0x25207761
 8004bf0:	0a69      	.short	0x0a69
 8004bf2:	00          	.byte	0x00
 8004bf3:	73          	.byte	0x73
 8004bf4:	6f696474 	.word	0x6f696474
 8004bf8:	696e6920 	.word	0x696e6920
 8004bfc:	6f642074 	.word	0x6f642074
 8004c00:	000a656e 	.word	0x000a656e
 8004c04:	00000043 	.word	0x00000043

08004c08 <__EH_FRAME_BEGIN__>:
 8004c08:	00000000                                ....
