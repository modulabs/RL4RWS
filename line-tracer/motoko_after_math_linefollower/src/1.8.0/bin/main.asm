
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN6CRobot14get_error_typeEv>:
 8000188:	6d80      	ldr	r0, [r0, #88]	; 0x58
 800018a:	4770      	bx	lr

0800018c <_ZN6CRobot14get_error_codeEv>:
 800018c:	6d40      	ldr	r0, [r0, #84]	; 0x54
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
 80001c2:	b208      	sxth	r0, r1
 80001c4:	b211      	sxth	r1, r2
 80001c6:	f002 bbef 	b.w	80029a8 <drv8834_run>

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
 80001e0:	f001 fc54 	bl	8001a8c <rgb_get>
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
 800020e:	f001 fc3d 	bl	8001a8c <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fc32 	bl	8001a8c <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fc28 	bl	8001a8c <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fc1f 	bl	8001a8c <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fc16 	bl	8001a8c <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fc0f 	bl	8001a8c <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fc0a 	bl	8001a8c <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fc03 	bl	8001a8c <rgb_get>
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
 80002a8:	f001 fbf0 	bl	8001a8c <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fbed 	bl	8001a8c <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fbe1 	bl	8001a8c <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fbde 	bl	8001a8c <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fbd6 	bl	8001a8c <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fbd3 	bl	8001a8c <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fbc8 	bl	8001a8c <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fbc5 	bl	8001a8c <rgb_get>
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
 800031a:	f104 0664 	add.w	r6, r4, #100	; 0x64
 800031e:	2500      	movs	r5, #0
 8000320:	f001 fbb4 	bl	8001a8c <rgb_get>
 8000324:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000328:	3501      	adds	r5, #1
 800032a:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 800032e:	f846 3f04 	str.w	r3, [r6, #4]!
 8000332:	2d08      	cmp	r5, #8
 8000334:	d1f4      	bne.n	8000320 <_ZN6CRobot16line_sensor_readEv+0x14c>
 8000336:	6fa6      	ldr	r6, [r4, #120]	; 0x78
 8000338:	f8d4 e074 	ldr.w	lr, [r4, #116]	; 0x74
 800033c:	6fe7      	ldr	r7, [r4, #124]	; 0x7c
 800033e:	f9b4 5000 	ldrsh.w	r5, [r4]
 8000342:	eb1e 0206 	adds.w	r2, lr, r6
 8000346:	bf1f      	itttt	ne
 8000348:	4b3f      	ldrne	r3, [pc, #252]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 800034a:	f9b3 1006 	ldrshne.w	r1, [r3, #6]
 800034e:	f9b3 3008 	ldrshne.w	r3, [r3, #8]
 8000352:	4373      	mulne	r3, r6
 8000354:	bf17      	itett	ne
 8000356:	fb01 330e 	mlane	r3, r1, lr, r3
 800035a:	4613      	moveq	r3, r2
 800035c:	fb93 f3f2 	sdivne	r3, r3, r2
 8000360:	2102      	movne	r1, #2
 8000362:	bf18      	it	ne
 8000364:	fb92 f2f1 	sdivne	r2, r2, r1
 8000368:	19b9      	adds	r1, r7, r6
 800036a:	d00c      	beq.n	8000386 <_ZN6CRobot16line_sensor_readEv+0x1b2>
 800036c:	42af      	cmp	r7, r5
 800036e:	dd0a      	ble.n	8000386 <_ZN6CRobot16line_sensor_readEv+0x1b2>
 8000370:	4b35      	ldr	r3, [pc, #212]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000372:	f9b3 0008 	ldrsh.w	r0, [r3, #8]
 8000376:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 800037a:	4370      	muls	r0, r6
 800037c:	fb02 0007 	mla	r0, r2, r7, r0
 8000380:	463a      	mov	r2, r7
 8000382:	fb90 f3f1 	sdiv	r3, r0, r1
 8000386:	6f26      	ldr	r6, [r4, #112]	; 0x70
 8000388:	eb16 0c0e 	adds.w	ip, r6, lr
 800038c:	d00d      	beq.n	80003aa <_ZN6CRobot16line_sensor_readEv+0x1d6>
 800038e:	42ae      	cmp	r6, r5
 8000390:	dd0b      	ble.n	80003aa <_ZN6CRobot16line_sensor_readEv+0x1d6>
 8000392:	4b2d      	ldr	r3, [pc, #180]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000394:	f9b3 1006 	ldrsh.w	r1, [r3, #6]
 8000398:	f9b3 0004 	ldrsh.w	r0, [r3, #4]
 800039c:	fb01 f10e 	mul.w	r1, r1, lr
 80003a0:	4632      	mov	r2, r6
 80003a2:	fb00 1106 	mla	r1, r0, r6, r1
 80003a6:	fb91 f3fc 	sdiv	r3, r1, ip
 80003aa:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 80003ae:	eb11 0e07 	adds.w	lr, r1, r7
 80003b2:	d00c      	beq.n	80003ce <_ZN6CRobot16line_sensor_readEv+0x1fa>
 80003b4:	42a9      	cmp	r1, r5
 80003b6:	dd0a      	ble.n	80003ce <_ZN6CRobot16line_sensor_readEv+0x1fa>
 80003b8:	4b23      	ldr	r3, [pc, #140]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003ba:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 80003be:	f9b3 000c 	ldrsh.w	r0, [r3, #12]
 80003c2:	437a      	muls	r2, r7
 80003c4:	fb00 2201 	mla	r2, r0, r1, r2
 80003c8:	fb92 f3fe 	sdiv	r3, r2, lr
 80003cc:	460a      	mov	r2, r1
 80003ce:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
 80003d0:	1988      	adds	r0, r1, r6
 80003d2:	d00c      	beq.n	80003ee <_ZN6CRobot16line_sensor_readEv+0x21a>
 80003d4:	42a9      	cmp	r1, r5
 80003d6:	dd0a      	ble.n	80003ee <_ZN6CRobot16line_sensor_readEv+0x21a>
 80003d8:	4b1b      	ldr	r3, [pc, #108]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003da:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
 80003de:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
 80003e2:	4373      	muls	r3, r6
 80003e4:	fb02 3301 	mla	r3, r2, r1, r3
 80003e8:	460a      	mov	r2, r1
 80003ea:	fb93 f3f0 	sdiv	r3, r3, r0
 80003ee:	6ea1      	ldr	r1, [r4, #104]	; 0x68
 80003f0:	42a9      	cmp	r1, r5
 80003f2:	bfc4      	itt	gt
 80003f4:	4b14      	ldrgt	r3, [pc, #80]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003f6:	460a      	movgt	r2, r1
 80003f8:	f8d4 1084 	ldr.w	r1, [r4, #132]	; 0x84
 80003fc:	bfc8      	it	gt
 80003fe:	f9b3 3000 	ldrshgt.w	r3, [r3]
 8000402:	42a9      	cmp	r1, r5
 8000404:	dd03      	ble.n	800040e <_ZN6CRobot16line_sensor_readEv+0x23a>
 8000406:	4b10      	ldr	r3, [pc, #64]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000408:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 800040c:	e001      	b.n	8000412 <_ZN6CRobot16line_sensor_readEv+0x23e>
 800040e:	42aa      	cmp	r2, r5
 8000410:	dd0d      	ble.n	800042e <_ZN6CRobot16line_sensor_readEv+0x25a>
 8000412:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000416:	dc05      	bgt.n	8000424 <_ZN6CRobot16line_sensor_readEv+0x250>
 8000418:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 800041c:	4293      	cmp	r3, r2
 800041e:	bfb8      	it	lt
 8000420:	4613      	movlt	r3, r2
 8000422:	e001      	b.n	8000428 <_ZN6CRobot16line_sensor_readEv+0x254>
 8000424:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000428:	6363      	str	r3, [r4, #52]	; 0x34
 800042a:	2301      	movs	r3, #1
 800042c:	e000      	b.n	8000430 <_ZN6CRobot16line_sensor_readEv+0x25c>
 800042e:	2300      	movs	r3, #0
 8000430:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8000434:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000438:	20000010 	.word	0x20000010
 800043c:	2000007c 	.word	0x2000007c
 8000440:	20000058 	.word	0x20000058
 8000444:	20000034 	.word	0x20000034
 8000448:	20000000 	.word	0x20000000

0800044c <_ZN6CRobot19process_rgb_sensorsEv>:
 800044c:	b510      	push	{r4, lr}
 800044e:	4604      	mov	r4, r0
 8000450:	f001 fb20 	bl	8001a94 <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 fad0 	bl	8001a08 <rgb_init>
 8000468:	f001 fb14 	bl	8001a94 <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 faad 	bl	80019d2 <rgb_i2c_read_reg>
 8000478:	f104 015b 	add.w	r1, r4, #91	; 0x5b
 800047c:	462b      	mov	r3, r5
 800047e:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 8000482:	2a69      	cmp	r2, #105	; 0x69
 8000484:	bf1c      	itt	ne
 8000486:	2201      	movne	r2, #1
 8000488:	409a      	lslne	r2, r3
 800048a:	f103 0301 	add.w	r3, r3, #1
 800048e:	bf18      	it	ne
 8000490:	4315      	orrne	r5, r2
 8000492:	2b09      	cmp	r3, #9
 8000494:	d1f3      	bne.n	800047e <_ZN6CRobot16line_sensor_initEv+0x20>
 8000496:	f104 0364 	add.w	r3, r4, #100	; 0x64
 800049a:	f104 0284 	add.w	r2, r4, #132	; 0x84
 800049e:	2100      	movs	r1, #0
 80004a0:	f843 1f04 	str.w	r1, [r3, #4]!
 80004a4:	4293      	cmp	r3, r2
 80004a6:	d1fa      	bne.n	800049e <_ZN6CRobot16line_sensor_initEv+0x40>
 80004a8:	4620      	mov	r0, r4
 80004aa:	f7ff fe93 	bl	80001d4 <_ZN6CRobot16line_sensor_readEv>
 80004ae:	4628      	mov	r0, r5
 80004b0:	bd38      	pop	{r3, r4, r5, pc}

080004b2 <_ZN6CRobot12lsm9ds0_readEv>:
 80004b2:	b538      	push	{r3, r4, r5, lr}
 80004b4:	2128      	movs	r1, #40	; 0x28
 80004b6:	4604      	mov	r4, r0
 80004b8:	20d4      	movs	r0, #212	; 0xd4
 80004ba:	f002 f938 	bl	800272e <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f933 	bl	800272e <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f92b 	bl	800272e <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f926 	bl	800272e <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f91e 	bl	800272e <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f919 	bl	800272e <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f911 	bl	800272e <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f90c 	bl	800272e <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f904 	bl	800272e <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f8ff 	bl	800272e <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f8f7 	bl	800272e <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f8f2 	bl	800272e <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f8ea 	bl	800272e <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f8e5 	bl	800272e <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f002 f8dd 	bl	800272e <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f002 f8d8 	bl	800272e <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f002 f8d0 	bl	800272e <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f002 f8cb 	bl	800272e <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f002 f8c3 	bl	800272e <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f002 f8be 	bl	800272e <i2c_read_reg>
 80005b2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005b6:	f8a4 00a8 	strh.w	r0, [r4, #168]	; 0xa8
 80005ba:	bd38      	pop	{r3, r4, r5, pc}

080005bc <_ZN6CRobot18process_imu_sensorEv>:
 80005bc:	b510      	push	{r4, lr}
 80005be:	4604      	mov	r4, r0
 80005c0:	f7ff ff77 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 80005c4:	f9b4 3094 	ldrsh.w	r3, [r4, #148]	; 0x94
 80005c8:	f8d4 209c 	ldr.w	r2, [r4, #156]	; 0x9c
 80005cc:	1a9a      	subs	r2, r3, r2
 80005ce:	6ca3      	ldr	r3, [r4, #72]	; 0x48
 80005d0:	2164      	movs	r1, #100	; 0x64
 80005d2:	fb92 f2f1 	sdiv	r2, r2, r1
 80005d6:	441a      	add	r2, r3
 80005d8:	64a2      	str	r2, [r4, #72]	; 0x48
 80005da:	f8d4 30a0 	ldr.w	r3, [r4, #160]	; 0xa0
 80005de:	f9b4 2096 	ldrsh.w	r2, [r4, #150]	; 0x96
 80005e2:	1ad2      	subs	r2, r2, r3
 80005e4:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 80005e6:	fb92 f2f1 	sdiv	r2, r2, r1
 80005ea:	441a      	add	r2, r3
 80005ec:	64e2      	str	r2, [r4, #76]	; 0x4c
 80005ee:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
 80005f2:	f9b4 2098 	ldrsh.w	r2, [r4, #152]	; 0x98
 80005f6:	1ad3      	subs	r3, r2, r3
 80005f8:	6d22      	ldr	r2, [r4, #80]	; 0x50
 80005fa:	fb93 f3f1 	sdiv	r3, r3, r1
 80005fe:	4413      	add	r3, r2
 8000600:	6523      	str	r3, [r4, #80]	; 0x50
 8000602:	bd10      	pop	{r4, pc}

08000604 <_ZN6CRobot12lsm9ds0_initEv>:
 8000604:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000608:	210f      	movs	r1, #15
 800060a:	4604      	mov	r4, r0
 800060c:	20d4      	movs	r0, #212	; 0xd4
 800060e:	f002 f88e 	bl	800272e <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f002 f887 	bl	800272e <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f002 f86d 	bl	8002708 <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f002 f868 	bl	8002708 <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f002 f863 	bl	8002708 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f002 f85e 	bl	8002708 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f002 f859 	bl	8002708 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f002 f854 	bl	8002708 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f002 f84f 	bl	8002708 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f002 f84a 	bl	8002708 <i2c_write_reg>
 8000674:	4620      	mov	r0, r4
 8000676:	f7ff ff1c 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 800067a:	2600      	movs	r6, #0
 800067c:	2510      	movs	r5, #16
 800067e:	4637      	mov	r7, r6
 8000680:	46b0      	mov	r8, r6
 8000682:	4620      	mov	r0, r4
 8000684:	f7ff ff15 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 8000688:	f9b4 3094 	ldrsh.w	r3, [r4, #148]	; 0x94
 800068c:	4498      	add	r8, r3
 800068e:	f9b4 3096 	ldrsh.w	r3, [r4, #150]	; 0x96
 8000692:	441f      	add	r7, r3
 8000694:	f9b4 3098 	ldrsh.w	r3, [r4, #152]	; 0x98
 8000698:	3d01      	subs	r5, #1
 800069a:	441e      	add	r6, r3
 800069c:	d1f1      	bne.n	8000682 <_ZN6CRobot12lsm9ds0_initEv+0x7e>
 800069e:	2210      	movs	r2, #16
 80006a0:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 80006a4:	fb98 f3f2 	sdiv	r3, r8, r2
 80006a8:	fb97 f7f2 	sdiv	r7, r7, r2
 80006ac:	fb96 f6f2 	sdiv	r6, r6, r2
 80006b0:	f8c4 309c 	str.w	r3, [r4, #156]	; 0x9c
 80006b4:	f8c4 70a0 	str.w	r7, [r4, #160]	; 0xa0
 80006b8:	f8c4 60a4 	str.w	r6, [r4, #164]	; 0xa4
 80006bc:	f8a4 508a 	strh.w	r5, [r4, #138]	; 0x8a
 80006c0:	f8a4 508c 	strh.w	r5, [r4, #140]	; 0x8c
 80006c4:	f8a4 508e 	strh.w	r5, [r4, #142]	; 0x8e
 80006c8:	f8a4 5090 	strh.w	r5, [r4, #144]	; 0x90
 80006cc:	f8a4 5092 	strh.w	r5, [r4, #146]	; 0x92
 80006d0:	f8a4 5094 	strh.w	r5, [r4, #148]	; 0x94
 80006d4:	f8a4 5096 	strh.w	r5, [r4, #150]	; 0x96
 80006d8:	f8a4 5098 	strh.w	r5, [r4, #152]	; 0x98
 80006dc:	f8a4 50a8 	strh.w	r5, [r4, #168]	; 0xa8
 80006e0:	e002      	b.n	80006e8 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006e2:	2501      	movs	r5, #1
 80006e4:	e000      	b.n	80006e8 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006e6:	2502      	movs	r5, #2
 80006e8:	4628      	mov	r0, r5
 80006ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080006ee <_ZN6CRobot4initEv>:
 80006ee:	2300      	movs	r3, #0
 80006f0:	b510      	push	{r4, lr}
 80006f2:	6543      	str	r3, [r0, #84]	; 0x54
 80006f4:	6583      	str	r3, [r0, #88]	; 0x58
 80006f6:	4604      	mov	r4, r0
 80006f8:	f7ff feb1 	bl	800045e <_ZN6CRobot16line_sensor_initEv>
 80006fc:	b110      	cbz	r0, 8000704 <_ZN6CRobot4initEv+0x16>
 80006fe:	6560      	str	r0, [r4, #84]	; 0x54
 8000700:	2302      	movs	r3, #2
 8000702:	e00d      	b.n	8000720 <_ZN6CRobot4initEv+0x32>
 8000704:	f884 0030 	strb.w	r0, [r4, #48]	; 0x30
 8000708:	6360      	str	r0, [r4, #52]	; 0x34
 800070a:	63a0      	str	r0, [r4, #56]	; 0x38
 800070c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800070e:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 8000712:	6460      	str	r0, [r4, #68]	; 0x44
 8000714:	4620      	mov	r0, r4
 8000716:	f7ff ff75 	bl	8000604 <_ZN6CRobot12lsm9ds0_initEv>
 800071a:	b118      	cbz	r0, 8000724 <_ZN6CRobot4initEv+0x36>
 800071c:	6560      	str	r0, [r4, #84]	; 0x54
 800071e:	2303      	movs	r3, #3
 8000720:	65a3      	str	r3, [r4, #88]	; 0x58
 8000722:	bd10      	pop	{r4, pc}
 8000724:	64a0      	str	r0, [r4, #72]	; 0x48
 8000726:	64e0      	str	r0, [r4, #76]	; 0x4c
 8000728:	6520      	str	r0, [r4, #80]	; 0x50
 800072a:	bd10      	pop	{r4, pc}

0800072c <abort_error_>:
 800072c:	b570      	push	{r4, r5, r6, lr}
 800072e:	4605      	mov	r5, r0
 8000730:	460e      	mov	r6, r1
 8000732:	480f      	ldr	r0, [pc, #60]	; (8000770 <abort_error_+0x44>)
 8000734:	4629      	mov	r1, r5
 8000736:	4632      	mov	r2, r6
 8000738:	f000 fde2 	bl	8001300 <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 faf0 	bl	8002d2c <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fd73 	bl	8002238 <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 faf3 	bl	8002d40 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fd6c 	bl	8002238 <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fd66 	bl	8002238 <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	08004994 	.word	0x08004994

08000774 <_ZN9CObstacle4initEP6CRobot>:
 8000774:	b111      	cbz	r1, 800077c <_ZN9CObstacle4initEP6CRobot+0x8>
 8000776:	2300      	movs	r3, #0
 8000778:	6003      	str	r3, [r0, #0]
 800077a:	6041      	str	r1, [r0, #4]
 800077c:	4770      	bx	lr
	...

08000780 <_ZN9CObstacle12rotate_robotEi>:
 8000780:	b538      	push	{r3, r4, r5, lr}
 8000782:	4605      	mov	r5, r0
 8000784:	ed2d 8b02 	vpush	{d8}
 8000788:	f240 444c 	movw	r4, #1100	; 0x44c
 800078c:	6840      	ldr	r0, [r0, #4]
 800078e:	ed9f 8a22 	vldr	s16, [pc, #136]	; 8000818 <_ZN9CObstacle12rotate_robotEi+0x98>
 8000792:	434c      	muls	r4, r1
 8000794:	215a      	movs	r1, #90	; 0x5a
 8000796:	fb94 f4f1 	sdiv	r4, r4, r1
 800079a:	f7ff fd16 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800079e:	6868      	ldr	r0, [r5, #4]
 80007a0:	f7ff fd0d 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007a4:	6883      	ldr	r3, [r0, #8]
 80007a6:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80007aa:	2b00      	cmp	r3, #0
 80007ac:	bfb8      	it	lt
 80007ae:	425b      	neglt	r3, r3
 80007b0:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80007b4:	4293      	cmp	r3, r2
 80007b6:	da22      	bge.n	80007fe <_ZN9CObstacle12rotate_robotEi+0x7e>
 80007b8:	eddf 7a18 	vldr	s15, [pc, #96]	; 800081c <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007bc:	6868      	ldr	r0, [r5, #4]
 80007be:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007c2:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000820 <_ZN9CObstacle12rotate_robotEi+0xa0>
 80007c6:	eeb4 8a67 	vcmp.f32	s16, s15
 80007ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007ce:	bfc8      	it	gt
 80007d0:	eeb0 8a67 	vmovgt.f32	s16, s15
 80007d4:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000824 <_ZN9CObstacle12rotate_robotEi+0xa4>
 80007d8:	ee68 7a27 	vmul.f32	s15, s16, s15
 80007dc:	2c00      	cmp	r4, #0
 80007de:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80007e2:	ee17 3a90 	vmov	r3, s15
 80007e6:	f1c3 0200 	rsb	r2, r3, #0
 80007ea:	bfd6      	itet	le
 80007ec:	4611      	movle	r1, r2
 80007ee:	4619      	movgt	r1, r3
 80007f0:	461a      	movle	r2, r3
 80007f2:	f7ff fce6 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 80007f6:	200a      	movs	r0, #10
 80007f8:	f001 fd1e 	bl	8002238 <timer_delay_ms>
 80007fc:	e7cf      	b.n	800079e <_ZN9CObstacle12rotate_robotEi+0x1e>
 80007fe:	2100      	movs	r1, #0
 8000800:	6868      	ldr	r0, [r5, #4]
 8000802:	460a      	mov	r2, r1
 8000804:	f7ff fcdd 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000808:	ecbd 8b02 	vpop	{d8}
 800080c:	20c8      	movs	r0, #200	; 0xc8
 800080e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000812:	f001 bd11 	b.w	8002238 <timer_delay_ms>
 8000816:	bf00      	nop
 8000818:	00000000 	.word	0x00000000
 800081c:	3d23d70a 	.word	0x3d23d70a
 8000820:	3ecccccd 	.word	0x3ecccccd
 8000824:	42c80000 	.word	0x42c80000

08000828 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000828:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800082c:	ed2d 8b04 	vpush	{d8-d9}
 8000830:	4604      	mov	r4, r0
 8000832:	460d      	mov	r5, r1
 8000834:	4617      	mov	r7, r2
 8000836:	461e      	mov	r6, r3
 8000838:	f001 fcf0 	bl	800221c <timer_get_time>
 800083c:	4680      	mov	r8, r0
 800083e:	6860      	ldr	r0, [r4, #4]
 8000840:	f7ff fcc3 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000844:	2d00      	cmp	r5, #0
 8000846:	d046      	beq.n	80008d6 <_ZN9CObstacle10go_forwardEijPFhvE+0xae>
 8000848:	ed9f 9a28 	vldr	s18, [pc, #160]	; 80008ec <_ZN9CObstacle10go_forwardEijPFhvE+0xc4>
 800084c:	eeb0 8a49 	vmov.f32	s16, s18
 8000850:	eef0 9a49 	vmov.f32	s19, s18
 8000854:	e001      	b.n	800085a <_ZN9CObstacle10go_forwardEijPFhvE+0x32>
 8000856:	eeb0 8a68 	vmov.f32	s16, s17
 800085a:	f001 fcdf 	bl	800221c <timer_get_time>
 800085e:	eb08 0307 	add.w	r3, r8, r7
 8000862:	4298      	cmp	r0, r3
 8000864:	d237      	bcs.n	80008d6 <_ZN9CObstacle10go_forwardEijPFhvE+0xae>
 8000866:	6860      	ldr	r0, [r4, #4]
 8000868:	f7ff fca9 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 800086c:	edd0 8a02 	vldr	s17, [r0, #8]
 8000870:	eddf 7a1f 	vldr	s15, [pc, #124]	; 80008f0 <_ZN9CObstacle10go_forwardEijPFhvE+0xc8>
 8000874:	ed9f 7a1f 	vldr	s14, [pc, #124]	; 80008f4 <_ZN9CObstacle10go_forwardEijPFhvE+0xcc>
 8000878:	6860      	ldr	r0, [r4, #4]
 800087a:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 800087e:	ee79 8ae8 	vsub.f32	s17, s19, s17
 8000882:	ee38 8ac8 	vsub.f32	s16, s17, s16
 8000886:	ee28 8a27 	vmul.f32	s16, s16, s15
 800088a:	eddf 7a1b 	vldr	s15, [pc, #108]	; 80008f8 <_ZN9CObstacle10go_forwardEijPFhvE+0xd0>
 800088e:	ee08 8aa7 	vmla.f32	s16, s17, s15
 8000892:	ee07 5a90 	vmov	s15, r5
 8000896:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800089a:	ee67 7a87 	vmul.f32	s15, s15, s14
 800089e:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80008fc <_ZN9CObstacle10go_forwardEijPFhvE+0xd4>
 80008a2:	ee49 7a07 	vmla.f32	s15, s18, s14
 80008a6:	eeb0 9a67 	vmov.f32	s18, s15
 80008aa:	ee77 7ac8 	vsub.f32	s15, s15, s16
 80008ae:	ee39 8a08 	vadd.f32	s16, s18, s16
 80008b2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80008b6:	ee17 1a90 	vmov	r1, s15
 80008ba:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 80008be:	ee17 2a90 	vmov	r2, s15
 80008c2:	f7ff fc7e 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 80008c6:	200a      	movs	r0, #10
 80008c8:	f001 fcb6 	bl	8002238 <timer_delay_ms>
 80008cc:	2e00      	cmp	r6, #0
 80008ce:	d0c2      	beq.n	8000856 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008d0:	47b0      	blx	r6
 80008d2:	2800      	cmp	r0, #0
 80008d4:	d0bf      	beq.n	8000856 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008d6:	2000      	movs	r0, #0
 80008d8:	4601      	mov	r1, r0
 80008da:	f002 f865 	bl	80029a8 <drv8834_run>
 80008de:	ecbd 8b04 	vpop	{d8-d9}
 80008e2:	2064      	movs	r0, #100	; 0x64
 80008e4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80008e8:	f001 bca6 	b.w	8002238 <timer_delay_ms>
 80008ec:	00000000 	.word	0x00000000
 80008f0:	3a83126f 	.word	0x3a83126f
 80008f4:	3e4ccccc 	.word	0x3e4ccccc
 80008f8:	399d4952 	.word	0x399d4952
 80008fc:	3f4ccccd 	.word	0x3f4ccccd

08000900 <_ZN9CObstacle7processEv>:
 8000900:	b510      	push	{r4, lr}
 8000902:	4604      	mov	r4, r0
 8000904:	f002 fa2e 	bl	8002d64 <get_mode_jumper>
 8000908:	4601      	mov	r1, r0
 800090a:	4620      	mov	r0, r4
 800090c:	b931      	cbnz	r1, 800091c <_ZN9CObstacle7processEv+0x1c>
 800090e:	460b      	mov	r3, r1
 8000910:	2264      	movs	r2, #100	; 0x64
 8000912:	f7ff ff89 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000916:	4620      	mov	r0, r4
 8000918:	21b4      	movs	r1, #180	; 0xb4
 800091a:	e03a      	b.n	8000992 <_ZN9CObstacle7processEv+0x92>
 800091c:	2100      	movs	r1, #0
 800091e:	460b      	mov	r3, r1
 8000920:	2232      	movs	r2, #50	; 0x32
 8000922:	f7ff ff81 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000926:	4620      	mov	r0, r4
 8000928:	f06f 013b 	mvn.w	r1, #59	; 0x3b
 800092c:	2282      	movs	r2, #130	; 0x82
 800092e:	2300      	movs	r3, #0
 8000930:	f7ff ff7a 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000934:	2100      	movs	r1, #0
 8000936:	460b      	mov	r3, r1
 8000938:	2232      	movs	r2, #50	; 0x32
 800093a:	4620      	mov	r0, r4
 800093c:	f7ff ff74 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000940:	4620      	mov	r0, r4
 8000942:	215a      	movs	r1, #90	; 0x5a
 8000944:	f7ff ff1c 	bl	8000780 <_ZN9CObstacle12rotate_robotEi>
 8000948:	22fa      	movs	r2, #250	; 0xfa
 800094a:	2300      	movs	r3, #0
 800094c:	4620      	mov	r0, r4
 800094e:	213c      	movs	r1, #60	; 0x3c
 8000950:	f7ff ff6a 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000954:	4620      	mov	r0, r4
 8000956:	f06f 0159 	mvn.w	r1, #89	; 0x59
 800095a:	f7ff ff11 	bl	8000780 <_ZN9CObstacle12rotate_robotEi>
 800095e:	f44f 72af 	mov.w	r2, #350	; 0x15e
 8000962:	2300      	movs	r3, #0
 8000964:	4620      	mov	r0, r4
 8000966:	213c      	movs	r1, #60	; 0x3c
 8000968:	f7ff ff5e 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 800096c:	4620      	mov	r0, r4
 800096e:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000972:	f7ff ff05 	bl	8000780 <_ZN9CObstacle12rotate_robotEi>
 8000976:	4620      	mov	r0, r4
 8000978:	213c      	movs	r1, #60	; 0x3c
 800097a:	2232      	movs	r2, #50	; 0x32
 800097c:	2300      	movs	r3, #0
 800097e:	f7ff ff53 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000982:	4620      	mov	r0, r4
 8000984:	213c      	movs	r1, #60	; 0x3c
 8000986:	22fa      	movs	r2, #250	; 0xfa
 8000988:	2300      	movs	r3, #0
 800098a:	f7ff ff4d 	bl	8000828 <_ZN9CObstacle10go_forwardEijPFhvE>
 800098e:	4620      	mov	r0, r4
 8000990:	215a      	movs	r1, #90	; 0x5a
 8000992:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000996:	f7ff bef3 	b.w	8000780 <_ZN9CObstacle12rotate_robotEi>

0800099a <_ZN4CMap10save_stateE6sStatej>:
 800099a:	b507      	push	{r0, r1, r2, lr}
 800099c:	ab02      	add	r3, sp, #8
 800099e:	0090      	lsls	r0, r2, #2
 80009a0:	f843 1d04 	str.w	r1, [r3, #-4]!
 80009a4:	2204      	movs	r2, #4
 80009a6:	4619      	mov	r1, r3
 80009a8:	f000 fd7a 	bl	80014a0 <log_write>
 80009ac:	b003      	add	sp, #12
 80009ae:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080009b4 <_ZN4CMap10add_to_mapEv>:
 80009b4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80009b6:	4604      	mov	r4, r0
 80009b8:	6840      	ldr	r0, [r0, #4]
 80009ba:	f7ff fbfc 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80009be:	2100      	movs	r1, #0
 80009c0:	6845      	ldr	r5, [r0, #4]
 80009c2:	460a      	mov	r2, r1
 80009c4:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 80009c8:	4b15      	ldr	r3, [pc, #84]	; (8000a20 <_ZN4CMap10add_to_mapEv+0x6c>)
 80009ca:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80009ce:	1aeb      	subs	r3, r5, r3
 80009d0:	2b00      	cmp	r3, #0
 80009d2:	bfb8      	it	lt
 80009d4:	425b      	neglt	r3, r3
 80009d6:	4283      	cmp	r3, r0
 80009d8:	bfb8      	it	lt
 80009da:	4611      	movlt	r1, r2
 80009dc:	f102 0201 	add.w	r2, r2, #1
 80009e0:	bfb8      	it	lt
 80009e2:	4618      	movlt	r0, r3
 80009e4:	2a0a      	cmp	r2, #10
 80009e6:	d1ef      	bne.n	80009c8 <_ZN4CMap10add_to_mapEv+0x14>
 80009e8:	2818      	cmp	r0, #24
 80009ea:	dc16      	bgt.n	8000a1a <_ZN4CMap10add_to_mapEv+0x66>
 80009ec:	6823      	ldr	r3, [r4, #0]
 80009ee:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80009f2:	d212      	bcs.n	8000a1a <_ZN4CMap10add_to_mapEv+0x66>
 80009f4:	f88d 1004 	strb.w	r1, [sp, #4]
 80009f8:	f002 f9d2 	bl	8002da0 <encoder_get_distance>
 80009fc:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000a00:	9901      	ldr	r1, [sp, #4]
 8000a02:	6822      	ldr	r2, [r4, #0]
 8000a04:	4620      	mov	r0, r4
 8000a06:	f7ff ffc8 	bl	800099a <_ZN4CMap10save_stateE6sStatej>
 8000a0a:	6823      	ldr	r3, [r4, #0]
 8000a0c:	3301      	adds	r3, #1
 8000a0e:	6023      	str	r3, [r4, #0]
 8000a10:	b003      	add	sp, #12
 8000a12:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000a16:	f002 b9cd 	b.w	8002db4 <encoder_reset>
 8000a1a:	b003      	add	sp, #12
 8000a1c:	bd30      	pop	{r4, r5, pc}
 8000a1e:	bf00      	nop
 8000a20:	200000a0 	.word	0x200000a0

08000a24 <_ZN4CMap10load_stateEj>:
 8000a24:	b507      	push	{r0, r1, r2, lr}
 8000a26:	0088      	lsls	r0, r1, #2
 8000a28:	2204      	movs	r2, #4
 8000a2a:	4669      	mov	r1, sp
 8000a2c:	f000 fd54 	bl	80014d8 <log_read>
 8000a30:	9b00      	ldr	r3, [sp, #0]
 8000a32:	2000      	movs	r0, #0
 8000a34:	b29a      	uxth	r2, r3
 8000a36:	f362 000f 	bfi	r0, r2, #0, #16
 8000a3a:	0c1b      	lsrs	r3, r3, #16
 8000a3c:	f363 401f 	bfi	r0, r3, #16, #16
 8000a40:	b003      	add	sp, #12
 8000a42:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000a48 <_ZN4CMap11load_statesEv>:
 8000a48:	b570      	push	{r4, r5, r6, lr}
 8000a4a:	4606      	mov	r6, r0
 8000a4c:	2400      	movs	r4, #0
 8000a4e:	4621      	mov	r1, r4
 8000a50:	4630      	mov	r0, r6
 8000a52:	f7ff ffe7 	bl	8000a24 <_ZN4CMap10load_stateEj>
 8000a56:	4d06      	ldr	r5, [pc, #24]	; (8000a70 <_ZN4CMap11load_statesEv+0x28>)
 8000a58:	f825 0024 	strh.w	r0, [r5, r4, lsl #2]
 8000a5c:	eb05 0584 	add.w	r5, r5, r4, lsl #2
 8000a60:	3401      	adds	r4, #1
 8000a62:	f3c0 400f 	ubfx	r0, r0, #16, #16
 8000a66:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
 8000a6a:	8068      	strh	r0, [r5, #2]
 8000a6c:	d1ef      	bne.n	8000a4e <_ZN4CMap11load_statesEv+0x6>
 8000a6e:	bd70      	pop	{r4, r5, r6, pc}
 8000a70:	2000052c 	.word	0x2000052c

08000a74 <_ZN4CMap4initEP6CRobot>:
 8000a74:	b510      	push	{r4, lr}
 8000a76:	4604      	mov	r4, r0
 8000a78:	b149      	cbz	r1, 8000a8e <_ZN4CMap4initEP6CRobot+0x1a>
 8000a7a:	6041      	str	r1, [r0, #4]
 8000a7c:	f002 f99a 	bl	8002db4 <encoder_reset>
 8000a80:	2300      	movs	r3, #0
 8000a82:	6023      	str	r3, [r4, #0]
 8000a84:	4620      	mov	r0, r4
 8000a86:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a8a:	f7ff bfdd 	b.w	8000a48 <_ZN4CMap11load_statesEv>
 8000a8e:	bd10      	pop	{r4, pc}

08000a90 <_Z18line_sensor_threadv>:
 8000a90:	b508      	push	{r3, lr}
 8000a92:	2000      	movs	r0, #0
 8000a94:	2104      	movs	r1, #4
 8000a96:	f001 fbdf 	bl	8002258 <event_timer_set_period>
 8000a9a:	2000      	movs	r0, #0
 8000a9c:	f001 fbf4 	bl	8002288 <event_timer_wait>
 8000aa0:	4801      	ldr	r0, [pc, #4]	; (8000aa8 <_Z18line_sensor_threadv+0x18>)
 8000aa2:	f7ff fcd3 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 8000aa6:	e7f8      	b.n	8000a9a <_Z18line_sensor_threadv+0xa>
 8000aa8:	20001148 	.word	0x20001148

08000aac <_Z17imu_sensor_threadv>:
 8000aac:	b508      	push	{r3, lr}
 8000aae:	2001      	movs	r0, #1
 8000ab0:	210a      	movs	r1, #10
 8000ab2:	f001 fbd1 	bl	8002258 <event_timer_set_period>
 8000ab6:	2001      	movs	r0, #1
 8000ab8:	f001 fbe6 	bl	8002288 <event_timer_wait>
 8000abc:	4805      	ldr	r0, [pc, #20]	; (8000ad4 <_Z17imu_sensor_threadv+0x28>)
 8000abe:	f7ff fd7d 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 8000ac2:	4b05      	ldr	r3, [pc, #20]	; (8000ad8 <_Z17imu_sensor_threadv+0x2c>)
 8000ac4:	681b      	ldr	r3, [r3, #0]
 8000ac6:	2b00      	cmp	r3, #0
 8000ac8:	d0f5      	beq.n	8000ab6 <_Z17imu_sensor_threadv+0xa>
 8000aca:	4804      	ldr	r0, [pc, #16]	; (8000adc <_Z17imu_sensor_threadv+0x30>)
 8000acc:	f7ff ff72 	bl	80009b4 <_ZN4CMap10add_to_mapEv>
 8000ad0:	e7f1      	b.n	8000ab6 <_Z17imu_sensor_threadv+0xa>
 8000ad2:	bf00      	nop
 8000ad4:	20001148 	.word	0x20001148
 8000ad8:	20001238 	.word	0x20001238
 8000adc:	20000d38 	.word	0x20000d38

08000ae0 <_Z13line_followerv>:
 8000ae0:	b510      	push	{r4, lr}
 8000ae2:	2002      	movs	r0, #2
 8000ae4:	2104      	movs	r1, #4
 8000ae6:	f001 fbb7 	bl	8002258 <event_timer_set_period>
 8000aea:	2400      	movs	r4, #0
 8000aec:	2002      	movs	r0, #2
 8000aee:	f001 fbcb 	bl	8002288 <event_timer_wait>
 8000af2:	4813      	ldr	r0, [pc, #76]	; (8000b40 <_Z13line_followerv+0x60>)
 8000af4:	f7ff fb61 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000af8:	7803      	ldrb	r3, [r0, #0]
 8000afa:	2b01      	cmp	r3, #1
 8000afc:	d103      	bne.n	8000b06 <_Z13line_followerv+0x26>
 8000afe:	4811      	ldr	r0, [pc, #68]	; (8000b44 <_Z13line_followerv+0x64>)
 8000b00:	f7ff fefe 	bl	8000900 <_ZN9CObstacle7processEv>
 8000b04:	e00c      	b.n	8000b20 <_Z13line_followerv+0x40>
 8000b06:	480e      	ldr	r0, [pc, #56]	; (8000b40 <_Z13line_followerv+0x60>)
 8000b08:	f7ff fb55 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000b0c:	7803      	ldrb	r3, [r0, #0]
 8000b0e:	2b01      	cmp	r3, #1
 8000b10:	d103      	bne.n	8000b1a <_Z13line_followerv+0x3a>
 8000b12:	480d      	ldr	r0, [pc, #52]	; (8000b48 <_Z13line_followerv+0x68>)
 8000b14:	f000 f92c 	bl	8000d70 <_ZN13CLineFollower7processEv>
 8000b18:	e002      	b.n	8000b20 <_Z13line_followerv+0x40>
 8000b1a:	480c      	ldr	r0, [pc, #48]	; (8000b4c <_Z13line_followerv+0x6c>)
 8000b1c:	f000 f995 	bl	8000e4a <_ZN11CBrokenLine7processEv>
 8000b20:	3401      	adds	r4, #1
 8000b22:	2214      	movs	r2, #20
 8000b24:	fbb4 f3f2 	udiv	r3, r4, r2
 8000b28:	fb02 4313 	mls	r3, r2, r3, r4
 8000b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b30:	b913      	cbnz	r3, 8000b38 <_Z13line_followerv+0x58>
 8000b32:	f002 f8fb 	bl	8002d2c <led_on>
 8000b36:	e7d9      	b.n	8000aec <_Z13line_followerv+0xc>
 8000b38:	f002 f902 	bl	8002d40 <led_off>
 8000b3c:	e7d6      	b.n	8000aec <_Z13line_followerv+0xc>
 8000b3e:	bf00      	nop
 8000b40:	20001148 	.word	0x20001148
 8000b44:	20000f40 	.word	0x20000f40
 8000b48:	200011f4 	.word	0x200011f4
 8000b4c:	20000d2c 	.word	0x20000d2c

08000b50 <main_thread>:
 8000b50:	b570      	push	{r4, r5, r6, lr}
 8000b52:	4840      	ldr	r0, [pc, #256]	; (8000c54 <main_thread+0x104>)
 8000b54:	4e40      	ldr	r6, [pc, #256]	; (8000c58 <main_thread+0x108>)
 8000b56:	b096      	sub	sp, #88	; 0x58
 8000b58:	f000 fbd2 	bl	8001300 <printf_>
 8000b5c:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000b60:	f001 fb6a 	bl	8002238 <timer_delay_ms>
 8000b64:	2300      	movs	r3, #0
 8000b66:	2278      	movs	r2, #120	; 0x78
 8000b68:	6033      	str	r3, [r6, #0]
 8000b6a:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000b6e:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000b72:	f44f 722f 	mov.w	r2, #700	; 0x2bc
 8000b76:	930d      	str	r3, [sp, #52]	; 0x34
 8000b78:	930f      	str	r3, [sp, #60]	; 0x3c
 8000b7a:	2314      	movs	r3, #20
 8000b7c:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000b80:	9310      	str	r3, [sp, #64]	; 0x40
 8000b82:	2246      	movs	r2, #70	; 0x46
 8000b84:	f241 3388 	movw	r3, #5000	; 0x1388
 8000b88:	920c      	str	r2, [sp, #48]	; 0x30
 8000b8a:	9311      	str	r3, [sp, #68]	; 0x44
 8000b8c:	f640 52ac 	movw	r2, #3500	; 0xdac
 8000b90:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000b94:	920e      	str	r2, [sp, #56]	; 0x38
 8000b96:	9312      	str	r3, [sp, #72]	; 0x48
 8000b98:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000b9c:	9314      	str	r3, [sp, #80]	; 0x50
 8000b9e:	482f      	ldr	r0, [pc, #188]	; (8000c5c <main_thread+0x10c>)
 8000ba0:	9213      	str	r2, [sp, #76]	; 0x4c
 8000ba2:	2332      	movs	r3, #50	; 0x32
 8000ba4:	ad0d      	add	r5, sp, #52	; 0x34
 8000ba6:	9315      	str	r3, [sp, #84]	; 0x54
 8000ba8:	f7ff fda1 	bl	80006ee <_ZN6CRobot4initEv>
 8000bac:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000bae:	466c      	mov	r4, sp
 8000bb0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000bb2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000bb4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000bb6:	682b      	ldr	r3, [r5, #0]
 8000bb8:	6023      	str	r3, [r4, #0]
 8000bba:	ab0a      	add	r3, sp, #40	; 0x28
 8000bbc:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000bbe:	4827      	ldr	r0, [pc, #156]	; (8000c5c <main_thread+0x10c>)
 8000bc0:	f7ff fae6 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000bc4:	4826      	ldr	r0, [pc, #152]	; (8000c60 <main_thread+0x110>)
 8000bc6:	4925      	ldr	r1, [pc, #148]	; (8000c5c <main_thread+0x10c>)
 8000bc8:	f000 f85a 	bl	8000c80 <_ZN13CLineFollower4initEP6CRobot>
 8000bcc:	4825      	ldr	r0, [pc, #148]	; (8000c64 <main_thread+0x114>)
 8000bce:	4923      	ldr	r1, [pc, #140]	; (8000c5c <main_thread+0x10c>)
 8000bd0:	f7ff fdd0 	bl	8000774 <_ZN9CObstacle4initEP6CRobot>
 8000bd4:	4824      	ldr	r0, [pc, #144]	; (8000c68 <main_thread+0x118>)
 8000bd6:	4921      	ldr	r1, [pc, #132]	; (8000c5c <main_thread+0x10c>)
 8000bd8:	f000 f928 	bl	8000e2c <_ZN11CBrokenLine4initEP6CRobot>
 8000bdc:	4823      	ldr	r0, [pc, #140]	; (8000c6c <main_thread+0x11c>)
 8000bde:	491f      	ldr	r1, [pc, #124]	; (8000c5c <main_thread+0x10c>)
 8000be0:	f7ff ff48 	bl	8000a74 <_ZN4CMap4initEP6CRobot>
 8000be4:	481d      	ldr	r0, [pc, #116]	; (8000c5c <main_thread+0x10c>)
 8000be6:	f7ff facf 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000bea:	b158      	cbz	r0, 8000c04 <main_thread+0xb4>
 8000bec:	481b      	ldr	r0, [pc, #108]	; (8000c5c <main_thread+0x10c>)
 8000bee:	f7ff facb 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000bf2:	4604      	mov	r4, r0
 8000bf4:	4819      	ldr	r0, [pc, #100]	; (8000c5c <main_thread+0x10c>)
 8000bf6:	f7ff fac9 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000bfa:	4601      	mov	r1, r0
 8000bfc:	4620      	mov	r0, r4
 8000bfe:	f7ff fd95 	bl	800072c <abort_error_>
 8000c02:	e7f3      	b.n	8000bec <main_thread+0x9c>
 8000c04:	491a      	ldr	r1, [pc, #104]	; (8000c70 <main_thread+0x120>)
 8000c06:	481b      	ldr	r0, [pc, #108]	; (8000c74 <main_thread+0x124>)
 8000c08:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000c0c:	2306      	movs	r3, #6
 8000c0e:	f000 fa49 	bl	80010a4 <create_thread>
 8000c12:	4819      	ldr	r0, [pc, #100]	; (8000c78 <main_thread+0x128>)
 8000c14:	4919      	ldr	r1, [pc, #100]	; (8000c7c <main_thread+0x12c>)
 8000c16:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000c1a:	2306      	movs	r3, #6
 8000c1c:	f000 fa42 	bl	80010a4 <create_thread>
 8000c20:	f002 f898 	bl	8002d54 <get_key>
 8000c24:	b138      	cbz	r0, 8000c36 <main_thread+0xe6>
 8000c26:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000c2a:	f001 fb05 	bl	8002238 <timer_delay_ms>
 8000c2e:	2301      	movs	r3, #1
 8000c30:	6033      	str	r3, [r6, #0]
 8000c32:	f7ff ff55 	bl	8000ae0 <_Z13line_followerv>
 8000c36:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000c3a:	f002 f877 	bl	8002d2c <led_on>
 8000c3e:	2064      	movs	r0, #100	; 0x64
 8000c40:	f001 fafa 	bl	8002238 <timer_delay_ms>
 8000c44:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000c48:	f002 f87a 	bl	8002d40 <led_off>
 8000c4c:	20c8      	movs	r0, #200	; 0xc8
 8000c4e:	f001 faf3 	bl	8002238 <timer_delay_ms>
 8000c52:	e7e5      	b.n	8000c20 <main_thread+0xd0>
 8000c54:	080049f3 	.word	0x080049f3
 8000c58:	20001238 	.word	0x20001238
 8000c5c:	20001148 	.word	0x20001148
 8000c60:	200011f4 	.word	0x200011f4
 8000c64:	20000f40 	.word	0x20000f40
 8000c68:	20000d2c 	.word	0x20000d2c
 8000c6c:	20000d38 	.word	0x20000d38
 8000c70:	20000d40 	.word	0x20000d40
 8000c74:	08000a91 	.word	0x08000a91
 8000c78:	08000aad 	.word	0x08000aad
 8000c7c:	20000f48 	.word	0x20000f48

08000c80 <_ZN13CLineFollower4initEP6CRobot>:
 8000c80:	b510      	push	{r4, lr}
 8000c82:	ed2d 8b04 	vpush	{d8-d9}
 8000c86:	4604      	mov	r4, r0
 8000c88:	b082      	sub	sp, #8
 8000c8a:	2900      	cmp	r1, #0
 8000c8c:	d065      	beq.n	8000d5a <_ZN13CLineFollower4initEP6CRobot+0xda>
 8000c8e:	2300      	movs	r3, #0
 8000c90:	6103      	str	r3, [r0, #16]
 8000c92:	6143      	str	r3, [r0, #20]
 8000c94:	6401      	str	r1, [r0, #64]	; 0x40
 8000c96:	4833      	ldr	r0, [pc, #204]	; (8000d64 <_ZN13CLineFollower4initEP6CRobot+0xe4>)
 8000c98:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000d68 <_ZN13CLineFollower4initEP6CRobot+0xe8>
 8000c9c:	f000 f971 	bl	8000f82 <_ZN11CQPredictor4initEv>
 8000ca0:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000ca2:	f7ff fa87 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000ca6:	ed90 9a02 	vldr	s18, [r0, #8]
 8000caa:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000cac:	f7ff fa82 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000cb0:	edd0 8a03 	vldr	s17, [r0, #12]
 8000cb4:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000cb6:	f7ff fa7d 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000cba:	edd0 9a04 	vldr	s19, [r0, #16]
 8000cbe:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000cc0:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000cc4:	f7ff fa76 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000cc8:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000ccc:	4927      	ldr	r1, [pc, #156]	; (8000d6c <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000cce:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000cd2:	edcd 9a00 	vstr	s19, [sp]
 8000cd6:	edd0 7a05 	vldr	s15, [r0, #20]
 8000cda:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000cde:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000ce2:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000ce6:	f104 0018 	add.w	r0, r4, #24
 8000cea:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000cee:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000cf2:	ee19 2a10 	vmov	r2, s18
 8000cf6:	ee18 3a90 	vmov	r3, s17
 8000cfa:	edcd 7a01 	vstr	s15, [sp, #4]
 8000cfe:	f000 fc45 	bl	800158c <pid_init>
 8000d02:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d04:	f7ff fa56 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d08:	edd0 7a06 	vldr	s15, [r0, #24]
 8000d0c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d0e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d12:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000d16:	edc4 7a00 	vstr	s15, [r4]
 8000d1a:	f7ff fa4b 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d1e:	edd0 7a07 	vldr	s15, [r0, #28]
 8000d22:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d24:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d28:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000d2c:	edc4 7a01 	vstr	s15, [r4, #4]
 8000d30:	f7ff fa40 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d34:	edd0 7a08 	vldr	s15, [r0, #32]
 8000d38:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d3a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d3e:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000d42:	edc4 7a02 	vstr	s15, [r4, #8]
 8000d46:	f7ff fa35 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d4a:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000d4e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d52:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000d56:	ed84 8a03 	vstr	s16, [r4, #12]
 8000d5a:	b002      	add	sp, #8
 8000d5c:	ecbd 8b04 	vpop	{d8-d9}
 8000d60:	bd10      	pop	{r4, pc}
 8000d62:	bf00      	nop
 8000d64:	2000123c 	.word	0x2000123c
 8000d68:	447a0000 	.word	0x447a0000
 8000d6c:	42c80000 	.word	0x42c80000

08000d70 <_ZN13CLineFollower7processEv>:
 8000d70:	b510      	push	{r4, lr}
 8000d72:	4604      	mov	r4, r0
 8000d74:	ed2d 8b02 	vpush	{d8}
 8000d78:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000d7a:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000e1c <_ZN13CLineFollower7processEv+0xac>
 8000d7e:	f7ff fa1a 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d82:	edd0 7a01 	vldr	s15, [r0, #4]
 8000d86:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000e20 <_ZN13CLineFollower7processEv+0xb0>
 8000d8a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d8e:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000d92:	ee18 0a10 	vmov	r0, s16
 8000d96:	f000 fbc8 	bl	800152a <m_abs>
 8000d9a:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000e24 <_ZN13CLineFollower7processEv+0xb4>
 8000d9e:	edd4 6a01 	vldr	s13, [r4, #4]
 8000da2:	edd4 5a00 	vldr	s11, [r4]
 8000da6:	ed94 6a04 	vldr	s12, [r4, #16]
 8000daa:	ee07 0a90 	vmov	s15, r0
 8000dae:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000db2:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000db6:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000dba:	ee17 1a10 	vmov	r1, s14
 8000dbe:	ee16 0a10 	vmov	r0, s12
 8000dc2:	f000 fbd5 	bl	8001570 <m_min>
 8000dc6:	68e2      	ldr	r2, [r4, #12]
 8000dc8:	68a1      	ldr	r1, [r4, #8]
 8000dca:	6120      	str	r0, [r4, #16]
 8000dcc:	f000 fbb9 	bl	8001542 <m_saturate>
 8000dd0:	ee18 1a10 	vmov	r1, s16
 8000dd4:	6120      	str	r0, [r4, #16]
 8000dd6:	f104 0018 	add.w	r0, r4, #24
 8000dda:	f000 fc07 	bl	80015ec <pid_process>
 8000dde:	edd4 7a04 	vldr	s15, [r4, #16]
 8000de2:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000e28 <_ZN13CLineFollower7processEv+0xb8>
 8000de6:	6160      	str	r0, [r4, #20]
 8000de8:	ee06 0a90 	vmov	s13, r0
 8000dec:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000df0:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000df4:	ecbd 8b02 	vpop	{d8}
 8000df8:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000dfc:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000e00:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000e04:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000e08:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e0a:	ee17 1a10 	vmov	r1, s14
 8000e0e:	ee17 2a90 	vmov	r2, s15
 8000e12:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e16:	f7ff b9d4 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000e1a:	bf00      	nop
 8000e1c:	00000000 	.word	0x00000000
 8000e20:	3b800000 	.word	0x3b800000
 8000e24:	3f800000 	.word	0x3f800000
 8000e28:	42c80000 	.word	0x42c80000

08000e2c <_ZN11CBrokenLine4initEP6CRobot>:
 8000e2c:	b510      	push	{r4, lr}
 8000e2e:	4604      	mov	r4, r0
 8000e30:	b151      	cbz	r1, 8000e48 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000e32:	6001      	str	r1, [r0, #0]
 8000e34:	4608      	mov	r0, r1
 8000e36:	f7ff f9bd 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e3a:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000e3c:	6063      	str	r3, [r4, #4]
 8000e3e:	6820      	ldr	r0, [r4, #0]
 8000e40:	f7ff f9b8 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e44:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000e46:	60a3      	str	r3, [r4, #8]
 8000e48:	bd10      	pop	{r4, pc}

08000e4a <_ZN11CBrokenLine7processEv>:
 8000e4a:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000e4e:	2600      	movs	r6, #0
 8000e50:	4607      	mov	r7, r0
 8000e52:	4634      	mov	r4, r6
 8000e54:	46b1      	mov	r9, r6
 8000e56:	46b0      	mov	r8, r6
 8000e58:	4635      	mov	r5, r6
 8000e5a:	6838      	ldr	r0, [r7, #0]
 8000e5c:	f7ff f9ab 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000e60:	7803      	ldrb	r3, [r0, #0]
 8000e62:	2b01      	cmp	r3, #1
 8000e64:	f000 8086 	beq.w	8000f74 <_ZN11CBrokenLine7processEv+0x12a>
 8000e68:	2005      	movs	r0, #5
 8000e6a:	f001 f9e5 	bl	8002238 <timer_delay_ms>
 8000e6e:	f1b9 0f05 	cmp.w	r9, #5
 8000e72:	d879      	bhi.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000e74:	e8df f009 	tbb	[pc, r9]
 8000e78:	48311a03 	.word	0x48311a03
 8000e7c:	6b5e      	.short	0x6b5e
 8000e7e:	2c00      	cmp	r4, #0
 8000e80:	d163      	bne.n	8000f4a <_ZN11CBrokenLine7processEv+0x100>
 8000e82:	6838      	ldr	r0, [r7, #0]
 8000e84:	f7ff f997 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000e88:	6842      	ldr	r2, [r0, #4]
 8000e8a:	68bb      	ldr	r3, [r7, #8]
 8000e8c:	687c      	ldr	r4, [r7, #4]
 8000e8e:	2a00      	cmp	r2, #0
 8000e90:	bfce      	itee	gt
 8000e92:	461d      	movgt	r5, r3
 8000e94:	4698      	movle	r8, r3
 8000e96:	2500      	movle	r5, #0
 8000e98:	f04f 0305 	mov.w	r3, #5
 8000e9c:	bfc8      	it	gt
 8000e9e:	f04f 0800 	movgt.w	r8, #0
 8000ea2:	fb94 f4f3 	sdiv	r4, r4, r3
 8000ea6:	f04f 0901 	mov.w	r9, #1
 8000eaa:	e05d      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000eac:	2c00      	cmp	r4, #0
 8000eae:	d14c      	bne.n	8000f4a <_ZN11CBrokenLine7processEv+0x100>
 8000eb0:	6838      	ldr	r0, [r7, #0]
 8000eb2:	f7ff f980 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000eb6:	6843      	ldr	r3, [r0, #4]
 8000eb8:	68bd      	ldr	r5, [r7, #8]
 8000eba:	2b00      	cmp	r3, #0
 8000ebc:	bfcc      	ite	gt
 8000ebe:	46a0      	movgt	r8, r4
 8000ec0:	f1c5 0800 	rsble	r8, r5, #0
 8000ec4:	f04f 0305 	mov.w	r3, #5
 8000ec8:	bfd4      	ite	le
 8000eca:	4625      	movle	r5, r4
 8000ecc:	426d      	neggt	r5, r5
 8000ece:	687c      	ldr	r4, [r7, #4]
 8000ed0:	fb94 f4f3 	sdiv	r4, r4, r3
 8000ed4:	f04f 0902 	mov.w	r9, #2
 8000ed8:	e046      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000eda:	2c00      	cmp	r4, #0
 8000edc:	d135      	bne.n	8000f4a <_ZN11CBrokenLine7processEv+0x100>
 8000ede:	6838      	ldr	r0, [r7, #0]
 8000ee0:	f7ff f969 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000ee4:	6842      	ldr	r2, [r0, #4]
 8000ee6:	68bb      	ldr	r3, [r7, #8]
 8000ee8:	687c      	ldr	r4, [r7, #4]
 8000eea:	2a00      	cmp	r2, #0
 8000eec:	bfce      	itee	gt
 8000eee:	4698      	movgt	r8, r3
 8000ef0:	461d      	movle	r5, r3
 8000ef2:	f04f 0800 	movle.w	r8, #0
 8000ef6:	f04f 0305 	mov.w	r3, #5
 8000efa:	bfc8      	it	gt
 8000efc:	2500      	movgt	r5, #0
 8000efe:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f02:	f04f 0903 	mov.w	r9, #3
 8000f06:	e02f      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000f08:	b9fc      	cbnz	r4, 8000f4a <_ZN11CBrokenLine7processEv+0x100>
 8000f0a:	6838      	ldr	r0, [r7, #0]
 8000f0c:	f7ff f953 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f10:	6843      	ldr	r3, [r0, #4]
 8000f12:	68bd      	ldr	r5, [r7, #8]
 8000f14:	2b00      	cmp	r3, #0
 8000f16:	bfca      	itet	gt
 8000f18:	f1c5 0800 	rsbgt	r8, r5, #0
 8000f1c:	46a0      	movle	r8, r4
 8000f1e:	4625      	movgt	r5, r4
 8000f20:	f04f 0305 	mov.w	r3, #5
 8000f24:	687c      	ldr	r4, [r7, #4]
 8000f26:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f2a:	bfd8      	it	le
 8000f2c:	426d      	negle	r5, r5
 8000f2e:	f04f 0904 	mov.w	r9, #4
 8000f32:	e019      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000f34:	b94c      	cbnz	r4, 8000f4a <_ZN11CBrokenLine7processEv+0x100>
 8000f36:	2600      	movs	r6, #0
 8000f38:	687c      	ldr	r4, [r7, #4]
 8000f3a:	230a      	movs	r3, #10
 8000f3c:	f04f 0905 	mov.w	r9, #5
 8000f40:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f44:	46b0      	mov	r8, r6
 8000f46:	4635      	mov	r5, r6
 8000f48:	e00e      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000f4a:	3c01      	subs	r4, #1
 8000f4c:	e00c      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000f4e:	b154      	cbz	r4, 8000f66 <_ZN11CBrokenLine7processEv+0x11c>
 8000f50:	68bb      	ldr	r3, [r7, #8]
 8000f52:	2564      	movs	r5, #100	; 0x64
 8000f54:	436b      	muls	r3, r5
 8000f56:	429e      	cmp	r6, r3
 8000f58:	bfb8      	it	lt
 8000f5a:	3632      	addlt	r6, #50	; 0x32
 8000f5c:	3c01      	subs	r4, #1
 8000f5e:	fb96 f5f5 	sdiv	r5, r6, r5
 8000f62:	46a8      	mov	r8, r5
 8000f64:	e000      	b.n	8000f68 <_ZN11CBrokenLine7processEv+0x11e>
 8000f66:	46a1      	mov	r9, r4
 8000f68:	6838      	ldr	r0, [r7, #0]
 8000f6a:	4641      	mov	r1, r8
 8000f6c:	462a      	mov	r2, r5
 8000f6e:	f7ff f928 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000f72:	e772      	b.n	8000e5a <_ZN11CBrokenLine7processEv+0x10>
 8000f74:	2100      	movs	r1, #0
 8000f76:	6838      	ldr	r0, [r7, #0]
 8000f78:	460a      	mov	r2, r1
 8000f7a:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000f7e:	f7ff b920 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>

08000f82 <_ZN11CQPredictor4initEv>:
 8000f82:	1d03      	adds	r3, r0, #4
 8000f84:	3044      	adds	r0, #68	; 0x44
 8000f86:	2200      	movs	r2, #0
 8000f88:	f843 2b04 	str.w	r2, [r3], #4
 8000f8c:	4283      	cmp	r3, r0
 8000f8e:	d1fa      	bne.n	8000f86 <_ZN11CQPredictor4initEv+0x4>
 8000f90:	4770      	bx	lr
	...

08000f94 <thread_ending>:
 8000f94:	b672      	cpsid	i
 8000f96:	4b05      	ldr	r3, [pc, #20]	; (8000fac <thread_ending+0x18>)
 8000f98:	681a      	ldr	r2, [r3, #0]
 8000f9a:	4b05      	ldr	r3, [pc, #20]	; (8000fb0 <thread_ending+0x1c>)
 8000f9c:	210c      	movs	r1, #12
 8000f9e:	fb01 3302 	mla	r3, r1, r2, r3
 8000fa2:	2200      	movs	r2, #0
 8000fa4:	605a      	str	r2, [r3, #4]
 8000fa6:	b662      	cpsie	i
 8000fa8:	bf00      	nop
 8000faa:	e7fd      	b.n	8000fa8 <thread_ending+0x14>
 8000fac:	200012c8 	.word	0x200012c8
 8000fb0:	20001280 	.word	0x20001280

08000fb4 <null_thread>:
 8000fb4:	b508      	push	{r3, lr}
 8000fb6:	f001 fc63 	bl	8002880 <sleep>
 8000fba:	e7fc      	b.n	8000fb6 <null_thread+0x2>

08000fbc <scheduler>:
 8000fbc:	b570      	push	{r4, r5, r6, lr}
 8000fbe:	2200      	movs	r2, #0
 8000fc0:	4611      	mov	r1, r2
 8000fc2:	4b15      	ldr	r3, [pc, #84]	; (8001018 <scheduler+0x5c>)
 8000fc4:	200c      	movs	r0, #12
 8000fc6:	fb00 f401 	mul.w	r4, r0, r1
 8000fca:	191e      	adds	r6, r3, r4
 8000fcc:	6875      	ldr	r5, [r6, #4]
 8000fce:	f015 0f02 	tst.w	r5, #2
 8000fd2:	461d      	mov	r5, r3
 8000fd4:	d10a      	bne.n	8000fec <scheduler+0x30>
 8000fd6:	6876      	ldr	r6, [r6, #4]
 8000fd8:	07f6      	lsls	r6, r6, #31
 8000fda:	d507      	bpl.n	8000fec <scheduler+0x30>
 8000fdc:	4350      	muls	r0, r2
 8000fde:	5b1c      	ldrh	r4, [r3, r4]
 8000fe0:	5a18      	ldrh	r0, [r3, r0]
 8000fe2:	b2a4      	uxth	r4, r4
 8000fe4:	b280      	uxth	r0, r0
 8000fe6:	4284      	cmp	r4, r0
 8000fe8:	bf38      	it	cc
 8000fea:	460a      	movcc	r2, r1
 8000fec:	200c      	movs	r0, #12
 8000fee:	4348      	muls	r0, r1
 8000ff0:	5a1c      	ldrh	r4, [r3, r0]
 8000ff2:	b2a4      	uxth	r4, r4
 8000ff4:	b11c      	cbz	r4, 8000ffe <scheduler+0x42>
 8000ff6:	5a1c      	ldrh	r4, [r3, r0]
 8000ff8:	3c01      	subs	r4, #1
 8000ffa:	b2a4      	uxth	r4, r4
 8000ffc:	521c      	strh	r4, [r3, r0]
 8000ffe:	3101      	adds	r1, #1
 8001000:	2906      	cmp	r1, #6
 8001002:	d1de      	bne.n	8000fc2 <scheduler+0x6>
 8001004:	230c      	movs	r3, #12
 8001006:	4353      	muls	r3, r2
 8001008:	18e9      	adds	r1, r5, r3
 800100a:	8849      	ldrh	r1, [r1, #2]
 800100c:	b289      	uxth	r1, r1
 800100e:	52e9      	strh	r1, [r5, r3]
 8001010:	4b02      	ldr	r3, [pc, #8]	; (800101c <scheduler+0x60>)
 8001012:	601a      	str	r2, [r3, #0]
 8001014:	bd70      	pop	{r4, r5, r6, pc}
 8001016:	bf00      	nop
 8001018:	20001280 	.word	0x20001280
 800101c:	200012c8 	.word	0x200012c8

08001020 <SysTick_Handler>:
 8001020:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001024:	f3ef 8308 	mrs	r3, MSP
 8001028:	4c0f      	ldr	r4, [pc, #60]	; (8001068 <SysTick_Handler+0x48>)
 800102a:	4d10      	ldr	r5, [pc, #64]	; (800106c <SysTick_Handler+0x4c>)
 800102c:	6822      	ldr	r2, [r4, #0]
 800102e:	3201      	adds	r2, #1
 8001030:	bf1d      	ittte	ne
 8001032:	6822      	ldrne	r2, [r4, #0]
 8001034:	210c      	movne	r1, #12
 8001036:	fb01 5202 	mlane	r2, r1, r2, r5
 800103a:	2300      	moveq	r3, #0
 800103c:	bf14      	ite	ne
 800103e:	6093      	strne	r3, [r2, #8]
 8001040:	6023      	streq	r3, [r4, #0]
 8001042:	f7ff ffbb 	bl	8000fbc <scheduler>
 8001046:	4b0a      	ldr	r3, [pc, #40]	; (8001070 <SysTick_Handler+0x50>)
 8001048:	681a      	ldr	r2, [r3, #0]
 800104a:	3201      	adds	r2, #1
 800104c:	601a      	str	r2, [r3, #0]
 800104e:	6822      	ldr	r2, [r4, #0]
 8001050:	230c      	movs	r3, #12
 8001052:	fb03 5302 	mla	r3, r3, r2, r5
 8001056:	689a      	ldr	r2, [r3, #8]
 8001058:	f06f 0306 	mvn.w	r3, #6
 800105c:	469e      	mov	lr, r3
 800105e:	f382 8808 	msr	MSP, r2
 8001062:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001066:	4770      	bx	lr
 8001068:	200012c8 	.word	0x200012c8
 800106c:	20001280 	.word	0x20001280
 8001070:	200012cc 	.word	0x200012cc

08001074 <sched_off>:
 8001074:	b672      	cpsid	i
 8001076:	4770      	bx	lr

08001078 <sched_on>:
 8001078:	b662      	cpsie	i
 800107a:	4770      	bx	lr

0800107c <yield>:
 800107c:	bf00      	nop
 800107e:	4770      	bx	lr

08001080 <get_thread_id>:
 8001080:	b082      	sub	sp, #8
 8001082:	b672      	cpsid	i
 8001084:	4b03      	ldr	r3, [pc, #12]	; (8001094 <get_thread_id+0x14>)
 8001086:	681b      	ldr	r3, [r3, #0]
 8001088:	9301      	str	r3, [sp, #4]
 800108a:	b662      	cpsie	i
 800108c:	9801      	ldr	r0, [sp, #4]
 800108e:	b002      	add	sp, #8
 8001090:	4770      	bx	lr
 8001092:	bf00      	nop
 8001094:	200012c8 	.word	0x200012c8

08001098 <kernel_start>:
 8001098:	b508      	push	{r3, lr}
 800109a:	f001 fbdf 	bl	800285c <sys_tick_init>
 800109e:	bf00      	nop
 80010a0:	e7fd      	b.n	800109e <kernel_start+0x6>
	...

080010a4 <create_thread>:
 80010a4:	f022 0203 	bic.w	r2, r2, #3
 80010a8:	3a40      	subs	r2, #64	; 0x40
 80010aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010ae:	eb01 0e02 	add.w	lr, r1, r2
 80010b2:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80010b6:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80010ba:	323c      	adds	r2, #60	; 0x3c
 80010bc:	440e      	add	r6, r1
 80010be:	440f      	add	r7, r1
 80010c0:	4411      	add	r1, r2
 80010c2:	2200      	movs	r2, #0
 80010c4:	b672      	cpsid	i
 80010c6:	f8df c054 	ldr.w	ip, [pc, #84]	; 800111c <create_thread+0x78>
 80010ca:	250c      	movs	r5, #12
 80010cc:	4355      	muls	r5, r2
 80010ce:	eb0c 0405 	add.w	r4, ip, r5
 80010d2:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80010d6:	f018 0f01 	tst.w	r8, #1
 80010da:	d114      	bne.n	8001106 <create_thread+0x62>
 80010dc:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001120 <create_thread+0x7c>
 80010e0:	f8c4 e008 	str.w	lr, [r4, #8]
 80010e4:	2b05      	cmp	r3, #5
 80010e6:	f8c6 8000 	str.w	r8, [r6]
 80010ea:	bf98      	it	ls
 80010ec:	2306      	movls	r3, #6
 80010ee:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80010f2:	6038      	str	r0, [r7, #0]
 80010f4:	f8c1 8000 	str.w	r8, [r1]
 80010f8:	8063      	strh	r3, [r4, #2]
 80010fa:	f82c 3005 	strh.w	r3, [ip, r5]
 80010fe:	2501      	movs	r5, #1
 8001100:	6065      	str	r5, [r4, #4]
 8001102:	4614      	mov	r4, r2
 8001104:	e000      	b.n	8001108 <create_thread+0x64>
 8001106:	2406      	movs	r4, #6
 8001108:	b662      	cpsie	i
 800110a:	3201      	adds	r2, #1
 800110c:	2a06      	cmp	r2, #6
 800110e:	d001      	beq.n	8001114 <create_thread+0x70>
 8001110:	2c06      	cmp	r4, #6
 8001112:	d0d7      	beq.n	80010c4 <create_thread+0x20>
 8001114:	4620      	mov	r0, r4
 8001116:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800111a:	bf00      	nop
 800111c:	20001280 	.word	0x20001280
 8001120:	08000f95 	.word	0x08000f95

08001124 <kernel_init>:
 8001124:	b530      	push	{r4, r5, lr}
 8001126:	2300      	movs	r3, #0
 8001128:	480c      	ldr	r0, [pc, #48]	; (800115c <kernel_init+0x38>)
 800112a:	220c      	movs	r2, #12
 800112c:	435a      	muls	r2, r3
 800112e:	2406      	movs	r4, #6
 8001130:	1885      	adds	r5, r0, r2
 8001132:	3301      	adds	r3, #1
 8001134:	2100      	movs	r1, #0
 8001136:	42a3      	cmp	r3, r4
 8001138:	6069      	str	r1, [r5, #4]
 800113a:	806c      	strh	r4, [r5, #2]
 800113c:	5284      	strh	r4, [r0, r2]
 800113e:	d1f3      	bne.n	8001128 <kernel_init+0x4>
 8001140:	4b07      	ldr	r3, [pc, #28]	; (8001160 <kernel_init+0x3c>)
 8001142:	4808      	ldr	r0, [pc, #32]	; (8001164 <kernel_init+0x40>)
 8001144:	6019      	str	r1, [r3, #0]
 8001146:	4b08      	ldr	r3, [pc, #32]	; (8001168 <kernel_init+0x44>)
 8001148:	4908      	ldr	r1, [pc, #32]	; (800116c <kernel_init+0x48>)
 800114a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800114e:	601a      	str	r2, [r3, #0]
 8001150:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001154:	2280      	movs	r2, #128	; 0x80
 8001156:	23ff      	movs	r3, #255	; 0xff
 8001158:	f7ff bfa4 	b.w	80010a4 <create_thread>
 800115c:	20001280 	.word	0x20001280
 8001160:	200012cc 	.word	0x200012cc
 8001164:	08000fb5 	.word	0x08000fb5
 8001168:	200012c8 	.word	0x200012c8
 800116c:	200012d0 	.word	0x200012d0

08001170 <set_wait_state>:
 8001170:	b507      	push	{r0, r1, r2, lr}
 8001172:	f7ff ff85 	bl	8001080 <get_thread_id>
 8001176:	9000      	str	r0, [sp, #0]
 8001178:	b672      	cpsid	i
 800117a:	4b0d      	ldr	r3, [pc, #52]	; (80011b0 <set_wait_state+0x40>)
 800117c:	9a00      	ldr	r2, [sp, #0]
 800117e:	210c      	movs	r1, #12
 8001180:	fb01 3202 	mla	r2, r1, r2, r3
 8001184:	6851      	ldr	r1, [r2, #4]
 8001186:	f041 0102 	orr.w	r1, r1, #2
 800118a:	6051      	str	r1, [r2, #4]
 800118c:	b672      	cpsid	i
 800118e:	9a00      	ldr	r2, [sp, #0]
 8001190:	210c      	movs	r1, #12
 8001192:	fb01 3202 	mla	r2, r1, r2, r3
 8001196:	6852      	ldr	r2, [r2, #4]
 8001198:	9201      	str	r2, [sp, #4]
 800119a:	b662      	cpsie	i
 800119c:	9a01      	ldr	r2, [sp, #4]
 800119e:	0791      	lsls	r1, r2, #30
 80011a0:	d500      	bpl.n	80011a4 <set_wait_state+0x34>
 80011a2:	bf00      	nop
 80011a4:	9a01      	ldr	r2, [sp, #4]
 80011a6:	0792      	lsls	r2, r2, #30
 80011a8:	d4f0      	bmi.n	800118c <set_wait_state+0x1c>
 80011aa:	b003      	add	sp, #12
 80011ac:	f85d fb04 	ldr.w	pc, [sp], #4
 80011b0:	20001280 	.word	0x20001280

080011b4 <wake_up_threads>:
 80011b4:	2300      	movs	r3, #0
 80011b6:	b672      	cpsid	i
 80011b8:	4906      	ldr	r1, [pc, #24]	; (80011d4 <wake_up_threads+0x20>)
 80011ba:	220c      	movs	r2, #12
 80011bc:	fb02 1203 	mla	r2, r2, r3, r1
 80011c0:	6851      	ldr	r1, [r2, #4]
 80011c2:	f021 0102 	bic.w	r1, r1, #2
 80011c6:	6051      	str	r1, [r2, #4]
 80011c8:	b662      	cpsie	i
 80011ca:	3301      	adds	r3, #1
 80011cc:	2b06      	cmp	r3, #6
 80011ce:	d1f2      	bne.n	80011b6 <wake_up_threads+0x2>
 80011d0:	4770      	bx	lr
 80011d2:	bf00      	nop
 80011d4:	20001280 	.word	0x20001280

080011d8 <messages_init>:
 80011d8:	4a0a      	ldr	r2, [pc, #40]	; (8001204 <messages_init+0x2c>)
 80011da:	2300      	movs	r3, #0
 80011dc:	b510      	push	{r4, lr}
 80011de:	6013      	str	r3, [r2, #0]
 80011e0:	6053      	str	r3, [r2, #4]
 80011e2:	6093      	str	r3, [r2, #8]
 80011e4:	60d3      	str	r3, [r2, #12]
 80011e6:	6113      	str	r3, [r2, #16]
 80011e8:	6153      	str	r3, [r2, #20]
 80011ea:	4c07      	ldr	r4, [pc, #28]	; (8001208 <messages_init+0x30>)
 80011ec:	0118      	lsls	r0, r3, #4
 80011ee:	1821      	adds	r1, r4, r0
 80011f0:	3301      	adds	r3, #1
 80011f2:	2200      	movs	r2, #0
 80011f4:	2b04      	cmp	r3, #4
 80011f6:	604a      	str	r2, [r1, #4]
 80011f8:	5022      	str	r2, [r4, r0]
 80011fa:	60ca      	str	r2, [r1, #12]
 80011fc:	608a      	str	r2, [r1, #8]
 80011fe:	d1f4      	bne.n	80011ea <messages_init+0x12>
 8001200:	bd10      	pop	{r4, pc}
 8001202:	bf00      	nop
 8001204:	20001350 	.word	0x20001350
 8001208:	20001368 	.word	0x20001368

0800120c <putc_>:
 800120c:	b538      	push	{r3, r4, r5, lr}
 800120e:	4c06      	ldr	r4, [pc, #24]	; (8001228 <putc_+0x1c>)
 8001210:	4605      	mov	r5, r0
 8001212:	4620      	mov	r0, r4
 8001214:	f000 f91f 	bl	8001456 <mutex_lock>
 8001218:	4628      	mov	r0, r5
 800121a:	f001 f8f9 	bl	8002410 <uart_write>
 800121e:	4620      	mov	r0, r4
 8001220:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001224:	f000 b933 	b.w	800148e <mutex_unlock>
 8001228:	200013a8 	.word	0x200013a8

0800122c <puts_>:
 800122c:	b510      	push	{r4, lr}
 800122e:	4604      	mov	r4, r0
 8001230:	4807      	ldr	r0, [pc, #28]	; (8001250 <puts_+0x24>)
 8001232:	f000 f910 	bl	8001456 <mutex_lock>
 8001236:	3c01      	subs	r4, #1
 8001238:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 800123c:	b110      	cbz	r0, 8001244 <puts_+0x18>
 800123e:	f7ff ffe5 	bl	800120c <putc_>
 8001242:	e7f9      	b.n	8001238 <puts_+0xc>
 8001244:	4802      	ldr	r0, [pc, #8]	; (8001250 <puts_+0x24>)
 8001246:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800124a:	f000 b920 	b.w	800148e <mutex_unlock>
 800124e:	bf00      	nop
 8001250:	200013b4 	.word	0x200013b4

08001254 <puti_>:
 8001254:	b530      	push	{r4, r5, lr}
 8001256:	b085      	sub	sp, #20
 8001258:	1e03      	subs	r3, r0, #0
 800125a:	f04f 0200 	mov.w	r2, #0
 800125e:	bfba      	itte	lt
 8001260:	425b      	neglt	r3, r3
 8001262:	2401      	movlt	r4, #1
 8001264:	4614      	movge	r4, r2
 8001266:	f88d 200f 	strb.w	r2, [sp, #15]
 800126a:	210a      	movs	r1, #10
 800126c:	220a      	movs	r2, #10
 800126e:	a801      	add	r0, sp, #4
 8001270:	fb93 f5f2 	sdiv	r5, r3, r2
 8001274:	fb02 3315 	mls	r3, r2, r5, r3
 8001278:	3330      	adds	r3, #48	; 0x30
 800127a:	540b      	strb	r3, [r1, r0]
 800127c:	1e4a      	subs	r2, r1, #1
 800127e:	462b      	mov	r3, r5
 8001280:	b10d      	cbz	r5, 8001286 <puti_+0x32>
 8001282:	4611      	mov	r1, r2
 8001284:	e7f2      	b.n	800126c <puti_+0x18>
 8001286:	b12c      	cbz	r4, 8001294 <puti_+0x40>
 8001288:	ab04      	add	r3, sp, #16
 800128a:	4413      	add	r3, r2
 800128c:	212d      	movs	r1, #45	; 0x2d
 800128e:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001292:	4611      	mov	r1, r2
 8001294:	4408      	add	r0, r1
 8001296:	f7ff ffc9 	bl	800122c <puts_>
 800129a:	b005      	add	sp, #20
 800129c:	bd30      	pop	{r4, r5, pc}

0800129e <putui_>:
 800129e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80012a0:	2300      	movs	r3, #0
 80012a2:	f88d 300f 	strb.w	r3, [sp, #15]
 80012a6:	220a      	movs	r2, #10
 80012a8:	230a      	movs	r3, #10
 80012aa:	a901      	add	r1, sp, #4
 80012ac:	fbb0 f4f3 	udiv	r4, r0, r3
 80012b0:	fb03 0314 	mls	r3, r3, r4, r0
 80012b4:	3330      	adds	r3, #48	; 0x30
 80012b6:	5453      	strb	r3, [r2, r1]
 80012b8:	4620      	mov	r0, r4
 80012ba:	1e53      	subs	r3, r2, #1
 80012bc:	b10c      	cbz	r4, 80012c2 <putui_+0x24>
 80012be:	461a      	mov	r2, r3
 80012c0:	e7f2      	b.n	80012a8 <putui_+0xa>
 80012c2:	1888      	adds	r0, r1, r2
 80012c4:	f7ff ffb2 	bl	800122c <puts_>
 80012c8:	b004      	add	sp, #16
 80012ca:	bd10      	pop	{r4, pc}

080012cc <putx_>:
 80012cc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80012ce:	2300      	movs	r3, #0
 80012d0:	f88d 300f 	strb.w	r3, [sp, #15]
 80012d4:	220a      	movs	r2, #10
 80012d6:	f000 030f 	and.w	r3, r0, #15
 80012da:	2b09      	cmp	r3, #9
 80012dc:	a901      	add	r1, sp, #4
 80012de:	bf94      	ite	ls
 80012e0:	3330      	addls	r3, #48	; 0x30
 80012e2:	3357      	addhi	r3, #87	; 0x57
 80012e4:	0900      	lsrs	r0, r0, #4
 80012e6:	548b      	strb	r3, [r1, r2]
 80012e8:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80012ec:	d001      	beq.n	80012f2 <putx_+0x26>
 80012ee:	461a      	mov	r2, r3
 80012f0:	e7f1      	b.n	80012d6 <putx_+0xa>
 80012f2:	1888      	adds	r0, r1, r2
 80012f4:	f7ff ff9a 	bl	800122c <puts_>
 80012f8:	b005      	add	sp, #20
 80012fa:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08001300 <printf_>:
 8001300:	b40f      	push	{r0, r1, r2, r3}
 8001302:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001304:	ac06      	add	r4, sp, #24
 8001306:	4826      	ldr	r0, [pc, #152]	; (80013a0 <printf_+0xa0>)
 8001308:	f854 5b04 	ldr.w	r5, [r4], #4
 800130c:	f000 f8a3 	bl	8001456 <mutex_lock>
 8001310:	9401      	str	r4, [sp, #4]
 8001312:	2400      	movs	r4, #0
 8001314:	5d28      	ldrb	r0, [r5, r4]
 8001316:	2800      	cmp	r0, #0
 8001318:	d039      	beq.n	800138e <printf_+0x8e>
 800131a:	2825      	cmp	r0, #37	; 0x25
 800131c:	d003      	beq.n	8001326 <printf_+0x26>
 800131e:	f7ff ff75 	bl	800120c <putc_>
 8001322:	3401      	adds	r4, #1
 8001324:	e7f6      	b.n	8001314 <printf_+0x14>
 8001326:	192b      	adds	r3, r5, r4
 8001328:	7858      	ldrb	r0, [r3, #1]
 800132a:	2869      	cmp	r0, #105	; 0x69
 800132c:	d016      	beq.n	800135c <printf_+0x5c>
 800132e:	d808      	bhi.n	8001342 <printf_+0x42>
 8001330:	2825      	cmp	r0, #37	; 0x25
 8001332:	d028      	beq.n	8001386 <printf_+0x86>
 8001334:	2863      	cmp	r0, #99	; 0x63
 8001336:	d128      	bne.n	800138a <printf_+0x8a>
 8001338:	9b01      	ldr	r3, [sp, #4]
 800133a:	1d1a      	adds	r2, r3, #4
 800133c:	9201      	str	r2, [sp, #4]
 800133e:	7818      	ldrb	r0, [r3, #0]
 8001340:	e021      	b.n	8001386 <printf_+0x86>
 8001342:	2875      	cmp	r0, #117	; 0x75
 8001344:	d011      	beq.n	800136a <printf_+0x6a>
 8001346:	2878      	cmp	r0, #120	; 0x78
 8001348:	d016      	beq.n	8001378 <printf_+0x78>
 800134a:	2873      	cmp	r0, #115	; 0x73
 800134c:	d11d      	bne.n	800138a <printf_+0x8a>
 800134e:	9b01      	ldr	r3, [sp, #4]
 8001350:	1d1a      	adds	r2, r3, #4
 8001352:	6818      	ldr	r0, [r3, #0]
 8001354:	9201      	str	r2, [sp, #4]
 8001356:	f7ff ff69 	bl	800122c <puts_>
 800135a:	e016      	b.n	800138a <printf_+0x8a>
 800135c:	9b01      	ldr	r3, [sp, #4]
 800135e:	1d1a      	adds	r2, r3, #4
 8001360:	6818      	ldr	r0, [r3, #0]
 8001362:	9201      	str	r2, [sp, #4]
 8001364:	f7ff ff76 	bl	8001254 <puti_>
 8001368:	e00f      	b.n	800138a <printf_+0x8a>
 800136a:	9b01      	ldr	r3, [sp, #4]
 800136c:	1d1a      	adds	r2, r3, #4
 800136e:	6818      	ldr	r0, [r3, #0]
 8001370:	9201      	str	r2, [sp, #4]
 8001372:	f7ff ff94 	bl	800129e <putui_>
 8001376:	e008      	b.n	800138a <printf_+0x8a>
 8001378:	9b01      	ldr	r3, [sp, #4]
 800137a:	1d1a      	adds	r2, r3, #4
 800137c:	6818      	ldr	r0, [r3, #0]
 800137e:	9201      	str	r2, [sp, #4]
 8001380:	f7ff ffa4 	bl	80012cc <putx_>
 8001384:	e001      	b.n	800138a <printf_+0x8a>
 8001386:	f7ff ff41 	bl	800120c <putc_>
 800138a:	3402      	adds	r4, #2
 800138c:	e7c2      	b.n	8001314 <printf_+0x14>
 800138e:	4804      	ldr	r0, [pc, #16]	; (80013a0 <printf_+0xa0>)
 8001390:	f000 f87d 	bl	800148e <mutex_unlock>
 8001394:	b003      	add	sp, #12
 8001396:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800139a:	b004      	add	sp, #16
 800139c:	4770      	bx	lr
 800139e:	bf00      	nop
 80013a0:	200013b0 	.word	0x200013b0

080013a4 <stdio_init>:
 80013a4:	b510      	push	{r4, lr}
 80013a6:	480e      	ldr	r0, [pc, #56]	; (80013e0 <stdio_init+0x3c>)
 80013a8:	f000 f84b 	bl	8001442 <mutex_init>
 80013ac:	480d      	ldr	r0, [pc, #52]	; (80013e4 <stdio_init+0x40>)
 80013ae:	f000 f848 	bl	8001442 <mutex_init>
 80013b2:	480d      	ldr	r0, [pc, #52]	; (80013e8 <stdio_init+0x44>)
 80013b4:	f000 f845 	bl	8001442 <mutex_init>
 80013b8:	480c      	ldr	r0, [pc, #48]	; (80013ec <stdio_init+0x48>)
 80013ba:	f000 f842 	bl	8001442 <mutex_init>
 80013be:	2408      	movs	r4, #8
 80013c0:	2020      	movs	r0, #32
 80013c2:	f7ff ff23 	bl	800120c <putc_>
 80013c6:	3c01      	subs	r4, #1
 80013c8:	d1fa      	bne.n	80013c0 <stdio_init+0x1c>
 80013ca:	2420      	movs	r4, #32
 80013cc:	200a      	movs	r0, #10
 80013ce:	f7ff ff1d 	bl	800120c <putc_>
 80013d2:	3c01      	subs	r4, #1
 80013d4:	d1fa      	bne.n	80013cc <stdio_init+0x28>
 80013d6:	4806      	ldr	r0, [pc, #24]	; (80013f0 <stdio_init+0x4c>)
 80013d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80013dc:	f7ff bf90 	b.w	8001300 <printf_>
 80013e0:	200013a8 	.word	0x200013a8
 80013e4:	200013ac 	.word	0x200013ac
 80013e8:	200013b4 	.word	0x200013b4
 80013ec:	200013b0 	.word	0x200013b0
 80013f0:	08004a2e 	.word	0x08004a2e

080013f4 <mem_init>:
 80013f4:	4b06      	ldr	r3, [pc, #24]	; (8001410 <mem_init+0x1c>)
 80013f6:	4a07      	ldr	r2, [pc, #28]	; (8001414 <mem_init+0x20>)
 80013f8:	601a      	str	r2, [r3, #0]
 80013fa:	4907      	ldr	r1, [pc, #28]	; (8001418 <mem_init+0x24>)
 80013fc:	4b07      	ldr	r3, [pc, #28]	; (800141c <mem_init+0x28>)
 80013fe:	4808      	ldr	r0, [pc, #32]	; (8001420 <mem_init+0x2c>)
 8001400:	1a5b      	subs	r3, r3, r1
 8001402:	4908      	ldr	r1, [pc, #32]	; (8001424 <mem_init+0x30>)
 8001404:	4413      	add	r3, r2
 8001406:	600b      	str	r3, [r1, #0]
 8001408:	4b07      	ldr	r3, [pc, #28]	; (8001428 <mem_init+0x34>)
 800140a:	601a      	str	r2, [r3, #0]
 800140c:	f000 b819 	b.w	8001442 <mutex_init>
 8001410:	200013b8 	.word	0x200013b8
 8001414:	20001898 	.word	0x20001898
 8001418:	20001898 	.word	0x20001898
 800141c:	20004000 	.word	0x20004000
 8001420:	200013c4 	.word	0x200013c4
 8001424:	200013c0 	.word	0x200013c0
 8001428:	200013bc 	.word	0x200013bc

0800142c <lib_os_init>:
 800142c:	b508      	push	{r3, lr}
 800142e:	f7ff fe79 	bl	8001124 <kernel_init>
 8001432:	f7ff ffdf 	bl	80013f4 <mem_init>
 8001436:	f7ff fecf 	bl	80011d8 <messages_init>
 800143a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800143e:	f7ff bfb1 	b.w	80013a4 <stdio_init>

08001442 <mutex_init>:
 8001442:	b510      	push	{r4, lr}
 8001444:	4604      	mov	r4, r0
 8001446:	f7ff fe15 	bl	8001074 <sched_off>
 800144a:	2300      	movs	r3, #0
 800144c:	6023      	str	r3, [r4, #0]
 800144e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001452:	f7ff be11 	b.w	8001078 <sched_on>

08001456 <mutex_lock>:
 8001456:	b513      	push	{r0, r1, r4, lr}
 8001458:	4604      	mov	r4, r0
 800145a:	f7ff fe0b 	bl	8001074 <sched_off>
 800145e:	6823      	ldr	r3, [r4, #0]
 8001460:	9301      	str	r3, [sp, #4]
 8001462:	f7ff fe09 	bl	8001078 <sched_on>
 8001466:	9b01      	ldr	r3, [sp, #4]
 8001468:	b10b      	cbz	r3, 800146e <mutex_lock+0x18>
 800146a:	f7ff fe81 	bl	8001170 <set_wait_state>
 800146e:	9b01      	ldr	r3, [sp, #4]
 8001470:	2b00      	cmp	r3, #0
 8001472:	d1f2      	bne.n	800145a <mutex_lock+0x4>
 8001474:	f7ff fdfe 	bl	8001074 <sched_off>
 8001478:	6823      	ldr	r3, [r4, #0]
 800147a:	9301      	str	r3, [sp, #4]
 800147c:	9b01      	ldr	r3, [sp, #4]
 800147e:	2b00      	cmp	r3, #0
 8001480:	d1eb      	bne.n	800145a <mutex_lock+0x4>
 8001482:	2301      	movs	r3, #1
 8001484:	6023      	str	r3, [r4, #0]
 8001486:	f7ff fdf7 	bl	8001078 <sched_on>
 800148a:	b002      	add	sp, #8
 800148c:	bd10      	pop	{r4, pc}

0800148e <mutex_unlock>:
 800148e:	b508      	push	{r3, lr}
 8001490:	f7ff ffd7 	bl	8001442 <mutex_init>
 8001494:	f7ff fe8e 	bl	80011b4 <wake_up_threads>
 8001498:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800149c:	f7ff bdee 	b.w	800107c <yield>

080014a0 <log_write>:
 80014a0:	b570      	push	{r4, r5, r6, lr}
 80014a2:	f3c0 060a 	ubfx	r6, r0, #0, #11
 80014a6:	460c      	mov	r4, r1
 80014a8:	4615      	mov	r5, r2
 80014aa:	f001 f8bf 	bl	800262c <i2cStart>
 80014ae:	0a30      	lsrs	r0, r6, #8
 80014b0:	0040      	lsls	r0, r0, #1
 80014b2:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 80014b6:	f001 f8d7 	bl	8002668 <i2cWrite>
 80014ba:	b2f0      	uxtb	r0, r6
 80014bc:	f001 f8d4 	bl	8002668 <i2cWrite>
 80014c0:	4425      	add	r5, r4
 80014c2:	42ac      	cmp	r4, r5
 80014c4:	d004      	beq.n	80014d0 <log_write+0x30>
 80014c6:	f814 0b01 	ldrb.w	r0, [r4], #1
 80014ca:	f001 f8cd 	bl	8002668 <i2cWrite>
 80014ce:	e7f8      	b.n	80014c2 <log_write+0x22>
 80014d0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80014d4:	f001 b8b9 	b.w	800264a <i2cStop>

080014d8 <log_read>:
 80014d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014da:	f3c0 060a 	ubfx	r6, r0, #0, #11
 80014de:	0a34      	lsrs	r4, r6, #8
 80014e0:	0064      	lsls	r4, r4, #1
 80014e2:	460d      	mov	r5, r1
 80014e4:	4617      	mov	r7, r2
 80014e6:	f001 f8a1 	bl	800262c <i2cStart>
 80014ea:	f044 00a0 	orr.w	r0, r4, #160	; 0xa0
 80014ee:	f001 f8bb 	bl	8002668 <i2cWrite>
 80014f2:	b2f0      	uxtb	r0, r6
 80014f4:	f001 f8b8 	bl	8002668 <i2cWrite>
 80014f8:	f001 f898 	bl	800262c <i2cStart>
 80014fc:	f044 00a1 	orr.w	r0, r4, #161	; 0xa1
 8001500:	f001 f8b2 	bl	8002668 <i2cWrite>
 8001504:	462c      	mov	r4, r5
 8001506:	1e7e      	subs	r6, r7, #1
 8001508:	1b63      	subs	r3, r4, r5
 800150a:	42b3      	cmp	r3, r6
 800150c:	d205      	bcs.n	800151a <log_read+0x42>
 800150e:	2001      	movs	r0, #1
 8001510:	f001 f8d2 	bl	80026b8 <i2cRead>
 8001514:	f804 0b01 	strb.w	r0, [r4], #1
 8001518:	e7f5      	b.n	8001506 <log_read+0x2e>
 800151a:	2000      	movs	r0, #0
 800151c:	f001 f8cc 	bl	80026b8 <i2cRead>
 8001520:	55a8      	strb	r0, [r5, r6]
 8001522:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001526:	f001 b890 	b.w	800264a <i2cStop>

0800152a <m_abs>:
 800152a:	ee07 0a90 	vmov	s15, r0
 800152e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8001532:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001536:	bf48      	it	mi
 8001538:	eef1 7a67 	vnegmi.f32	s15, s15
 800153c:	ee17 0a90 	vmov	r0, s15
 8001540:	4770      	bx	lr

08001542 <m_saturate>:
 8001542:	ee07 0a90 	vmov	s15, r0
 8001546:	ee06 1a90 	vmov	s13, r1
 800154a:	eef4 7a66 	vcmp.f32	s15, s13
 800154e:	ee07 2a10 	vmov	s14, r2
 8001552:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001556:	bf48      	it	mi
 8001558:	eef0 7a66 	vmovmi.f32	s15, s13
 800155c:	eef4 7a47 	vcmp.f32	s15, s14
 8001560:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001564:	bfcc      	ite	gt
 8001566:	ee17 0a10 	vmovgt	r0, s14
 800156a:	ee17 0a90 	vmovle	r0, s15
 800156e:	4770      	bx	lr

08001570 <m_min>:
 8001570:	ee07 0a10 	vmov	s14, r0
 8001574:	ee07 1a90 	vmov	s15, r1
 8001578:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800157c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001580:	bf54      	ite	pl
 8001582:	ee17 0a90 	vmovpl	r0, s15
 8001586:	ee17 0a10 	vmovmi	r0, s14
 800158a:	4770      	bx	lr

0800158c <pid_init>:
 800158c:	ee07 2a90 	vmov	s15, r2
 8001590:	ee06 3a10 	vmov	s12, r3
 8001594:	ed9d 7a00 	vldr	s14, [sp]
 8001598:	eddd 6a01 	vldr	s13, [sp, #4]
 800159c:	6241      	str	r1, [r0, #36]	; 0x24
 800159e:	ee37 6a86 	vadd.f32	s12, s15, s12
 80015a2:	ee77 5a07 	vadd.f32	s11, s14, s14
 80015a6:	ee36 6a07 	vadd.f32	s12, s12, s14
 80015aa:	eef1 7a67 	vneg.f32	s15, s15
 80015ae:	ee36 6a26 	vadd.f32	s12, s12, s13
 80015b2:	ee77 7ae5 	vsub.f32	s15, s15, s11
 80015b6:	ed80 6a04 	vstr	s12, [r0, #16]
 80015ba:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 80015e8 <pid_init+0x5c>
 80015be:	ee26 6a86 	vmul.f32	s12, s13, s12
 80015c2:	2200      	movs	r2, #0
 80015c4:	ee77 7ac6 	vsub.f32	s15, s15, s12
 80015c8:	ee37 7a06 	vadd.f32	s14, s14, s12
 80015cc:	eef1 6a66 	vneg.f32	s13, s13
 80015d0:	6002      	str	r2, [r0, #0]
 80015d2:	6042      	str	r2, [r0, #4]
 80015d4:	6082      	str	r2, [r0, #8]
 80015d6:	60c2      	str	r2, [r0, #12]
 80015d8:	edc0 7a05 	vstr	s15, [r0, #20]
 80015dc:	ed80 7a06 	vstr	s14, [r0, #24]
 80015e0:	edc0 6a07 	vstr	s13, [r0, #28]
 80015e4:	6202      	str	r2, [r0, #32]
 80015e6:	4770      	bx	lr
 80015e8:	40400000 	.word	0x40400000

080015ec <pid_process>:
 80015ec:	edd0 7a08 	vldr	s15, [r0, #32]
 80015f0:	ed90 5a04 	vldr	s10, [r0, #16]
 80015f4:	ed90 6a00 	vldr	s12, [r0]
 80015f8:	edd0 6a01 	vldr	s13, [r0, #4]
 80015fc:	ed80 6a01 	vstr	s12, [r0, #4]
 8001600:	ee05 1a90 	vmov	s11, r1
 8001604:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001608:	6001      	str	r1, [r0, #0]
 800160a:	edd0 5a05 	vldr	s11, [r0, #20]
 800160e:	ed90 7a02 	vldr	s14, [r0, #8]
 8001612:	edc0 6a02 	vstr	s13, [r0, #8]
 8001616:	ee46 7a25 	vmla.f32	s15, s12, s11
 800161a:	ed90 6a06 	vldr	s12, [r0, #24]
 800161e:	ed80 7a03 	vstr	s14, [r0, #12]
 8001622:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001626:	edd0 6a07 	vldr	s13, [r0, #28]
 800162a:	ee47 7a26 	vmla.f32	s15, s14, s13
 800162e:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001632:	edc0 7a08 	vstr	s15, [r0, #32]
 8001636:	eef4 7ac7 	vcmpe.f32	s15, s14
 800163a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800163e:	bfc8      	it	gt
 8001640:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001644:	edd0 7a08 	vldr	s15, [r0, #32]
 8001648:	eeb1 7a47 	vneg.f32	s14, s14
 800164c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001650:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001654:	bf48      	it	mi
 8001656:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800165a:	6a00      	ldr	r0, [r0, #32]
 800165c:	4770      	bx	lr
	...

08001660 <TIM2_IRQHandler>:
 8001660:	4a21      	ldr	r2, [pc, #132]	; (80016e8 <TIM2_IRQHandler+0x88>)
 8001662:	4922      	ldr	r1, [pc, #136]	; (80016ec <TIM2_IRQHandler+0x8c>)
 8001664:	6813      	ldr	r3, [r2, #0]
 8001666:	2b01      	cmp	r3, #1
 8001668:	b510      	push	{r4, lr}
 800166a:	d011      	beq.n	8001690 <TIM2_IRQHandler+0x30>
 800166c:	d306      	bcc.n	800167c <TIM2_IRQHandler+0x1c>
 800166e:	2b02      	cmp	r3, #2
 8001670:	d113      	bne.n	800169a <TIM2_IRQHandler+0x3a>
 8001672:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001676:	850b      	strh	r3, [r1, #40]	; 0x28
 8001678:	2304      	movs	r3, #4
 800167a:	e023      	b.n	80016c4 <TIM2_IRQHandler+0x64>
 800167c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001680:	850b      	strh	r3, [r1, #40]	; 0x28
 8001682:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001686:	618b      	str	r3, [r1, #24]
 8001688:	2301      	movs	r3, #1
 800168a:	6013      	str	r3, [r2, #0]
 800168c:	6093      	str	r3, [r2, #8]
 800168e:	e023      	b.n	80016d8 <TIM2_IRQHandler+0x78>
 8001690:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001694:	618b      	str	r3, [r1, #24]
 8001696:	2302      	movs	r3, #2
 8001698:	e014      	b.n	80016c4 <TIM2_IRQHandler+0x64>
 800169a:	f013 0f01 	tst.w	r3, #1
 800169e:	4814      	ldr	r0, [pc, #80]	; (80016f0 <TIM2_IRQHandler+0x90>)
 80016a0:	f103 0401 	add.w	r4, r3, #1
 80016a4:	d010      	beq.n	80016c8 <TIM2_IRQHandler+0x68>
 80016a6:	3b04      	subs	r3, #4
 80016a8:	f023 0301 	bic.w	r3, r3, #1
 80016ac:	4413      	add	r3, r2
 80016ae:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80016b0:	8298      	strh	r0, [r3, #20]
 80016b2:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80016b6:	f44f 7380 	mov.w	r3, #256	; 0x100
 80016ba:	850b      	strh	r3, [r1, #40]	; 0x28
 80016bc:	d201      	bcs.n	80016c2 <TIM2_IRQHandler+0x62>
 80016be:	6014      	str	r4, [r2, #0]
 80016c0:	e00a      	b.n	80016d8 <TIM2_IRQHandler+0x78>
 80016c2:	2300      	movs	r3, #0
 80016c4:	6013      	str	r3, [r2, #0]
 80016c6:	e007      	b.n	80016d8 <TIM2_IRQHandler+0x78>
 80016c8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80016cc:	618b      	str	r3, [r1, #24]
 80016ce:	6883      	ldr	r3, [r0, #8]
 80016d0:	6014      	str	r4, [r2, #0]
 80016d2:	f043 0304 	orr.w	r3, r3, #4
 80016d6:	6083      	str	r3, [r0, #8]
 80016d8:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80016dc:	2101      	movs	r1, #1
 80016de:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80016e2:	f000 bd1e 	b.w	8002122 <TIM_ClearITPendingBit>
 80016e6:	bf00      	nop
 80016e8:	200013c8 	.word	0x200013c8
 80016ec:	48000400 	.word	0x48000400
 80016f0:	50000500 	.word	0x50000500

080016f4 <rgb_i2c_delay>:
 80016f4:	bf00      	nop
 80016f6:	bf00      	nop
 80016f8:	bf00      	nop
 80016fa:	bf00      	nop
 80016fc:	4770      	bx	lr
	...

08001700 <RGBSetLowSDA>:
 8001700:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001702:	4f15      	ldr	r7, [pc, #84]	; (8001758 <RGBSetLowSDA+0x58>)
 8001704:	2401      	movs	r4, #1
 8001706:	783b      	ldrb	r3, [r7, #0]
 8001708:	9300      	str	r3, [sp, #0]
 800170a:	2603      	movs	r6, #3
 800170c:	2500      	movs	r5, #0
 800170e:	4669      	mov	r1, sp
 8001710:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001714:	f88d 5007 	strb.w	r5, [sp, #7]
 8001718:	f88d 4004 	strb.w	r4, [sp, #4]
 800171c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001720:	f88d 4006 	strb.w	r4, [sp, #6]
 8001724:	f001 fa8e 	bl	8002c44 <GPIO_Init>
 8001728:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800172c:	783a      	ldrb	r2, [r7, #0]
 800172e:	851a      	strh	r2, [r3, #40]	; 0x28
 8001730:	f88d 5007 	strb.w	r5, [sp, #7]
 8001734:	4d09      	ldr	r5, [pc, #36]	; (800175c <RGBSetLowSDA+0x5c>)
 8001736:	9400      	str	r4, [sp, #0]
 8001738:	4628      	mov	r0, r5
 800173a:	4669      	mov	r1, sp
 800173c:	f88d 4004 	strb.w	r4, [sp, #4]
 8001740:	f88d 6005 	strb.w	r6, [sp, #5]
 8001744:	f88d 4006 	strb.w	r4, [sp, #6]
 8001748:	f001 fa7c 	bl	8002c44 <GPIO_Init>
 800174c:	852c      	strh	r4, [r5, #40]	; 0x28
 800174e:	f7ff ffd1 	bl	80016f4 <rgb_i2c_delay>
 8001752:	b003      	add	sp, #12
 8001754:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001756:	bf00      	nop
 8001758:	20001636 	.word	0x20001636
 800175c:	48000400 	.word	0x48000400

08001760 <RGBSetHighSDA>:
 8001760:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001762:	4d13      	ldr	r5, [pc, #76]	; (80017b0 <RGBSetHighSDA+0x50>)
 8001764:	2400      	movs	r4, #0
 8001766:	782b      	ldrb	r3, [r5, #0]
 8001768:	9300      	str	r3, [sp, #0]
 800176a:	2603      	movs	r6, #3
 800176c:	4669      	mov	r1, sp
 800176e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001772:	f88d 4004 	strb.w	r4, [sp, #4]
 8001776:	f88d 4007 	strb.w	r4, [sp, #7]
 800177a:	f88d 6005 	strb.w	r6, [sp, #5]
 800177e:	f001 fa61 	bl	8002c44 <GPIO_Init>
 8001782:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001786:	782a      	ldrb	r2, [r5, #0]
 8001788:	619a      	str	r2, [r3, #24]
 800178a:	f88d 4004 	strb.w	r4, [sp, #4]
 800178e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001792:	4c08      	ldr	r4, [pc, #32]	; (80017b4 <RGBSetHighSDA+0x54>)
 8001794:	f88d 6005 	strb.w	r6, [sp, #5]
 8001798:	2501      	movs	r5, #1
 800179a:	4620      	mov	r0, r4
 800179c:	4669      	mov	r1, sp
 800179e:	9500      	str	r5, [sp, #0]
 80017a0:	f001 fa50 	bl	8002c44 <GPIO_Init>
 80017a4:	61a5      	str	r5, [r4, #24]
 80017a6:	f7ff ffa5 	bl	80016f4 <rgb_i2c_delay>
 80017aa:	b002      	add	sp, #8
 80017ac:	bd70      	pop	{r4, r5, r6, pc}
 80017ae:	bf00      	nop
 80017b0:	20001636 	.word	0x20001636
 80017b4:	48000400 	.word	0x48000400

080017b8 <RGBSetLowSCL>:
 80017b8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80017bc:	f44f 7280 	mov.w	r2, #256	; 0x100
 80017c0:	851a      	strh	r2, [r3, #40]	; 0x28
 80017c2:	f7ff bf97 	b.w	80016f4 <rgb_i2c_delay>

080017c6 <RGBSetHighSCL>:
 80017c6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80017ca:	f44f 7280 	mov.w	r2, #256	; 0x100
 80017ce:	619a      	str	r2, [r3, #24]
 80017d0:	f7ff bf90 	b.w	80016f4 <rgb_i2c_delay>

080017d4 <rgb_i2c_init>:
 80017d4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80017d6:	4f1f      	ldr	r7, [pc, #124]	; (8001854 <rgb_i2c_init+0x80>)
 80017d8:	2400      	movs	r4, #0
 80017da:	2501      	movs	r5, #1
 80017dc:	2603      	movs	r6, #3
 80017de:	f44f 7380 	mov.w	r3, #256	; 0x100
 80017e2:	4669      	mov	r1, sp
 80017e4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017e8:	9300      	str	r3, [sp, #0]
 80017ea:	f88d 4006 	strb.w	r4, [sp, #6]
 80017ee:	f88d 4007 	strb.w	r4, [sp, #7]
 80017f2:	f88d 5004 	strb.w	r5, [sp, #4]
 80017f6:	f88d 6005 	strb.w	r6, [sp, #5]
 80017fa:	f001 fa23 	bl	8002c44 <GPIO_Init>
 80017fe:	783b      	ldrb	r3, [r7, #0]
 8001800:	9300      	str	r3, [sp, #0]
 8001802:	4669      	mov	r1, sp
 8001804:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001808:	f88d 4004 	strb.w	r4, [sp, #4]
 800180c:	f88d 4007 	strb.w	r4, [sp, #7]
 8001810:	f88d 6005 	strb.w	r6, [sp, #5]
 8001814:	f001 fa16 	bl	8002c44 <GPIO_Init>
 8001818:	7839      	ldrb	r1, [r7, #0]
 800181a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800181e:	f001 fa53 	bl	8002cc8 <GPIO_SetBits>
 8001822:	f88d 4004 	strb.w	r4, [sp, #4]
 8001826:	f88d 4007 	strb.w	r4, [sp, #7]
 800182a:	4c0b      	ldr	r4, [pc, #44]	; (8001858 <rgb_i2c_init+0x84>)
 800182c:	9500      	str	r5, [sp, #0]
 800182e:	4620      	mov	r0, r4
 8001830:	4669      	mov	r1, sp
 8001832:	f88d 6005 	strb.w	r6, [sp, #5]
 8001836:	f001 fa05 	bl	8002c44 <GPIO_Init>
 800183a:	4620      	mov	r0, r4
 800183c:	4629      	mov	r1, r5
 800183e:	f001 fa43 	bl	8002cc8 <GPIO_SetBits>
 8001842:	f7ff ffc0 	bl	80017c6 <RGBSetHighSCL>
 8001846:	f7ff ff5b 	bl	8001700 <RGBSetLowSDA>
 800184a:	f7ff ff89 	bl	8001760 <RGBSetHighSDA>
 800184e:	b003      	add	sp, #12
 8001850:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001852:	bf00      	nop
 8001854:	20001636 	.word	0x20001636
 8001858:	48000400 	.word	0x48000400

0800185c <rgb_i2cStart>:
 800185c:	b508      	push	{r3, lr}
 800185e:	f7ff ffb2 	bl	80017c6 <RGBSetHighSCL>
 8001862:	f7ff ff7d 	bl	8001760 <RGBSetHighSDA>
 8001866:	f7ff ffae 	bl	80017c6 <RGBSetHighSCL>
 800186a:	f7ff ff49 	bl	8001700 <RGBSetLowSDA>
 800186e:	f7ff ffa3 	bl	80017b8 <RGBSetLowSCL>
 8001872:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001876:	f7ff bf73 	b.w	8001760 <RGBSetHighSDA>

0800187a <rgb_i2cStop>:
 800187a:	b508      	push	{r3, lr}
 800187c:	f7ff ff9c 	bl	80017b8 <RGBSetLowSCL>
 8001880:	f7ff ff3e 	bl	8001700 <RGBSetLowSDA>
 8001884:	f7ff ff9f 	bl	80017c6 <RGBSetHighSCL>
 8001888:	f7ff ff3a 	bl	8001700 <RGBSetLowSDA>
 800188c:	f7ff ff9b 	bl	80017c6 <RGBSetHighSCL>
 8001890:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001894:	f7ff bf64 	b.w	8001760 <RGBSetHighSDA>

08001898 <rgb_i2cWrite>:
 8001898:	b538      	push	{r3, r4, r5, lr}
 800189a:	4605      	mov	r5, r0
 800189c:	2408      	movs	r4, #8
 800189e:	f7ff ff8b 	bl	80017b8 <RGBSetLowSCL>
 80018a2:	062b      	lsls	r3, r5, #24
 80018a4:	d502      	bpl.n	80018ac <rgb_i2cWrite+0x14>
 80018a6:	f7ff ff5b 	bl	8001760 <RGBSetHighSDA>
 80018aa:	e001      	b.n	80018b0 <rgb_i2cWrite+0x18>
 80018ac:	f7ff ff28 	bl	8001700 <RGBSetLowSDA>
 80018b0:	3c01      	subs	r4, #1
 80018b2:	f7ff ff88 	bl	80017c6 <RGBSetHighSCL>
 80018b6:	006d      	lsls	r5, r5, #1
 80018b8:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80018bc:	b2ed      	uxtb	r5, r5
 80018be:	d1ee      	bne.n	800189e <rgb_i2cWrite+0x6>
 80018c0:	f7ff ff7a 	bl	80017b8 <RGBSetLowSCL>
 80018c4:	f7ff ff4c 	bl	8001760 <RGBSetHighSDA>
 80018c8:	f7ff ff7d 	bl	80017c6 <RGBSetHighSCL>
 80018cc:	f7ff ff74 	bl	80017b8 <RGBSetLowSCL>
 80018d0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80018d4:	f7ff bf0e 	b.w	80016f4 <rgb_i2c_delay>

080018d8 <rgb_i2cRead>:
 80018d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80018dc:	1e4e      	subs	r6, r1, #1
 80018de:	4680      	mov	r8, r0
 80018e0:	460c      	mov	r4, r1
 80018e2:	f101 0708 	add.w	r7, r1, #8
 80018e6:	4633      	mov	r3, r6
 80018e8:	2200      	movs	r2, #0
 80018ea:	f803 2f01 	strb.w	r2, [r3, #1]!
 80018ee:	42bb      	cmp	r3, r7
 80018f0:	d1fa      	bne.n	80018e8 <rgb_i2cRead+0x10>
 80018f2:	f7ff ff61 	bl	80017b8 <RGBSetLowSCL>
 80018f6:	f7ff ff33 	bl	8001760 <RGBSetHighSDA>
 80018fa:	2508      	movs	r5, #8
 80018fc:	4633      	mov	r3, r6
 80018fe:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001902:	0052      	lsls	r2, r2, #1
 8001904:	42bb      	cmp	r3, r7
 8001906:	701a      	strb	r2, [r3, #0]
 8001908:	d1f9      	bne.n	80018fe <rgb_i2cRead+0x26>
 800190a:	f7ff ff5c 	bl	80017c6 <RGBSetHighSCL>
 800190e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001912:	8a1b      	ldrh	r3, [r3, #16]
 8001914:	b29b      	uxth	r3, r3
 8001916:	07d9      	lsls	r1, r3, #31
 8001918:	bf42      	ittt	mi
 800191a:	7822      	ldrbmi	r2, [r4, #0]
 800191c:	f042 0201 	orrmi.w	r2, r2, #1
 8001920:	7022      	strbmi	r2, [r4, #0]
 8001922:	079a      	lsls	r2, r3, #30
 8001924:	bf42      	ittt	mi
 8001926:	7862      	ldrbmi	r2, [r4, #1]
 8001928:	f042 0201 	orrmi.w	r2, r2, #1
 800192c:	7062      	strbmi	r2, [r4, #1]
 800192e:	0758      	lsls	r0, r3, #29
 8001930:	bf42      	ittt	mi
 8001932:	78a2      	ldrbmi	r2, [r4, #2]
 8001934:	f042 0201 	orrmi.w	r2, r2, #1
 8001938:	70a2      	strbmi	r2, [r4, #2]
 800193a:	0719      	lsls	r1, r3, #28
 800193c:	bf42      	ittt	mi
 800193e:	78e2      	ldrbmi	r2, [r4, #3]
 8001940:	f042 0201 	orrmi.w	r2, r2, #1
 8001944:	70e2      	strbmi	r2, [r4, #3]
 8001946:	06da      	lsls	r2, r3, #27
 8001948:	bf42      	ittt	mi
 800194a:	7922      	ldrbmi	r2, [r4, #4]
 800194c:	f042 0201 	orrmi.w	r2, r2, #1
 8001950:	7122      	strbmi	r2, [r4, #4]
 8001952:	0698      	lsls	r0, r3, #26
 8001954:	bf42      	ittt	mi
 8001956:	7962      	ldrbmi	r2, [r4, #5]
 8001958:	f042 0201 	orrmi.w	r2, r2, #1
 800195c:	7162      	strbmi	r2, [r4, #5]
 800195e:	0659      	lsls	r1, r3, #25
 8001960:	bf42      	ittt	mi
 8001962:	79a2      	ldrbmi	r2, [r4, #6]
 8001964:	f042 0201 	orrmi.w	r2, r2, #1
 8001968:	71a2      	strbmi	r2, [r4, #6]
 800196a:	061a      	lsls	r2, r3, #24
 800196c:	bf42      	ittt	mi
 800196e:	79e3      	ldrbmi	r3, [r4, #7]
 8001970:	f043 0301 	orrmi.w	r3, r3, #1
 8001974:	71e3      	strbmi	r3, [r4, #7]
 8001976:	4b0c      	ldr	r3, [pc, #48]	; (80019a8 <rgb_i2cRead+0xd0>)
 8001978:	8a1b      	ldrh	r3, [r3, #16]
 800197a:	07db      	lsls	r3, r3, #31
 800197c:	bf42      	ittt	mi
 800197e:	7a23      	ldrbmi	r3, [r4, #8]
 8001980:	f043 0301 	orrmi.w	r3, r3, #1
 8001984:	7223      	strbmi	r3, [r4, #8]
 8001986:	f7ff ff17 	bl	80017b8 <RGBSetLowSCL>
 800198a:	3d01      	subs	r5, #1
 800198c:	d1b6      	bne.n	80018fc <rgb_i2cRead+0x24>
 800198e:	f1b8 0f00 	cmp.w	r8, #0
 8001992:	d001      	beq.n	8001998 <rgb_i2cRead+0xc0>
 8001994:	f7ff feb4 	bl	8001700 <RGBSetLowSDA>
 8001998:	f7ff ff15 	bl	80017c6 <RGBSetHighSCL>
 800199c:	f7ff ff0c 	bl	80017b8 <RGBSetLowSCL>
 80019a0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80019a4:	f7ff bea6 	b.w	80016f4 <rgb_i2c_delay>
 80019a8:	48000400 	.word	0x48000400

080019ac <rgb_i2c_write_reg>:
 80019ac:	b570      	push	{r4, r5, r6, lr}
 80019ae:	4606      	mov	r6, r0
 80019b0:	460d      	mov	r5, r1
 80019b2:	4614      	mov	r4, r2
 80019b4:	f7ff ff52 	bl	800185c <rgb_i2cStart>
 80019b8:	4630      	mov	r0, r6
 80019ba:	f7ff ff6d 	bl	8001898 <rgb_i2cWrite>
 80019be:	4628      	mov	r0, r5
 80019c0:	f7ff ff6a 	bl	8001898 <rgb_i2cWrite>
 80019c4:	4620      	mov	r0, r4
 80019c6:	f7ff ff67 	bl	8001898 <rgb_i2cWrite>
 80019ca:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80019ce:	f7ff bf54 	b.w	800187a <rgb_i2cStop>

080019d2 <rgb_i2c_read_reg>:
 80019d2:	b570      	push	{r4, r5, r6, lr}
 80019d4:	4604      	mov	r4, r0
 80019d6:	460e      	mov	r6, r1
 80019d8:	4615      	mov	r5, r2
 80019da:	f7ff ff3f 	bl	800185c <rgb_i2cStart>
 80019de:	4620      	mov	r0, r4
 80019e0:	f7ff ff5a 	bl	8001898 <rgb_i2cWrite>
 80019e4:	4630      	mov	r0, r6
 80019e6:	f7ff ff57 	bl	8001898 <rgb_i2cWrite>
 80019ea:	f7ff ff37 	bl	800185c <rgb_i2cStart>
 80019ee:	f044 0001 	orr.w	r0, r4, #1
 80019f2:	f7ff ff51 	bl	8001898 <rgb_i2cWrite>
 80019f6:	4629      	mov	r1, r5
 80019f8:	2000      	movs	r0, #0
 80019fa:	f7ff ff6d 	bl	80018d8 <rgb_i2cRead>
 80019fe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001a02:	f7ff bf3a 	b.w	800187a <rgb_i2cStop>
	...

08001a08 <rgb_init>:
 8001a08:	b570      	push	{r4, r5, r6, lr}
 8001a0a:	4b1e      	ldr	r3, [pc, #120]	; (8001a84 <rgb_init+0x7c>)
 8001a0c:	2200      	movs	r2, #0
 8001a0e:	3201      	adds	r2, #1
 8001a10:	2400      	movs	r4, #0
 8001a12:	2a09      	cmp	r2, #9
 8001a14:	801c      	strh	r4, [r3, #0]
 8001a16:	825c      	strh	r4, [r3, #18]
 8001a18:	849c      	strh	r4, [r3, #36]	; 0x24
 8001a1a:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001a1e:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001a20:	f103 0302 	add.w	r3, r3, #2
 8001a24:	d1f3      	bne.n	8001a0e <rgb_init+0x6>
 8001a26:	4d18      	ldr	r5, [pc, #96]	; (8001a88 <rgb_init+0x80>)
 8001a28:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001a2c:	802e      	strh	r6, [r5, #0]
 8001a2e:	f7ff fed1 	bl	80017d4 <rgb_i2c_init>
 8001a32:	2072      	movs	r0, #114	; 0x72
 8001a34:	2181      	movs	r1, #129	; 0x81
 8001a36:	22ff      	movs	r2, #255	; 0xff
 8001a38:	f7ff ffb8 	bl	80019ac <rgb_i2c_write_reg>
 8001a3c:	2072      	movs	r0, #114	; 0x72
 8001a3e:	2183      	movs	r1, #131	; 0x83
 8001a40:	22ff      	movs	r2, #255	; 0xff
 8001a42:	f7ff ffb3 	bl	80019ac <rgb_i2c_write_reg>
 8001a46:	2072      	movs	r0, #114	; 0x72
 8001a48:	218d      	movs	r1, #141	; 0x8d
 8001a4a:	4622      	mov	r2, r4
 8001a4c:	f7ff ffae 	bl	80019ac <rgb_i2c_write_reg>
 8001a50:	2072      	movs	r0, #114	; 0x72
 8001a52:	2180      	movs	r1, #128	; 0x80
 8001a54:	2203      	movs	r2, #3
 8001a56:	f7ff ffa9 	bl	80019ac <rgb_i2c_write_reg>
 8001a5a:	2072      	movs	r0, #114	; 0x72
 8001a5c:	218f      	movs	r1, #143	; 0x8f
 8001a5e:	2223      	movs	r2, #35	; 0x23
 8001a60:	f7ff ffa4 	bl	80019ac <rgb_i2c_write_reg>
 8001a64:	f7ff fe7c 	bl	8001760 <RGBSetHighSDA>
 8001a68:	2072      	movs	r0, #114	; 0x72
 8001a6a:	2180      	movs	r1, #128	; 0x80
 8001a6c:	2207      	movs	r2, #7
 8001a6e:	802c      	strh	r4, [r5, #0]
 8001a70:	f7ff ff9c 	bl	80019ac <rgb_i2c_write_reg>
 8001a74:	2072      	movs	r0, #114	; 0x72
 8001a76:	218e      	movs	r1, #142	; 0x8e
 8001a78:	2208      	movs	r2, #8
 8001a7a:	f7ff ff97 	bl	80019ac <rgb_i2c_write_reg>
 8001a7e:	802e      	strh	r6, [r5, #0]
 8001a80:	bd70      	pop	{r4, r5, r6, pc}
 8001a82:	bf00      	nop
 8001a84:	200015dc 	.word	0x200015dc
 8001a88:	20001636 	.word	0x20001636

08001a8c <rgb_get>:
 8001a8c:	4800      	ldr	r0, [pc, #0]	; (8001a90 <rgb_get+0x4>)
 8001a8e:	4770      	bx	lr
 8001a90:	200015dc 	.word	0x200015dc

08001a94 <rgb_read>:
 8001a94:	b538      	push	{r3, r4, r5, lr}
 8001a96:	f7ff fee1 	bl	800185c <rgb_i2cStart>
 8001a9a:	2072      	movs	r0, #114	; 0x72
 8001a9c:	f7ff fefc 	bl	8001898 <rgb_i2cWrite>
 8001aa0:	20b4      	movs	r0, #180	; 0xb4
 8001aa2:	f7ff fef9 	bl	8001898 <rgb_i2cWrite>
 8001aa6:	4d48      	ldr	r5, [pc, #288]	; (8001bc8 <rgb_read+0x134>)
 8001aa8:	f7ff fed8 	bl	800185c <rgb_i2cStart>
 8001aac:	2073      	movs	r0, #115	; 0x73
 8001aae:	f7ff fef3 	bl	8001898 <rgb_i2cWrite>
 8001ab2:	2001      	movs	r0, #1
 8001ab4:	4945      	ldr	r1, [pc, #276]	; (8001bcc <rgb_read+0x138>)
 8001ab6:	f7ff ff0f 	bl	80018d8 <rgb_i2cRead>
 8001aba:	462a      	mov	r2, r5
 8001abc:	2300      	movs	r3, #0
 8001abe:	4c43      	ldr	r4, [pc, #268]	; (8001bcc <rgb_read+0x138>)
 8001ac0:	5d19      	ldrb	r1, [r3, r4]
 8001ac2:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001ac6:	3301      	adds	r3, #1
 8001ac8:	2b09      	cmp	r3, #9
 8001aca:	d1f8      	bne.n	8001abe <rgb_read+0x2a>
 8001acc:	2001      	movs	r0, #1
 8001ace:	4621      	mov	r1, r4
 8001ad0:	f7ff ff02 	bl	80018d8 <rgb_i2cRead>
 8001ad4:	2300      	movs	r3, #0
 8001ad6:	5ce1      	ldrb	r1, [r4, r3]
 8001ad8:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001adc:	3301      	adds	r3, #1
 8001ade:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001ae2:	2b09      	cmp	r3, #9
 8001ae4:	802a      	strh	r2, [r5, #0]
 8001ae6:	d1f6      	bne.n	8001ad6 <rgb_read+0x42>
 8001ae8:	2001      	movs	r0, #1
 8001aea:	4938      	ldr	r1, [pc, #224]	; (8001bcc <rgb_read+0x138>)
 8001aec:	f7ff fef4 	bl	80018d8 <rgb_i2cRead>
 8001af0:	2300      	movs	r3, #0
 8001af2:	4d37      	ldr	r5, [pc, #220]	; (8001bd0 <rgb_read+0x13c>)
 8001af4:	5ce2      	ldrb	r2, [r4, r3]
 8001af6:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001afa:	3301      	adds	r3, #1
 8001afc:	2b09      	cmp	r3, #9
 8001afe:	d1f8      	bne.n	8001af2 <rgb_read+0x5e>
 8001b00:	2001      	movs	r0, #1
 8001b02:	4932      	ldr	r1, [pc, #200]	; (8001bcc <rgb_read+0x138>)
 8001b04:	f7ff fee8 	bl	80018d8 <rgb_i2cRead>
 8001b08:	2300      	movs	r3, #0
 8001b0a:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001b0e:	5ce1      	ldrb	r1, [r4, r3]
 8001b10:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001b14:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001b18:	3301      	adds	r3, #1
 8001b1a:	2b09      	cmp	r3, #9
 8001b1c:	d1f5      	bne.n	8001b0a <rgb_read+0x76>
 8001b1e:	4d2d      	ldr	r5, [pc, #180]	; (8001bd4 <rgb_read+0x140>)
 8001b20:	492a      	ldr	r1, [pc, #168]	; (8001bcc <rgb_read+0x138>)
 8001b22:	2001      	movs	r0, #1
 8001b24:	f7ff fed8 	bl	80018d8 <rgb_i2cRead>
 8001b28:	462a      	mov	r2, r5
 8001b2a:	2300      	movs	r3, #0
 8001b2c:	5ce1      	ldrb	r1, [r4, r3]
 8001b2e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001b32:	3301      	adds	r3, #1
 8001b34:	2b09      	cmp	r3, #9
 8001b36:	d1f9      	bne.n	8001b2c <rgb_read+0x98>
 8001b38:	2001      	movs	r0, #1
 8001b3a:	4924      	ldr	r1, [pc, #144]	; (8001bcc <rgb_read+0x138>)
 8001b3c:	f7ff fecc 	bl	80018d8 <rgb_i2cRead>
 8001b40:	2300      	movs	r3, #0
 8001b42:	5ce1      	ldrb	r1, [r4, r3]
 8001b44:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001b48:	3301      	adds	r3, #1
 8001b4a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001b4e:	2b09      	cmp	r3, #9
 8001b50:	802a      	strh	r2, [r5, #0]
 8001b52:	d1f6      	bne.n	8001b42 <rgb_read+0xae>
 8001b54:	4d20      	ldr	r5, [pc, #128]	; (8001bd8 <rgb_read+0x144>)
 8001b56:	491d      	ldr	r1, [pc, #116]	; (8001bcc <rgb_read+0x138>)
 8001b58:	2001      	movs	r0, #1
 8001b5a:	f7ff febd 	bl	80018d8 <rgb_i2cRead>
 8001b5e:	462a      	mov	r2, r5
 8001b60:	2300      	movs	r3, #0
 8001b62:	5ce1      	ldrb	r1, [r4, r3]
 8001b64:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001b68:	3301      	adds	r3, #1
 8001b6a:	2b09      	cmp	r3, #9
 8001b6c:	d1f9      	bne.n	8001b62 <rgb_read+0xce>
 8001b6e:	2001      	movs	r0, #1
 8001b70:	4916      	ldr	r1, [pc, #88]	; (8001bcc <rgb_read+0x138>)
 8001b72:	f7ff feb1 	bl	80018d8 <rgb_i2cRead>
 8001b76:	2300      	movs	r3, #0
 8001b78:	5ce1      	ldrb	r1, [r4, r3]
 8001b7a:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001b7e:	3301      	adds	r3, #1
 8001b80:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001b84:	2b09      	cmp	r3, #9
 8001b86:	802a      	strh	r2, [r5, #0]
 8001b88:	d1f6      	bne.n	8001b78 <rgb_read+0xe4>
 8001b8a:	4d14      	ldr	r5, [pc, #80]	; (8001bdc <rgb_read+0x148>)
 8001b8c:	490f      	ldr	r1, [pc, #60]	; (8001bcc <rgb_read+0x138>)
 8001b8e:	2001      	movs	r0, #1
 8001b90:	f7ff fea2 	bl	80018d8 <rgb_i2cRead>
 8001b94:	462a      	mov	r2, r5
 8001b96:	2300      	movs	r3, #0
 8001b98:	5ce1      	ldrb	r1, [r4, r3]
 8001b9a:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001b9e:	3301      	adds	r3, #1
 8001ba0:	2b09      	cmp	r3, #9
 8001ba2:	d1f9      	bne.n	8001b98 <rgb_read+0x104>
 8001ba4:	2000      	movs	r0, #0
 8001ba6:	4909      	ldr	r1, [pc, #36]	; (8001bcc <rgb_read+0x138>)
 8001ba8:	f7ff fe96 	bl	80018d8 <rgb_i2cRead>
 8001bac:	2300      	movs	r3, #0
 8001bae:	5ce1      	ldrb	r1, [r4, r3]
 8001bb0:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001bb4:	3301      	adds	r3, #1
 8001bb6:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001bba:	2b09      	cmp	r3, #9
 8001bbc:	802a      	strh	r2, [r5, #0]
 8001bbe:	d1f6      	bne.n	8001bae <rgb_read+0x11a>
 8001bc0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001bc4:	f7ff be59 	b.w	800187a <rgb_i2cStop>
 8001bc8:	20001610 	.word	0x20001610
 8001bcc:	20001638 	.word	0x20001638
 8001bd0:	200015dc 	.word	0x200015dc
 8001bd4:	200015ec 	.word	0x200015ec
 8001bd8:	200015fe 	.word	0x200015fe
 8001bdc:	20001622 	.word	0x20001622

08001be0 <main>:
 8001be0:	b508      	push	{r3, lr}
 8001be2:	f000 ff8b 	bl	8002afc <lib_low_level_init>
 8001be6:	f7ff fc21 	bl	800142c <lib_os_init>
 8001bea:	4905      	ldr	r1, [pc, #20]	; (8001c00 <main+0x20>)
 8001bec:	4805      	ldr	r0, [pc, #20]	; (8001c04 <main+0x24>)
 8001bee:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001bf2:	2306      	movs	r3, #6
 8001bf4:	f7ff fa56 	bl	80010a4 <create_thread>
 8001bf8:	f7ff fa4e 	bl	8001098 <kernel_start>
 8001bfc:	2000      	movs	r0, #0
 8001bfe:	bd08      	pop	{r3, pc}
 8001c00:	20001644 	.word	0x20001644
 8001c04:	08000b51 	.word	0x08000b51

08001c08 <RCC_GetClocksFreq>:
 8001c08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001c0c:	4f9b      	ldr	r7, [pc, #620]	; (8001e7c <RCC_GetClocksFreq+0x274>)
 8001c0e:	687b      	ldr	r3, [r7, #4]
 8001c10:	f003 030c 	and.w	r3, r3, #12
 8001c14:	2b04      	cmp	r3, #4
 8001c16:	d005      	beq.n	8001c24 <RCC_GetClocksFreq+0x1c>
 8001c18:	2b08      	cmp	r3, #8
 8001c1a:	d006      	beq.n	8001c2a <RCC_GetClocksFreq+0x22>
 8001c1c:	4a98      	ldr	r2, [pc, #608]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001c1e:	6002      	str	r2, [r0, #0]
 8001c20:	b9b3      	cbnz	r3, 8001c50 <RCC_GetClocksFreq+0x48>
 8001c22:	e016      	b.n	8001c52 <RCC_GetClocksFreq+0x4a>
 8001c24:	4b96      	ldr	r3, [pc, #600]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001c26:	6003      	str	r3, [r0, #0]
 8001c28:	e012      	b.n	8001c50 <RCC_GetClocksFreq+0x48>
 8001c2a:	687b      	ldr	r3, [r7, #4]
 8001c2c:	6879      	ldr	r1, [r7, #4]
 8001c2e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001c32:	1c9a      	adds	r2, r3, #2
 8001c34:	03cb      	lsls	r3, r1, #15
 8001c36:	bf49      	itett	mi
 8001c38:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001c3a:	4b92      	ldrpl	r3, [pc, #584]	; (8001e84 <RCC_GetClocksFreq+0x27c>)
 8001c3c:	4990      	ldrmi	r1, [pc, #576]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001c3e:	f003 030f 	andmi.w	r3, r3, #15
 8001c42:	bf44      	itt	mi
 8001c44:	3301      	addmi	r3, #1
 8001c46:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001c4a:	4353      	muls	r3, r2
 8001c4c:	6003      	str	r3, [r0, #0]
 8001c4e:	e000      	b.n	8001c52 <RCC_GetClocksFreq+0x4a>
 8001c50:	2300      	movs	r3, #0
 8001c52:	687a      	ldr	r2, [r7, #4]
 8001c54:	4e8c      	ldr	r6, [pc, #560]	; (8001e88 <RCC_GetClocksFreq+0x280>)
 8001c56:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001e8c <RCC_GetClocksFreq+0x284>
 8001c5a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001c5e:	5cb4      	ldrb	r4, [r6, r2]
 8001c60:	6802      	ldr	r2, [r0, #0]
 8001c62:	b2e4      	uxtb	r4, r4
 8001c64:	fa22 f104 	lsr.w	r1, r2, r4
 8001c68:	6041      	str	r1, [r0, #4]
 8001c6a:	687d      	ldr	r5, [r7, #4]
 8001c6c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001c70:	5d75      	ldrb	r5, [r6, r5]
 8001c72:	fa21 fe05 	lsr.w	lr, r1, r5
 8001c76:	f8c0 e008 	str.w	lr, [r0, #8]
 8001c7a:	687d      	ldr	r5, [r7, #4]
 8001c7c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001c80:	5d75      	ldrb	r5, [r6, r5]
 8001c82:	b2ed      	uxtb	r5, r5
 8001c84:	40e9      	lsrs	r1, r5
 8001c86:	60c1      	str	r1, [r0, #12]
 8001c88:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001c8a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001c8e:	f008 060f 	and.w	r6, r8, #15
 8001c92:	f018 0f10 	tst.w	r8, #16
 8001c96:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001c9a:	46e0      	mov	r8, ip
 8001c9c:	b2b6      	uxth	r6, r6
 8001c9e:	d004      	beq.n	8001caa <RCC_GetClocksFreq+0xa2>
 8001ca0:	b11e      	cbz	r6, 8001caa <RCC_GetClocksFreq+0xa2>
 8001ca2:	fbb3 f6f6 	udiv	r6, r3, r6
 8001ca6:	6106      	str	r6, [r0, #16]
 8001ca8:	e000      	b.n	8001cac <RCC_GetClocksFreq+0xa4>
 8001caa:	6102      	str	r2, [r0, #16]
 8001cac:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001cae:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001cb2:	f00c 060f 	and.w	r6, ip, #15
 8001cb6:	f01c 0f10 	tst.w	ip, #16
 8001cba:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001cbe:	b2b6      	uxth	r6, r6
 8001cc0:	d004      	beq.n	8001ccc <RCC_GetClocksFreq+0xc4>
 8001cc2:	b11e      	cbz	r6, 8001ccc <RCC_GetClocksFreq+0xc4>
 8001cc4:	fbb3 f6f6 	udiv	r6, r3, r6
 8001cc8:	6146      	str	r6, [r0, #20]
 8001cca:	e000      	b.n	8001cce <RCC_GetClocksFreq+0xc6>
 8001ccc:	6142      	str	r2, [r0, #20]
 8001cce:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001cd0:	06f6      	lsls	r6, r6, #27
 8001cd2:	bf5a      	itte	pl
 8001cd4:	4e6a      	ldrpl	r6, [pc, #424]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001cd6:	6186      	strpl	r6, [r0, #24]
 8001cd8:	6182      	strmi	r2, [r0, #24]
 8001cda:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001cdc:	06b6      	lsls	r6, r6, #26
 8001cde:	bf5a      	itte	pl
 8001ce0:	4e67      	ldrpl	r6, [pc, #412]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001ce2:	61c6      	strpl	r6, [r0, #28]
 8001ce4:	61c2      	strmi	r2, [r0, #28]
 8001ce6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ce8:	0676      	lsls	r6, r6, #25
 8001cea:	bf5a      	itte	pl
 8001cec:	4e64      	ldrpl	r6, [pc, #400]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001cee:	6206      	strpl	r6, [r0, #32]
 8001cf0:	6202      	strmi	r2, [r0, #32]
 8001cf2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001cf4:	05f6      	lsls	r6, r6, #23
 8001cf6:	d506      	bpl.n	8001d06 <RCC_GetClocksFreq+0xfe>
 8001cf8:	429a      	cmp	r2, r3
 8001cfa:	d104      	bne.n	8001d06 <RCC_GetClocksFreq+0xfe>
 8001cfc:	42a5      	cmp	r5, r4
 8001cfe:	d102      	bne.n	8001d06 <RCC_GetClocksFreq+0xfe>
 8001d00:	0056      	lsls	r6, r2, #1
 8001d02:	6246      	str	r6, [r0, #36]	; 0x24
 8001d04:	e000      	b.n	8001d08 <RCC_GetClocksFreq+0x100>
 8001d06:	6241      	str	r1, [r0, #36]	; 0x24
 8001d08:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d0a:	04f6      	lsls	r6, r6, #19
 8001d0c:	d506      	bpl.n	8001d1c <RCC_GetClocksFreq+0x114>
 8001d0e:	429a      	cmp	r2, r3
 8001d10:	d104      	bne.n	8001d1c <RCC_GetClocksFreq+0x114>
 8001d12:	42a5      	cmp	r5, r4
 8001d14:	d102      	bne.n	8001d1c <RCC_GetClocksFreq+0x114>
 8001d16:	0056      	lsls	r6, r2, #1
 8001d18:	6286      	str	r6, [r0, #40]	; 0x28
 8001d1a:	e000      	b.n	8001d1e <RCC_GetClocksFreq+0x116>
 8001d1c:	6281      	str	r1, [r0, #40]	; 0x28
 8001d1e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d20:	05b6      	lsls	r6, r6, #22
 8001d22:	d506      	bpl.n	8001d32 <RCC_GetClocksFreq+0x12a>
 8001d24:	429a      	cmp	r2, r3
 8001d26:	d104      	bne.n	8001d32 <RCC_GetClocksFreq+0x12a>
 8001d28:	42a5      	cmp	r5, r4
 8001d2a:	d102      	bne.n	8001d32 <RCC_GetClocksFreq+0x12a>
 8001d2c:	0056      	lsls	r6, r2, #1
 8001d2e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001d30:	e000      	b.n	8001d34 <RCC_GetClocksFreq+0x12c>
 8001d32:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001d34:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d36:	0576      	lsls	r6, r6, #21
 8001d38:	d506      	bpl.n	8001d48 <RCC_GetClocksFreq+0x140>
 8001d3a:	429a      	cmp	r2, r3
 8001d3c:	d104      	bne.n	8001d48 <RCC_GetClocksFreq+0x140>
 8001d3e:	42a5      	cmp	r5, r4
 8001d40:	d102      	bne.n	8001d48 <RCC_GetClocksFreq+0x140>
 8001d42:	0056      	lsls	r6, r2, #1
 8001d44:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001d46:	e000      	b.n	8001d4a <RCC_GetClocksFreq+0x142>
 8001d48:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001d4a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d4c:	0536      	lsls	r6, r6, #20
 8001d4e:	d506      	bpl.n	8001d5e <RCC_GetClocksFreq+0x156>
 8001d50:	429a      	cmp	r2, r3
 8001d52:	d104      	bne.n	8001d5e <RCC_GetClocksFreq+0x156>
 8001d54:	42a5      	cmp	r5, r4
 8001d56:	d102      	bne.n	8001d5e <RCC_GetClocksFreq+0x156>
 8001d58:	0056      	lsls	r6, r2, #1
 8001d5a:	6506      	str	r6, [r0, #80]	; 0x50
 8001d5c:	e000      	b.n	8001d60 <RCC_GetClocksFreq+0x158>
 8001d5e:	6501      	str	r1, [r0, #80]	; 0x50
 8001d60:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d62:	04b6      	lsls	r6, r6, #18
 8001d64:	d506      	bpl.n	8001d74 <RCC_GetClocksFreq+0x16c>
 8001d66:	429a      	cmp	r2, r3
 8001d68:	d104      	bne.n	8001d74 <RCC_GetClocksFreq+0x16c>
 8001d6a:	42a5      	cmp	r5, r4
 8001d6c:	d102      	bne.n	8001d74 <RCC_GetClocksFreq+0x16c>
 8001d6e:	0056      	lsls	r6, r2, #1
 8001d70:	6546      	str	r6, [r0, #84]	; 0x54
 8001d72:	e000      	b.n	8001d76 <RCC_GetClocksFreq+0x16e>
 8001d74:	6501      	str	r1, [r0, #80]	; 0x50
 8001d76:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d78:	0436      	lsls	r6, r6, #16
 8001d7a:	d506      	bpl.n	8001d8a <RCC_GetClocksFreq+0x182>
 8001d7c:	429a      	cmp	r2, r3
 8001d7e:	d104      	bne.n	8001d8a <RCC_GetClocksFreq+0x182>
 8001d80:	42a5      	cmp	r5, r4
 8001d82:	d102      	bne.n	8001d8a <RCC_GetClocksFreq+0x182>
 8001d84:	0053      	lsls	r3, r2, #1
 8001d86:	6583      	str	r3, [r0, #88]	; 0x58
 8001d88:	e000      	b.n	8001d8c <RCC_GetClocksFreq+0x184>
 8001d8a:	6581      	str	r1, [r0, #88]	; 0x58
 8001d8c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001d8e:	4b3b      	ldr	r3, [pc, #236]	; (8001e7c <RCC_GetClocksFreq+0x274>)
 8001d90:	07a4      	lsls	r4, r4, #30
 8001d92:	d101      	bne.n	8001d98 <RCC_GetClocksFreq+0x190>
 8001d94:	6381      	str	r1, [r0, #56]	; 0x38
 8001d96:	e015      	b.n	8001dc4 <RCC_GetClocksFreq+0x1bc>
 8001d98:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001d9a:	f001 0103 	and.w	r1, r1, #3
 8001d9e:	2901      	cmp	r1, #1
 8001da0:	d101      	bne.n	8001da6 <RCC_GetClocksFreq+0x19e>
 8001da2:	6382      	str	r2, [r0, #56]	; 0x38
 8001da4:	e00e      	b.n	8001dc4 <RCC_GetClocksFreq+0x1bc>
 8001da6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001da8:	f001 0103 	and.w	r1, r1, #3
 8001dac:	2902      	cmp	r1, #2
 8001dae:	d102      	bne.n	8001db6 <RCC_GetClocksFreq+0x1ae>
 8001db0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001db4:	e005      	b.n	8001dc2 <RCC_GetClocksFreq+0x1ba>
 8001db6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001db8:	f003 0303 	and.w	r3, r3, #3
 8001dbc:	2b03      	cmp	r3, #3
 8001dbe:	d101      	bne.n	8001dc4 <RCC_GetClocksFreq+0x1bc>
 8001dc0:	4b2f      	ldr	r3, [pc, #188]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001dc2:	6383      	str	r3, [r0, #56]	; 0x38
 8001dc4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001dc6:	4b2d      	ldr	r3, [pc, #180]	; (8001e7c <RCC_GetClocksFreq+0x274>)
 8001dc8:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001dcc:	d102      	bne.n	8001dd4 <RCC_GetClocksFreq+0x1cc>
 8001dce:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001dd2:	e018      	b.n	8001e06 <RCC_GetClocksFreq+0x1fe>
 8001dd4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001dd6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001dda:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001dde:	d101      	bne.n	8001de4 <RCC_GetClocksFreq+0x1dc>
 8001de0:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001de2:	e010      	b.n	8001e06 <RCC_GetClocksFreq+0x1fe>
 8001de4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001de6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001dea:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001dee:	d102      	bne.n	8001df6 <RCC_GetClocksFreq+0x1ee>
 8001df0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001df4:	e006      	b.n	8001e04 <RCC_GetClocksFreq+0x1fc>
 8001df6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001df8:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001dfc:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001e00:	d101      	bne.n	8001e06 <RCC_GetClocksFreq+0x1fe>
 8001e02:	4b1f      	ldr	r3, [pc, #124]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001e04:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001e06:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001e08:	4b1c      	ldr	r3, [pc, #112]	; (8001e7c <RCC_GetClocksFreq+0x274>)
 8001e0a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001e0e:	d102      	bne.n	8001e16 <RCC_GetClocksFreq+0x20e>
 8001e10:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001e14:	e018      	b.n	8001e48 <RCC_GetClocksFreq+0x240>
 8001e16:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e18:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001e1c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001e20:	d101      	bne.n	8001e26 <RCC_GetClocksFreq+0x21e>
 8001e22:	6402      	str	r2, [r0, #64]	; 0x40
 8001e24:	e010      	b.n	8001e48 <RCC_GetClocksFreq+0x240>
 8001e26:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e28:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001e2c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001e30:	d102      	bne.n	8001e38 <RCC_GetClocksFreq+0x230>
 8001e32:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e36:	e006      	b.n	8001e46 <RCC_GetClocksFreq+0x23e>
 8001e38:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001e3a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001e3e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001e42:	d101      	bne.n	8001e48 <RCC_GetClocksFreq+0x240>
 8001e44:	4b0e      	ldr	r3, [pc, #56]	; (8001e80 <RCC_GetClocksFreq+0x278>)
 8001e46:	6403      	str	r3, [r0, #64]	; 0x40
 8001e48:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001e4a:	4b0c      	ldr	r3, [pc, #48]	; (8001e7c <RCC_GetClocksFreq+0x274>)
 8001e4c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001e50:	d102      	bne.n	8001e58 <RCC_GetClocksFreq+0x250>
 8001e52:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001e56:	e023      	b.n	8001ea0 <RCC_GetClocksFreq+0x298>
 8001e58:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e5a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001e5e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001e62:	d101      	bne.n	8001e68 <RCC_GetClocksFreq+0x260>
 8001e64:	6442      	str	r2, [r0, #68]	; 0x44
 8001e66:	e01b      	b.n	8001ea0 <RCC_GetClocksFreq+0x298>
 8001e68:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e6a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001e6e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001e72:	d10d      	bne.n	8001e90 <RCC_GetClocksFreq+0x288>
 8001e74:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e78:	e011      	b.n	8001e9e <RCC_GetClocksFreq+0x296>
 8001e7a:	bf00      	nop
 8001e7c:	40021000 	.word	0x40021000
 8001e80:	007a1200 	.word	0x007a1200
 8001e84:	003d0900 	.word	0x003d0900
 8001e88:	200000e8 	.word	0x200000e8
 8001e8c:	200000c8 	.word	0x200000c8
 8001e90:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001e92:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001e96:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001e9a:	d101      	bne.n	8001ea0 <RCC_GetClocksFreq+0x298>
 8001e9c:	4b13      	ldr	r3, [pc, #76]	; (8001eec <RCC_GetClocksFreq+0x2e4>)
 8001e9e:	6443      	str	r3, [r0, #68]	; 0x44
 8001ea0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ea2:	4b13      	ldr	r3, [pc, #76]	; (8001ef0 <RCC_GetClocksFreq+0x2e8>)
 8001ea4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001ea8:	d103      	bne.n	8001eb2 <RCC_GetClocksFreq+0x2aa>
 8001eaa:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001eae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001eb2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001eb4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001eb8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001ebc:	d102      	bne.n	8001ec4 <RCC_GetClocksFreq+0x2bc>
 8001ebe:	6482      	str	r2, [r0, #72]	; 0x48
 8001ec0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001ec4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001ec6:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001eca:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001ece:	d102      	bne.n	8001ed6 <RCC_GetClocksFreq+0x2ce>
 8001ed0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001ed4:	e006      	b.n	8001ee4 <RCC_GetClocksFreq+0x2dc>
 8001ed6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001ed8:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001edc:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001ee0:	d101      	bne.n	8001ee6 <RCC_GetClocksFreq+0x2de>
 8001ee2:	4b02      	ldr	r3, [pc, #8]	; (8001eec <RCC_GetClocksFreq+0x2e4>)
 8001ee4:	6483      	str	r3, [r0, #72]	; 0x48
 8001ee6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001eea:	bf00      	nop
 8001eec:	007a1200 	.word	0x007a1200
 8001ef0:	40021000 	.word	0x40021000

08001ef4 <RCC_AHBPeriphClockCmd>:
 8001ef4:	bf00      	nop
 8001ef6:	bf00      	nop
 8001ef8:	4b04      	ldr	r3, [pc, #16]	; (8001f0c <RCC_AHBPeriphClockCmd+0x18>)
 8001efa:	695a      	ldr	r2, [r3, #20]
 8001efc:	b109      	cbz	r1, 8001f02 <RCC_AHBPeriphClockCmd+0xe>
 8001efe:	4310      	orrs	r0, r2
 8001f00:	e001      	b.n	8001f06 <RCC_AHBPeriphClockCmd+0x12>
 8001f02:	ea22 0000 	bic.w	r0, r2, r0
 8001f06:	6158      	str	r0, [r3, #20]
 8001f08:	4770      	bx	lr
 8001f0a:	bf00      	nop
 8001f0c:	40021000 	.word	0x40021000

08001f10 <RCC_APB2PeriphClockCmd>:
 8001f10:	bf00      	nop
 8001f12:	bf00      	nop
 8001f14:	4b04      	ldr	r3, [pc, #16]	; (8001f28 <RCC_APB2PeriphClockCmd+0x18>)
 8001f16:	699a      	ldr	r2, [r3, #24]
 8001f18:	b109      	cbz	r1, 8001f1e <RCC_APB2PeriphClockCmd+0xe>
 8001f1a:	4310      	orrs	r0, r2
 8001f1c:	e001      	b.n	8001f22 <RCC_APB2PeriphClockCmd+0x12>
 8001f1e:	ea22 0000 	bic.w	r0, r2, r0
 8001f22:	6198      	str	r0, [r3, #24]
 8001f24:	4770      	bx	lr
 8001f26:	bf00      	nop
 8001f28:	40021000 	.word	0x40021000

08001f2c <RCC_APB1PeriphClockCmd>:
 8001f2c:	bf00      	nop
 8001f2e:	bf00      	nop
 8001f30:	4b04      	ldr	r3, [pc, #16]	; (8001f44 <RCC_APB1PeriphClockCmd+0x18>)
 8001f32:	69da      	ldr	r2, [r3, #28]
 8001f34:	b109      	cbz	r1, 8001f3a <RCC_APB1PeriphClockCmd+0xe>
 8001f36:	4310      	orrs	r0, r2
 8001f38:	e001      	b.n	8001f3e <RCC_APB1PeriphClockCmd+0x12>
 8001f3a:	ea22 0000 	bic.w	r0, r2, r0
 8001f3e:	61d8      	str	r0, [r3, #28]
 8001f40:	4770      	bx	lr
 8001f42:	bf00      	nop
 8001f44:	40021000 	.word	0x40021000

08001f48 <TIM_TimeBaseInit>:
 8001f48:	bf00      	nop
 8001f4a:	bf00      	nop
 8001f4c:	bf00      	nop
 8001f4e:	4a24      	ldr	r2, [pc, #144]	; (8001fe0 <TIM_TimeBaseInit+0x98>)
 8001f50:	8803      	ldrh	r3, [r0, #0]
 8001f52:	4290      	cmp	r0, r2
 8001f54:	b29b      	uxth	r3, r3
 8001f56:	d012      	beq.n	8001f7e <TIM_TimeBaseInit+0x36>
 8001f58:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001f5c:	4290      	cmp	r0, r2
 8001f5e:	d00e      	beq.n	8001f7e <TIM_TimeBaseInit+0x36>
 8001f60:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001f64:	d00b      	beq.n	8001f7e <TIM_TimeBaseInit+0x36>
 8001f66:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001f6a:	4290      	cmp	r0, r2
 8001f6c:	d007      	beq.n	8001f7e <TIM_TimeBaseInit+0x36>
 8001f6e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f72:	4290      	cmp	r0, r2
 8001f74:	d003      	beq.n	8001f7e <TIM_TimeBaseInit+0x36>
 8001f76:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001f7a:	4290      	cmp	r0, r2
 8001f7c:	d103      	bne.n	8001f86 <TIM_TimeBaseInit+0x3e>
 8001f7e:	884a      	ldrh	r2, [r1, #2]
 8001f80:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001f84:	4313      	orrs	r3, r2
 8001f86:	4a17      	ldr	r2, [pc, #92]	; (8001fe4 <TIM_TimeBaseInit+0x9c>)
 8001f88:	4290      	cmp	r0, r2
 8001f8a:	d008      	beq.n	8001f9e <TIM_TimeBaseInit+0x56>
 8001f8c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f90:	4290      	cmp	r0, r2
 8001f92:	bf1f      	itttt	ne
 8001f94:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001f98:	890a      	ldrhne	r2, [r1, #8]
 8001f9a:	b29b      	uxthne	r3, r3
 8001f9c:	4313      	orrne	r3, r2
 8001f9e:	8003      	strh	r3, [r0, #0]
 8001fa0:	684b      	ldr	r3, [r1, #4]
 8001fa2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001fa4:	880b      	ldrh	r3, [r1, #0]
 8001fa6:	8503      	strh	r3, [r0, #40]	; 0x28
 8001fa8:	4b0d      	ldr	r3, [pc, #52]	; (8001fe0 <TIM_TimeBaseInit+0x98>)
 8001faa:	4298      	cmp	r0, r3
 8001fac:	d013      	beq.n	8001fd6 <TIM_TimeBaseInit+0x8e>
 8001fae:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001fb2:	4298      	cmp	r0, r3
 8001fb4:	d00f      	beq.n	8001fd6 <TIM_TimeBaseInit+0x8e>
 8001fb6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001fba:	4298      	cmp	r0, r3
 8001fbc:	d00b      	beq.n	8001fd6 <TIM_TimeBaseInit+0x8e>
 8001fbe:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001fc2:	4298      	cmp	r0, r3
 8001fc4:	d007      	beq.n	8001fd6 <TIM_TimeBaseInit+0x8e>
 8001fc6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001fca:	4298      	cmp	r0, r3
 8001fcc:	d003      	beq.n	8001fd6 <TIM_TimeBaseInit+0x8e>
 8001fce:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001fd2:	4298      	cmp	r0, r3
 8001fd4:	d101      	bne.n	8001fda <TIM_TimeBaseInit+0x92>
 8001fd6:	894b      	ldrh	r3, [r1, #10]
 8001fd8:	8603      	strh	r3, [r0, #48]	; 0x30
 8001fda:	2301      	movs	r3, #1
 8001fdc:	6143      	str	r3, [r0, #20]
 8001fde:	4770      	bx	lr
 8001fe0:	40012c00 	.word	0x40012c00
 8001fe4:	40001000 	.word	0x40001000

08001fe8 <TIM_Cmd>:
 8001fe8:	bf00      	nop
 8001fea:	bf00      	nop
 8001fec:	8803      	ldrh	r3, [r0, #0]
 8001fee:	b119      	cbz	r1, 8001ff8 <TIM_Cmd+0x10>
 8001ff0:	b29b      	uxth	r3, r3
 8001ff2:	f043 0301 	orr.w	r3, r3, #1
 8001ff6:	e003      	b.n	8002000 <TIM_Cmd+0x18>
 8001ff8:	f023 0301 	bic.w	r3, r3, #1
 8001ffc:	041b      	lsls	r3, r3, #16
 8001ffe:	0c1b      	lsrs	r3, r3, #16
 8002000:	8003      	strh	r3, [r0, #0]
 8002002:	4770      	bx	lr

08002004 <TIM_OC1Init>:
 8002004:	b570      	push	{r4, r5, r6, lr}
 8002006:	bf00      	nop
 8002008:	bf00      	nop
 800200a:	bf00      	nop
 800200c:	bf00      	nop
 800200e:	6a03      	ldr	r3, [r0, #32]
 8002010:	680d      	ldr	r5, [r1, #0]
 8002012:	f023 0301 	bic.w	r3, r3, #1
 8002016:	6203      	str	r3, [r0, #32]
 8002018:	6a03      	ldr	r3, [r0, #32]
 800201a:	6844      	ldr	r4, [r0, #4]
 800201c:	6982      	ldr	r2, [r0, #24]
 800201e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002022:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002026:	4315      	orrs	r5, r2
 8002028:	898a      	ldrh	r2, [r1, #12]
 800202a:	f023 0302 	bic.w	r3, r3, #2
 800202e:	4313      	orrs	r3, r2
 8002030:	888a      	ldrh	r2, [r1, #4]
 8002032:	4313      	orrs	r3, r2
 8002034:	4a15      	ldr	r2, [pc, #84]	; (800208c <TIM_OC1Init+0x88>)
 8002036:	4290      	cmp	r0, r2
 8002038:	d00f      	beq.n	800205a <TIM_OC1Init+0x56>
 800203a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800203e:	4290      	cmp	r0, r2
 8002040:	d00b      	beq.n	800205a <TIM_OC1Init+0x56>
 8002042:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8002046:	4290      	cmp	r0, r2
 8002048:	d007      	beq.n	800205a <TIM_OC1Init+0x56>
 800204a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800204e:	4290      	cmp	r0, r2
 8002050:	d003      	beq.n	800205a <TIM_OC1Init+0x56>
 8002052:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002056:	4290      	cmp	r0, r2
 8002058:	d111      	bne.n	800207e <TIM_OC1Init+0x7a>
 800205a:	bf00      	nop
 800205c:	bf00      	nop
 800205e:	bf00      	nop
 8002060:	bf00      	nop
 8002062:	89ca      	ldrh	r2, [r1, #14]
 8002064:	88ce      	ldrh	r6, [r1, #6]
 8002066:	f023 0308 	bic.w	r3, r3, #8
 800206a:	4313      	orrs	r3, r2
 800206c:	8a0a      	ldrh	r2, [r1, #16]
 800206e:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8002072:	4314      	orrs	r4, r2
 8002074:	8a4a      	ldrh	r2, [r1, #18]
 8002076:	f023 0304 	bic.w	r3, r3, #4
 800207a:	4333      	orrs	r3, r6
 800207c:	4314      	orrs	r4, r2
 800207e:	688a      	ldr	r2, [r1, #8]
 8002080:	6044      	str	r4, [r0, #4]
 8002082:	6185      	str	r5, [r0, #24]
 8002084:	6342      	str	r2, [r0, #52]	; 0x34
 8002086:	6203      	str	r3, [r0, #32]
 8002088:	bd70      	pop	{r4, r5, r6, pc}
 800208a:	bf00      	nop
 800208c:	40012c00 	.word	0x40012c00

08002090 <TIM_OC2Init>:
 8002090:	b570      	push	{r4, r5, r6, lr}
 8002092:	bf00      	nop
 8002094:	bf00      	nop
 8002096:	bf00      	nop
 8002098:	bf00      	nop
 800209a:	6a03      	ldr	r3, [r0, #32]
 800209c:	680d      	ldr	r5, [r1, #0]
 800209e:	898e      	ldrh	r6, [r1, #12]
 80020a0:	f023 0310 	bic.w	r3, r3, #16
 80020a4:	6203      	str	r3, [r0, #32]
 80020a6:	6a03      	ldr	r3, [r0, #32]
 80020a8:	6844      	ldr	r4, [r0, #4]
 80020aa:	6982      	ldr	r2, [r0, #24]
 80020ac:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80020b0:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 80020b4:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 80020b8:	f023 0220 	bic.w	r2, r3, #32
 80020bc:	888b      	ldrh	r3, [r1, #4]
 80020be:	4333      	orrs	r3, r6
 80020c0:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 80020c4:	4a10      	ldr	r2, [pc, #64]	; (8002108 <TIM_OC2Init+0x78>)
 80020c6:	4290      	cmp	r0, r2
 80020c8:	d003      	beq.n	80020d2 <TIM_OC2Init+0x42>
 80020ca:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80020ce:	4290      	cmp	r0, r2
 80020d0:	d114      	bne.n	80020fc <TIM_OC2Init+0x6c>
 80020d2:	bf00      	nop
 80020d4:	bf00      	nop
 80020d6:	bf00      	nop
 80020d8:	bf00      	nop
 80020da:	89ca      	ldrh	r2, [r1, #14]
 80020dc:	8a0e      	ldrh	r6, [r1, #16]
 80020de:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80020e2:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80020e6:	88ca      	ldrh	r2, [r1, #6]
 80020e8:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80020ec:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80020f0:	8a4a      	ldrh	r2, [r1, #18]
 80020f2:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 80020f6:	4332      	orrs	r2, r6
 80020f8:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 80020fc:	688a      	ldr	r2, [r1, #8]
 80020fe:	6044      	str	r4, [r0, #4]
 8002100:	6185      	str	r5, [r0, #24]
 8002102:	6382      	str	r2, [r0, #56]	; 0x38
 8002104:	6203      	str	r3, [r0, #32]
 8002106:	bd70      	pop	{r4, r5, r6, pc}
 8002108:	40012c00 	.word	0x40012c00

0800210c <TIM_CtrlPWMOutputs>:
 800210c:	bf00      	nop
 800210e:	bf00      	nop
 8002110:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002112:	b111      	cbz	r1, 800211a <TIM_CtrlPWMOutputs+0xe>
 8002114:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002118:	e001      	b.n	800211e <TIM_CtrlPWMOutputs+0x12>
 800211a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 800211e:	6443      	str	r3, [r0, #68]	; 0x44
 8002120:	4770      	bx	lr

08002122 <TIM_ClearITPendingBit>:
 8002122:	bf00      	nop
 8002124:	43c9      	mvns	r1, r1
 8002126:	b289      	uxth	r1, r1
 8002128:	6101      	str	r1, [r0, #16]
 800212a:	4770      	bx	lr

0800212c <timer_init>:
 800212c:	b530      	push	{r4, r5, lr}
 800212e:	2300      	movs	r3, #0
 8002130:	b085      	sub	sp, #20
 8002132:	491f      	ldr	r1, [pc, #124]	; (80021b0 <timer_init+0x84>)
 8002134:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002138:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800213c:	491d      	ldr	r1, [pc, #116]	; (80021b4 <timer_init+0x88>)
 800213e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002142:	4a1d      	ldr	r2, [pc, #116]	; (80021b8 <timer_init+0x8c>)
 8002144:	2400      	movs	r4, #0
 8002146:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 800214a:	3301      	adds	r3, #1
 800214c:	2b04      	cmp	r3, #4
 800214e:	4625      	mov	r5, r4
 8002150:	d1ef      	bne.n	8002132 <timer_init+0x6>
 8002152:	4b1a      	ldr	r3, [pc, #104]	; (80021bc <timer_init+0x90>)
 8002154:	2002      	movs	r0, #2
 8002156:	2101      	movs	r1, #1
 8002158:	601c      	str	r4, [r3, #0]
 800215a:	f7ff fee7 	bl	8001f2c <RCC_APB1PeriphClockCmd>
 800215e:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002162:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002166:	f8ad 400e 	strh.w	r4, [sp, #14]
 800216a:	4c15      	ldr	r4, [pc, #84]	; (80021c0 <timer_init+0x94>)
 800216c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002170:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002174:	4620      	mov	r0, r4
 8002176:	2331      	movs	r3, #49	; 0x31
 8002178:	a901      	add	r1, sp, #4
 800217a:	9302      	str	r3, [sp, #8]
 800217c:	f7ff fee4 	bl	8001f48 <TIM_TimeBaseInit>
 8002180:	4620      	mov	r0, r4
 8002182:	2101      	movs	r1, #1
 8002184:	f7ff ff30 	bl	8001fe8 <TIM_Cmd>
 8002188:	68e3      	ldr	r3, [r4, #12]
 800218a:	f043 0301 	orr.w	r3, r3, #1
 800218e:	60e3      	str	r3, [r4, #12]
 8002190:	231d      	movs	r3, #29
 8002192:	f88d 3000 	strb.w	r3, [sp]
 8002196:	4668      	mov	r0, sp
 8002198:	2301      	movs	r3, #1
 800219a:	f88d 5001 	strb.w	r5, [sp, #1]
 800219e:	f88d 3002 	strb.w	r3, [sp, #2]
 80021a2:	f88d 3003 	strb.w	r3, [sp, #3]
 80021a6:	f000 fc6f 	bl	8002a88 <NVIC_Init>
 80021aa:	b005      	add	sp, #20
 80021ac:	bd30      	pop	{r4, r5, pc}
 80021ae:	bf00      	nop
 80021b0:	20001858 	.word	0x20001858
 80021b4:	2000184c 	.word	0x2000184c
 80021b8:	20001844 	.word	0x20001844
 80021bc:	20001854 	.word	0x20001854
 80021c0:	40000400 	.word	0x40000400

080021c4 <TIM3_IRQHandler>:
 80021c4:	2300      	movs	r3, #0
 80021c6:	4910      	ldr	r1, [pc, #64]	; (8002208 <TIM3_IRQHandler+0x44>)
 80021c8:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 80021cc:	b292      	uxth	r2, r2
 80021ce:	b132      	cbz	r2, 80021de <TIM3_IRQHandler+0x1a>
 80021d0:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 80021d4:	3a01      	subs	r2, #1
 80021d6:	b292      	uxth	r2, r2
 80021d8:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80021dc:	e009      	b.n	80021f2 <TIM3_IRQHandler+0x2e>
 80021de:	4a0b      	ldr	r2, [pc, #44]	; (800220c <TIM3_IRQHandler+0x48>)
 80021e0:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 80021e4:	b292      	uxth	r2, r2
 80021e6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80021ea:	4a09      	ldr	r2, [pc, #36]	; (8002210 <TIM3_IRQHandler+0x4c>)
 80021ec:	2101      	movs	r1, #1
 80021ee:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80021f2:	3301      	adds	r3, #1
 80021f4:	2b04      	cmp	r3, #4
 80021f6:	d1e6      	bne.n	80021c6 <TIM3_IRQHandler+0x2>
 80021f8:	4a06      	ldr	r2, [pc, #24]	; (8002214 <TIM3_IRQHandler+0x50>)
 80021fa:	4807      	ldr	r0, [pc, #28]	; (8002218 <TIM3_IRQHandler+0x54>)
 80021fc:	6813      	ldr	r3, [r2, #0]
 80021fe:	2101      	movs	r1, #1
 8002200:	3301      	adds	r3, #1
 8002202:	6013      	str	r3, [r2, #0]
 8002204:	f7ff bf8d 	b.w	8002122 <TIM_ClearITPendingBit>
 8002208:	20001858 	.word	0x20001858
 800220c:	2000184c 	.word	0x2000184c
 8002210:	20001844 	.word	0x20001844
 8002214:	20001854 	.word	0x20001854
 8002218:	40000400 	.word	0x40000400

0800221c <timer_get_time>:
 800221c:	b082      	sub	sp, #8
 800221e:	b672      	cpsid	i
 8002220:	4b04      	ldr	r3, [pc, #16]	; (8002234 <timer_get_time+0x18>)
 8002222:	681b      	ldr	r3, [r3, #0]
 8002224:	9301      	str	r3, [sp, #4]
 8002226:	b662      	cpsie	i
 8002228:	230a      	movs	r3, #10
 800222a:	9801      	ldr	r0, [sp, #4]
 800222c:	fbb0 f0f3 	udiv	r0, r0, r3
 8002230:	b002      	add	sp, #8
 8002232:	4770      	bx	lr
 8002234:	20001854 	.word	0x20001854

08002238 <timer_delay_ms>:
 8002238:	b513      	push	{r0, r1, r4, lr}
 800223a:	4604      	mov	r4, r0
 800223c:	f7ff ffee 	bl	800221c <timer_get_time>
 8002240:	4420      	add	r0, r4
 8002242:	9001      	str	r0, [sp, #4]
 8002244:	9c01      	ldr	r4, [sp, #4]
 8002246:	f7ff ffe9 	bl	800221c <timer_get_time>
 800224a:	4284      	cmp	r4, r0
 800224c:	d902      	bls.n	8002254 <timer_delay_ms+0x1c>
 800224e:	f000 fb19 	bl	8002884 <core_yield>
 8002252:	e7f7      	b.n	8002244 <timer_delay_ms+0xc>
 8002254:	b002      	add	sp, #8
 8002256:	bd10      	pop	{r4, pc}

08002258 <event_timer_set_period>:
 8002258:	b672      	cpsid	i
 800225a:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 800225e:	4b07      	ldr	r3, [pc, #28]	; (800227c <event_timer_set_period+0x24>)
 8002260:	0049      	lsls	r1, r1, #1
 8002262:	b289      	uxth	r1, r1
 8002264:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002268:	4b05      	ldr	r3, [pc, #20]	; (8002280 <event_timer_set_period+0x28>)
 800226a:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800226e:	4b05      	ldr	r3, [pc, #20]	; (8002284 <event_timer_set_period+0x2c>)
 8002270:	2200      	movs	r2, #0
 8002272:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002276:	b662      	cpsie	i
 8002278:	4770      	bx	lr
 800227a:	bf00      	nop
 800227c:	20001858 	.word	0x20001858
 8002280:	2000184c 	.word	0x2000184c
 8002284:	20001844 	.word	0x20001844

08002288 <event_timer_wait>:
 8002288:	b510      	push	{r4, lr}
 800228a:	4604      	mov	r4, r0
 800228c:	4a06      	ldr	r2, [pc, #24]	; (80022a8 <event_timer_wait+0x20>)
 800228e:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 8002292:	b29b      	uxth	r3, r3
 8002294:	b913      	cbnz	r3, 800229c <event_timer_wait+0x14>
 8002296:	f000 faf5 	bl	8002884 <core_yield>
 800229a:	e7f7      	b.n	800228c <event_timer_wait+0x4>
 800229c:	b672      	cpsid	i
 800229e:	2300      	movs	r3, #0
 80022a0:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 80022a4:	b662      	cpsie	i
 80022a6:	bd10      	pop	{r4, pc}
 80022a8:	20001844 	.word	0x20001844

080022ac <USART_Init>:
 80022ac:	b530      	push	{r4, r5, lr}
 80022ae:	4604      	mov	r4, r0
 80022b0:	b099      	sub	sp, #100	; 0x64
 80022b2:	460d      	mov	r5, r1
 80022b4:	bf00      	nop
 80022b6:	bf00      	nop
 80022b8:	bf00      	nop
 80022ba:	bf00      	nop
 80022bc:	bf00      	nop
 80022be:	bf00      	nop
 80022c0:	bf00      	nop
 80022c2:	6803      	ldr	r3, [r0, #0]
 80022c4:	f023 0301 	bic.w	r3, r3, #1
 80022c8:	6003      	str	r3, [r0, #0]
 80022ca:	6843      	ldr	r3, [r0, #4]
 80022cc:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80022d0:	688b      	ldr	r3, [r1, #8]
 80022d2:	68c9      	ldr	r1, [r1, #12]
 80022d4:	4313      	orrs	r3, r2
 80022d6:	6043      	str	r3, [r0, #4]
 80022d8:	686a      	ldr	r2, [r5, #4]
 80022da:	6803      	ldr	r3, [r0, #0]
 80022dc:	4311      	orrs	r1, r2
 80022de:	692a      	ldr	r2, [r5, #16]
 80022e0:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80022e4:	430a      	orrs	r2, r1
 80022e6:	f023 030c 	bic.w	r3, r3, #12
 80022ea:	4313      	orrs	r3, r2
 80022ec:	6003      	str	r3, [r0, #0]
 80022ee:	6883      	ldr	r3, [r0, #8]
 80022f0:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80022f4:	696b      	ldr	r3, [r5, #20]
 80022f6:	4313      	orrs	r3, r2
 80022f8:	6083      	str	r3, [r0, #8]
 80022fa:	a801      	add	r0, sp, #4
 80022fc:	f7ff fc84 	bl	8001c08 <RCC_GetClocksFreq>
 8002300:	4b17      	ldr	r3, [pc, #92]	; (8002360 <USART_Init+0xb4>)
 8002302:	429c      	cmp	r4, r3
 8002304:	d101      	bne.n	800230a <USART_Init+0x5e>
 8002306:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002308:	e00e      	b.n	8002328 <USART_Init+0x7c>
 800230a:	4b16      	ldr	r3, [pc, #88]	; (8002364 <USART_Init+0xb8>)
 800230c:	429c      	cmp	r4, r3
 800230e:	d101      	bne.n	8002314 <USART_Init+0x68>
 8002310:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002312:	e009      	b.n	8002328 <USART_Init+0x7c>
 8002314:	4b14      	ldr	r3, [pc, #80]	; (8002368 <USART_Init+0xbc>)
 8002316:	429c      	cmp	r4, r3
 8002318:	d101      	bne.n	800231e <USART_Init+0x72>
 800231a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800231c:	e004      	b.n	8002328 <USART_Init+0x7c>
 800231e:	4b13      	ldr	r3, [pc, #76]	; (800236c <USART_Init+0xc0>)
 8002320:	429c      	cmp	r4, r3
 8002322:	bf0c      	ite	eq
 8002324:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002326:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002328:	6822      	ldr	r2, [r4, #0]
 800232a:	6829      	ldr	r1, [r5, #0]
 800232c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002330:	bf18      	it	ne
 8002332:	005b      	lslne	r3, r3, #1
 8002334:	fbb3 f2f1 	udiv	r2, r3, r1
 8002338:	fb01 3312 	mls	r3, r1, r2, r3
 800233c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002340:	6823      	ldr	r3, [r4, #0]
 8002342:	bf28      	it	cs
 8002344:	3201      	addcs	r2, #1
 8002346:	041b      	lsls	r3, r3, #16
 8002348:	bf41      	itttt	mi
 800234a:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 800234e:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002352:	4013      	andmi	r3, r2
 8002354:	ea41 0203 	orrmi.w	r2, r1, r3
 8002358:	b292      	uxth	r2, r2
 800235a:	81a2      	strh	r2, [r4, #12]
 800235c:	b019      	add	sp, #100	; 0x64
 800235e:	bd30      	pop	{r4, r5, pc}
 8002360:	40013800 	.word	0x40013800
 8002364:	40004400 	.word	0x40004400
 8002368:	40004800 	.word	0x40004800
 800236c:	40004c00 	.word	0x40004c00

08002370 <USART_Cmd>:
 8002370:	bf00      	nop
 8002372:	bf00      	nop
 8002374:	6803      	ldr	r3, [r0, #0]
 8002376:	b111      	cbz	r1, 800237e <USART_Cmd+0xe>
 8002378:	f043 0301 	orr.w	r3, r3, #1
 800237c:	e001      	b.n	8002382 <USART_Cmd+0x12>
 800237e:	f023 0301 	bic.w	r3, r3, #1
 8002382:	6003      	str	r3, [r0, #0]
 8002384:	4770      	bx	lr

08002386 <USART_ReceiveData>:
 8002386:	bf00      	nop
 8002388:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800238a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800238e:	4770      	bx	lr

08002390 <USART_ITConfig>:
 8002390:	b510      	push	{r4, lr}
 8002392:	bf00      	nop
 8002394:	bf00      	nop
 8002396:	bf00      	nop
 8002398:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800239c:	2301      	movs	r3, #1
 800239e:	b2c9      	uxtb	r1, r1
 80023a0:	2c02      	cmp	r4, #2
 80023a2:	fa03 f301 	lsl.w	r3, r3, r1
 80023a6:	d101      	bne.n	80023ac <USART_ITConfig+0x1c>
 80023a8:	3004      	adds	r0, #4
 80023aa:	e002      	b.n	80023b2 <USART_ITConfig+0x22>
 80023ac:	2c03      	cmp	r4, #3
 80023ae:	bf08      	it	eq
 80023b0:	3008      	addeq	r0, #8
 80023b2:	b112      	cbz	r2, 80023ba <USART_ITConfig+0x2a>
 80023b4:	6802      	ldr	r2, [r0, #0]
 80023b6:	4313      	orrs	r3, r2
 80023b8:	e002      	b.n	80023c0 <USART_ITConfig+0x30>
 80023ba:	6802      	ldr	r2, [r0, #0]
 80023bc:	ea22 0303 	bic.w	r3, r2, r3
 80023c0:	6003      	str	r3, [r0, #0]
 80023c2:	bd10      	pop	{r4, pc}

080023c4 <USART_GetITStatus>:
 80023c4:	b510      	push	{r4, lr}
 80023c6:	bf00      	nop
 80023c8:	bf00      	nop
 80023ca:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80023ce:	b2cc      	uxtb	r4, r1
 80023d0:	2301      	movs	r3, #1
 80023d2:	2a01      	cmp	r2, #1
 80023d4:	fa03 f304 	lsl.w	r3, r3, r4
 80023d8:	d101      	bne.n	80023de <USART_GetITStatus+0x1a>
 80023da:	6802      	ldr	r2, [r0, #0]
 80023dc:	e003      	b.n	80023e6 <USART_GetITStatus+0x22>
 80023de:	2a02      	cmp	r2, #2
 80023e0:	bf0c      	ite	eq
 80023e2:	6842      	ldreq	r2, [r0, #4]
 80023e4:	6882      	ldrne	r2, [r0, #8]
 80023e6:	4013      	ands	r3, r2
 80023e8:	69c2      	ldr	r2, [r0, #28]
 80023ea:	b13b      	cbz	r3, 80023fc <USART_GetITStatus+0x38>
 80023ec:	0c09      	lsrs	r1, r1, #16
 80023ee:	2301      	movs	r3, #1
 80023f0:	408b      	lsls	r3, r1
 80023f2:	4213      	tst	r3, r2
 80023f4:	bf14      	ite	ne
 80023f6:	2001      	movne	r0, #1
 80023f8:	2000      	moveq	r0, #0
 80023fa:	bd10      	pop	{r4, pc}
 80023fc:	4618      	mov	r0, r3
 80023fe:	bd10      	pop	{r4, pc}

08002400 <USART_ClearITPendingBit>:
 8002400:	bf00      	nop
 8002402:	bf00      	nop
 8002404:	2301      	movs	r3, #1
 8002406:	0c09      	lsrs	r1, r1, #16
 8002408:	408b      	lsls	r3, r1
 800240a:	6203      	str	r3, [r0, #32]
 800240c:	4770      	bx	lr
	...

08002410 <uart_write>:
 8002410:	4b04      	ldr	r3, [pc, #16]	; (8002424 <uart_write+0x14>)
 8002412:	69da      	ldr	r2, [r3, #28]
 8002414:	0612      	lsls	r2, r2, #24
 8002416:	d401      	bmi.n	800241c <uart_write+0xc>
 8002418:	bf00      	nop
 800241a:	e7f9      	b.n	8002410 <uart_write>
 800241c:	b280      	uxth	r0, r0
 800241e:	8518      	strh	r0, [r3, #40]	; 0x28
 8002420:	4770      	bx	lr
 8002422:	bf00      	nop
 8002424:	40013800 	.word	0x40013800

08002428 <uart_init>:
 8002428:	b530      	push	{r4, r5, lr}
 800242a:	4b2c      	ldr	r3, [pc, #176]	; (80024dc <uart_init+0xb4>)
 800242c:	4d2c      	ldr	r5, [pc, #176]	; (80024e0 <uart_init+0xb8>)
 800242e:	2400      	movs	r4, #0
 8002430:	601c      	str	r4, [r3, #0]
 8002432:	4b2c      	ldr	r3, [pc, #176]	; (80024e4 <uart_init+0xbc>)
 8002434:	b08b      	sub	sp, #44	; 0x2c
 8002436:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800243a:	2101      	movs	r1, #1
 800243c:	601c      	str	r4, [r3, #0]
 800243e:	f7ff fd59 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 8002442:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8002446:	2101      	movs	r1, #1
 8002448:	f7ff fd62 	bl	8001f10 <RCC_APB2PeriphClockCmd>
 800244c:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002450:	9302      	str	r3, [sp, #8]
 8002452:	2302      	movs	r3, #2
 8002454:	f88d 300c 	strb.w	r3, [sp, #12]
 8002458:	a902      	add	r1, sp, #8
 800245a:	2303      	movs	r3, #3
 800245c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002460:	f88d 300d 	strb.w	r3, [sp, #13]
 8002464:	f88d 400e 	strb.w	r4, [sp, #14]
 8002468:	f88d 400f 	strb.w	r4, [sp, #15]
 800246c:	f000 fbea 	bl	8002c44 <GPIO_Init>
 8002470:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002474:	2109      	movs	r1, #9
 8002476:	2207      	movs	r2, #7
 8002478:	f000 fc2e 	bl	8002cd8 <GPIO_PinAFConfig>
 800247c:	2207      	movs	r2, #7
 800247e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002482:	210a      	movs	r1, #10
 8002484:	f000 fc28 	bl	8002cd8 <GPIO_PinAFConfig>
 8002488:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800248c:	9304      	str	r3, [sp, #16]
 800248e:	4628      	mov	r0, r5
 8002490:	230c      	movs	r3, #12
 8002492:	a904      	add	r1, sp, #16
 8002494:	9308      	str	r3, [sp, #32]
 8002496:	9405      	str	r4, [sp, #20]
 8002498:	9406      	str	r4, [sp, #24]
 800249a:	9407      	str	r4, [sp, #28]
 800249c:	9409      	str	r4, [sp, #36]	; 0x24
 800249e:	f7ff ff05 	bl	80022ac <USART_Init>
 80024a2:	4628      	mov	r0, r5
 80024a4:	2101      	movs	r1, #1
 80024a6:	f7ff ff63 	bl	8002370 <USART_Cmd>
 80024aa:	2201      	movs	r2, #1
 80024ac:	4628      	mov	r0, r5
 80024ae:	490e      	ldr	r1, [pc, #56]	; (80024e8 <uart_init+0xc0>)
 80024b0:	f7ff ff6e 	bl	8002390 <USART_ITConfig>
 80024b4:	2325      	movs	r3, #37	; 0x25
 80024b6:	f88d 4005 	strb.w	r4, [sp, #5]
 80024ba:	f88d 4006 	strb.w	r4, [sp, #6]
 80024be:	a801      	add	r0, sp, #4
 80024c0:	2401      	movs	r4, #1
 80024c2:	f88d 3004 	strb.w	r3, [sp, #4]
 80024c6:	f88d 4007 	strb.w	r4, [sp, #7]
 80024ca:	f000 fadd 	bl	8002a88 <NVIC_Init>
 80024ce:	4628      	mov	r0, r5
 80024d0:	4621      	mov	r1, r4
 80024d2:	f7ff ff4d 	bl	8002370 <USART_Cmd>
 80024d6:	b00b      	add	sp, #44	; 0x2c
 80024d8:	bd30      	pop	{r4, r5, pc}
 80024da:	bf00      	nop
 80024dc:	20001880 	.word	0x20001880
 80024e0:	40013800 	.word	0x40013800
 80024e4:	20001884 	.word	0x20001884
 80024e8:	00050105 	.word	0x00050105

080024ec <USART1_IRQHandler>:
 80024ec:	b508      	push	{r3, lr}
 80024ee:	480d      	ldr	r0, [pc, #52]	; (8002524 <USART1_IRQHandler+0x38>)
 80024f0:	490d      	ldr	r1, [pc, #52]	; (8002528 <USART1_IRQHandler+0x3c>)
 80024f2:	f7ff ff67 	bl	80023c4 <USART_GetITStatus>
 80024f6:	b178      	cbz	r0, 8002518 <USART1_IRQHandler+0x2c>
 80024f8:	480a      	ldr	r0, [pc, #40]	; (8002524 <USART1_IRQHandler+0x38>)
 80024fa:	f7ff ff44 	bl	8002386 <USART_ReceiveData>
 80024fe:	4b0b      	ldr	r3, [pc, #44]	; (800252c <USART1_IRQHandler+0x40>)
 8002500:	490b      	ldr	r1, [pc, #44]	; (8002530 <USART1_IRQHandler+0x44>)
 8002502:	681a      	ldr	r2, [r3, #0]
 8002504:	b2c0      	uxtb	r0, r0
 8002506:	5488      	strb	r0, [r1, r2]
 8002508:	681a      	ldr	r2, [r3, #0]
 800250a:	3201      	adds	r2, #1
 800250c:	601a      	str	r2, [r3, #0]
 800250e:	681a      	ldr	r2, [r3, #0]
 8002510:	2a1f      	cmp	r2, #31
 8002512:	bf84      	itt	hi
 8002514:	2200      	movhi	r2, #0
 8002516:	601a      	strhi	r2, [r3, #0]
 8002518:	4802      	ldr	r0, [pc, #8]	; (8002524 <USART1_IRQHandler+0x38>)
 800251a:	4903      	ldr	r1, [pc, #12]	; (8002528 <USART1_IRQHandler+0x3c>)
 800251c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002520:	f7ff bf6e 	b.w	8002400 <USART_ClearITPendingBit>
 8002524:	40013800 	.word	0x40013800
 8002528:	00050105 	.word	0x00050105
 800252c:	20001880 	.word	0x20001880
 8002530:	20001860 	.word	0x20001860

08002534 <i2c_delay>:
 8002534:	bf00      	nop
 8002536:	bf00      	nop
 8002538:	bf00      	nop
 800253a:	bf00      	nop
 800253c:	4770      	bx	lr
	...

08002540 <SetLowSDA>:
 8002540:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002542:	4d0d      	ldr	r5, [pc, #52]	; (8002578 <SetLowSDA+0x38>)
 8002544:	2301      	movs	r3, #1
 8002546:	2203      	movs	r2, #3
 8002548:	2480      	movs	r4, #128	; 0x80
 800254a:	f88d 3004 	strb.w	r3, [sp, #4]
 800254e:	f88d 3006 	strb.w	r3, [sp, #6]
 8002552:	4628      	mov	r0, r5
 8002554:	2300      	movs	r3, #0
 8002556:	4669      	mov	r1, sp
 8002558:	f88d 2005 	strb.w	r2, [sp, #5]
 800255c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002560:	9400      	str	r4, [sp, #0]
 8002562:	f000 fb6f 	bl	8002c44 <GPIO_Init>
 8002566:	4628      	mov	r0, r5
 8002568:	4621      	mov	r1, r4
 800256a:	f000 fbb1 	bl	8002cd0 <GPIO_ResetBits>
 800256e:	f7ff ffe1 	bl	8002534 <i2c_delay>
 8002572:	b003      	add	sp, #12
 8002574:	bd30      	pop	{r4, r5, pc}
 8002576:	bf00      	nop
 8002578:	48000400 	.word	0x48000400

0800257c <SetHighSDA>:
 800257c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800257e:	4d0d      	ldr	r5, [pc, #52]	; (80025b4 <SetHighSDA+0x38>)
 8002580:	2203      	movs	r2, #3
 8002582:	2300      	movs	r3, #0
 8002584:	2480      	movs	r4, #128	; 0x80
 8002586:	f88d 2005 	strb.w	r2, [sp, #5]
 800258a:	4628      	mov	r0, r5
 800258c:	2201      	movs	r2, #1
 800258e:	4669      	mov	r1, sp
 8002590:	f88d 3004 	strb.w	r3, [sp, #4]
 8002594:	f88d 2006 	strb.w	r2, [sp, #6]
 8002598:	f88d 3007 	strb.w	r3, [sp, #7]
 800259c:	9400      	str	r4, [sp, #0]
 800259e:	f000 fb51 	bl	8002c44 <GPIO_Init>
 80025a2:	4628      	mov	r0, r5
 80025a4:	4621      	mov	r1, r4
 80025a6:	f000 fb8f 	bl	8002cc8 <GPIO_SetBits>
 80025aa:	f7ff ffc3 	bl	8002534 <i2c_delay>
 80025ae:	b003      	add	sp, #12
 80025b0:	bd30      	pop	{r4, r5, pc}
 80025b2:	bf00      	nop
 80025b4:	48000400 	.word	0x48000400

080025b8 <SetLowSCL>:
 80025b8:	b508      	push	{r3, lr}
 80025ba:	4804      	ldr	r0, [pc, #16]	; (80025cc <SetLowSCL+0x14>)
 80025bc:	2140      	movs	r1, #64	; 0x40
 80025be:	f000 fb87 	bl	8002cd0 <GPIO_ResetBits>
 80025c2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025c6:	f7ff bfb5 	b.w	8002534 <i2c_delay>
 80025ca:	bf00      	nop
 80025cc:	48000400 	.word	0x48000400

080025d0 <SetHighSCL>:
 80025d0:	b508      	push	{r3, lr}
 80025d2:	4804      	ldr	r0, [pc, #16]	; (80025e4 <SetHighSCL+0x14>)
 80025d4:	2140      	movs	r1, #64	; 0x40
 80025d6:	f000 fb77 	bl	8002cc8 <GPIO_SetBits>
 80025da:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025de:	f7ff bfa9 	b.w	8002534 <i2c_delay>
 80025e2:	bf00      	nop
 80025e4:	48000400 	.word	0x48000400

080025e8 <i2c_0_init>:
 80025e8:	b507      	push	{r0, r1, r2, lr}
 80025ea:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80025ee:	2101      	movs	r1, #1
 80025f0:	f7ff fc80 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 80025f4:	23c0      	movs	r3, #192	; 0xc0
 80025f6:	9300      	str	r3, [sp, #0]
 80025f8:	2301      	movs	r3, #1
 80025fa:	2203      	movs	r2, #3
 80025fc:	480a      	ldr	r0, [pc, #40]	; (8002628 <i2c_0_init+0x40>)
 80025fe:	f88d 3004 	strb.w	r3, [sp, #4]
 8002602:	4669      	mov	r1, sp
 8002604:	f88d 3006 	strb.w	r3, [sp, #6]
 8002608:	2300      	movs	r3, #0
 800260a:	f88d 2005 	strb.w	r2, [sp, #5]
 800260e:	f88d 3007 	strb.w	r3, [sp, #7]
 8002612:	f000 fb17 	bl	8002c44 <GPIO_Init>
 8002616:	f7ff ffdb 	bl	80025d0 <SetHighSCL>
 800261a:	f7ff ff91 	bl	8002540 <SetLowSDA>
 800261e:	f7ff ffad 	bl	800257c <SetHighSDA>
 8002622:	b003      	add	sp, #12
 8002624:	f85d fb04 	ldr.w	pc, [sp], #4
 8002628:	48000400 	.word	0x48000400

0800262c <i2cStart>:
 800262c:	b508      	push	{r3, lr}
 800262e:	f7ff ffcf 	bl	80025d0 <SetHighSCL>
 8002632:	f7ff ffa3 	bl	800257c <SetHighSDA>
 8002636:	f7ff ffcb 	bl	80025d0 <SetHighSCL>
 800263a:	f7ff ff81 	bl	8002540 <SetLowSDA>
 800263e:	f7ff ffbb 	bl	80025b8 <SetLowSCL>
 8002642:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002646:	f7ff bf99 	b.w	800257c <SetHighSDA>

0800264a <i2cStop>:
 800264a:	b508      	push	{r3, lr}
 800264c:	f7ff ffb4 	bl	80025b8 <SetLowSCL>
 8002650:	f7ff ff76 	bl	8002540 <SetLowSDA>
 8002654:	f7ff ffbc 	bl	80025d0 <SetHighSCL>
 8002658:	f7ff ff72 	bl	8002540 <SetLowSDA>
 800265c:	f7ff ffb8 	bl	80025d0 <SetHighSCL>
 8002660:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002664:	f7ff bf8a 	b.w	800257c <SetHighSDA>

08002668 <i2cWrite>:
 8002668:	b538      	push	{r3, r4, r5, lr}
 800266a:	4605      	mov	r5, r0
 800266c:	2408      	movs	r4, #8
 800266e:	f7ff ffa3 	bl	80025b8 <SetLowSCL>
 8002672:	062b      	lsls	r3, r5, #24
 8002674:	d502      	bpl.n	800267c <i2cWrite+0x14>
 8002676:	f7ff ff81 	bl	800257c <SetHighSDA>
 800267a:	e001      	b.n	8002680 <i2cWrite+0x18>
 800267c:	f7ff ff60 	bl	8002540 <SetLowSDA>
 8002680:	3c01      	subs	r4, #1
 8002682:	f7ff ffa5 	bl	80025d0 <SetHighSCL>
 8002686:	006d      	lsls	r5, r5, #1
 8002688:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 800268c:	b2ed      	uxtb	r5, r5
 800268e:	d1ee      	bne.n	800266e <i2cWrite+0x6>
 8002690:	f7ff ff92 	bl	80025b8 <SetLowSCL>
 8002694:	f7ff ff72 	bl	800257c <SetHighSDA>
 8002698:	f7ff ff9a 	bl	80025d0 <SetHighSCL>
 800269c:	4b05      	ldr	r3, [pc, #20]	; (80026b4 <i2cWrite+0x4c>)
 800269e:	8a1c      	ldrh	r4, [r3, #16]
 80026a0:	b2a4      	uxth	r4, r4
 80026a2:	f7ff ff89 	bl	80025b8 <SetLowSCL>
 80026a6:	f7ff ff45 	bl	8002534 <i2c_delay>
 80026aa:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80026ae:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80026b2:	bd38      	pop	{r3, r4, r5, pc}
 80026b4:	48000400 	.word	0x48000400

080026b8 <i2cRead>:
 80026b8:	b570      	push	{r4, r5, r6, lr}
 80026ba:	4606      	mov	r6, r0
 80026bc:	f7ff ff7c 	bl	80025b8 <SetLowSCL>
 80026c0:	f7ff ff5c 	bl	800257c <SetHighSDA>
 80026c4:	2508      	movs	r5, #8
 80026c6:	2400      	movs	r4, #0
 80026c8:	f7ff ff82 	bl	80025d0 <SetHighSCL>
 80026cc:	4b0d      	ldr	r3, [pc, #52]	; (8002704 <i2cRead+0x4c>)
 80026ce:	8a1b      	ldrh	r3, [r3, #16]
 80026d0:	0064      	lsls	r4, r4, #1
 80026d2:	061b      	lsls	r3, r3, #24
 80026d4:	b2e4      	uxtb	r4, r4
 80026d6:	bf48      	it	mi
 80026d8:	3401      	addmi	r4, #1
 80026da:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80026de:	bf48      	it	mi
 80026e0:	b2e4      	uxtbmi	r4, r4
 80026e2:	f7ff ff69 	bl	80025b8 <SetLowSCL>
 80026e6:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80026ea:	d1ed      	bne.n	80026c8 <i2cRead+0x10>
 80026ec:	b10e      	cbz	r6, 80026f2 <i2cRead+0x3a>
 80026ee:	f7ff ff27 	bl	8002540 <SetLowSDA>
 80026f2:	f7ff ff6d 	bl	80025d0 <SetHighSCL>
 80026f6:	f7ff ff5f 	bl	80025b8 <SetLowSCL>
 80026fa:	f7ff ff1b 	bl	8002534 <i2c_delay>
 80026fe:	4620      	mov	r0, r4
 8002700:	bd70      	pop	{r4, r5, r6, pc}
 8002702:	bf00      	nop
 8002704:	48000400 	.word	0x48000400

08002708 <i2c_write_reg>:
 8002708:	b570      	push	{r4, r5, r6, lr}
 800270a:	4606      	mov	r6, r0
 800270c:	460d      	mov	r5, r1
 800270e:	4614      	mov	r4, r2
 8002710:	f7ff ff8c 	bl	800262c <i2cStart>
 8002714:	4630      	mov	r0, r6
 8002716:	f7ff ffa7 	bl	8002668 <i2cWrite>
 800271a:	4628      	mov	r0, r5
 800271c:	f7ff ffa4 	bl	8002668 <i2cWrite>
 8002720:	4620      	mov	r0, r4
 8002722:	f7ff ffa1 	bl	8002668 <i2cWrite>
 8002726:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800272a:	f7ff bf8e 	b.w	800264a <i2cStop>

0800272e <i2c_read_reg>:
 800272e:	b538      	push	{r3, r4, r5, lr}
 8002730:	4604      	mov	r4, r0
 8002732:	460d      	mov	r5, r1
 8002734:	f7ff ff7a 	bl	800262c <i2cStart>
 8002738:	4620      	mov	r0, r4
 800273a:	f7ff ff95 	bl	8002668 <i2cWrite>
 800273e:	4628      	mov	r0, r5
 8002740:	f7ff ff92 	bl	8002668 <i2cWrite>
 8002744:	f7ff ff72 	bl	800262c <i2cStart>
 8002748:	f044 0001 	orr.w	r0, r4, #1
 800274c:	f7ff ff8c 	bl	8002668 <i2cWrite>
 8002750:	2000      	movs	r0, #0
 8002752:	f7ff ffb1 	bl	80026b8 <i2cRead>
 8002756:	4604      	mov	r4, r0
 8002758:	f7ff ff77 	bl	800264a <i2cStop>
 800275c:	4620      	mov	r0, r4
 800275e:	bd38      	pop	{r3, r4, r5, pc}

08002760 <SystemInit>:
 8002760:	4a39      	ldr	r2, [pc, #228]	; (8002848 <SystemInit+0xe8>)
 8002762:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002766:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800276a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800276e:	4b37      	ldr	r3, [pc, #220]	; (800284c <SystemInit+0xec>)
 8002770:	681a      	ldr	r2, [r3, #0]
 8002772:	f042 0201 	orr.w	r2, r2, #1
 8002776:	601a      	str	r2, [r3, #0]
 8002778:	6859      	ldr	r1, [r3, #4]
 800277a:	4a35      	ldr	r2, [pc, #212]	; (8002850 <SystemInit+0xf0>)
 800277c:	400a      	ands	r2, r1
 800277e:	605a      	str	r2, [r3, #4]
 8002780:	681a      	ldr	r2, [r3, #0]
 8002782:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002786:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800278a:	601a      	str	r2, [r3, #0]
 800278c:	681a      	ldr	r2, [r3, #0]
 800278e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002792:	601a      	str	r2, [r3, #0]
 8002794:	685a      	ldr	r2, [r3, #4]
 8002796:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800279a:	605a      	str	r2, [r3, #4]
 800279c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800279e:	f022 020f 	bic.w	r2, r2, #15
 80027a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80027a4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027a6:	4a2b      	ldr	r2, [pc, #172]	; (8002854 <SystemInit+0xf4>)
 80027a8:	b082      	sub	sp, #8
 80027aa:	400a      	ands	r2, r1
 80027ac:	631a      	str	r2, [r3, #48]	; 0x30
 80027ae:	2200      	movs	r2, #0
 80027b0:	609a      	str	r2, [r3, #8]
 80027b2:	9200      	str	r2, [sp, #0]
 80027b4:	9201      	str	r2, [sp, #4]
 80027b6:	681a      	ldr	r2, [r3, #0]
 80027b8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80027bc:	601a      	str	r2, [r3, #0]
 80027be:	681a      	ldr	r2, [r3, #0]
 80027c0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80027c4:	9201      	str	r2, [sp, #4]
 80027c6:	9a00      	ldr	r2, [sp, #0]
 80027c8:	3201      	adds	r2, #1
 80027ca:	9200      	str	r2, [sp, #0]
 80027cc:	9a01      	ldr	r2, [sp, #4]
 80027ce:	b91a      	cbnz	r2, 80027d8 <SystemInit+0x78>
 80027d0:	9a00      	ldr	r2, [sp, #0]
 80027d2:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80027d6:	d1f2      	bne.n	80027be <SystemInit+0x5e>
 80027d8:	681a      	ldr	r2, [r3, #0]
 80027da:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80027de:	bf18      	it	ne
 80027e0:	2201      	movne	r2, #1
 80027e2:	9201      	str	r2, [sp, #4]
 80027e4:	9a01      	ldr	r2, [sp, #4]
 80027e6:	2a01      	cmp	r2, #1
 80027e8:	d005      	beq.n	80027f6 <SystemInit+0x96>
 80027ea:	4b17      	ldr	r3, [pc, #92]	; (8002848 <SystemInit+0xe8>)
 80027ec:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80027f0:	609a      	str	r2, [r3, #8]
 80027f2:	b002      	add	sp, #8
 80027f4:	4770      	bx	lr
 80027f6:	4a18      	ldr	r2, [pc, #96]	; (8002858 <SystemInit+0xf8>)
 80027f8:	2112      	movs	r1, #18
 80027fa:	6011      	str	r1, [r2, #0]
 80027fc:	685a      	ldr	r2, [r3, #4]
 80027fe:	605a      	str	r2, [r3, #4]
 8002800:	685a      	ldr	r2, [r3, #4]
 8002802:	605a      	str	r2, [r3, #4]
 8002804:	685a      	ldr	r2, [r3, #4]
 8002806:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800280a:	605a      	str	r2, [r3, #4]
 800280c:	685a      	ldr	r2, [r3, #4]
 800280e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002812:	605a      	str	r2, [r3, #4]
 8002814:	685a      	ldr	r2, [r3, #4]
 8002816:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800281a:	605a      	str	r2, [r3, #4]
 800281c:	681a      	ldr	r2, [r3, #0]
 800281e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002822:	601a      	str	r2, [r3, #0]
 8002824:	6819      	ldr	r1, [r3, #0]
 8002826:	4a09      	ldr	r2, [pc, #36]	; (800284c <SystemInit+0xec>)
 8002828:	0189      	lsls	r1, r1, #6
 800282a:	d5fb      	bpl.n	8002824 <SystemInit+0xc4>
 800282c:	6851      	ldr	r1, [r2, #4]
 800282e:	f021 0103 	bic.w	r1, r1, #3
 8002832:	6051      	str	r1, [r2, #4]
 8002834:	6851      	ldr	r1, [r2, #4]
 8002836:	f041 0102 	orr.w	r1, r1, #2
 800283a:	6051      	str	r1, [r2, #4]
 800283c:	685a      	ldr	r2, [r3, #4]
 800283e:	f002 020c 	and.w	r2, r2, #12
 8002842:	2a08      	cmp	r2, #8
 8002844:	d1fa      	bne.n	800283c <SystemInit+0xdc>
 8002846:	e7d0      	b.n	80027ea <SystemInit+0x8a>
 8002848:	e000ed00 	.word	0xe000ed00
 800284c:	40021000 	.word	0x40021000
 8002850:	f87fc00c 	.word	0xf87fc00c
 8002854:	ff00fccc 	.word	0xff00fccc
 8002858:	40022000 	.word	0x40022000

0800285c <sys_tick_init>:
 800285c:	4b06      	ldr	r3, [pc, #24]	; (8002878 <sys_tick_init+0x1c>)
 800285e:	f244 6250 	movw	r2, #18000	; 0x4650
 8002862:	605a      	str	r2, [r3, #4]
 8002864:	4a05      	ldr	r2, [pc, #20]	; (800287c <sys_tick_init+0x20>)
 8002866:	21f0      	movs	r1, #240	; 0xf0
 8002868:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800286c:	2200      	movs	r2, #0
 800286e:	609a      	str	r2, [r3, #8]
 8002870:	2207      	movs	r2, #7
 8002872:	601a      	str	r2, [r3, #0]
 8002874:	4770      	bx	lr
 8002876:	bf00      	nop
 8002878:	e000e010 	.word	0xe000e010
 800287c:	e000ed00 	.word	0xe000ed00

08002880 <sleep>:
 8002880:	bf30      	wfi
 8002882:	4770      	bx	lr

08002884 <core_yield>:
 8002884:	bf00      	nop
 8002886:	4770      	bx	lr

08002888 <sytem_clock_init>:
 8002888:	f7ff bf6a 	b.w	8002760 <SystemInit>

0800288c <pwm_set>:
 800288c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002890:	b086      	sub	sp, #24
 8002892:	2370      	movs	r3, #112	; 0x70
 8002894:	9301      	str	r3, [sp, #4]
 8002896:	2301      	movs	r3, #1
 8002898:	f8ad 3008 	strh.w	r3, [sp, #8]
 800289c:	2304      	movs	r3, #4
 800289e:	f8ad 300a 	strh.w	r3, [sp, #10]
 80028a2:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002908 <pwm_set+0x7c>
 80028a6:	4c17      	ldr	r4, [pc, #92]	; (8002904 <pwm_set+0x78>)
 80028a8:	2302      	movs	r3, #2
 80028aa:	f8ad 3010 	strh.w	r3, [sp, #16]
 80028ae:	2300      	movs	r3, #0
 80028b0:	f8ad 3012 	strh.w	r3, [sp, #18]
 80028b4:	f8ad 3016 	strh.w	r3, [sp, #22]
 80028b8:	f242 7710 	movw	r7, #10000	; 0x2710
 80028bc:	f8d8 3000 	ldr.w	r3, [r8]
 80028c0:	fbb3 f3f7 	udiv	r3, r3, r7
 80028c4:	3b02      	subs	r3, #2
 80028c6:	f44f 7280 	mov.w	r2, #256	; 0x100
 80028ca:	460e      	mov	r6, r1
 80028cc:	2564      	movs	r5, #100	; 0x64
 80028ce:	a901      	add	r1, sp, #4
 80028d0:	4358      	muls	r0, r3
 80028d2:	fbb0 f3f5 	udiv	r3, r0, r5
 80028d6:	4620      	mov	r0, r4
 80028d8:	f8ad 2014 	strh.w	r2, [sp, #20]
 80028dc:	9303      	str	r3, [sp, #12]
 80028de:	f7ff fb91 	bl	8002004 <TIM_OC1Init>
 80028e2:	f8d8 1000 	ldr.w	r1, [r8]
 80028e6:	fbb1 f1f7 	udiv	r1, r1, r7
 80028ea:	3902      	subs	r1, #2
 80028ec:	4371      	muls	r1, r6
 80028ee:	4620      	mov	r0, r4
 80028f0:	fbb1 f1f5 	udiv	r1, r1, r5
 80028f4:	9103      	str	r1, [sp, #12]
 80028f6:	a901      	add	r1, sp, #4
 80028f8:	f7ff fbca 	bl	8002090 <TIM_OC2Init>
 80028fc:	b006      	add	sp, #24
 80028fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002902:	bf00      	nop
 8002904:	40012c00 	.word	0x40012c00
 8002908:	200000f8 	.word	0x200000f8

0800290c <pwm_init>:
 800290c:	b530      	push	{r4, r5, lr}
 800290e:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002912:	b087      	sub	sp, #28
 8002914:	2101      	movs	r1, #1
 8002916:	f7ff fafb 	bl	8001f10 <RCC_APB2PeriphClockCmd>
 800291a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800291e:	2101      	movs	r1, #1
 8002920:	f7ff fae8 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 8002924:	4c1d      	ldr	r4, [pc, #116]	; (800299c <pwm_init+0x90>)
 8002926:	4d1e      	ldr	r5, [pc, #120]	; (80029a0 <pwm_init+0x94>)
 8002928:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 800292c:	9301      	str	r3, [sp, #4]
 800292e:	2302      	movs	r3, #2
 8002930:	f88d 3008 	strb.w	r3, [sp, #8]
 8002934:	4620      	mov	r0, r4
 8002936:	2303      	movs	r3, #3
 8002938:	a901      	add	r1, sp, #4
 800293a:	f88d 3009 	strb.w	r3, [sp, #9]
 800293e:	f000 f981 	bl	8002c44 <GPIO_Init>
 8002942:	4620      	mov	r0, r4
 8002944:	210d      	movs	r1, #13
 8002946:	2206      	movs	r2, #6
 8002948:	f000 f9c6 	bl	8002cd8 <GPIO_PinAFConfig>
 800294c:	4620      	mov	r0, r4
 800294e:	210e      	movs	r1, #14
 8002950:	2206      	movs	r2, #6
 8002952:	f000 f9c1 	bl	8002cd8 <GPIO_PinAFConfig>
 8002956:	4b13      	ldr	r3, [pc, #76]	; (80029a4 <pwm_init+0x98>)
 8002958:	2400      	movs	r4, #0
 800295a:	f242 7210 	movw	r2, #10000	; 0x2710
 800295e:	4628      	mov	r0, r5
 8002960:	a903      	add	r1, sp, #12
 8002962:	681b      	ldr	r3, [r3, #0]
 8002964:	fbb3 f3f2 	udiv	r3, r3, r2
 8002968:	3b01      	subs	r3, #1
 800296a:	9304      	str	r3, [sp, #16]
 800296c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002970:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002974:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002978:	f8ad 4016 	strh.w	r4, [sp, #22]
 800297c:	f7ff fae4 	bl	8001f48 <TIM_TimeBaseInit>
 8002980:	4620      	mov	r0, r4
 8002982:	4621      	mov	r1, r4
 8002984:	f7ff ff82 	bl	800288c <pwm_set>
 8002988:	4628      	mov	r0, r5
 800298a:	2101      	movs	r1, #1
 800298c:	f7ff fb2c 	bl	8001fe8 <TIM_Cmd>
 8002990:	4628      	mov	r0, r5
 8002992:	2101      	movs	r1, #1
 8002994:	f7ff fbba 	bl	800210c <TIM_CtrlPWMOutputs>
 8002998:	b007      	add	sp, #28
 800299a:	bd30      	pop	{r4, r5, pc}
 800299c:	48000400 	.word	0x48000400
 80029a0:	40012c00 	.word	0x40012c00
 80029a4:	200000f8 	.word	0x200000f8

080029a8 <drv8834_run>:
 80029a8:	1e02      	subs	r2, r0, #0
 80029aa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80029ae:	bfd5      	itete	le
 80029b0:	4252      	negle	r2, r2
 80029b2:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 80029b4:	6983      	ldrle	r3, [r0, #24]
 80029b6:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 80029ba:	bfc5      	ittet	gt
 80029bc:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 80029c0:	b29b      	uxthgt	r3, r3
 80029c2:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 80029c6:	8503      	strhgt	r3, [r0, #40]	; 0x28
 80029c8:	bfd8      	it	le
 80029ca:	6183      	strle	r3, [r0, #24]
 80029cc:	480d      	ldr	r0, [pc, #52]	; (8002a04 <drv8834_run+0x5c>)
 80029ce:	bfd8      	it	le
 80029d0:	b212      	sxthle	r2, r2
 80029d2:	2900      	cmp	r1, #0
 80029d4:	bfcd      	iteet	gt
 80029d6:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 80029d8:	6983      	ldrle	r3, [r0, #24]
 80029da:	4249      	negle	r1, r1
 80029dc:	b29b      	uxthgt	r3, r3
 80029de:	bfd5      	itete	le
 80029e0:	b209      	sxthle	r1, r1
 80029e2:	f043 0320 	orrgt.w	r3, r3, #32
 80029e6:	f043 0320 	orrle.w	r3, r3, #32
 80029ea:	8503      	strhgt	r3, [r0, #40]	; 0x28
 80029ec:	bfd8      	it	le
 80029ee:	6183      	strle	r3, [r0, #24]
 80029f0:	2964      	cmp	r1, #100	; 0x64
 80029f2:	bfa8      	it	ge
 80029f4:	2164      	movge	r1, #100	; 0x64
 80029f6:	2a64      	cmp	r2, #100	; 0x64
 80029f8:	bfa8      	it	ge
 80029fa:	2264      	movge	r2, #100	; 0x64
 80029fc:	4608      	mov	r0, r1
 80029fe:	4611      	mov	r1, r2
 8002a00:	f7ff bf44 	b.w	800288c <pwm_set>
 8002a04:	48000400 	.word	0x48000400

08002a08 <drv8834_init>:
 8002a08:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002a0c:	4f1d      	ldr	r7, [pc, #116]	; (8002a84 <drv8834_init+0x7c>)
 8002a0e:	2400      	movs	r4, #0
 8002a10:	2601      	movs	r6, #1
 8002a12:	2503      	movs	r5, #3
 8002a14:	f04f 0810 	mov.w	r8, #16
 8002a18:	4638      	mov	r0, r7
 8002a1a:	4669      	mov	r1, sp
 8002a1c:	f8cd 8000 	str.w	r8, [sp]
 8002a20:	f88d 6004 	strb.w	r6, [sp, #4]
 8002a24:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a28:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a2c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a30:	f000 f908 	bl	8002c44 <GPIO_Init>
 8002a34:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002a38:	2320      	movs	r3, #32
 8002a3a:	4638      	mov	r0, r7
 8002a3c:	4669      	mov	r1, sp
 8002a3e:	9300      	str	r3, [sp, #0]
 8002a40:	f88d 6004 	strb.w	r6, [sp, #4]
 8002a44:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a48:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a4c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a50:	f000 f8f8 	bl	8002c44 <GPIO_Init>
 8002a54:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002a58:	4669      	mov	r1, sp
 8002a5a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a5e:	9300      	str	r3, [sp, #0]
 8002a60:	f88d 6004 	strb.w	r6, [sp, #4]
 8002a64:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a68:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a6c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a70:	f000 f8e8 	bl	8002c44 <GPIO_Init>
 8002a74:	4620      	mov	r0, r4
 8002a76:	4621      	mov	r1, r4
 8002a78:	f7ff ff96 	bl	80029a8 <drv8834_run>
 8002a7c:	b002      	add	sp, #8
 8002a7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a82:	bf00      	nop
 8002a84:	48000400 	.word	0x48000400

08002a88 <NVIC_Init>:
 8002a88:	b510      	push	{r4, lr}
 8002a8a:	bf00      	nop
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	78c2      	ldrb	r2, [r0, #3]
 8002a92:	7803      	ldrb	r3, [r0, #0]
 8002a94:	b312      	cbz	r2, 8002adc <NVIC_Init+0x54>
 8002a96:	4a17      	ldr	r2, [pc, #92]	; (8002af4 <NVIC_Init+0x6c>)
 8002a98:	68d1      	ldr	r1, [r2, #12]
 8002a9a:	7842      	ldrb	r2, [r0, #1]
 8002a9c:	43c9      	mvns	r1, r1
 8002a9e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002aa2:	f1c1 0404 	rsb	r4, r1, #4
 8002aa6:	b2e4      	uxtb	r4, r4
 8002aa8:	40a2      	lsls	r2, r4
 8002aaa:	b2d4      	uxtb	r4, r2
 8002aac:	220f      	movs	r2, #15
 8002aae:	410a      	asrs	r2, r1
 8002ab0:	7881      	ldrb	r1, [r0, #2]
 8002ab2:	400a      	ands	r2, r1
 8002ab4:	4322      	orrs	r2, r4
 8002ab6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002aba:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002abe:	0112      	lsls	r2, r2, #4
 8002ac0:	b2d2      	uxtb	r2, r2
 8002ac2:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002ac6:	7803      	ldrb	r3, [r0, #0]
 8002ac8:	2201      	movs	r2, #1
 8002aca:	0959      	lsrs	r1, r3, #5
 8002acc:	f003 031f 	and.w	r3, r3, #31
 8002ad0:	fa02 f303 	lsl.w	r3, r2, r3
 8002ad4:	4a08      	ldr	r2, [pc, #32]	; (8002af8 <NVIC_Init+0x70>)
 8002ad6:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002ada:	bd10      	pop	{r4, pc}
 8002adc:	095a      	lsrs	r2, r3, #5
 8002ade:	2101      	movs	r1, #1
 8002ae0:	f003 031f 	and.w	r3, r3, #31
 8002ae4:	4099      	lsls	r1, r3
 8002ae6:	f102 0320 	add.w	r3, r2, #32
 8002aea:	4a03      	ldr	r2, [pc, #12]	; (8002af8 <NVIC_Init+0x70>)
 8002aec:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002af0:	bd10      	pop	{r4, pc}
 8002af2:	bf00      	nop
 8002af4:	e000ed00 	.word	0xe000ed00
 8002af8:	e000e100 	.word	0xe000e100

08002afc <lib_low_level_init>:
 8002afc:	b508      	push	{r3, lr}
 8002afe:	f7ff fec3 	bl	8002888 <sytem_clock_init>
 8002b02:	f000 f961 	bl	8002dc8 <gpio_init>
 8002b06:	f7ff fc8f 	bl	8002428 <uart_init>
 8002b0a:	f7ff fb0f 	bl	800212c <timer_init>
 8002b0e:	f7ff fefd 	bl	800290c <pwm_init>
 8002b12:	f7ff ff79 	bl	8002a08 <drv8834_init>
 8002b16:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002b1a:	f7ff bd65 	b.w	80025e8 <i2c_0_init>
	...

08002b20 <EXTI_Init>:
 8002b20:	b570      	push	{r4, r5, r6, lr}
 8002b22:	bf00      	nop
 8002b24:	bf00      	nop
 8002b26:	bf00      	nop
 8002b28:	bf00      	nop
 8002b2a:	7982      	ldrb	r2, [r0, #6]
 8002b2c:	6803      	ldr	r3, [r0, #0]
 8002b2e:	7904      	ldrb	r4, [r0, #4]
 8002b30:	2a00      	cmp	r2, #0
 8002b32:	d064      	beq.n	8002bfe <EXTI_Init+0xde>
 8002b34:	f023 011f 	bic.w	r1, r3, #31
 8002b38:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002b3c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002b40:	f003 021f 	and.w	r2, r3, #31
 8002b44:	680d      	ldr	r5, [r1, #0]
 8002b46:	2301      	movs	r3, #1
 8002b48:	fa03 f202 	lsl.w	r2, r3, r2
 8002b4c:	ea25 0202 	bic.w	r2, r5, r2
 8002b50:	600a      	str	r2, [r1, #0]
 8002b52:	6802      	ldr	r2, [r0, #0]
 8002b54:	4d32      	ldr	r5, [pc, #200]	; (8002c20 <EXTI_Init+0x100>)
 8002b56:	f022 061f 	bic.w	r6, r2, #31
 8002b5a:	f002 021f 	and.w	r2, r2, #31
 8002b5e:	5971      	ldr	r1, [r6, r5]
 8002b60:	fa03 f202 	lsl.w	r2, r3, r2
 8002b64:	ea21 0202 	bic.w	r2, r1, r2
 8002b68:	5172      	str	r2, [r6, r5]
 8002b6a:	6801      	ldr	r1, [r0, #0]
 8002b6c:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002b70:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002b74:	f021 041f 	bic.w	r4, r1, #31
 8002b78:	f001 011f 	and.w	r1, r1, #31
 8002b7c:	5915      	ldr	r5, [r2, r4]
 8002b7e:	fa03 f101 	lsl.w	r1, r3, r1
 8002b82:	4329      	orrs	r1, r5
 8002b84:	5111      	str	r1, [r2, r4]
 8002b86:	6802      	ldr	r2, [r0, #0]
 8002b88:	4d26      	ldr	r5, [pc, #152]	; (8002c24 <EXTI_Init+0x104>)
 8002b8a:	f022 041f 	bic.w	r4, r2, #31
 8002b8e:	f002 021f 	and.w	r2, r2, #31
 8002b92:	5961      	ldr	r1, [r4, r5]
 8002b94:	fa03 f202 	lsl.w	r2, r3, r2
 8002b98:	ea21 0202 	bic.w	r2, r1, r2
 8002b9c:	5162      	str	r2, [r4, r5]
 8002b9e:	6802      	ldr	r2, [r0, #0]
 8002ba0:	4c21      	ldr	r4, [pc, #132]	; (8002c28 <EXTI_Init+0x108>)
 8002ba2:	f022 061f 	bic.w	r6, r2, #31
 8002ba6:	f002 021f 	and.w	r2, r2, #31
 8002baa:	5931      	ldr	r1, [r6, r4]
 8002bac:	fa03 f202 	lsl.w	r2, r3, r2
 8002bb0:	ea21 0202 	bic.w	r2, r1, r2
 8002bb4:	7941      	ldrb	r1, [r0, #5]
 8002bb6:	5132      	str	r2, [r6, r4]
 8002bb8:	2910      	cmp	r1, #16
 8002bba:	6802      	ldr	r2, [r0, #0]
 8002bbc:	d112      	bne.n	8002be4 <EXTI_Init+0xc4>
 8002bbe:	f022 011f 	bic.w	r1, r2, #31
 8002bc2:	f002 021f 	and.w	r2, r2, #31
 8002bc6:	594e      	ldr	r6, [r1, r5]
 8002bc8:	fa03 f202 	lsl.w	r2, r3, r2
 8002bcc:	4332      	orrs	r2, r6
 8002bce:	514a      	str	r2, [r1, r5]
 8002bd0:	6802      	ldr	r2, [r0, #0]
 8002bd2:	f022 011f 	bic.w	r1, r2, #31
 8002bd6:	f002 021f 	and.w	r2, r2, #31
 8002bda:	5908      	ldr	r0, [r1, r4]
 8002bdc:	4093      	lsls	r3, r2
 8002bde:	4303      	orrs	r3, r0
 8002be0:	510b      	str	r3, [r1, r4]
 8002be2:	bd70      	pop	{r4, r5, r6, pc}
 8002be4:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002be8:	f022 001f 	bic.w	r0, r2, #31
 8002bec:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002bf0:	f002 021f 	and.w	r2, r2, #31
 8002bf4:	580c      	ldr	r4, [r1, r0]
 8002bf6:	4093      	lsls	r3, r2
 8002bf8:	4323      	orrs	r3, r4
 8002bfa:	500b      	str	r3, [r1, r0]
 8002bfc:	bd70      	pop	{r4, r5, r6, pc}
 8002bfe:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002c02:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002c06:	f023 041f 	bic.w	r4, r3, #31
 8002c0a:	2001      	movs	r0, #1
 8002c0c:	5911      	ldr	r1, [r2, r4]
 8002c0e:	f003 031f 	and.w	r3, r3, #31
 8002c12:	fa00 f303 	lsl.w	r3, r0, r3
 8002c16:	ea21 0303 	bic.w	r3, r1, r3
 8002c1a:	5113      	str	r3, [r2, r4]
 8002c1c:	bd70      	pop	{r4, r5, r6, pc}
 8002c1e:	bf00      	nop
 8002c20:	40010404 	.word	0x40010404
 8002c24:	40010408 	.word	0x40010408
 8002c28:	4001040c 	.word	0x4001040c

08002c2c <EXTI_ClearITPendingBit>:
 8002c2c:	bf00      	nop
 8002c2e:	2301      	movs	r3, #1
 8002c30:	f020 011f 	bic.w	r1, r0, #31
 8002c34:	4a02      	ldr	r2, [pc, #8]	; (8002c40 <EXTI_ClearITPendingBit+0x14>)
 8002c36:	f000 001f 	and.w	r0, r0, #31
 8002c3a:	4083      	lsls	r3, r0
 8002c3c:	508b      	str	r3, [r1, r2]
 8002c3e:	4770      	bx	lr
 8002c40:	40010414 	.word	0x40010414

08002c44 <GPIO_Init>:
 8002c44:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002c46:	bf00      	nop
 8002c48:	bf00      	nop
 8002c4a:	bf00      	nop
 8002c4c:	bf00      	nop
 8002c4e:	2300      	movs	r3, #0
 8002c50:	680e      	ldr	r6, [r1, #0]
 8002c52:	461c      	mov	r4, r3
 8002c54:	2501      	movs	r5, #1
 8002c56:	40a5      	lsls	r5, r4
 8002c58:	ea05 0e06 	and.w	lr, r5, r6
 8002c5c:	45ae      	cmp	lr, r5
 8002c5e:	d12d      	bne.n	8002cbc <GPIO_Init+0x78>
 8002c60:	790f      	ldrb	r7, [r1, #4]
 8002c62:	1e7a      	subs	r2, r7, #1
 8002c64:	2a01      	cmp	r2, #1
 8002c66:	d817      	bhi.n	8002c98 <GPIO_Init+0x54>
 8002c68:	bf00      	nop
 8002c6a:	2203      	movs	r2, #3
 8002c6c:	6885      	ldr	r5, [r0, #8]
 8002c6e:	409a      	lsls	r2, r3
 8002c70:	ea25 0202 	bic.w	r2, r5, r2
 8002c74:	6082      	str	r2, [r0, #8]
 8002c76:	794d      	ldrb	r5, [r1, #5]
 8002c78:	6882      	ldr	r2, [r0, #8]
 8002c7a:	409d      	lsls	r5, r3
 8002c7c:	4315      	orrs	r5, r2
 8002c7e:	6085      	str	r5, [r0, #8]
 8002c80:	bf00      	nop
 8002c82:	8882      	ldrh	r2, [r0, #4]
 8002c84:	b292      	uxth	r2, r2
 8002c86:	ea22 020e 	bic.w	r2, r2, lr
 8002c8a:	8082      	strh	r2, [r0, #4]
 8002c8c:	798a      	ldrb	r2, [r1, #6]
 8002c8e:	8885      	ldrh	r5, [r0, #4]
 8002c90:	40a2      	lsls	r2, r4
 8002c92:	432a      	orrs	r2, r5
 8002c94:	b292      	uxth	r2, r2
 8002c96:	8082      	strh	r2, [r0, #4]
 8002c98:	2203      	movs	r2, #3
 8002c9a:	6805      	ldr	r5, [r0, #0]
 8002c9c:	409a      	lsls	r2, r3
 8002c9e:	43d2      	mvns	r2, r2
 8002ca0:	4015      	ands	r5, r2
 8002ca2:	6005      	str	r5, [r0, #0]
 8002ca4:	6805      	ldr	r5, [r0, #0]
 8002ca6:	409f      	lsls	r7, r3
 8002ca8:	432f      	orrs	r7, r5
 8002caa:	6007      	str	r7, [r0, #0]
 8002cac:	68c7      	ldr	r7, [r0, #12]
 8002cae:	4017      	ands	r7, r2
 8002cb0:	79ca      	ldrb	r2, [r1, #7]
 8002cb2:	fa02 f503 	lsl.w	r5, r2, r3
 8002cb6:	ea47 0205 	orr.w	r2, r7, r5
 8002cba:	60c2      	str	r2, [r0, #12]
 8002cbc:	3401      	adds	r4, #1
 8002cbe:	2c10      	cmp	r4, #16
 8002cc0:	f103 0302 	add.w	r3, r3, #2
 8002cc4:	d1c6      	bne.n	8002c54 <GPIO_Init+0x10>
 8002cc6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002cc8 <GPIO_SetBits>:
 8002cc8:	bf00      	nop
 8002cca:	bf00      	nop
 8002ccc:	6181      	str	r1, [r0, #24]
 8002cce:	4770      	bx	lr

08002cd0 <GPIO_ResetBits>:
 8002cd0:	bf00      	nop
 8002cd2:	bf00      	nop
 8002cd4:	8501      	strh	r1, [r0, #40]	; 0x28
 8002cd6:	4770      	bx	lr

08002cd8 <GPIO_PinAFConfig>:
 8002cd8:	b510      	push	{r4, lr}
 8002cda:	bf00      	nop
 8002cdc:	bf00      	nop
 8002cde:	bf00      	nop
 8002ce0:	f001 0307 	and.w	r3, r1, #7
 8002ce4:	08c9      	lsrs	r1, r1, #3
 8002ce6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002cea:	009b      	lsls	r3, r3, #2
 8002cec:	6a04      	ldr	r4, [r0, #32]
 8002cee:	210f      	movs	r1, #15
 8002cf0:	4099      	lsls	r1, r3
 8002cf2:	ea24 0101 	bic.w	r1, r4, r1
 8002cf6:	6201      	str	r1, [r0, #32]
 8002cf8:	6a01      	ldr	r1, [r0, #32]
 8002cfa:	409a      	lsls	r2, r3
 8002cfc:	430a      	orrs	r2, r1
 8002cfe:	6202      	str	r2, [r0, #32]
 8002d00:	bd10      	pop	{r4, pc}
	...

08002d04 <EXTI9_5_IRQHandler>:
 8002d04:	4a03      	ldr	r2, [pc, #12]	; (8002d14 <EXTI9_5_IRQHandler+0x10>)
 8002d06:	6813      	ldr	r3, [r2, #0]
 8002d08:	2006      	movs	r0, #6
 8002d0a:	3301      	adds	r3, #1
 8002d0c:	6013      	str	r3, [r2, #0]
 8002d0e:	f7ff bf8d 	b.w	8002c2c <EXTI_ClearITPendingBit>
 8002d12:	bf00      	nop
 8002d14:	20001890 	.word	0x20001890

08002d18 <EXTI15_10_IRQHandler>:
 8002d18:	4a03      	ldr	r2, [pc, #12]	; (8002d28 <EXTI15_10_IRQHandler+0x10>)
 8002d1a:	6813      	ldr	r3, [r2, #0]
 8002d1c:	200c      	movs	r0, #12
 8002d1e:	3301      	adds	r3, #1
 8002d20:	6013      	str	r3, [r2, #0]
 8002d22:	f7ff bf83 	b.w	8002c2c <EXTI_ClearITPendingBit>
 8002d26:	bf00      	nop
 8002d28:	20001888 	.word	0x20001888

08002d2c <led_on>:
 8002d2c:	0403      	lsls	r3, r0, #16
 8002d2e:	bf42      	ittt	mi
 8002d30:	4b02      	ldrmi	r3, [pc, #8]	; (8002d3c <led_on+0x10>)
 8002d32:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002d36:	619a      	strmi	r2, [r3, #24]
 8002d38:	4770      	bx	lr
 8002d3a:	bf00      	nop
 8002d3c:	48000400 	.word	0x48000400

08002d40 <led_off>:
 8002d40:	0403      	lsls	r3, r0, #16
 8002d42:	bf42      	ittt	mi
 8002d44:	4b02      	ldrmi	r3, [pc, #8]	; (8002d50 <led_off+0x10>)
 8002d46:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002d4a:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002d4c:	4770      	bx	lr
 8002d4e:	bf00      	nop
 8002d50:	48000400 	.word	0x48000400

08002d54 <get_key>:
 8002d54:	4b02      	ldr	r3, [pc, #8]	; (8002d60 <get_key+0xc>)
 8002d56:	8a18      	ldrh	r0, [r3, #16]
 8002d58:	43c0      	mvns	r0, r0
 8002d5a:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002d5e:	4770      	bx	lr
 8002d60:	48000400 	.word	0x48000400

08002d64 <get_mode_jumper>:
 8002d64:	4b01      	ldr	r3, [pc, #4]	; (8002d6c <get_mode_jumper+0x8>)
 8002d66:	6818      	ldr	r0, [r3, #0]
 8002d68:	4770      	bx	lr
 8002d6a:	bf00      	nop
 8002d6c:	2000188c 	.word	0x2000188c

08002d70 <left_encoder_read>:
 8002d70:	4b04      	ldr	r3, [pc, #16]	; (8002d84 <left_encoder_read+0x14>)
 8002d72:	6818      	ldr	r0, [r3, #0]
 8002d74:	f241 53d1 	movw	r3, #5585	; 0x15d1
 8002d78:	4343      	muls	r3, r0
 8002d7a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002d7e:	fbb3 f0f0 	udiv	r0, r3, r0
 8002d82:	4770      	bx	lr
 8002d84:	20001890 	.word	0x20001890

08002d88 <right_encoder_read>:
 8002d88:	4b04      	ldr	r3, [pc, #16]	; (8002d9c <right_encoder_read+0x14>)
 8002d8a:	6818      	ldr	r0, [r3, #0]
 8002d8c:	f241 53d1 	movw	r3, #5585	; 0x15d1
 8002d90:	4343      	muls	r3, r0
 8002d92:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002d96:	fbb3 f0f0 	udiv	r0, r3, r0
 8002d9a:	4770      	bx	lr
 8002d9c:	20001888 	.word	0x20001888

08002da0 <encoder_get_distance>:
 8002da0:	b510      	push	{r4, lr}
 8002da2:	f7ff ffe5 	bl	8002d70 <left_encoder_read>
 8002da6:	4604      	mov	r4, r0
 8002da8:	f7ff ffee 	bl	8002d88 <right_encoder_read>
 8002dac:	4420      	add	r0, r4
 8002dae:	0840      	lsrs	r0, r0, #1
 8002db0:	bd10      	pop	{r4, pc}
	...

08002db4 <encoder_reset>:
 8002db4:	4a02      	ldr	r2, [pc, #8]	; (8002dc0 <encoder_reset+0xc>)
 8002db6:	2300      	movs	r3, #0
 8002db8:	6013      	str	r3, [r2, #0]
 8002dba:	4a02      	ldr	r2, [pc, #8]	; (8002dc4 <encoder_reset+0x10>)
 8002dbc:	6013      	str	r3, [r2, #0]
 8002dbe:	4770      	bx	lr
 8002dc0:	20001890 	.word	0x20001890
 8002dc4:	20001888 	.word	0x20001888

08002dc8 <gpio_init>:
 8002dc8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002dcc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002dd0:	b086      	sub	sp, #24
 8002dd2:	2101      	movs	r1, #1
 8002dd4:	f7ff f88e 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 8002dd8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002ddc:	2101      	movs	r1, #1
 8002dde:	f7ff f889 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 8002de2:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002de6:	2101      	movs	r1, #1
 8002de8:	f7ff f884 	bl	8001ef4 <RCC_AHBPeriphClockCmd>
 8002dec:	2400      	movs	r4, #0
 8002dee:	2603      	movs	r6, #3
 8002df0:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002df4:	f04f 0801 	mov.w	r8, #1
 8002df8:	a902      	add	r1, sp, #8
 8002dfa:	4841      	ldr	r0, [pc, #260]	; (8002f00 <gpio_init+0x138>)
 8002dfc:	9502      	str	r5, [sp, #8]
 8002dfe:	f88d 400e 	strb.w	r4, [sp, #14]
 8002e02:	f88d 600d 	strb.w	r6, [sp, #13]
 8002e06:	f88d 400f 	strb.w	r4, [sp, #15]
 8002e0a:	f88d 800c 	strb.w	r8, [sp, #12]
 8002e0e:	f7ff ff19 	bl	8002c44 <GPIO_Init>
 8002e12:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002e16:	a902      	add	r1, sp, #8
 8002e18:	4839      	ldr	r0, [pc, #228]	; (8002f00 <gpio_init+0x138>)
 8002e1a:	9302      	str	r3, [sp, #8]
 8002e1c:	f88d 400c 	strb.w	r4, [sp, #12]
 8002e20:	f88d 600d 	strb.w	r6, [sp, #13]
 8002e24:	f88d 400f 	strb.w	r4, [sp, #15]
 8002e28:	4f36      	ldr	r7, [pc, #216]	; (8002f04 <gpio_init+0x13c>)
 8002e2a:	f7ff ff0b 	bl	8002c44 <GPIO_Init>
 8002e2e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002e32:	a902      	add	r1, sp, #8
 8002e34:	9302      	str	r3, [sp, #8]
 8002e36:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002e3a:	2302      	movs	r3, #2
 8002e3c:	603c      	str	r4, [r7, #0]
 8002e3e:	f88d 400c 	strb.w	r4, [sp, #12]
 8002e42:	f88d 600d 	strb.w	r6, [sp, #13]
 8002e46:	f88d 300f 	strb.w	r3, [sp, #15]
 8002e4a:	f7ff fefb 	bl	8002c44 <GPIO_Init>
 8002e4e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002e52:	2610      	movs	r6, #16
 8002e54:	8a1b      	ldrh	r3, [r3, #16]
 8002e56:	055b      	lsls	r3, r3, #21
 8002e58:	4b29      	ldr	r3, [pc, #164]	; (8002f00 <gpio_init+0x138>)
 8002e5a:	bf48      	it	mi
 8002e5c:	f8c7 8000 	strmi.w	r8, [r7]
 8002e60:	619d      	str	r5, [r3, #24]
 8002e62:	f7ff ffa7 	bl	8002db4 <encoder_reset>
 8002e66:	2500      	movs	r5, #0
 8002e68:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002e6c:	a902      	add	r1, sp, #8
 8002e6e:	4826      	ldr	r0, [pc, #152]	; (8002f08 <gpio_init+0x140>)
 8002e70:	9302      	str	r3, [sp, #8]
 8002e72:	f88d 500c 	strb.w	r5, [sp, #12]
 8002e76:	f88d 500f 	strb.w	r5, [sp, #15]
 8002e7a:	f7ff fee3 	bl	8002c44 <GPIO_Init>
 8002e7e:	2001      	movs	r0, #1
 8002e80:	4601      	mov	r1, r0
 8002e82:	f7ff f845 	bl	8001f10 <RCC_APB2PeriphClockCmd>
 8002e86:	2106      	movs	r1, #6
 8002e88:	2002      	movs	r0, #2
 8002e8a:	f000 f883 	bl	8002f94 <SYSCFG_EXTILineConfig>
 8002e8e:	2401      	movs	r4, #1
 8002e90:	2306      	movs	r3, #6
 8002e92:	eb0d 0006 	add.w	r0, sp, r6
 8002e96:	9304      	str	r3, [sp, #16]
 8002e98:	f88d 5014 	strb.w	r5, [sp, #20]
 8002e9c:	f88d 6015 	strb.w	r6, [sp, #21]
 8002ea0:	f88d 4016 	strb.w	r4, [sp, #22]
 8002ea4:	f7ff fe3c 	bl	8002b20 <EXTI_Init>
 8002ea8:	2317      	movs	r3, #23
 8002eaa:	a801      	add	r0, sp, #4
 8002eac:	f88d 3004 	strb.w	r3, [sp, #4]
 8002eb0:	f88d 4005 	strb.w	r4, [sp, #5]
 8002eb4:	f88d 4006 	strb.w	r4, [sp, #6]
 8002eb8:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ebc:	f7ff fde4 	bl	8002a88 <NVIC_Init>
 8002ec0:	210c      	movs	r1, #12
 8002ec2:	2002      	movs	r0, #2
 8002ec4:	f000 f866 	bl	8002f94 <SYSCFG_EXTILineConfig>
 8002ec8:	230c      	movs	r3, #12
 8002eca:	eb0d 0006 	add.w	r0, sp, r6
 8002ece:	9304      	str	r3, [sp, #16]
 8002ed0:	f88d 5014 	strb.w	r5, [sp, #20]
 8002ed4:	f88d 6015 	strb.w	r6, [sp, #21]
 8002ed8:	f88d 4016 	strb.w	r4, [sp, #22]
 8002edc:	f7ff fe20 	bl	8002b20 <EXTI_Init>
 8002ee0:	2328      	movs	r3, #40	; 0x28
 8002ee2:	a801      	add	r0, sp, #4
 8002ee4:	f88d 3004 	strb.w	r3, [sp, #4]
 8002ee8:	f88d 4005 	strb.w	r4, [sp, #5]
 8002eec:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ef0:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ef4:	f7ff fdc8 	bl	8002a88 <NVIC_Init>
 8002ef8:	b006      	add	sp, #24
 8002efa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002efe:	bf00      	nop
 8002f00:	48000400 	.word	0x48000400
 8002f04:	2000188c 	.word	0x2000188c
 8002f08:	48000800 	.word	0x48000800

08002f0c <Default_Handler>:
 8002f0c:	4668      	mov	r0, sp
 8002f0e:	f020 0107 	bic.w	r1, r0, #7
 8002f12:	468d      	mov	sp, r1
 8002f14:	b501      	push	{r0, lr}
 8002f16:	bf00      	nop
 8002f18:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002f1c:	4685      	mov	sp, r0
 8002f1e:	4770      	bx	lr

08002f20 <HardFault_Handler>:
 8002f20:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002f24:	f7ff ff02 	bl	8002d2c <led_on>
 8002f28:	4b06      	ldr	r3, [pc, #24]	; (8002f44 <HardFault_Handler+0x24>)
 8002f2a:	3b01      	subs	r3, #1
 8002f2c:	d001      	beq.n	8002f32 <HardFault_Handler+0x12>
 8002f2e:	bf00      	nop
 8002f30:	e7fb      	b.n	8002f2a <HardFault_Handler+0xa>
 8002f32:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002f36:	f7ff ff03 	bl	8002d40 <led_off>
 8002f3a:	4b02      	ldr	r3, [pc, #8]	; (8002f44 <HardFault_Handler+0x24>)
 8002f3c:	3b01      	subs	r3, #1
 8002f3e:	d0ef      	beq.n	8002f20 <HardFault_Handler>
 8002f40:	bf00      	nop
 8002f42:	e7fb      	b.n	8002f3c <HardFault_Handler+0x1c>
 8002f44:	00989681 	.word	0x00989681

08002f48 <_reset_init>:
 8002f48:	490e      	ldr	r1, [pc, #56]	; (8002f84 <_reset_init+0x3c>)
 8002f4a:	4b0f      	ldr	r3, [pc, #60]	; (8002f88 <_reset_init+0x40>)
 8002f4c:	1a5b      	subs	r3, r3, r1
 8002f4e:	109b      	asrs	r3, r3, #2
 8002f50:	2200      	movs	r2, #0
 8002f52:	429a      	cmp	r2, r3
 8002f54:	d006      	beq.n	8002f64 <_reset_init+0x1c>
 8002f56:	480d      	ldr	r0, [pc, #52]	; (8002f8c <_reset_init+0x44>)
 8002f58:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002f5c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002f60:	3201      	adds	r2, #1
 8002f62:	e7f6      	b.n	8002f52 <_reset_init+0xa>
 8002f64:	4a0a      	ldr	r2, [pc, #40]	; (8002f90 <_reset_init+0x48>)
 8002f66:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002f6a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002f6e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002f72:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002f76:	6853      	ldr	r3, [r2, #4]
 8002f78:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002f7c:	6053      	str	r3, [r2, #4]
 8002f7e:	f7fe be2f 	b.w	8001be0 <main>
 8002f82:	bf00      	nop
 8002f84:	20000000 	.word	0x20000000
 8002f88:	2000052c 	.word	0x2000052c
 8002f8c:	08004c10 	.word	0x08004c10
 8002f90:	e000ed00 	.word	0xe000ed00

08002f94 <SYSCFG_EXTILineConfig>:
 8002f94:	b510      	push	{r4, lr}
 8002f96:	bf00      	nop
 8002f98:	bf00      	nop
 8002f9a:	f001 0303 	and.w	r3, r1, #3
 8002f9e:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8002fa2:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002fa6:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8002faa:	009b      	lsls	r3, r3, #2
 8002fac:	688c      	ldr	r4, [r1, #8]
 8002fae:	220f      	movs	r2, #15
 8002fb0:	409a      	lsls	r2, r3
 8002fb2:	ea24 0202 	bic.w	r2, r4, r2
 8002fb6:	608a      	str	r2, [r1, #8]
 8002fb8:	688a      	ldr	r2, [r1, #8]
 8002fba:	4098      	lsls	r0, r3
 8002fbc:	4310      	orrs	r0, r2
 8002fbe:	6088      	str	r0, [r1, #8]
 8002fc0:	bd10      	pop	{r4, pc}
	...

08002fc4 <selfrel_offset31>:
 8002fc4:	e5903000 	ldr	r3, [r0]
 8002fc8:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002fcc:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002fd0:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002fd4:	e0800003 	add	r0, r0, r3
 8002fd8:	e12fff1e 	bx	lr

08002fdc <search_EIT_table>:
 8002fdc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002fe0:	e3510000 	cmp	r1, #0
 8002fe4:	e24dd00c 	sub	sp, sp, #12
 8002fe8:	0a000029 	beq	8003094 <search_EIT_table+0xb8>
 8002fec:	e2413001 	sub	r3, r1, #1
 8002ff0:	e1a07002 	mov	r7, r2
 8002ff4:	e1a05000 	mov	r5, r0
 8002ff8:	e1a08003 	mov	r8, r3
 8002ffc:	e3a06000 	mov	r6, #0
 8003000:	e58d3004 	str	r3, [sp, #4]
 8003004:	e0864008 	add	r4, r6, r8
 8003008:	e0844fa4 	add	r4, r4, r4, lsr #31
 800300c:	e1a040c4 	asr	r4, r4, #1
 8003010:	e1a0a184 	lsl	sl, r4, #3
 8003014:	e085b00a 	add	fp, r5, sl
 8003018:	e1a0000b 	mov	r0, fp
 800301c:	ebffffe8 	bl	8002fc4 <selfrel_offset31>
 8003020:	e59d3004 	ldr	r3, [sp, #4]
 8003024:	e1a09000 	mov	r9, r0
 8003028:	e1530004 	cmp	r3, r4
 800302c:	e28a0008 	add	r0, sl, #8
 8003030:	e0850000 	add	r0, r5, r0
 8003034:	0a00000b 	beq	8003068 <search_EIT_table+0x8c>
 8003038:	ebffffe1 	bl	8002fc4 <selfrel_offset31>
 800303c:	e1590007 	cmp	r9, r7
 8003040:	e2400001 	sub	r0, r0, #1
 8003044:	9a000003 	bls	8003058 <search_EIT_table+0x7c>
 8003048:	e1540006 	cmp	r4, r6
 800304c:	0a00000b 	beq	8003080 <search_EIT_table+0xa4>
 8003050:	e2448001 	sub	r8, r4, #1
 8003054:	eaffffea 	b	8003004 <search_EIT_table+0x28>
 8003058:	e1500007 	cmp	r0, r7
 800305c:	2a000003 	bcs	8003070 <search_EIT_table+0x94>
 8003060:	e2846001 	add	r6, r4, #1
 8003064:	eaffffe6 	b	8003004 <search_EIT_table+0x28>
 8003068:	e1590007 	cmp	r9, r7
 800306c:	8afffff5 	bhi	8003048 <search_EIT_table+0x6c>
 8003070:	e1a0000b 	mov	r0, fp
 8003074:	e28dd00c 	add	sp, sp, #12
 8003078:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800307c:	e12fff1e 	bx	lr
 8003080:	e3a0b000 	mov	fp, #0
 8003084:	e1a0000b 	mov	r0, fp
 8003088:	e28dd00c 	add	sp, sp, #12
 800308c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003090:	e12fff1e 	bx	lr
 8003094:	e1a0b001 	mov	fp, r1
 8003098:	e1a0000b 	mov	r0, fp
 800309c:	e28dd00c 	add	sp, sp, #12
 80030a0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80030a4:	e12fff1e 	bx	lr

080030a8 <__gnu_unwind_get_pr_addr>:
 80030a8:	e3500001 	cmp	r0, #1
 80030ac:	0a000006 	beq	80030cc <__gnu_unwind_get_pr_addr+0x24>
 80030b0:	e3500002 	cmp	r0, #2
 80030b4:	0a000006 	beq	80030d4 <__gnu_unwind_get_pr_addr+0x2c>
 80030b8:	e59f301c 	ldr	r3, [pc, #28]	; 80030dc <__gnu_unwind_get_pr_addr+0x34>
 80030bc:	e3500000 	cmp	r0, #0
 80030c0:	01a00003 	moveq	r0, r3
 80030c4:	13a00000 	movne	r0, #0
 80030c8:	e12fff1e 	bx	lr
 80030cc:	e59f000c 	ldr	r0, [pc, #12]	; 80030e0 <__gnu_unwind_get_pr_addr+0x38>
 80030d0:	e12fff1e 	bx	lr
 80030d4:	e59f0008 	ldr	r0, [pc, #8]	; 80030e4 <__gnu_unwind_get_pr_addr+0x3c>
 80030d8:	e12fff1e 	bx	lr
 80030dc:	08003c50 	.word	0x08003c50
 80030e0:	08003c58 	.word	0x08003c58
 80030e4:	08003c60 	.word	0x08003c60

080030e8 <get_eit_entry>:
 80030e8:	e92d4030 	push	{r4, r5, lr}
 80030ec:	e59f3118 	ldr	r3, [pc, #280]	; 800320c <get_eit_entry+0x124>
 80030f0:	e3530000 	cmp	r3, #0
 80030f4:	e24dd00c 	sub	sp, sp, #12
 80030f8:	e1a04000 	mov	r4, r0
 80030fc:	e2415002 	sub	r5, r1, #2
 8003100:	0a00002d 	beq	80031bc <get_eit_entry+0xd4>
 8003104:	e1a00005 	mov	r0, r5
 8003108:	e28d1004 	add	r1, sp, #4
 800310c:	e320f000 	nop	{0}
 8003110:	e3500000 	cmp	r0, #0
 8003114:	0a000021 	beq	80031a0 <get_eit_entry+0xb8>
 8003118:	e59d1004 	ldr	r1, [sp, #4]
 800311c:	e1a02005 	mov	r2, r5
 8003120:	ebffffad 	bl	8002fdc <search_EIT_table>
 8003124:	e2505000 	subs	r5, r0, #0
 8003128:	0a00001c 	beq	80031a0 <get_eit_entry+0xb8>
 800312c:	ebffffa4 	bl	8002fc4 <selfrel_offset31>
 8003130:	e5953004 	ldr	r3, [r5, #4]
 8003134:	e3530001 	cmp	r3, #1
 8003138:	e5840048 	str	r0, [r4, #72]	; 0x48
 800313c:	0a000010 	beq	8003184 <get_eit_entry+0x9c>
 8003140:	e3530000 	cmp	r3, #0
 8003144:	ba000023 	blt	80031d8 <get_eit_entry+0xf0>
 8003148:	e2850004 	add	r0, r5, #4
 800314c:	ebffff9c 	bl	8002fc4 <selfrel_offset31>
 8003150:	e3a03000 	mov	r3, #0
 8003154:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003158:	e5843050 	str	r3, [r4, #80]	; 0x50
 800315c:	e5903000 	ldr	r3, [r0]
 8003160:	e3530000 	cmp	r3, #0
 8003164:	ba000020 	blt	80031ec <get_eit_entry+0x104>
 8003168:	ebffff95 	bl	8002fc4 <selfrel_offset31>
 800316c:	e3a03000 	mov	r3, #0
 8003170:	e5840010 	str	r0, [r4, #16]
 8003174:	e1a00003 	mov	r0, r3
 8003178:	e28dd00c 	add	sp, sp, #12
 800317c:	e8bd4030 	pop	{r4, r5, lr}
 8003180:	e12fff1e 	bx	lr
 8003184:	e3a03005 	mov	r3, #5
 8003188:	e3a02000 	mov	r2, #0
 800318c:	e1a00003 	mov	r0, r3
 8003190:	e5842010 	str	r2, [r4, #16]
 8003194:	e28dd00c 	add	sp, sp, #12
 8003198:	e8bd4030 	pop	{r4, r5, lr}
 800319c:	e12fff1e 	bx	lr
 80031a0:	e3a03009 	mov	r3, #9
 80031a4:	e3a02000 	mov	r2, #0
 80031a8:	e1a00003 	mov	r0, r3
 80031ac:	e5842010 	str	r2, [r4, #16]
 80031b0:	e28dd00c 	add	sp, sp, #12
 80031b4:	e8bd4030 	pop	{r4, r5, lr}
 80031b8:	e12fff1e 	bx	lr
 80031bc:	e59f104c 	ldr	r1, [pc, #76]	; 8003210 <get_eit_entry+0x128>
 80031c0:	e59f304c 	ldr	r3, [pc, #76]	; 8003214 <get_eit_entry+0x12c>
 80031c4:	e1a00001 	mov	r0, r1
 80031c8:	e0611003 	rsb	r1, r1, r3
 80031cc:	e1a011c1 	asr	r1, r1, #3
 80031d0:	e58d1004 	str	r1, [sp, #4]
 80031d4:	eaffffd0 	b	800311c <get_eit_entry+0x34>
 80031d8:	e3a03001 	mov	r3, #1
 80031dc:	e2850004 	add	r0, r5, #4
 80031e0:	e584004c 	str	r0, [r4, #76]	; 0x4c
 80031e4:	e5843050 	str	r3, [r4, #80]	; 0x50
 80031e8:	eaffffdb 	b	800315c <get_eit_entry+0x74>
 80031ec:	e1a00c23 	lsr	r0, r3, #24
 80031f0:	e200000f 	and	r0, r0, #15
 80031f4:	ebffffab 	bl	80030a8 <__gnu_unwind_get_pr_addr>
 80031f8:	e3500000 	cmp	r0, #0
 80031fc:	e5840010 	str	r0, [r4, #16]
 8003200:	03a03009 	moveq	r3, #9
 8003204:	13a03000 	movne	r3, #0
 8003208:	eaffffd9 	b	8003174 <get_eit_entry+0x8c>
 800320c:	00000000 	.word	0x00000000
 8003210:	08004a90 	.word	0x08004a90
 8003214:	08004c10 	.word	0x08004c10

08003218 <restore_non_core_regs>:
 8003218:	e5903000 	ldr	r3, [r0]
 800321c:	e3130001 	tst	r3, #1
 8003220:	e92d4010 	push	{r4, lr}
 8003224:	e1a04000 	mov	r4, r0
 8003228:	1a000004 	bne	8003240 <restore_non_core_regs+0x28>
 800322c:	e3130002 	tst	r3, #2
 8003230:	e2800048 	add	r0, r0, #72	; 0x48
 8003234:	0a00000a 	beq	8003264 <restore_non_core_regs+0x4c>
 8003238:	eb0003a2 	bl	80040c8 <__gnu_Unwind_Restore_VFP_D>
 800323c:	e5943000 	ldr	r3, [r4]
 8003240:	e3130004 	tst	r3, #4
 8003244:	0a00000a 	beq	8003274 <restore_non_core_regs+0x5c>
 8003248:	e3130008 	tst	r3, #8
 800324c:	0a00000d 	beq	8003288 <restore_non_core_regs+0x70>
 8003250:	e3130010 	tst	r3, #16
 8003254:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8003258:	0b0003c4 	bleq	8004170 <__gnu_Unwind_Restore_WMMXC>
 800325c:	e8bd4010 	pop	{r4, lr}
 8003260:	e12fff1e 	bx	lr
 8003264:	eb000393 	bl	80040b8 <__gnu_Unwind_Restore_VFP>
 8003268:	e5943000 	ldr	r3, [r4]
 800326c:	e3130004 	tst	r3, #4
 8003270:	1afffff4 	bne	8003248 <restore_non_core_regs+0x30>
 8003274:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003278:	eb000396 	bl	80040d8 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 800327c:	e5943000 	ldr	r3, [r4]
 8003280:	e3130008 	tst	r3, #8
 8003284:	1afffff1 	bne	8003250 <restore_non_core_regs+0x38>
 8003288:	e2840e15 	add	r0, r4, #336	; 0x150
 800328c:	eb000395 	bl	80040e8 <__gnu_Unwind_Restore_WMMXD>
 8003290:	e5943000 	ldr	r3, [r4]
 8003294:	eaffffed 	b	8003250 <restore_non_core_regs+0x38>

08003298 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003298:	e5903000 	ldr	r3, [r0]
 800329c:	e3530000 	cmp	r3, #0
 80032a0:	10830000 	addne	r0, r3, r0
 80032a4:	01a00003 	moveq	r0, r3
 80032a8:	e12fff1e 	bx	lr

080032ac <__gnu_unwind_24bit.isra.1>:
 80032ac:	e3a00009 	mov	r0, #9
 80032b0:	e12fff1e 	bx	lr

080032b4 <_Unwind_DebugHook>:
 80032b4:	e12fff1e 	bx	lr

080032b8 <unwind_phase2>:
 80032b8:	e92d4070 	push	{r4, r5, r6, lr}
 80032bc:	e1a04000 	mov	r4, r0
 80032c0:	e1a05001 	mov	r5, r1
 80032c4:	ea000009 	b	80032f0 <unwind_phase2+0x38>
 80032c8:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 80032cc:	e3a00001 	mov	r0, #1
 80032d0:	e5843014 	str	r3, [r4, #20]
 80032d4:	e1a01004 	mov	r1, r4
 80032d8:	e1a02005 	mov	r2, r5
 80032dc:	e594c010 	ldr	ip, [r4, #16]
 80032e0:	e1a0e00f 	mov	lr, pc
 80032e4:	e12fff1c 	bx	ip
 80032e8:	e3500008 	cmp	r0, #8
 80032ec:	1a000005 	bne	8003308 <unwind_phase2+0x50>
 80032f0:	e1a00004 	mov	r0, r4
 80032f4:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80032f8:	ebffff7a 	bl	80030e8 <get_eit_entry>
 80032fc:	e2506000 	subs	r6, r0, #0
 8003300:	0afffff0 	beq	80032c8 <unwind_phase2+0x10>
 8003304:	eb000509 	bl	8004730 <abort>
 8003308:	e3500007 	cmp	r0, #7
 800330c:	1afffffc 	bne	8003304 <unwind_phase2+0x4c>
 8003310:	e1a00006 	mov	r0, r6
 8003314:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003318:	ebffffe5 	bl	80032b4 <_Unwind_DebugHook>
 800331c:	e2850004 	add	r0, r5, #4
 8003320:	eb00035d 	bl	800409c <__restore_core_regs>

08003324 <unwind_phase2_forced>:
 8003324:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003328:	e1a05000 	mov	r5, r0
 800332c:	e1a06002 	mov	r6, r2
 8003330:	e3a04000 	mov	r4, #0
 8003334:	e281e004 	add	lr, r1, #4
 8003338:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 800333c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003340:	e28dc00c 	add	ip, sp, #12
 8003344:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003348:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800334c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003350:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003354:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003358:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 800335c:	e1560004 	cmp	r6, r4
 8003360:	e595800c 	ldr	r8, [r5, #12]
 8003364:	e5959018 	ldr	r9, [r5, #24]
 8003368:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 800336c:	e1a00005 	mov	r0, r5
 8003370:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003374:	e58d4008 	str	r4, [sp, #8]
 8003378:	03a06009 	moveq	r6, #9
 800337c:	13a0600a 	movne	r6, #10
 8003380:	ebffff58 	bl	80030e8 <get_eit_entry>
 8003384:	e1a04000 	mov	r4, r0
 8003388:	e28d7008 	add	r7, sp, #8
 800338c:	e3540000 	cmp	r4, #0
 8003390:	0a00000e 	beq	80033d0 <unwind_phase2_forced+0xac>
 8003394:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003398:	e88d0280 	stm	sp, {r7, r9}
 800339c:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80033a0:	e3861010 	orr	r1, r6, #16
 80033a4:	e3a00001 	mov	r0, #1
 80033a8:	e1a02005 	mov	r2, r5
 80033ac:	e1a03005 	mov	r3, r5
 80033b0:	e1a0e00f 	mov	lr, pc
 80033b4:	e12fff18 	bx	r8
 80033b8:	e3500000 	cmp	r0, #0
 80033bc:	1a000029 	bne	8003468 <unwind_phase2_forced+0x144>
 80033c0:	e1a00004 	mov	r0, r4
 80033c4:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80033c8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80033cc:	e12fff1e 	bx	lr
 80033d0:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 80033d4:	e1a01007 	mov	r1, r7
 80033d8:	e5853014 	str	r3, [r5, #20]
 80033dc:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80033e0:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 80033e4:	eb0004d6 	bl	8004744 <memcpy>
 80033e8:	e1a01005 	mov	r1, r5
 80033ec:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 80033f0:	e1a00006 	mov	r0, r6
 80033f4:	e595c010 	ldr	ip, [r5, #16]
 80033f8:	e1a0e00f 	mov	lr, pc
 80033fc:	e12fff1c 	bx	ip
 8003400:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 8003404:	e1a0a000 	mov	sl, r0
 8003408:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800340c:	e88d0280 	stm	sp, {r7, r9}
 8003410:	e1a01006 	mov	r1, r6
 8003414:	e3a00001 	mov	r0, #1
 8003418:	e1a02005 	mov	r2, r5
 800341c:	e1a03005 	mov	r3, r5
 8003420:	e1a0e00f 	mov	lr, pc
 8003424:	e12fff18 	bx	r8
 8003428:	e3500000 	cmp	r0, #0
 800342c:	1a00000d 	bne	8003468 <unwind_phase2_forced+0x144>
 8003430:	e1a00007 	mov	r0, r7
 8003434:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8003438:	e3a02e1e 	mov	r2, #480	; 0x1e0
 800343c:	eb0004c0 	bl	8004744 <memcpy>
 8003440:	e35a0008 	cmp	sl, #8
 8003444:	1a000005 	bne	8003460 <unwind_phase2_forced+0x13c>
 8003448:	e1a00005 	mov	r0, r5
 800344c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003450:	ebffff24 	bl	80030e8 <get_eit_entry>
 8003454:	e3a06009 	mov	r6, #9
 8003458:	e1a04000 	mov	r4, r0
 800345c:	eaffffca 	b	800338c <unwind_phase2_forced+0x68>
 8003460:	e35a0007 	cmp	sl, #7
 8003464:	0a000003 	beq	8003478 <unwind_phase2_forced+0x154>
 8003468:	e3a00009 	mov	r0, #9
 800346c:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003470:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003474:	e12fff1e 	bx	lr
 8003478:	e1a00004 	mov	r0, r4
 800347c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003480:	ebffff8b 	bl	80032b4 <_Unwind_DebugHook>
 8003484:	e28d000c 	add	r0, sp, #12
 8003488:	eb000303 	bl	800409c <__restore_core_regs>

0800348c <_Unwind_GetCFA>:
 800348c:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8003490:	e12fff1e 	bx	lr

08003494 <__gnu_Unwind_RaiseException>:
 8003494:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003498:	e3e05000 	mvn	r5, #0
 800349c:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 80034a0:	e5813040 	str	r3, [r1, #64]	; 0x40
 80034a4:	e281e004 	add	lr, r1, #4
 80034a8:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 80034ac:	e1a07001 	mov	r7, r1
 80034b0:	e1a04000 	mov	r4, r0
 80034b4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034b8:	e28dc004 	add	ip, sp, #4
 80034bc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034c0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034c4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034c8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80034cc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80034d0:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80034d4:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 80034d8:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80034dc:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 80034e0:	ea000007 	b	8003504 <__gnu_Unwind_RaiseException+0x70>
 80034e4:	e1a01004 	mov	r1, r4
 80034e8:	e1a02006 	mov	r2, r6
 80034ec:	e594c010 	ldr	ip, [r4, #16]
 80034f0:	e1a0e00f 	mov	lr, pc
 80034f4:	e12fff1c 	bx	ip
 80034f8:	e3500008 	cmp	r0, #8
 80034fc:	e1a05000 	mov	r5, r0
 8003500:	1a000008 	bne	8003528 <__gnu_Unwind_RaiseException+0x94>
 8003504:	e1a00004 	mov	r0, r4
 8003508:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 800350c:	ebfffef5 	bl	80030e8 <get_eit_entry>
 8003510:	e3500000 	cmp	r0, #0
 8003514:	0afffff2 	beq	80034e4 <__gnu_Unwind_RaiseException+0x50>
 8003518:	e3a00009 	mov	r0, #9
 800351c:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 8003520:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8003524:	e12fff1e 	bx	lr
 8003528:	e1a00006 	mov	r0, r6
 800352c:	ebffff39 	bl	8003218 <restore_non_core_regs>
 8003530:	e3550006 	cmp	r5, #6
 8003534:	1afffff7 	bne	8003518 <__gnu_Unwind_RaiseException+0x84>
 8003538:	e1a00004 	mov	r0, r4
 800353c:	e1a01007 	mov	r1, r7
 8003540:	ebffff5c 	bl	80032b8 <unwind_phase2>

08003544 <__gnu_Unwind_ForcedUnwind>:
 8003544:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003548:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 800354c:	e580100c 	str	r1, [r0, #12]
 8003550:	e5802018 	str	r2, [r0, #24]
 8003554:	e1a01003 	mov	r1, r3
 8003558:	e583e040 	str	lr, [r3, #64]	; 0x40
 800355c:	e3a02000 	mov	r2, #0
 8003560:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003564:	eaffff6e 	b	8003324 <unwind_phase2_forced>

08003568 <__gnu_Unwind_Resume>:
 8003568:	e92d4070 	push	{r4, r5, r6, lr}
 800356c:	e590600c 	ldr	r6, [r0, #12]
 8003570:	e5903014 	ldr	r3, [r0, #20]
 8003574:	e3560000 	cmp	r6, #0
 8003578:	e1a04000 	mov	r4, r0
 800357c:	e1a05001 	mov	r5, r1
 8003580:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003584:	0a000002 	beq	8003594 <__gnu_Unwind_Resume+0x2c>
 8003588:	e3a02001 	mov	r2, #1
 800358c:	ebffff64 	bl	8003324 <unwind_phase2_forced>
 8003590:	eb000466 	bl	8004730 <abort>
 8003594:	e3a00002 	mov	r0, #2
 8003598:	e1a01004 	mov	r1, r4
 800359c:	e1a02005 	mov	r2, r5
 80035a0:	e594c010 	ldr	ip, [r4, #16]
 80035a4:	e1a0e00f 	mov	lr, pc
 80035a8:	e12fff1c 	bx	ip
 80035ac:	e3500007 	cmp	r0, #7
 80035b0:	0a000004 	beq	80035c8 <__gnu_Unwind_Resume+0x60>
 80035b4:	e3500008 	cmp	r0, #8
 80035b8:	01a00004 	moveq	r0, r4
 80035bc:	01a01005 	moveq	r1, r5
 80035c0:	0bffff3c 	bleq	80032b8 <unwind_phase2>
 80035c4:	eb000459 	bl	8004730 <abort>
 80035c8:	e1a00006 	mov	r0, r6
 80035cc:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80035d0:	ebffff37 	bl	80032b4 <_Unwind_DebugHook>
 80035d4:	e2850004 	add	r0, r5, #4
 80035d8:	eb0002af 	bl	800409c <__restore_core_regs>

080035dc <__gnu_Unwind_Resume_or_Rethrow>:
 80035dc:	e590300c 	ldr	r3, [r0, #12]
 80035e0:	e3530000 	cmp	r3, #0
 80035e4:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 80035e8:	13a02000 	movne	r2, #0
 80035ec:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80035f0:	1affff4b 	bne	8003324 <unwind_phase2_forced>
 80035f4:	eaffffa6 	b	8003494 <__gnu_Unwind_RaiseException>

080035f8 <_Unwind_Complete>:
 80035f8:	e12fff1e 	bx	lr

080035fc <_Unwind_DeleteException>:
 80035fc:	e5903008 	ldr	r3, [r0, #8]
 8003600:	e3530000 	cmp	r3, #0
 8003604:	012fff1e 	bxeq	lr
 8003608:	e1a01000 	mov	r1, r0
 800360c:	e3a00001 	mov	r0, #1
 8003610:	e12fff13 	bx	r3

08003614 <_Unwind_VRS_Get>:
 8003614:	e3510004 	cmp	r1, #4
 8003618:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 800361c:	ea000009 	b	8003648 <_Unwind_VRS_Get+0x34>
 8003620:	08003634 	.word	0x08003634
 8003624:	08003650 	.word	0x08003650
 8003628:	08003648 	.word	0x08003648
 800362c:	08003650 	.word	0x08003650
 8003630:	08003650 	.word	0x08003650
 8003634:	e352000f 	cmp	r2, #15
 8003638:	93530000 	cmpls	r3, #0
 800363c:	13a03001 	movne	r3, #1
 8003640:	03a03000 	moveq	r3, #0
 8003644:	0a000003 	beq	8003658 <_Unwind_VRS_Get+0x44>
 8003648:	e3a00002 	mov	r0, #2
 800364c:	e12fff1e 	bx	lr
 8003650:	e3a00001 	mov	r0, #1
 8003654:	e12fff1e 	bx	lr
 8003658:	e0802102 	add	r2, r0, r2, lsl #2
 800365c:	e5922004 	ldr	r2, [r2, #4]
 8003660:	e1a00003 	mov	r0, r3
 8003664:	e59d3000 	ldr	r3, [sp]
 8003668:	e5832000 	str	r2, [r3]
 800366c:	e12fff1e 	bx	lr

08003670 <_Unwind_GetGR>:
 8003670:	e1a02001 	mov	r2, r1
 8003674:	e3a01000 	mov	r1, #0
 8003678:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800367c:	e24dd014 	sub	sp, sp, #20
 8003680:	e28dc00c 	add	ip, sp, #12
 8003684:	e1a03001 	mov	r3, r1
 8003688:	e58dc000 	str	ip, [sp]
 800368c:	ebffffe0 	bl	8003614 <_Unwind_VRS_Get>
 8003690:	e59d000c 	ldr	r0, [sp, #12]
 8003694:	e28dd014 	add	sp, sp, #20
 8003698:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 800369c:	e12fff1e 	bx	lr

080036a0 <_Unwind_VRS_Set>:
 80036a0:	e3510004 	cmp	r1, #4
 80036a4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80036a8:	ea000009 	b	80036d4 <_Unwind_VRS_Set+0x34>
 80036ac:	080036c0 	.word	0x080036c0
 80036b0:	080036dc 	.word	0x080036dc
 80036b4:	080036d4 	.word	0x080036d4
 80036b8:	080036dc 	.word	0x080036dc
 80036bc:	080036dc 	.word	0x080036dc
 80036c0:	e352000f 	cmp	r2, #15
 80036c4:	93530000 	cmpls	r3, #0
 80036c8:	13a03001 	movne	r3, #1
 80036cc:	03a03000 	moveq	r3, #0
 80036d0:	0a000003 	beq	80036e4 <_Unwind_VRS_Set+0x44>
 80036d4:	e3a00002 	mov	r0, #2
 80036d8:	e12fff1e 	bx	lr
 80036dc:	e3a00001 	mov	r0, #1
 80036e0:	e12fff1e 	bx	lr
 80036e4:	e59d1000 	ldr	r1, [sp]
 80036e8:	e5911000 	ldr	r1, [r1]
 80036ec:	e0802102 	add	r2, r0, r2, lsl #2
 80036f0:	e5821004 	str	r1, [r2, #4]
 80036f4:	e1a00003 	mov	r0, r3
 80036f8:	e12fff1e 	bx	lr

080036fc <_Unwind_SetGR>:
 80036fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003700:	e1a0e001 	mov	lr, r1
 8003704:	e3a01000 	mov	r1, #0
 8003708:	e24dd014 	sub	sp, sp, #20
 800370c:	e28dc010 	add	ip, sp, #16
 8003710:	e52c2004 	str	r2, [ip, #-4]!
 8003714:	e1a03001 	mov	r3, r1
 8003718:	e58dc000 	str	ip, [sp]
 800371c:	e1a0200e 	mov	r2, lr
 8003720:	ebffffde 	bl	80036a0 <_Unwind_VRS_Set>
 8003724:	e28dd014 	add	sp, sp, #20
 8003728:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 800372c:	e12fff1e 	bx	lr

08003730 <__gnu_Unwind_Backtrace>:
 8003730:	e92d4070 	push	{r4, r5, r6, lr}
 8003734:	e3e04000 	mvn	r4, #0
 8003738:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 800373c:	e5823040 	str	r3, [r2, #64]	; 0x40
 8003740:	e282c004 	add	ip, r2, #4
 8003744:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 8003748:	e1a06000 	mov	r6, r0
 800374c:	e1a05001 	mov	r5, r1
 8003750:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003754:	e28de05c 	add	lr, sp, #92	; 0x5c
 8003758:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 800375c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003760:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003764:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003768:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 800376c:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8003770:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003774:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003778:	ea000013 	b	80037cc <__gnu_Unwind_Backtrace+0x9c>
 800377c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003780:	e3a0100c 	mov	r1, #12
 8003784:	e1a0200d 	mov	r2, sp
 8003788:	ebffffdb 	bl	80036fc <_Unwind_SetGR>
 800378c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003790:	e1a01005 	mov	r1, r5
 8003794:	e1a0e00f 	mov	lr, pc
 8003798:	e12fff16 	bx	r6
 800379c:	e3500000 	cmp	r0, #0
 80037a0:	1a00000e 	bne	80037e0 <__gnu_Unwind_Backtrace+0xb0>
 80037a4:	e3a00008 	mov	r0, #8
 80037a8:	e1a0100d 	mov	r1, sp
 80037ac:	e28d2058 	add	r2, sp, #88	; 0x58
 80037b0:	e59dc010 	ldr	ip, [sp, #16]
 80037b4:	e1a0e00f 	mov	lr, pc
 80037b8:	e12fff1c 	bx	ip
 80037bc:	e2403005 	sub	r3, r0, #5
 80037c0:	e31300fb 	tst	r3, #251	; 0xfb
 80037c4:	e1a04000 	mov	r4, r0
 80037c8:	0a000005 	beq	80037e4 <__gnu_Unwind_Backtrace+0xb4>
 80037cc:	e1a0000d 	mov	r0, sp
 80037d0:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 80037d4:	ebfffe43 	bl	80030e8 <get_eit_entry>
 80037d8:	e3500000 	cmp	r0, #0
 80037dc:	0affffe6 	beq	800377c <__gnu_Unwind_Backtrace+0x4c>
 80037e0:	e3a04009 	mov	r4, #9
 80037e4:	e28d0058 	add	r0, sp, #88	; 0x58
 80037e8:	ebfffe8a 	bl	8003218 <restore_non_core_regs>
 80037ec:	e1a00004 	mov	r0, r4
 80037f0:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80037f4:	e8bd4070 	pop	{r4, r5, r6, lr}
 80037f8:	e12fff1e 	bx	lr

080037fc <__gnu_unwind_pr_common>:
 80037fc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003800:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 8003804:	e1a05001 	mov	r5, r1
 8003808:	e5961000 	ldr	r1, [r6]
 800380c:	e24dd024 	sub	sp, sp, #36	; 0x24
 8003810:	e2866004 	add	r6, r6, #4
 8003814:	e2537000 	subs	r7, r3, #0
 8003818:	e58d0004 	str	r0, [sp, #4]
 800381c:	e1a09002 	mov	r9, r2
 8003820:	e58d1014 	str	r1, [sp, #20]
 8003824:	e58d6018 	str	r6, [sp, #24]
 8003828:	e2008003 	and	r8, r0, #3
 800382c:	1a000076 	bne	8003a0c <__gnu_unwind_pr_common+0x210>
 8003830:	e3a03003 	mov	r3, #3
 8003834:	e1a01401 	lsl	r1, r1, #8
 8003838:	e58d1014 	str	r1, [sp, #20]
 800383c:	e5cd701d 	strb	r7, [sp, #29]
 8003840:	e5cd301c 	strb	r3, [sp, #28]
 8003844:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 8003848:	e3580002 	cmp	r8, #2
 800384c:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003850:	e2133001 	ands	r3, r3, #1
 8003854:	1a000061 	bne	80039e0 <__gnu_unwind_pr_common+0x1e4>
 8003858:	e58d3000 	str	r3, [sp]
 800385c:	e2853058 	add	r3, r5, #88	; 0x58
 8003860:	e58d3008 	str	r3, [sp, #8]
 8003864:	e5964000 	ldr	r4, [r6]
 8003868:	e3540000 	cmp	r4, #0
 800386c:	0a00005d 	beq	80039e8 <__gnu_unwind_pr_common+0x1ec>
 8003870:	e3570002 	cmp	r7, #2
 8003874:	0596b004 	ldreq	fp, [r6, #4]
 8003878:	11d6b0b2 	ldrhne	fp, [r6, #2]
 800387c:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003880:	e3cba001 	bic	sl, fp, #1
 8003884:	e1a00009 	mov	r0, r9
 8003888:	e3a0100f 	mov	r1, #15
 800388c:	11d640b0 	ldrhne	r4, [r6]
 8003890:	02866008 	addeq	r6, r6, #8
 8003894:	12866004 	addne	r6, r6, #4
 8003898:	e08aa003 	add	sl, sl, r3
 800389c:	ebffff73 	bl	8003670 <_Unwind_GetGR>
 80038a0:	e15a0000 	cmp	sl, r0
 80038a4:	e20bb001 	and	fp, fp, #1
 80038a8:	8a00003c 	bhi	80039a0 <__gnu_unwind_pr_common+0x1a4>
 80038ac:	e3c43001 	bic	r3, r4, #1
 80038b0:	e08aa003 	add	sl, sl, r3
 80038b4:	e150000a 	cmp	r0, sl
 80038b8:	2a000038 	bcs	80039a0 <__gnu_unwind_pr_common+0x1a4>
 80038bc:	e2044001 	and	r4, r4, #1
 80038c0:	e184408b 	orr	r4, r4, fp, lsl #1
 80038c4:	e3540001 	cmp	r4, #1
 80038c8:	0a00005e 	beq	8003a48 <__gnu_unwind_pr_common+0x24c>
 80038cc:	3a000059 	bcc	8003a38 <__gnu_unwind_pr_common+0x23c>
 80038d0:	e3540002 	cmp	r4, #2
 80038d4:	1a000048 	bne	80039fc <__gnu_unwind_pr_common+0x200>
 80038d8:	e5963000 	ldr	r3, [r6]
 80038dc:	e3580000 	cmp	r8, #0
 80038e0:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 80038e4:	1a000090 	bne	8003b2c <__gnu_unwind_pr_common+0x330>
 80038e8:	e59d2004 	ldr	r2, [sp, #4]
 80038ec:	e3120008 	tst	r2, #8
 80038f0:	03a02001 	moveq	r2, #1
 80038f4:	13a02000 	movne	r2, #0
 80038f8:	e3540000 	cmp	r4, #0
 80038fc:	03822001 	orreq	r2, r2, #1
 8003900:	e3520000 	cmp	r2, #0
 8003904:	0a000030 	beq	80039cc <__gnu_unwind_pr_common+0x1d0>
 8003908:	e3540000 	cmp	r4, #0
 800390c:	0a00001a 	beq	800397c <__gnu_unwind_pr_common+0x180>
 8003910:	e1a0a007 	mov	sl, r7
 8003914:	e286b004 	add	fp, r6, #4
 8003918:	e1a07004 	mov	r7, r4
 800391c:	e58d800c 	str	r8, [sp, #12]
 8003920:	e59d4008 	ldr	r4, [sp, #8]
 8003924:	ea000003 	b	8003938 <__gnu_unwind_pr_common+0x13c>
 8003928:	e1530007 	cmp	r3, r7
 800392c:	e1a08003 	mov	r8, r3
 8003930:	e28bb004 	add	fp, fp, #4
 8003934:	0a000010 	beq	800397c <__gnu_unwind_pr_common+0x180>
 8003938:	e1a0000b 	mov	r0, fp
 800393c:	e58d4010 	str	r4, [sp, #16]
 8003940:	ebfffe54 	bl	8003298 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003944:	e28d3010 	add	r3, sp, #16
 8003948:	e1a01000 	mov	r1, r0
 800394c:	e3a02000 	mov	r2, #0
 8003950:	e1a00005 	mov	r0, r5
 8003954:	e320f000 	nop	{0}
 8003958:	e3500000 	cmp	r0, #0
 800395c:	e2883001 	add	r3, r8, #1
 8003960:	0afffff0 	beq	8003928 <__gnu_unwind_pr_common+0x12c>
 8003964:	e1a04007 	mov	r4, r7
 8003968:	e1a0700a 	mov	r7, sl
 800396c:	e1a0a008 	mov	sl, r8
 8003970:	e15a0004 	cmp	sl, r4
 8003974:	e59d800c 	ldr	r8, [sp, #12]
 8003978:	1a000071 	bne	8003b44 <__gnu_unwind_pr_common+0x348>
 800397c:	e1a00009 	mov	r0, r9
 8003980:	e3a0100d 	mov	r1, #13
 8003984:	ebffff39 	bl	8003670 <_Unwind_GetGR>
 8003988:	e59d3010 	ldr	r3, [sp, #16]
 800398c:	e5850020 	str	r0, [r5, #32]
 8003990:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003994:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003998:	e3a00006 	mov	r0, #6
 800399c:	ea000017 	b	8003a00 <__gnu_unwind_pr_common+0x204>
 80039a0:	e2044001 	and	r4, r4, #1
 80039a4:	e184408b 	orr	r4, r4, fp, lsl #1
 80039a8:	e3540001 	cmp	r4, #1
 80039ac:	0a000044 	beq	8003ac4 <__gnu_unwind_pr_common+0x2c8>
 80039b0:	3a000022 	bcc	8003a40 <__gnu_unwind_pr_common+0x244>
 80039b4:	e3540002 	cmp	r4, #2
 80039b8:	1a00000f 	bne	80039fc <__gnu_unwind_pr_common+0x200>
 80039bc:	e5963000 	ldr	r3, [r6]
 80039c0:	e3580000 	cmp	r8, #0
 80039c4:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 80039c8:	1a000057 	bne	8003b2c <__gnu_unwind_pr_common+0x330>
 80039cc:	e3530000 	cmp	r3, #0
 80039d0:	b2866004 	addlt	r6, r6, #4
 80039d4:	e2844001 	add	r4, r4, #1
 80039d8:	e0866104 	add	r6, r6, r4, lsl #2
 80039dc:	eaffffa0 	b	8003864 <__gnu_unwind_pr_common+0x68>
 80039e0:	e3a03000 	mov	r3, #0
 80039e4:	e58d3000 	str	r3, [sp]
 80039e8:	e3570002 	cmp	r7, #2
 80039ec:	da000038 	ble	8003ad4 <__gnu_unwind_pr_common+0x2d8>
 80039f0:	ebfffe2d 	bl	80032ac <__gnu_unwind_24bit.isra.1>
 80039f4:	e3500000 	cmp	r0, #0
 80039f8:	0a00003a 	beq	8003ae8 <__gnu_unwind_pr_common+0x2ec>
 80039fc:	e3a00009 	mov	r0, #9
 8003a00:	e28dd024 	add	sp, sp, #36	; 0x24
 8003a04:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003a08:	e12fff1e 	bx	lr
 8003a0c:	e3570002 	cmp	r7, #2
 8003a10:	caffff8b 	bgt	8003844 <__gnu_unwind_pr_common+0x48>
 8003a14:	e3a02002 	mov	r2, #2
 8003a18:	e1a03821 	lsr	r3, r1, #16
 8003a1c:	e5cd301d 	strb	r3, [sp, #29]
 8003a20:	e1a01801 	lsl	r1, r1, #16
 8003a24:	e20330ff 	and	r3, r3, #255	; 0xff
 8003a28:	e58d1014 	str	r1, [sp, #20]
 8003a2c:	e5cd201c 	strb	r2, [sp, #28]
 8003a30:	e0866103 	add	r6, r6, r3, lsl #2
 8003a34:	eaffff82 	b	8003844 <__gnu_unwind_pr_common+0x48>
 8003a38:	e3580000 	cmp	r8, #0
 8003a3c:	1a000070 	bne	8003c04 <__gnu_unwind_pr_common+0x408>
 8003a40:	e2866004 	add	r6, r6, #4
 8003a44:	eaffff86 	b	8003864 <__gnu_unwind_pr_common+0x68>
 8003a48:	e3580000 	cmp	r8, #0
 8003a4c:	1a00003e 	bne	8003b4c <__gnu_unwind_pr_common+0x350>
 8003a50:	e896000c 	ldm	r6, {r2, r3}
 8003a54:	e3730002 	cmn	r3, #2
 8003a58:	e1a04fa2 	lsr	r4, r2, #31
 8003a5c:	0affffe6 	beq	80039fc <__gnu_unwind_pr_common+0x200>
 8003a60:	e3730001 	cmn	r3, #1
 8003a64:	e59d3008 	ldr	r3, [sp, #8]
 8003a68:	e58d3010 	str	r3, [sp, #16]
 8003a6c:	0a00005b 	beq	8003be0 <__gnu_unwind_pr_common+0x3e4>
 8003a70:	e2860004 	add	r0, r6, #4
 8003a74:	ebfffe07 	bl	8003298 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003a78:	e1a02004 	mov	r2, r4
 8003a7c:	e1a01000 	mov	r1, r0
 8003a80:	e28d3010 	add	r3, sp, #16
 8003a84:	e1a00005 	mov	r0, r5
 8003a88:	e320f000 	nop	{0}
 8003a8c:	e3500000 	cmp	r0, #0
 8003a90:	0a00000d 	beq	8003acc <__gnu_unwind_pr_common+0x2d0>
 8003a94:	e1a04000 	mov	r4, r0
 8003a98:	e3a0100d 	mov	r1, #13
 8003a9c:	e1a00009 	mov	r0, r9
 8003aa0:	ebfffef2 	bl	8003670 <_Unwind_GetGR>
 8003aa4:	e3540002 	cmp	r4, #2
 8003aa8:	e5850020 	str	r0, [r5, #32]
 8003aac:	1a00004f 	bne	8003bf0 <__gnu_unwind_pr_common+0x3f4>
 8003ab0:	e1a03005 	mov	r3, r5
 8003ab4:	e59d2010 	ldr	r2, [sp, #16]
 8003ab8:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003abc:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003ac0:	ea00004c 	b	8003bf8 <__gnu_unwind_pr_common+0x3fc>
 8003ac4:	e3580000 	cmp	r8, #0
 8003ac8:	1a00001f 	bne	8003b4c <__gnu_unwind_pr_common+0x350>
 8003acc:	e2866008 	add	r6, r6, #8
 8003ad0:	eaffff63 	b	8003864 <__gnu_unwind_pr_common+0x68>
 8003ad4:	e1a00009 	mov	r0, r9
 8003ad8:	e28d1014 	add	r1, sp, #20
 8003adc:	eb0001ff 	bl	80042e0 <__gnu_unwind_execute>
 8003ae0:	e3500000 	cmp	r0, #0
 8003ae4:	1affffc4 	bne	80039fc <__gnu_unwind_pr_common+0x200>
 8003ae8:	e59d3000 	ldr	r3, [sp]
 8003aec:	e3530000 	cmp	r3, #0
 8003af0:	03a00008 	moveq	r0, #8
 8003af4:	0affffc1 	beq	8003a00 <__gnu_unwind_pr_common+0x204>
 8003af8:	e3a0100f 	mov	r1, #15
 8003afc:	e1a00009 	mov	r0, r9
 8003b00:	ebfffeda 	bl	8003670 <_Unwind_GetGR>
 8003b04:	e3a0100e 	mov	r1, #14
 8003b08:	e1a02000 	mov	r2, r0
 8003b0c:	e1a00009 	mov	r0, r9
 8003b10:	ebfffef9 	bl	80036fc <_Unwind_SetGR>
 8003b14:	e1a00009 	mov	r0, r9
 8003b18:	e3a0100f 	mov	r1, #15
 8003b1c:	e59f2128 	ldr	r2, [pc, #296]	; 8003c4c <__gnu_unwind_pr_common+0x450>
 8003b20:	ebfffef5 	bl	80036fc <_Unwind_SetGR>
 8003b24:	e3a00007 	mov	r0, #7
 8003b28:	eaffffb4 	b	8003a00 <__gnu_unwind_pr_common+0x204>
 8003b2c:	e1a00009 	mov	r0, r9
 8003b30:	e3a0100d 	mov	r1, #13
 8003b34:	e595a020 	ldr	sl, [r5, #32]
 8003b38:	ebfffecc 	bl	8003670 <_Unwind_GetGR>
 8003b3c:	e15a0000 	cmp	sl, r0
 8003b40:	0a000016 	beq	8003ba0 <__gnu_unwind_pr_common+0x3a4>
 8003b44:	e5963000 	ldr	r3, [r6]
 8003b48:	eaffff9f 	b	80039cc <__gnu_unwind_pr_common+0x1d0>
 8003b4c:	e1a00009 	mov	r0, r9
 8003b50:	e3a0100d 	mov	r1, #13
 8003b54:	e5954020 	ldr	r4, [r5, #32]
 8003b58:	ebfffec4 	bl	8003670 <_Unwind_GetGR>
 8003b5c:	e1540000 	cmp	r4, r0
 8003b60:	1affffd9 	bne	8003acc <__gnu_unwind_pr_common+0x2d0>
 8003b64:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003b68:	e1560003 	cmp	r6, r3
 8003b6c:	1affffd6 	bne	8003acc <__gnu_unwind_pr_common+0x2d0>
 8003b70:	e1a00006 	mov	r0, r6
 8003b74:	ebfffd12 	bl	8002fc4 <selfrel_offset31>
 8003b78:	e3a0100f 	mov	r1, #15
 8003b7c:	e1a02000 	mov	r2, r0
 8003b80:	e1a00009 	mov	r0, r9
 8003b84:	ebfffedc 	bl	80036fc <_Unwind_SetGR>
 8003b88:	e1a00009 	mov	r0, r9
 8003b8c:	e1a02005 	mov	r2, r5
 8003b90:	e3a01000 	mov	r1, #0
 8003b94:	ebfffed8 	bl	80036fc <_Unwind_SetGR>
 8003b98:	e3a00007 	mov	r0, #7
 8003b9c:	eaffff97 	b	8003a00 <__gnu_unwind_pr_common+0x204>
 8003ba0:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003ba4:	e1560003 	cmp	r6, r3
 8003ba8:	1affffe5 	bne	8003b44 <__gnu_unwind_pr_common+0x348>
 8003bac:	e3a02000 	mov	r2, #0
 8003bb0:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003bb4:	e3a02004 	mov	r2, #4
 8003bb8:	e2863004 	add	r3, r6, #4
 8003bbc:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003bc0:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003bc4:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003bc8:	e5963000 	ldr	r3, [r6]
 8003bcc:	e3530000 	cmp	r3, #0
 8003bd0:	ba00001a 	blt	8003c40 <__gnu_unwind_pr_common+0x444>
 8003bd4:	e3a03001 	mov	r3, #1
 8003bd8:	e58d3000 	str	r3, [sp]
 8003bdc:	eaffff7c 	b	80039d4 <__gnu_unwind_pr_common+0x1d8>
 8003be0:	e1a00009 	mov	r0, r9
 8003be4:	e3a0100d 	mov	r1, #13
 8003be8:	ebfffea0 	bl	8003670 <_Unwind_GetGR>
 8003bec:	e5850020 	str	r0, [r5, #32]
 8003bf0:	e59d3010 	ldr	r3, [sp, #16]
 8003bf4:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003bf8:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003bfc:	e3a00006 	mov	r0, #6
 8003c00:	eaffff7e 	b	8003a00 <__gnu_unwind_pr_common+0x204>
 8003c04:	e1a00006 	mov	r0, r6
 8003c08:	ebfffced 	bl	8002fc4 <selfrel_offset31>
 8003c0c:	e2866004 	add	r6, r6, #4
 8003c10:	e1a04000 	mov	r4, r0
 8003c14:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003c18:	e1a00005 	mov	r0, r5
 8003c1c:	e320f000 	nop	{0}
 8003c20:	e3500000 	cmp	r0, #0
 8003c24:	0affff74 	beq	80039fc <__gnu_unwind_pr_common+0x200>
 8003c28:	e1a00009 	mov	r0, r9
 8003c2c:	e1a02004 	mov	r2, r4
 8003c30:	e3a0100f 	mov	r1, #15
 8003c34:	ebfffeb0 	bl	80036fc <_Unwind_SetGR>
 8003c38:	e3a00007 	mov	r0, #7
 8003c3c:	eaffff6f 	b	8003a00 <__gnu_unwind_pr_common+0x204>
 8003c40:	e2840001 	add	r0, r4, #1
 8003c44:	e0860100 	add	r0, r6, r0, lsl #2
 8003c48:	eaffffc9 	b	8003b74 <__gnu_unwind_pr_common+0x378>
 8003c4c:	00000000 	.word	0x00000000

08003c50 <__aeabi_unwind_cpp_pr0>:
 8003c50:	e3a03000 	mov	r3, #0
 8003c54:	eafffee8 	b	80037fc <__gnu_unwind_pr_common>

08003c58 <__aeabi_unwind_cpp_pr1>:
 8003c58:	e3a03001 	mov	r3, #1
 8003c5c:	eafffee6 	b	80037fc <__gnu_unwind_pr_common>

08003c60 <__aeabi_unwind_cpp_pr2>:
 8003c60:	e3a03002 	mov	r3, #2
 8003c64:	eafffee4 	b	80037fc <__gnu_unwind_pr_common>

08003c68 <_Unwind_VRS_Pop>:
 8003c68:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003c6c:	e1a04000 	mov	r4, r0
 8003c70:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003c74:	e3510004 	cmp	r1, #4
 8003c78:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003c7c:	ea000006 	b	8003c9c <_Unwind_VRS_Pop+0x34>
 8003c80:	08003e7c 	.word	0x08003e7c
 8003c84:	08003d14 	.word	0x08003d14
 8003c88:	08003c9c 	.word	0x08003c9c
 8003c8c:	08003c94 	.word	0x08003c94
 8003c90:	08003cac 	.word	0x08003cac
 8003c94:	e3530003 	cmp	r3, #3
 8003c98:	0a00009c 	beq	8003f10 <_Unwind_VRS_Pop+0x2a8>
 8003c9c:	e3a00002 	mov	r0, #2
 8003ca0:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003ca4:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003ca8:	e12fff1e 	bx	lr
 8003cac:	e3520010 	cmp	r2, #16
 8003cb0:	93530000 	cmpls	r3, #0
 8003cb4:	1afffff8 	bne	8003c9c <_Unwind_VRS_Pop+0x34>
 8003cb8:	e5903000 	ldr	r3, [r0]
 8003cbc:	e3130010 	tst	r3, #16
 8003cc0:	1a0000b1 	bne	8003f8c <_Unwind_VRS_Pop+0x324>
 8003cc4:	e28d5088 	add	r5, sp, #136	; 0x88
 8003cc8:	e1a00005 	mov	r0, r5
 8003ccc:	e58d2004 	str	r2, [sp, #4]
 8003cd0:	eb00012b 	bl	8004184 <__gnu_Unwind_Save_WMMXC>
 8003cd4:	e3a03000 	mov	r3, #0
 8003cd8:	e3a00001 	mov	r0, #1
 8003cdc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003ce0:	e59d2004 	ldr	r2, [sp, #4]
 8003ce4:	e012c310 	ands	ip, r2, r0, lsl r3
 8003ce8:	1591c000 	ldrne	ip, [r1]
 8003cec:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003cf0:	e2833001 	add	r3, r3, #1
 8003cf4:	12811004 	addne	r1, r1, #4
 8003cf8:	e3530004 	cmp	r3, #4
 8003cfc:	1afffff8 	bne	8003ce4 <_Unwind_VRS_Pop+0x7c>
 8003d00:	e1a00005 	mov	r0, r5
 8003d04:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003d08:	eb000118 	bl	8004170 <__gnu_Unwind_Restore_WMMXC>
 8003d0c:	e3a00000 	mov	r0, #0
 8003d10:	eaffffe2 	b	8003ca0 <_Unwind_VRS_Pop+0x38>
 8003d14:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003d18:	e3510001 	cmp	r1, #1
 8003d1c:	1affffde 	bne	8003c9c <_Unwind_VRS_Pop+0x34>
 8003d20:	e1a06802 	lsl	r6, r2, #16
 8003d24:	e1a06826 	lsr	r6, r6, #16
 8003d28:	e1a08822 	lsr	r8, r2, #16
 8003d2c:	e3530001 	cmp	r3, #1
 8003d30:	e0861008 	add	r1, r6, r8
 8003d34:	0a000063 	beq	8003ec8 <_Unwind_VRS_Pop+0x260>
 8003d38:	e3510020 	cmp	r1, #32
 8003d3c:	8affffd6 	bhi	8003c9c <_Unwind_VRS_Pop+0x34>
 8003d40:	e358000f 	cmp	r8, #15
 8003d44:	9a000096 	bls	8003fa4 <_Unwind_VRS_Pop+0x33c>
 8003d48:	e1a07006 	mov	r7, r6
 8003d4c:	e3570000 	cmp	r7, #0
 8003d50:	13530005 	cmpne	r3, #5
 8003d54:	13a09001 	movne	r9, #1
 8003d58:	03a09000 	moveq	r9, #0
 8003d5c:	1affffce 	bne	8003c9c <_Unwind_VRS_Pop+0x34>
 8003d60:	e358000f 	cmp	r8, #15
 8003d64:	8a000096 	bhi	8003fc4 <_Unwind_VRS_Pop+0x35c>
 8003d68:	e5942000 	ldr	r2, [r4]
 8003d6c:	e3120001 	tst	r2, #1
 8003d70:	0a000093 	beq	8003fc4 <_Unwind_VRS_Pop+0x35c>
 8003d74:	e3530005 	cmp	r3, #5
 8003d78:	e3c23001 	bic	r3, r2, #1
 8003d7c:	e5843000 	str	r3, [r4]
 8003d80:	0a0000bb 	beq	8004074 <_Unwind_VRS_Pop+0x40c>
 8003d84:	e1a00004 	mov	r0, r4
 8003d88:	e3c22003 	bic	r2, r2, #3
 8003d8c:	e4802048 	str	r2, [r0], #72	; 0x48
 8003d90:	eb0000ca 	bl	80040c0 <__gnu_Unwind_Save_VFP>
 8003d94:	e3570000 	cmp	r7, #0
 8003d98:	0a000099 	beq	8004004 <_Unwind_VRS_Pop+0x39c>
 8003d9c:	e5943000 	ldr	r3, [r4]
 8003da0:	e3130004 	tst	r3, #4
 8003da4:	1a0000ad 	bne	8004060 <_Unwind_VRS_Pop+0x3f8>
 8003da8:	e3590000 	cmp	r9, #0
 8003dac:	1a0000b7 	bne	8004090 <_Unwind_VRS_Pop+0x428>
 8003db0:	e358000f 	cmp	r8, #15
 8003db4:	8a000004 	bhi	8003dcc <_Unwind_VRS_Pop+0x164>
 8003db8:	e28d5088 	add	r5, sp, #136	; 0x88
 8003dbc:	e1a00005 	mov	r0, r5
 8003dc0:	eb0000c2 	bl	80040d0 <__gnu_Unwind_Save_VFP_D>
 8003dc4:	e3570000 	cmp	r7, #0
 8003dc8:	0a00009b 	beq	800403c <_Unwind_VRS_Pop+0x3d4>
 8003dcc:	e28d0008 	add	r0, sp, #8
 8003dd0:	eb0000c2 	bl	80040e0 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003dd4:	e2683010 	rsb	r3, r8, #16
 8003dd8:	e3530000 	cmp	r3, #0
 8003ddc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003de0:	da00000d 	ble	8003e1c <_Unwind_VRS_Pop+0x1b4>
 8003de4:	e28d5088 	add	r5, sp, #136	; 0x88
 8003de8:	e1a00001 	mov	r0, r1
 8003dec:	e1a0e083 	lsl	lr, r3, #1
 8003df0:	e0852188 	add	r2, r5, r8, lsl #3
 8003df4:	e2422004 	sub	r2, r2, #4
 8003df8:	e24e3001 	sub	r3, lr, #1
 8003dfc:	e2433001 	sub	r3, r3, #1
 8003e00:	e490c004 	ldr	ip, [r0], #4
 8003e04:	e3730001 	cmn	r3, #1
 8003e08:	e5a2c004 	str	ip, [r2, #4]!
 8003e0c:	1afffffa 	bne	8003dfc <_Unwind_VRS_Pop+0x194>
 8003e10:	e3570000 	cmp	r7, #0
 8003e14:	e081110e 	add	r1, r1, lr, lsl #2
 8003e18:	0a00000d 	beq	8003e54 <_Unwind_VRS_Pop+0x1ec>
 8003e1c:	e3580010 	cmp	r8, #16
 8003e20:	21a02008 	movcs	r2, r8
 8003e24:	33a02010 	movcc	r2, #16
 8003e28:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003e2c:	e0832182 	add	r2, r3, r2, lsl #3
 8003e30:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003e34:	e1a00087 	lsl	r0, r7, #1
 8003e38:	e1a03001 	mov	r3, r1
 8003e3c:	e2422004 	sub	r2, r2, #4
 8003e40:	e0811100 	add	r1, r1, r0, lsl #2
 8003e44:	e4930004 	ldr	r0, [r3], #4
 8003e48:	e1530001 	cmp	r3, r1
 8003e4c:	e5a20004 	str	r0, [r2, #4]!
 8003e50:	1afffffb 	bne	8003e44 <_Unwind_VRS_Pop+0x1dc>
 8003e54:	e3590000 	cmp	r9, #0
 8003e58:	1a00007b 	bne	800404c <_Unwind_VRS_Pop+0x3e4>
 8003e5c:	e358000f 	cmp	r8, #15
 8003e60:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003e64:	9a00007a 	bls	8004054 <_Unwind_VRS_Pop+0x3ec>
 8003e68:	e3570000 	cmp	r7, #0
 8003e6c:	128d0008 	addne	r0, sp, #8
 8003e70:	1b000098 	blne	80040d8 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003e74:	e3a00000 	mov	r0, #0
 8003e78:	eaffff88 	b	8003ca0 <_Unwind_VRS_Pop+0x38>
 8003e7c:	e3530000 	cmp	r3, #0
 8003e80:	1affff85 	bne	8003c9c <_Unwind_VRS_Pop+0x34>
 8003e84:	e3a0e001 	mov	lr, #1
 8003e88:	e1a00802 	lsl	r0, r2, #16
 8003e8c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003e90:	e1a00820 	lsr	r0, r0, #16
 8003e94:	e2841004 	add	r1, r4, #4
 8003e98:	e010531e 	ands	r5, r0, lr, lsl r3
 8003e9c:	159c5000 	ldrne	r5, [ip]
 8003ea0:	e2833001 	add	r3, r3, #1
 8003ea4:	15815000 	strne	r5, [r1]
 8003ea8:	128cc004 	addne	ip, ip, #4
 8003eac:	e3530010 	cmp	r3, #16
 8003eb0:	e2811004 	add	r1, r1, #4
 8003eb4:	1afffff7 	bne	8003e98 <_Unwind_VRS_Pop+0x230>
 8003eb8:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003ebc:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003ec0:	0affff76 	beq	8003ca0 <_Unwind_VRS_Pop+0x38>
 8003ec4:	eaffffea 	b	8003e74 <_Unwind_VRS_Pop+0x20c>
 8003ec8:	e3510010 	cmp	r1, #16
 8003ecc:	8affff72 	bhi	8003c9c <_Unwind_VRS_Pop+0x34>
 8003ed0:	e358000f 	cmp	r8, #15
 8003ed4:	91a09003 	movls	r9, r3
 8003ed8:	8affff6f 	bhi	8003c9c <_Unwind_VRS_Pop+0x34>
 8003edc:	e5942000 	ldr	r2, [r4]
 8003ee0:	e3120001 	tst	r2, #1
 8003ee4:	0a000046 	beq	8004004 <_Unwind_VRS_Pop+0x39c>
 8003ee8:	e3530005 	cmp	r3, #5
 8003eec:	e3c23001 	bic	r3, r2, #1
 8003ef0:	e5843000 	str	r3, [r4]
 8003ef4:	e3a07000 	mov	r7, #0
 8003ef8:	1affffa1 	bne	8003d84 <_Unwind_VRS_Pop+0x11c>
 8003efc:	e1a00004 	mov	r0, r4
 8003f00:	e3833002 	orr	r3, r3, #2
 8003f04:	e4803048 	str	r3, [r0], #72	; 0x48
 8003f08:	eb000070 	bl	80040d0 <__gnu_Unwind_Save_VFP_D>
 8003f0c:	eaffffa9 	b	8003db8 <_Unwind_VRS_Pop+0x150>
 8003f10:	e1a07802 	lsl	r7, r2, #16
 8003f14:	e1a07827 	lsr	r7, r7, #16
 8003f18:	e1a06822 	lsr	r6, r2, #16
 8003f1c:	e0873006 	add	r3, r7, r6
 8003f20:	e3530010 	cmp	r3, #16
 8003f24:	8affff5c 	bhi	8003c9c <_Unwind_VRS_Pop+0x34>
 8003f28:	e5903000 	ldr	r3, [r0]
 8003f2c:	e3130008 	tst	r3, #8
 8003f30:	1a00001f 	bne	8003fb4 <_Unwind_VRS_Pop+0x34c>
 8003f34:	e28d5088 	add	r5, sp, #136	; 0x88
 8003f38:	e1a07087 	lsl	r7, r7, #1
 8003f3c:	e1a00005 	mov	r0, r5
 8003f40:	eb000079 	bl	800412c <__gnu_Unwind_Save_WMMXD>
 8003f44:	e3570000 	cmp	r7, #0
 8003f48:	e0852186 	add	r2, r5, r6, lsl #3
 8003f4c:	e2473001 	sub	r3, r7, #1
 8003f50:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003f54:	0a000007 	beq	8003f78 <_Unwind_VRS_Pop+0x310>
 8003f58:	e1a0100c 	mov	r1, ip
 8003f5c:	e2422004 	sub	r2, r2, #4
 8003f60:	e2433001 	sub	r3, r3, #1
 8003f64:	e4910004 	ldr	r0, [r1], #4
 8003f68:	e3730001 	cmn	r3, #1
 8003f6c:	e5a20004 	str	r0, [r2, #4]!
 8003f70:	1afffffa 	bne	8003f60 <_Unwind_VRS_Pop+0x2f8>
 8003f74:	e08cc107 	add	ip, ip, r7, lsl #2
 8003f78:	e1a00005 	mov	r0, r5
 8003f7c:	e584c038 	str	ip, [r4, #56]	; 0x38
 8003f80:	eb000058 	bl	80040e8 <__gnu_Unwind_Restore_WMMXD>
 8003f84:	e3a00000 	mov	r0, #0
 8003f88:	eaffff44 	b	8003ca0 <_Unwind_VRS_Pop+0x38>
 8003f8c:	e3c33010 	bic	r3, r3, #16
 8003f90:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003f94:	e58d2004 	str	r2, [sp, #4]
 8003f98:	eb000079 	bl	8004184 <__gnu_Unwind_Save_WMMXC>
 8003f9c:	e59d2004 	ldr	r2, [sp, #4]
 8003fa0:	eaffff47 	b	8003cc4 <_Unwind_VRS_Pop+0x5c>
 8003fa4:	e3510010 	cmp	r1, #16
 8003fa8:	9a000013 	bls	8003ffc <_Unwind_VRS_Pop+0x394>
 8003fac:	e2417010 	sub	r7, r1, #16
 8003fb0:	eaffff65 	b	8003d4c <_Unwind_VRS_Pop+0xe4>
 8003fb4:	e3c33008 	bic	r3, r3, #8
 8003fb8:	e4803150 	str	r3, [r0], #336	; 0x150
 8003fbc:	eb00005a 	bl	800412c <__gnu_Unwind_Save_WMMXD>
 8003fc0:	eaffffdb 	b	8003f34 <_Unwind_VRS_Pop+0x2cc>
 8003fc4:	e3570000 	cmp	r7, #0
 8003fc8:	1affff73 	bne	8003d9c <_Unwind_VRS_Pop+0x134>
 8003fcc:	e358000f 	cmp	r8, #15
 8003fd0:	93a09000 	movls	r9, #0
 8003fd4:	91a07009 	movls	r7, r9
 8003fd8:	9affff76 	bls	8003db8 <_Unwind_VRS_Pop+0x150>
 8003fdc:	e3a09000 	mov	r9, #0
 8003fe0:	e3560000 	cmp	r6, #0
 8003fe4:	e1a03006 	mov	r3, r6
 8003fe8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003fec:	11a07009 	movne	r7, r9
 8003ff0:	1affff7b 	bne	8003de4 <_Unwind_VRS_Pop+0x17c>
 8003ff4:	e1a07006 	mov	r7, r6
 8003ff8:	eaffff97 	b	8003e5c <_Unwind_VRS_Pop+0x1f4>
 8003ffc:	e3a09000 	mov	r9, #0
 8004000:	eaffffb5 	b	8003edc <_Unwind_VRS_Pop+0x274>
 8004004:	e3590000 	cmp	r9, #0
 8004008:	0affffef 	beq	8003fcc <_Unwind_VRS_Pop+0x364>
 800400c:	e28d5088 	add	r5, sp, #136	; 0x88
 8004010:	e1a00005 	mov	r0, r5
 8004014:	eb000029 	bl	80040c0 <__gnu_Unwind_Save_VFP>
 8004018:	e2563000 	subs	r3, r6, #0
 800401c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004020:	13a07000 	movne	r7, #0
 8004024:	1affff6f 	bne	8003de8 <_Unwind_VRS_Pop+0x180>
 8004028:	e2811004 	add	r1, r1, #4
 800402c:	e5841038 	str	r1, [r4, #56]	; 0x38
 8004030:	e1a00005 	mov	r0, r5
 8004034:	eb00001f 	bl	80040b8 <__gnu_Unwind_Restore_VFP>
 8004038:	eaffff8d 	b	8003e74 <_Unwind_VRS_Pop+0x20c>
 800403c:	e2563000 	subs	r3, r6, #0
 8004040:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004044:	1affff67 	bne	8003de8 <_Unwind_VRS_Pop+0x180>
 8004048:	eaffff81 	b	8003e54 <_Unwind_VRS_Pop+0x1ec>
 800404c:	e28d5088 	add	r5, sp, #136	; 0x88
 8004050:	eafffff4 	b	8004028 <_Unwind_VRS_Pop+0x3c0>
 8004054:	e28d0088 	add	r0, sp, #136	; 0x88
 8004058:	eb00001a 	bl	80040c8 <__gnu_Unwind_Restore_VFP_D>
 800405c:	eaffff81 	b	8003e68 <_Unwind_VRS_Pop+0x200>
 8004060:	e1a00004 	mov	r0, r4
 8004064:	e3c33004 	bic	r3, r3, #4
 8004068:	e48030d0 	str	r3, [r0], #208	; 0xd0
 800406c:	eb00001b 	bl	80040e0 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8004070:	eaffff4c 	b	8003da8 <_Unwind_VRS_Pop+0x140>
 8004074:	e1a00004 	mov	r0, r4
 8004078:	e3833002 	orr	r3, r3, #2
 800407c:	e4803048 	str	r3, [r0], #72	; 0x48
 8004080:	eb000012 	bl	80040d0 <__gnu_Unwind_Save_VFP_D>
 8004084:	e3570000 	cmp	r7, #0
 8004088:	1affff43 	bne	8003d9c <_Unwind_VRS_Pop+0x134>
 800408c:	eaffff49 	b	8003db8 <_Unwind_VRS_Pop+0x150>
 8004090:	e28d0088 	add	r0, sp, #136	; 0x88
 8004094:	eb000009 	bl	80040c0 <__gnu_Unwind_Save_VFP>
 8004098:	eaffff4d 	b	8003dd4 <_Unwind_VRS_Pop+0x16c>

0800409c <__restore_core_regs>:
 800409c:	e2801034 	add	r1, r0, #52	; 0x34
 80040a0:	e8910038 	ldm	r1, {r3, r4, r5}
 80040a4:	e1a02005 	mov	r2, r5
 80040a8:	e92d001c 	push	{r2, r3, r4}
 80040ac:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 80040b0:	e89d7000 	ldm	sp, {ip, sp, lr}
 80040b4:	e12fff1c 	bx	ip

080040b8 <__gnu_Unwind_Restore_VFP>:
 80040b8:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 80040bc:	e12fff1e 	bx	lr

080040c0 <__gnu_Unwind_Save_VFP>:
 80040c0:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 80040c4:	e12fff1e 	bx	lr

080040c8 <__gnu_Unwind_Restore_VFP_D>:
 80040c8:	ec900b20 	vldmia	r0, {d0-d15}
 80040cc:	e12fff1e 	bx	lr

080040d0 <__gnu_Unwind_Save_VFP_D>:
 80040d0:	ec800b20 	vstmia	r0, {d0-d15}
 80040d4:	e12fff1e 	bx	lr

080040d8 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 80040d8:	ecd00b20 	vldmia	r0, {d16-d31}
 80040dc:	e12fff1e 	bx	lr

080040e0 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 80040e0:	ecc00b20 	vstmia	r0, {d16-d31}
 80040e4:	e12fff1e 	bx	lr

080040e8 <__gnu_Unwind_Restore_WMMXD>:
 80040e8:	ecf00102 	ldfe	f0, [r0], #8
 80040ec:	ecf01102 	ldfe	f1, [r0], #8
 80040f0:	ecf02102 	ldfe	f2, [r0], #8
 80040f4:	ecf03102 	ldfe	f3, [r0], #8
 80040f8:	ecf04102 	ldfe	f4, [r0], #8
 80040fc:	ecf05102 	ldfe	f5, [r0], #8
 8004100:	ecf06102 	ldfe	f6, [r0], #8
 8004104:	ecf07102 	ldfe	f7, [r0], #8
 8004108:	ecf08102 	ldfp	f0, [r0], #8
 800410c:	ecf09102 	ldfp	f1, [r0], #8
 8004110:	ecf0a102 	ldfp	f2, [r0], #8
 8004114:	ecf0b102 	ldfp	f3, [r0], #8
 8004118:	ecf0c102 	ldfp	f4, [r0], #8
 800411c:	ecf0d102 	ldfp	f5, [r0], #8
 8004120:	ecf0e102 	ldfp	f6, [r0], #8
 8004124:	ecf0f102 	ldfp	f7, [r0], #8
 8004128:	e12fff1e 	bx	lr

0800412c <__gnu_Unwind_Save_WMMXD>:
 800412c:	ece00102 	stfe	f0, [r0], #8
 8004130:	ece01102 	stfe	f1, [r0], #8
 8004134:	ece02102 	stfe	f2, [r0], #8
 8004138:	ece03102 	stfe	f3, [r0], #8
 800413c:	ece04102 	stfe	f4, [r0], #8
 8004140:	ece05102 	stfe	f5, [r0], #8
 8004144:	ece06102 	stfe	f6, [r0], #8
 8004148:	ece07102 	stfe	f7, [r0], #8
 800414c:	ece08102 	stfp	f0, [r0], #8
 8004150:	ece09102 	stfp	f1, [r0], #8
 8004154:	ece0a102 	stfp	f2, [r0], #8
 8004158:	ece0b102 	stfp	f3, [r0], #8
 800415c:	ece0c102 	stfp	f4, [r0], #8
 8004160:	ece0d102 	stfp	f5, [r0], #8
 8004164:	ece0e102 	stfp	f6, [r0], #8
 8004168:	ece0f102 	stfp	f7, [r0], #8
 800416c:	e12fff1e 	bx	lr

08004170 <__gnu_Unwind_Restore_WMMXC>:
 8004170:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004174:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004178:	fcb0a101 	ldc2	1, cr10, [r0], #4
 800417c:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8004180:	e12fff1e 	bx	lr

08004184 <__gnu_Unwind_Save_WMMXC>:
 8004184:	fca08101 	stc2	1, cr8, [r0], #4
 8004188:	fca09101 	stc2	1, cr9, [r0], #4
 800418c:	fca0a101 	stc2	1, cr10, [r0], #4
 8004190:	fca0b101 	stc2	1, cr11, [r0], #4
 8004194:	e12fff1e 	bx	lr

08004198 <_Unwind_RaiseException>:
 8004198:	e92de000 	push	{sp, lr, pc}
 800419c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80041a0:	e3a03000 	mov	r3, #0
 80041a4:	e92d000c 	push	{r2, r3}
 80041a8:	e28d1004 	add	r1, sp, #4
 80041ac:	ebfffcb8 	bl	8003494 <__gnu_Unwind_RaiseException>
 80041b0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80041b4:	e28dd048 	add	sp, sp, #72	; 0x48
 80041b8:	e12fff1e 	bx	lr

080041bc <_Unwind_Resume>:
 80041bc:	e92de000 	push	{sp, lr, pc}
 80041c0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80041c4:	e3a03000 	mov	r3, #0
 80041c8:	e92d000c 	push	{r2, r3}
 80041cc:	e28d1004 	add	r1, sp, #4
 80041d0:	ebfffce4 	bl	8003568 <__gnu_Unwind_Resume>
 80041d4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80041d8:	e28dd048 	add	sp, sp, #72	; 0x48
 80041dc:	e12fff1e 	bx	lr

080041e0 <_Unwind_Resume_or_Rethrow>:
 80041e0:	e92de000 	push	{sp, lr, pc}
 80041e4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80041e8:	e3a03000 	mov	r3, #0
 80041ec:	e92d000c 	push	{r2, r3}
 80041f0:	e28d1004 	add	r1, sp, #4
 80041f4:	ebfffcf8 	bl	80035dc <__gnu_Unwind_Resume_or_Rethrow>
 80041f8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80041fc:	e28dd048 	add	sp, sp, #72	; 0x48
 8004200:	e12fff1e 	bx	lr

08004204 <_Unwind_ForcedUnwind>:
 8004204:	e92de000 	push	{sp, lr, pc}
 8004208:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800420c:	e3a03000 	mov	r3, #0
 8004210:	e92d000c 	push	{r2, r3}
 8004214:	e28d3004 	add	r3, sp, #4
 8004218:	ebfffcc9 	bl	8003544 <__gnu_Unwind_ForcedUnwind>
 800421c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004220:	e28dd048 	add	sp, sp, #72	; 0x48
 8004224:	e12fff1e 	bx	lr

08004228 <_Unwind_Backtrace>:
 8004228:	e92de000 	push	{sp, lr, pc}
 800422c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004230:	e3a03000 	mov	r3, #0
 8004234:	e92d000c 	push	{r2, r3}
 8004238:	e28d2004 	add	r2, sp, #4
 800423c:	ebfffd3b 	bl	8003730 <__gnu_Unwind_Backtrace>
 8004240:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004244:	e28dd048 	add	sp, sp, #72	; 0x48
 8004248:	e12fff1e 	bx	lr

0800424c <next_unwind_byte>:
 800424c:	e5d03008 	ldrb	r3, [r0, #8]
 8004250:	e3530000 	cmp	r3, #0
 8004254:	1a000004 	bne	800426c <next_unwind_byte+0x20>
 8004258:	e5d03009 	ldrb	r3, [r0, #9]
 800425c:	e3530000 	cmp	r3, #0
 8004260:	1a000008 	bne	8004288 <next_unwind_byte+0x3c>
 8004264:	e3a000b0 	mov	r0, #176	; 0xb0
 8004268:	e12fff1e 	bx	lr
 800426c:	e2433001 	sub	r3, r3, #1
 8004270:	e5c03008 	strb	r3, [r0, #8]
 8004274:	e5903000 	ldr	r3, [r0]
 8004278:	e1a02403 	lsl	r2, r3, #8
 800427c:	e5802000 	str	r2, [r0]
 8004280:	e1a00c23 	lsr	r0, r3, #24
 8004284:	e12fff1e 	bx	lr
 8004288:	e3a01003 	mov	r1, #3
 800428c:	e5902004 	ldr	r2, [r0, #4]
 8004290:	e2433001 	sub	r3, r3, #1
 8004294:	e5c03009 	strb	r3, [r0, #9]
 8004298:	e282c004 	add	ip, r2, #4
 800429c:	e5923000 	ldr	r3, [r2]
 80042a0:	e580c004 	str	ip, [r0, #4]
 80042a4:	e5c01008 	strb	r1, [r0, #8]
 80042a8:	eafffff2 	b	8004278 <next_unwind_byte+0x2c>

080042ac <_Unwind_GetGR.constprop.0>:
 80042ac:	e3a01000 	mov	r1, #0
 80042b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80042b4:	e24dd014 	sub	sp, sp, #20
 80042b8:	e28d200c 	add	r2, sp, #12
 80042bc:	e58d2000 	str	r2, [sp]
 80042c0:	e1a03001 	mov	r3, r1
 80042c4:	e3a0200c 	mov	r2, #12
 80042c8:	ebfffcd1 	bl	8003614 <_Unwind_VRS_Get>
 80042cc:	e59d000c 	ldr	r0, [sp, #12]
 80042d0:	e28dd014 	add	sp, sp, #20
 80042d4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80042d8:	e12fff1e 	bx	lr

080042dc <unwind_UCB_from_context>:
 80042dc:	eafffff2 	b	80042ac <_Unwind_GetGR.constprop.0>

080042e0 <__gnu_unwind_execute>:
 80042e0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 80042e4:	e1a07000 	mov	r7, r0
 80042e8:	e1a05001 	mov	r5, r1
 80042ec:	e3a08000 	mov	r8, #0
 80042f0:	e24dd010 	sub	sp, sp, #16
 80042f4:	e1a00005 	mov	r0, r5
 80042f8:	ebffffd3 	bl	800424c <next_unwind_byte>
 80042fc:	e35000b0 	cmp	r0, #176	; 0xb0
 8004300:	e1a04000 	mov	r4, r0
 8004304:	0a00007d 	beq	8004500 <__gnu_unwind_execute+0x220>
 8004308:	e2101080 	ands	r1, r0, #128	; 0x80
 800430c:	0a00001a 	beq	800437c <__gnu_unwind_execute+0x9c>
 8004310:	e20030f0 	and	r3, r0, #240	; 0xf0
 8004314:	e3530080 	cmp	r3, #128	; 0x80
 8004318:	0a000054 	beq	8004470 <__gnu_unwind_execute+0x190>
 800431c:	e3530090 	cmp	r3, #144	; 0x90
 8004320:	0a00002b 	beq	80043d4 <__gnu_unwind_execute+0xf4>
 8004324:	e35300a0 	cmp	r3, #160	; 0xa0
 8004328:	0a000034 	beq	8004400 <__gnu_unwind_execute+0x120>
 800432c:	e35300b0 	cmp	r3, #176	; 0xb0
 8004330:	0a000040 	beq	8004438 <__gnu_unwind_execute+0x158>
 8004334:	e35300c0 	cmp	r3, #192	; 0xc0
 8004338:	0a00005e 	beq	80044b8 <__gnu_unwind_execute+0x1d8>
 800433c:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004340:	e35300d0 	cmp	r3, #208	; 0xd0
 8004344:	1a000008 	bne	800436c <__gnu_unwind_execute+0x8c>
 8004348:	e2002007 	and	r2, r0, #7
 800434c:	e2822001 	add	r2, r2, #1
 8004350:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004354:	e1a00007 	mov	r0, r7
 8004358:	e3a01001 	mov	r1, #1
 800435c:	e3a03005 	mov	r3, #5
 8004360:	ebfffe40 	bl	8003c68 <_Unwind_VRS_Pop>
 8004364:	e3500000 	cmp	r0, #0
 8004368:	0affffe1 	beq	80042f4 <__gnu_unwind_execute+0x14>
 800436c:	e3a00009 	mov	r0, #9
 8004370:	e28dd010 	add	sp, sp, #16
 8004374:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004378:	e12fff1e 	bx	lr
 800437c:	e28d300c 	add	r3, sp, #12
 8004380:	e1a06100 	lsl	r6, r0, #2
 8004384:	e58d3000 	str	r3, [sp]
 8004388:	e1a00007 	mov	r0, r7
 800438c:	e1a03001 	mov	r3, r1
 8004390:	e3a0200d 	mov	r2, #13
 8004394:	ebfffc9e 	bl	8003614 <_Unwind_VRS_Get>
 8004398:	e20660ff 	and	r6, r6, #255	; 0xff
 800439c:	e59d300c 	ldr	r3, [sp, #12]
 80043a0:	e2866004 	add	r6, r6, #4
 80043a4:	e3140040 	tst	r4, #64	; 0x40
 80043a8:	10666003 	rsbne	r6, r6, r3
 80043ac:	00836006 	addeq	r6, r3, r6
 80043b0:	e58d600c 	str	r6, [sp, #12]
 80043b4:	e3a01000 	mov	r1, #0
 80043b8:	e28d300c 	add	r3, sp, #12
 80043bc:	e58d3000 	str	r3, [sp]
 80043c0:	e1a00007 	mov	r0, r7
 80043c4:	e1a03001 	mov	r3, r1
 80043c8:	e3a0200d 	mov	r2, #13
 80043cc:	ebfffcb3 	bl	80036a0 <_Unwind_VRS_Set>
 80043d0:	eaffffc7 	b	80042f4 <__gnu_unwind_execute+0x14>
 80043d4:	e200300d 	and	r3, r0, #13
 80043d8:	e353000d 	cmp	r3, #13
 80043dc:	0affffe2 	beq	800436c <__gnu_unwind_execute+0x8c>
 80043e0:	e3a01000 	mov	r1, #0
 80043e4:	e28d300c 	add	r3, sp, #12
 80043e8:	e58d3000 	str	r3, [sp]
 80043ec:	e200200f 	and	r2, r0, #15
 80043f0:	e1a03001 	mov	r3, r1
 80043f4:	e1a00007 	mov	r0, r7
 80043f8:	ebfffc85 	bl	8003614 <_Unwind_VRS_Get>
 80043fc:	eaffffec 	b	80043b4 <__gnu_unwind_execute+0xd4>
 8004400:	e1e02000 	mvn	r2, r0
 8004404:	e3a03eff 	mov	r3, #4080	; 0xff0
 8004408:	e3a01000 	mov	r1, #0
 800440c:	e2022007 	and	r2, r2, #7
 8004410:	e1a02253 	asr	r2, r3, r2
 8004414:	e3100008 	tst	r0, #8
 8004418:	e0022003 	and	r2, r2, r3
 800441c:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8004420:	e1a03001 	mov	r3, r1
 8004424:	e1a00007 	mov	r0, r7
 8004428:	ebfffe0e 	bl	8003c68 <_Unwind_VRS_Pop>
 800442c:	e3500000 	cmp	r0, #0
 8004430:	1affffcd 	bne	800436c <__gnu_unwind_execute+0x8c>
 8004434:	eaffffae 	b	80042f4 <__gnu_unwind_execute+0x14>
 8004438:	e35000b1 	cmp	r0, #177	; 0xb1
 800443c:	0a000041 	beq	8004548 <__gnu_unwind_execute+0x268>
 8004440:	e35000b2 	cmp	r0, #178	; 0xb2
 8004444:	0a00004b 	beq	8004578 <__gnu_unwind_execute+0x298>
 8004448:	e35000b3 	cmp	r0, #179	; 0xb3
 800444c:	0a00006b 	beq	8004600 <__gnu_unwind_execute+0x320>
 8004450:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004454:	e35300b4 	cmp	r3, #180	; 0xb4
 8004458:	0affffc3 	beq	800436c <__gnu_unwind_execute+0x8c>
 800445c:	e3a01001 	mov	r1, #1
 8004460:	e2002007 	and	r2, r0, #7
 8004464:	e0822001 	add	r2, r2, r1
 8004468:	e3822702 	orr	r2, r2, #524288	; 0x80000
 800446c:	eaffffeb 	b	8004420 <__gnu_unwind_execute+0x140>
 8004470:	e1a00005 	mov	r0, r5
 8004474:	ebffff74 	bl	800424c <next_unwind_byte>
 8004478:	e1a04404 	lsl	r4, r4, #8
 800447c:	e1804004 	orr	r4, r0, r4
 8004480:	e3540902 	cmp	r4, #32768	; 0x8000
 8004484:	0affffb8 	beq	800436c <__gnu_unwind_execute+0x8c>
 8004488:	e3a01000 	mov	r1, #0
 800448c:	e1a02a04 	lsl	r2, r4, #20
 8004490:	e1a03001 	mov	r3, r1
 8004494:	e1a02822 	lsr	r2, r2, #16
 8004498:	e1a00007 	mov	r0, r7
 800449c:	ebfffdf1 	bl	8003c68 <_Unwind_VRS_Pop>
 80044a0:	e3500000 	cmp	r0, #0
 80044a4:	e1a04204 	lsl	r4, r4, #4
 80044a8:	1affffaf 	bne	800436c <__gnu_unwind_execute+0x8c>
 80044ac:	e3140902 	tst	r4, #32768	; 0x8000
 80044b0:	13a08001 	movne	r8, #1
 80044b4:	eaffff8e 	b	80042f4 <__gnu_unwind_execute+0x14>
 80044b8:	e35000c6 	cmp	r0, #198	; 0xc6
 80044bc:	0a000057 	beq	8004620 <__gnu_unwind_execute+0x340>
 80044c0:	e35000c7 	cmp	r0, #199	; 0xc7
 80044c4:	0a00005d 	beq	8004640 <__gnu_unwind_execute+0x360>
 80044c8:	e20030f8 	and	r3, r0, #248	; 0xf8
 80044cc:	e35300c0 	cmp	r3, #192	; 0xc0
 80044d0:	0a000066 	beq	8004670 <__gnu_unwind_execute+0x390>
 80044d4:	e35000c8 	cmp	r0, #200	; 0xc8
 80044d8:	0a000069 	beq	8004684 <__gnu_unwind_execute+0x3a4>
 80044dc:	e35000c9 	cmp	r0, #201	; 0xc9
 80044e0:	1affffa1 	bne	800436c <__gnu_unwind_execute+0x8c>
 80044e4:	e1a00005 	mov	r0, r5
 80044e8:	ebffff57 	bl	800424c <next_unwind_byte>
 80044ec:	e200200f 	and	r2, r0, #15
 80044f0:	e2822001 	add	r2, r2, #1
 80044f4:	e20000f0 	and	r0, r0, #240	; 0xf0
 80044f8:	e1822600 	orr	r2, r2, r0, lsl #12
 80044fc:	eaffff94 	b	8004354 <__gnu_unwind_execute+0x74>
 8004500:	e3580000 	cmp	r8, #0
 8004504:	13a00000 	movne	r0, #0
 8004508:	1affff98 	bne	8004370 <__gnu_unwind_execute+0x90>
 800450c:	e28d400c 	add	r4, sp, #12
 8004510:	e1a01008 	mov	r1, r8
 8004514:	e3a0200e 	mov	r2, #14
 8004518:	e1a03008 	mov	r3, r8
 800451c:	e58d4000 	str	r4, [sp]
 8004520:	e1a00007 	mov	r0, r7
 8004524:	ebfffc3a 	bl	8003614 <_Unwind_VRS_Get>
 8004528:	e58d4000 	str	r4, [sp]
 800452c:	e1a00007 	mov	r0, r7
 8004530:	e1a01008 	mov	r1, r8
 8004534:	e3a0200f 	mov	r2, #15
 8004538:	e1a03008 	mov	r3, r8
 800453c:	ebfffc57 	bl	80036a0 <_Unwind_VRS_Set>
 8004540:	e1a00008 	mov	r0, r8
 8004544:	eaffff89 	b	8004370 <__gnu_unwind_execute+0x90>
 8004548:	e1a00005 	mov	r0, r5
 800454c:	ebffff3e 	bl	800424c <next_unwind_byte>
 8004550:	e2502000 	subs	r2, r0, #0
 8004554:	0affff84 	beq	800436c <__gnu_unwind_execute+0x8c>
 8004558:	e21210f0 	ands	r1, r2, #240	; 0xf0
 800455c:	1affff82 	bne	800436c <__gnu_unwind_execute+0x8c>
 8004560:	e1a00007 	mov	r0, r7
 8004564:	e1a03001 	mov	r3, r1
 8004568:	ebfffdbe 	bl	8003c68 <_Unwind_VRS_Pop>
 800456c:	e3500000 	cmp	r0, #0
 8004570:	1affff7d 	bne	800436c <__gnu_unwind_execute+0x8c>
 8004574:	eaffff5e 	b	80042f4 <__gnu_unwind_execute+0x14>
 8004578:	e3a01000 	mov	r1, #0
 800457c:	e28d300c 	add	r3, sp, #12
 8004580:	e58d3000 	str	r3, [sp]
 8004584:	e3a0200d 	mov	r2, #13
 8004588:	e1a03001 	mov	r3, r1
 800458c:	e1a00007 	mov	r0, r7
 8004590:	ebfffc1f 	bl	8003614 <_Unwind_VRS_Get>
 8004594:	e1a00005 	mov	r0, r5
 8004598:	ebffff2b 	bl	800424c <next_unwind_byte>
 800459c:	e3100080 	tst	r0, #128	; 0x80
 80045a0:	e3a04002 	mov	r4, #2
 80045a4:	0a000008 	beq	80045cc <__gnu_unwind_execute+0x2ec>
 80045a8:	e59d300c 	ldr	r3, [sp, #12]
 80045ac:	e200007f 	and	r0, r0, #127	; 0x7f
 80045b0:	e0833410 	add	r3, r3, r0, lsl r4
 80045b4:	e1a00005 	mov	r0, r5
 80045b8:	e58d300c 	str	r3, [sp, #12]
 80045bc:	ebffff22 	bl	800424c <next_unwind_byte>
 80045c0:	e3100080 	tst	r0, #128	; 0x80
 80045c4:	e2844007 	add	r4, r4, #7
 80045c8:	1afffff6 	bne	80045a8 <__gnu_unwind_execute+0x2c8>
 80045cc:	e3a01000 	mov	r1, #0
 80045d0:	e59d300c 	ldr	r3, [sp, #12]
 80045d4:	e28d200c 	add	r2, sp, #12
 80045d8:	e200007f 	and	r0, r0, #127	; 0x7f
 80045dc:	e2833f81 	add	r3, r3, #516	; 0x204
 80045e0:	e0834410 	add	r4, r3, r0, lsl r4
 80045e4:	e58d2000 	str	r2, [sp]
 80045e8:	e1a03001 	mov	r3, r1
 80045ec:	e1a00007 	mov	r0, r7
 80045f0:	e3a0200d 	mov	r2, #13
 80045f4:	e58d400c 	str	r4, [sp, #12]
 80045f8:	ebfffc28 	bl	80036a0 <_Unwind_VRS_Set>
 80045fc:	eaffff3c 	b	80042f4 <__gnu_unwind_execute+0x14>
 8004600:	e1a00005 	mov	r0, r5
 8004604:	ebffff10 	bl	800424c <next_unwind_byte>
 8004608:	e3a01001 	mov	r1, #1
 800460c:	e200200f 	and	r2, r0, #15
 8004610:	e0822001 	add	r2, r2, r1
 8004614:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004618:	e1822600 	orr	r2, r2, r0, lsl #12
 800461c:	eaffff7f 	b	8004420 <__gnu_unwind_execute+0x140>
 8004620:	e1a00005 	mov	r0, r5
 8004624:	ebffff08 	bl	800424c <next_unwind_byte>
 8004628:	e200200f 	and	r2, r0, #15
 800462c:	e2822001 	add	r2, r2, #1
 8004630:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004634:	e3a01003 	mov	r1, #3
 8004638:	e1822600 	orr	r2, r2, r0, lsl #12
 800463c:	eaffff77 	b	8004420 <__gnu_unwind_execute+0x140>
 8004640:	e1a00005 	mov	r0, r5
 8004644:	ebffff00 	bl	800424c <next_unwind_byte>
 8004648:	e2502000 	subs	r2, r0, #0
 800464c:	0affff46 	beq	800436c <__gnu_unwind_execute+0x8c>
 8004650:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004654:	1affff44 	bne	800436c <__gnu_unwind_execute+0x8c>
 8004658:	e1a00007 	mov	r0, r7
 800465c:	e3a01004 	mov	r1, #4
 8004660:	ebfffd80 	bl	8003c68 <_Unwind_VRS_Pop>
 8004664:	e3500000 	cmp	r0, #0
 8004668:	1affff3f 	bne	800436c <__gnu_unwind_execute+0x8c>
 800466c:	eaffff20 	b	80042f4 <__gnu_unwind_execute+0x14>
 8004670:	e200200f 	and	r2, r0, #15
 8004674:	e2822001 	add	r2, r2, #1
 8004678:	e3a01003 	mov	r1, #3
 800467c:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8004680:	eaffff66 	b	8004420 <__gnu_unwind_execute+0x140>
 8004684:	e1a00005 	mov	r0, r5
 8004688:	ebfffeef 	bl	800424c <next_unwind_byte>
 800468c:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004690:	e200300f 	and	r3, r0, #15
 8004694:	e2822010 	add	r2, r2, #16
 8004698:	e2833001 	add	r3, r3, #1
 800469c:	e1832602 	orr	r2, r3, r2, lsl #12
 80046a0:	eaffff2b 	b	8004354 <__gnu_unwind_execute+0x74>

080046a4 <__gnu_unwind_frame>:
 80046a4:	e3a0c003 	mov	ip, #3
 80046a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80046ac:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80046b0:	e24dd014 	sub	sp, sp, #20
 80046b4:	e5932004 	ldr	r2, [r3, #4]
 80046b8:	e5cdc00c 	strb	ip, [sp, #12]
 80046bc:	e5d3c007 	ldrb	ip, [r3, #7]
 80046c0:	e1a02402 	lsl	r2, r2, #8
 80046c4:	e2833008 	add	r3, r3, #8
 80046c8:	e1a00001 	mov	r0, r1
 80046cc:	e28d1004 	add	r1, sp, #4
 80046d0:	e58d2004 	str	r2, [sp, #4]
 80046d4:	e5cdc00d 	strb	ip, [sp, #13]
 80046d8:	e58d3008 	str	r3, [sp, #8]
 80046dc:	ebfffeff 	bl	80042e0 <__gnu_unwind_execute>
 80046e0:	e28dd014 	add	sp, sp, #20
 80046e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80046e8:	e12fff1e 	bx	lr

080046ec <_Unwind_GetRegionStart>:
 80046ec:	e92d4008 	push	{r3, lr}
 80046f0:	ebfffef9 	bl	80042dc <unwind_UCB_from_context>
 80046f4:	e8bd4008 	pop	{r3, lr}
 80046f8:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 80046fc:	e12fff1e 	bx	lr

08004700 <_Unwind_GetLanguageSpecificData>:
 8004700:	e92d4008 	push	{r3, lr}
 8004704:	ebfffef4 	bl	80042dc <unwind_UCB_from_context>
 8004708:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800470c:	e5d30007 	ldrb	r0, [r3, #7]
 8004710:	e0830100 	add	r0, r3, r0, lsl #2
 8004714:	e2800008 	add	r0, r0, #8
 8004718:	e8bd4008 	pop	{r3, lr}
 800471c:	e12fff1e 	bx	lr

08004720 <_Unwind_GetDataRelBase>:
 8004720:	e92d4008 	push	{r3, lr}
 8004724:	eb000001 	bl	8004730 <abort>

08004728 <_Unwind_GetTextRelBase>:
 8004728:	e92d4008 	push	{r3, lr}
 800472c:	ebffffff 	bl	8004730 <abort>

08004730 <abort>:
 8004730:	e92d4008 	push	{r3, lr}
 8004734:	e3a00006 	mov	r0, #6
 8004738:	eb000063 	bl	80048cc <raise>
 800473c:	e3a00001 	mov	r0, #1
 8004740:	eb000086 	bl	8004960 <_exit>

08004744 <memcpy>:
 8004744:	e352000f 	cmp	r2, #15
 8004748:	e92d4070 	push	{r4, r5, r6, lr}
 800474c:	9a000029 	bls	80047f8 <memcpy+0xb4>
 8004750:	e1803001 	orr	r3, r0, r1
 8004754:	e3130003 	tst	r3, #3
 8004758:	1a000031 	bne	8004824 <memcpy+0xe0>
 800475c:	e1a0e002 	mov	lr, r2
 8004760:	e280c010 	add	ip, r0, #16
 8004764:	e2813010 	add	r3, r1, #16
 8004768:	e5134010 	ldr	r4, [r3, #-16]
 800476c:	e50c4010 	str	r4, [ip, #-16]
 8004770:	e513400c 	ldr	r4, [r3, #-12]
 8004774:	e50c400c 	str	r4, [ip, #-12]
 8004778:	e5134008 	ldr	r4, [r3, #-8]
 800477c:	e50c4008 	str	r4, [ip, #-8]
 8004780:	e24ee010 	sub	lr, lr, #16
 8004784:	e5134004 	ldr	r4, [r3, #-4]
 8004788:	e35e000f 	cmp	lr, #15
 800478c:	e50c4004 	str	r4, [ip, #-4]
 8004790:	e2833010 	add	r3, r3, #16
 8004794:	e28cc010 	add	ip, ip, #16
 8004798:	8afffff2 	bhi	8004768 <memcpy+0x24>
 800479c:	e2423010 	sub	r3, r2, #16
 80047a0:	e3c3300f 	bic	r3, r3, #15
 80047a4:	e202600f 	and	r6, r2, #15
 80047a8:	e2833010 	add	r3, r3, #16
 80047ac:	e3560003 	cmp	r6, #3
 80047b0:	e0811003 	add	r1, r1, r3
 80047b4:	e0803003 	add	r3, r0, r3
 80047b8:	9a00001b 	bls	800482c <memcpy+0xe8>
 80047bc:	e1a04001 	mov	r4, r1
 80047c0:	e1a0c006 	mov	ip, r6
 80047c4:	e243e004 	sub	lr, r3, #4
 80047c8:	e24cc004 	sub	ip, ip, #4
 80047cc:	e4945004 	ldr	r5, [r4], #4
 80047d0:	e35c0003 	cmp	ip, #3
 80047d4:	e5ae5004 	str	r5, [lr, #4]!
 80047d8:	8afffffa 	bhi	80047c8 <memcpy+0x84>
 80047dc:	e246c004 	sub	ip, r6, #4
 80047e0:	e3ccc003 	bic	ip, ip, #3
 80047e4:	e28cc004 	add	ip, ip, #4
 80047e8:	e083300c 	add	r3, r3, ip
 80047ec:	e081100c 	add	r1, r1, ip
 80047f0:	e2022003 	and	r2, r2, #3
 80047f4:	ea000000 	b	80047fc <memcpy+0xb8>
 80047f8:	e1a03000 	mov	r3, r0
 80047fc:	e3520000 	cmp	r2, #0
 8004800:	0a000005 	beq	800481c <memcpy+0xd8>
 8004804:	e2433001 	sub	r3, r3, #1
 8004808:	e0812002 	add	r2, r1, r2
 800480c:	e4d1c001 	ldrb	ip, [r1], #1
 8004810:	e1510002 	cmp	r1, r2
 8004814:	e5e3c001 	strb	ip, [r3, #1]!
 8004818:	1afffffb 	bne	800480c <memcpy+0xc8>
 800481c:	e8bd4070 	pop	{r4, r5, r6, lr}
 8004820:	e12fff1e 	bx	lr
 8004824:	e1a03000 	mov	r3, r0
 8004828:	eafffff5 	b	8004804 <memcpy+0xc0>
 800482c:	e1a02006 	mov	r2, r6
 8004830:	eafffff1 	b	80047fc <memcpy+0xb8>

08004834 <_raise_r>:
 8004834:	e351001f 	cmp	r1, #31
 8004838:	e92d4038 	push	{r3, r4, r5, lr}
 800483c:	e1a05000 	mov	r5, r0
 8004840:	83a03016 	movhi	r3, #22
 8004844:	83e00000 	mvnhi	r0, #0
 8004848:	85853000 	strhi	r3, [r5]
 800484c:	8a000013 	bhi	80048a0 <_raise_r+0x6c>
 8004850:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004854:	e3520000 	cmp	r2, #0
 8004858:	e1a04001 	mov	r4, r1
 800485c:	0a000013 	beq	80048b0 <_raise_r+0x7c>
 8004860:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004864:	e3530000 	cmp	r3, #0
 8004868:	0a000010 	beq	80048b0 <_raise_r+0x7c>
 800486c:	e3530001 	cmp	r3, #1
 8004870:	0a00000c 	beq	80048a8 <_raise_r+0x74>
 8004874:	e3730001 	cmn	r3, #1
 8004878:	03a03016 	moveq	r3, #22
 800487c:	03a00001 	moveq	r0, #1
 8004880:	05853000 	streq	r3, [r5]
 8004884:	0a000005 	beq	80048a0 <_raise_r+0x6c>
 8004888:	e3a05000 	mov	r5, #0
 800488c:	e1a00001 	mov	r0, r1
 8004890:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004894:	e1a0e00f 	mov	lr, pc
 8004898:	e12fff13 	bx	r3
 800489c:	e1a00005 	mov	r0, r5
 80048a0:	e8bd4038 	pop	{r3, r4, r5, lr}
 80048a4:	e12fff1e 	bx	lr
 80048a8:	e3a00000 	mov	r0, #0
 80048ac:	eafffffb 	b	80048a0 <_raise_r+0x6c>
 80048b0:	e1a00005 	mov	r0, r5
 80048b4:	eb000019 	bl	8004920 <_getpid_r>
 80048b8:	e1a02004 	mov	r2, r4
 80048bc:	e1a01000 	mov	r1, r0
 80048c0:	e1a00005 	mov	r0, r5
 80048c4:	eb000005 	bl	80048e0 <_kill_r>
 80048c8:	eafffff4 	b	80048a0 <_raise_r+0x6c>

080048cc <raise>:
 80048cc:	e59f3008 	ldr	r3, [pc, #8]	; 80048dc <raise+0x10>
 80048d0:	e1a01000 	mov	r1, r0
 80048d4:	e5930000 	ldr	r0, [r3]
 80048d8:	eaffffd5 	b	8004834 <_raise_r>
 80048dc:	20000528 	.word	0x20000528

080048e0 <_kill_r>:
 80048e0:	e92d4038 	push	{r3, r4, r5, lr}
 80048e4:	e3a03000 	mov	r3, #0
 80048e8:	e59f402c 	ldr	r4, [pc, #44]	; 800491c <_kill_r+0x3c>
 80048ec:	e1a05000 	mov	r5, r0
 80048f0:	e1a00001 	mov	r0, r1
 80048f4:	e1a01002 	mov	r1, r2
 80048f8:	e5843000 	str	r3, [r4]
 80048fc:	eb000011 	bl	8004948 <_kill>
 8004900:	e3700001 	cmn	r0, #1
 8004904:	1a000002 	bne	8004914 <_kill_r+0x34>
 8004908:	e5943000 	ldr	r3, [r4]
 800490c:	e3530000 	cmp	r3, #0
 8004910:	15853000 	strne	r3, [r5]
 8004914:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004918:	e12fff1e 	bx	lr
 800491c:	20001894 	.word	0x20001894

08004920 <_getpid_r>:
 8004920:	e92d4008 	push	{r3, lr}
 8004924:	eb000001 	bl	8004930 <_getpid>
 8004928:	e8bd4008 	pop	{r3, lr}
 800492c:	e12fff1e 	bx	lr

08004930 <_getpid>:
 8004930:	e3a02058 	mov	r2, #88	; 0x58
 8004934:	e59f3008 	ldr	r3, [pc, #8]	; 8004944 <_getpid+0x14>
 8004938:	e3e00000 	mvn	r0, #0
 800493c:	e5832000 	str	r2, [r3]
 8004940:	e12fff1e 	bx	lr
 8004944:	20001894 	.word	0x20001894

08004948 <_kill>:
 8004948:	e3a02058 	mov	r2, #88	; 0x58
 800494c:	e59f3008 	ldr	r3, [pc, #8]	; 800495c <_kill+0x14>
 8004950:	e3e00000 	mvn	r0, #0
 8004954:	e5832000 	str	r2, [r3]
 8004958:	e12fff1e 	bx	lr
 800495c:	20001894 	.word	0x20001894

08004960 <_exit>:
 8004960:	eafffffe 	b	8004960 <_exit>

08004964 <_init>:
 8004964:	e1a0c00d 	mov	ip, sp
 8004968:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 800496c:	e24cb004 	sub	fp, ip, #4
 8004970:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004974:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004978:	e12fff1e 	bx	lr

0800497c <_fini>:
 800497c:	e1a0c00d 	mov	ip, sp
 8004980:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004984:	e24cb004 	sub	fp, ip, #4
 8004988:	e24bd028 	sub	sp, fp, #40	; 0x28
 800498c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004990:	e12fff1e 	bx	lr
 8004994:	453e3e3e 	.word	0x453e3e3e
 8004998:	72652020 	.word	0x72652020
 800499c:	20726f72 	.word	0x20726f72
 80049a0:	65646f63 	.word	0x65646f63
 80049a4:	3a752520 	.word	0x3a752520
 80049a8:	000a7525 	.word	0x000a7525
 80049ac:	433e3e3e 	.word	0x433e3e3e
 80049b0:	69250020 	.word	0x69250020
 80049b4:	20692520 	.word	0x20692520
 80049b8:	25206925 	.word	0x25206925
 80049bc:	25002069 	.word	0x25002069
 80049c0:	69252069 	.word	0x69252069
 80049c4:	20752520 	.word	0x20752520
 80049c8:	00206925 	.word	0x00206925
 80049cc:	3e000a0a 	.word	0x3e000a0a
 80049d0:	204c3e3e 	.word	0x204c3e3e
 80049d4:	20692500 	.word	0x20692500
 80049d8:	25206925 	.word	0x25206925
 80049dc:	75252075 	.word	0x75252075
 80049e0:	3e3e0020 	.word	0x3e3e0020
 80049e4:	00204f3e 	.word	0x00204f3e
 80049e8:	493e3e3e 	.word	0x493e3e3e
 80049ec:	3e3e0020 	.word	0x3e3e0020
 80049f0:	0a002053 	.word	0x0a002053
 80049f4:	636c6577 	.word	0x636c6577
 80049f8:	20656d6f 	.word	0x20656d6f
 80049fc:	53206f74 	.word	0x53206f74
 8004a00:	68757a75 	.word	0x68757a75
 8004a04:	20534f61 	.word	0x20534f61
 8004a08:	205e5f5e 	.word	0x205e5f5e
 8004a0c:	2e302e32 	.word	0x2e302e32
 8004a10:	55420a36 	.word	0x55420a36
 8004a14:	20444c49 	.word	0x20444c49
 8004a18:	206e754a 	.word	0x206e754a
 8004a1c:	32203031 	.word	0x32203031
 8004a20:	20363130 	.word	0x20363130
 8004a24:	333a3032 	.word	0x333a3032
 8004a28:	36343a39 	.word	0x36343a39
 8004a2c:	000a      	.short	0x000a
 8004a2e:	7473      	.short	0x7473
 8004a30:	206f6964 	.word	0x206f6964
 8004a34:	74696e69 	.word	0x74696e69
 8004a38:	6e6f6420 	.word	0x6e6f6420
 8004a3c:	00000a65 	.word	0x00000a65
 8004a40:	00000043 	.word	0x00000043

08004a44 <__EH_FRAME_BEGIN__>:
 8004a44:	00000000                                ....
