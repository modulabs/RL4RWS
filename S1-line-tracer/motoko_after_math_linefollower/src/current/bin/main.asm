
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
	...

080001c4 <_ZN6CRobot16line_sensor_readEv>:
 80001c4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80001c6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80001ca:	4604      	mov	r4, r0
 80001cc:	ebc3 05c3 	rsb	r5, r3, r3, lsl #3
 80001d0:	f001 fb12 	bl	80017f8 <rgb_get>
 80001d4:	f9b0 2058 	ldrsh.w	r2, [r0, #88]	; 0x58
 80001d8:	18ab      	adds	r3, r5, r2
 80001da:	2208      	movs	r2, #8
 80001dc:	fb93 f3f2 	sdiv	r3, r3, r2
 80001e0:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
 80001e4:	6463      	str	r3, [r4, #68]	; 0x44
 80001e6:	4293      	cmp	r3, r2
 80001e8:	f04f 0600 	mov.w	r6, #0
 80001ec:	bfcc      	ite	gt
 80001ee:	2301      	movgt	r3, #1
 80001f0:	2300      	movle	r3, #0
 80001f2:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 80001f6:	4637      	mov	r7, r6
 80001f8:	46b0      	mov	r8, r6
 80001fa:	46b1      	mov	r9, r6
 80001fc:	4635      	mov	r5, r6
 80001fe:	f001 fafb 	bl	80017f8 <rgb_get>
 8000202:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000206:	4450      	add	r0, sl
 8000208:	4b97      	ldr	r3, [pc, #604]	; (8000468 <_ZN6CRobot16line_sensor_readEv+0x2a4>)
 800020a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800020e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000210:	1a9b      	subs	r3, r3, r2
 8000212:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000214:	f001 faf0 	bl	80017f8 <rgb_get>
 8000218:	4b94      	ldr	r3, [pc, #592]	; (800046c <_ZN6CRobot16line_sensor_readEv+0x2a8>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000222:	1a9b      	subs	r3, r3, r2
 8000224:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000228:	f001 fae6 	bl	80017f8 <rgb_get>
 800022c:	4b90      	ldr	r3, [pc, #576]	; (8000470 <_ZN6CRobot16line_sensor_readEv+0x2ac>)
 800022e:	4450      	add	r0, sl
 8000230:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000234:	8a43      	ldrh	r3, [r0, #18]
 8000236:	1a9b      	subs	r3, r3, r2
 8000238:	8243      	strh	r3, [r0, #18]
 800023a:	f001 fadd 	bl	80017f8 <rgb_get>
 800023e:	4b8d      	ldr	r3, [pc, #564]	; (8000474 <_ZN6CRobot16line_sensor_readEv+0x2b0>)
 8000240:	4450      	add	r0, sl
 8000242:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000246:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000248:	1a9b      	subs	r3, r3, r2
 800024a:	8483      	strh	r3, [r0, #36]	; 0x24
 800024c:	f001 fad4 	bl	80017f8 <rgb_get>
 8000250:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000254:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000258:	4499      	add	r9, r3
 800025a:	f001 facd 	bl	80017f8 <rgb_get>
 800025e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000262:	4498      	add	r8, r3
 8000264:	f001 fac8 	bl	80017f8 <rgb_get>
 8000268:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800026c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000270:	441f      	add	r7, r3
 8000272:	f001 fac1 	bl	80017f8 <rgb_get>
 8000276:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027a:	3501      	adds	r5, #1
 800027c:	f9b0 3024 	ldrsh.w	r3, [r0, #36]	; 0x24
 8000280:	2d08      	cmp	r5, #8
 8000282:	441e      	add	r6, r3
 8000284:	d1bb      	bne.n	80001fe <_ZN6CRobot16line_sensor_readEv+0x3a>
 8000286:	fb99 f9f5 	sdiv	r9, r9, r5
 800028a:	fb98 f8f5 	sdiv	r8, r8, r5
 800028e:	fb97 f7f5 	sdiv	r7, r7, r5
 8000292:	fb96 f5f5 	sdiv	r5, r6, r5
 8000296:	2600      	movs	r6, #0
 8000298:	f001 faae 	bl	80017f8 <rgb_get>
 800029c:	4682      	mov	sl, r0
 800029e:	f001 faab 	bl	80017f8 <rgb_get>
 80002a2:	f106 0318 	add.w	r3, r6, #24
 80002a6:	005b      	lsls	r3, r3, #1
 80002a8:	4418      	add	r0, r3
 80002aa:	449a      	add	sl, r3
 80002ac:	88c3      	ldrh	r3, [r0, #6]
 80002ae:	ebc3 0309 	rsb	r3, r3, r9
 80002b2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002b6:	f001 fa9f 	bl	80017f8 <rgb_get>
 80002ba:	4682      	mov	sl, r0
 80002bc:	f001 fa9c 	bl	80017f8 <rgb_get>
 80002c0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002c4:	ebc8 0303 	rsb	r3, r8, r3
 80002c8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002cc:	f001 fa94 	bl	80017f8 <rgb_get>
 80002d0:	4682      	mov	sl, r0
 80002d2:	f001 fa91 	bl	80017f8 <rgb_get>
 80002d6:	f106 0308 	add.w	r3, r6, #8
 80002da:	005b      	lsls	r3, r3, #1
 80002dc:	4418      	add	r0, r3
 80002de:	449a      	add	sl, r3
 80002e0:	8843      	ldrh	r3, [r0, #2]
 80002e2:	1bdb      	subs	r3, r3, r7
 80002e4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002e8:	f001 fa86 	bl	80017f8 <rgb_get>
 80002ec:	4682      	mov	sl, r0
 80002ee:	f001 fa83 	bl	80017f8 <rgb_get>
 80002f2:	f106 0310 	add.w	r3, r6, #16
 80002f6:	005b      	lsls	r3, r3, #1
 80002f8:	4418      	add	r0, r3
 80002fa:	449a      	add	sl, r3
 80002fc:	8883      	ldrh	r3, [r0, #4]
 80002fe:	3601      	adds	r6, #1
 8000300:	1b5b      	subs	r3, r3, r5
 8000302:	2e08      	cmp	r6, #8
 8000304:	f8aa 3004 	strh.w	r3, [sl, #4]
 8000308:	d1c6      	bne.n	8000298 <_ZN6CRobot16line_sensor_readEv+0xd4>
 800030a:	f104 0568 	add.w	r5, r4, #104	; 0x68
 800030e:	462f      	mov	r7, r5
 8000310:	2600      	movs	r6, #0
 8000312:	f001 fa71 	bl	80017f8 <rgb_get>
 8000316:	eb00 0046 	add.w	r0, r0, r6, lsl #1
 800031a:	3601      	adds	r6, #1
 800031c:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 800031e:	f827 3f02 	strh.w	r3, [r7, #2]!
 8000322:	2e08      	cmp	r6, #8
 8000324:	d1f5      	bne.n	8000312 <_ZN6CRobot16line_sensor_readEv+0x14e>
 8000326:	f504 73ac 	add.w	r3, r4, #344	; 0x158
 800032a:	f103 0110 	add.w	r1, r3, #16
 800032e:	461a      	mov	r2, r3
 8000330:	f832 0f02 	ldrh.w	r0, [r2, #2]!
 8000334:	8210      	strh	r0, [r2, #16]
 8000336:	428a      	cmp	r2, r1
 8000338:	d1fa      	bne.n	8000330 <_ZN6CRobot16line_sensor_readEv+0x16c>
 800033a:	3b10      	subs	r3, #16
 800033c:	42ab      	cmp	r3, r5
 800033e:	d1f4      	bne.n	800032a <_ZN6CRobot16line_sensor_readEv+0x166>
 8000340:	f104 0378 	add.w	r3, r4, #120	; 0x78
 8000344:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000348:	822a      	strh	r2, [r5, #16]
 800034a:	429d      	cmp	r5, r3
 800034c:	d1fa      	bne.n	8000344 <_ZN6CRobot16line_sensor_readEv+0x180>
 800034e:	f8b4 6070 	ldrh.w	r6, [r4, #112]	; 0x70
 8000352:	f8b4 7072 	ldrh.w	r7, [r4, #114]	; 0x72
 8000356:	f8b4 c074 	ldrh.w	ip, [r4, #116]	; 0x74
 800035a:	b239      	sxth	r1, r7
 800035c:	b235      	sxth	r5, r6
 800035e:	186a      	adds	r2, r5, r1
 8000360:	bf1f      	itttt	ne
 8000362:	4b45      	ldrne	r3, [pc, #276]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000364:	88d8      	ldrhne	r0, [r3, #6]
 8000366:	891b      	ldrhne	r3, [r3, #8]
 8000368:	fb17 f303 	smulbbne	r3, r7, r3
 800036c:	bf1f      	itttt	ne
 800036e:	fb16 3300 	smlabbne	r3, r6, r0, r3
 8000372:	2002      	movne	r0, #2
 8000374:	fb93 f3f2 	sdivne	r3, r3, r2
 8000378:	fb92 f2f0 	sdivne	r2, r2, r0
 800037c:	fa0f f08c 	sxth.w	r0, ip
 8000380:	bf08      	it	eq
 8000382:	4613      	moveq	r3, r2
 8000384:	1841      	adds	r1, r0, r1
 8000386:	d00d      	beq.n	80003a4 <_ZN6CRobot16line_sensor_readEv+0x1e0>
 8000388:	f9b4 e000 	ldrsh.w	lr, [r4]
 800038c:	4586      	cmp	lr, r0
 800038e:	da09      	bge.n	80003a4 <_ZN6CRobot16line_sensor_readEv+0x1e0>
 8000390:	4b39      	ldr	r3, [pc, #228]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000392:	895a      	ldrh	r2, [r3, #10]
 8000394:	891b      	ldrh	r3, [r3, #8]
 8000396:	fb17 f303 	smulbb	r3, r7, r3
 800039a:	fb1c 3302 	smlabb	r3, ip, r2, r3
 800039e:	4602      	mov	r2, r0
 80003a0:	fb93 f3f1 	sdiv	r3, r3, r1
 80003a4:	f8b4 e06e 	ldrh.w	lr, [r4, #110]	; 0x6e
 80003a8:	fa0f f18e 	sxth.w	r1, lr
 80003ac:	194d      	adds	r5, r1, r5
 80003ae:	d00d      	beq.n	80003cc <_ZN6CRobot16line_sensor_readEv+0x208>
 80003b0:	f9b4 7000 	ldrsh.w	r7, [r4]
 80003b4:	428f      	cmp	r7, r1
 80003b6:	da09      	bge.n	80003cc <_ZN6CRobot16line_sensor_readEv+0x208>
 80003b8:	4b2f      	ldr	r3, [pc, #188]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 80003ba:	889a      	ldrh	r2, [r3, #4]
 80003bc:	88db      	ldrh	r3, [r3, #6]
 80003be:	fb16 f303 	smulbb	r3, r6, r3
 80003c2:	fb1e 3302 	smlabb	r3, lr, r2, r3
 80003c6:	460a      	mov	r2, r1
 80003c8:	fb93 f3f5 	sdiv	r3, r3, r5
 80003cc:	f8b4 7076 	ldrh.w	r7, [r4, #118]	; 0x76
 80003d0:	b23e      	sxth	r6, r7
 80003d2:	1830      	adds	r0, r6, r0
 80003d4:	d00d      	beq.n	80003f2 <_ZN6CRobot16line_sensor_readEv+0x22e>
 80003d6:	f9b4 5000 	ldrsh.w	r5, [r4]
 80003da:	42b5      	cmp	r5, r6
 80003dc:	da09      	bge.n	80003f2 <_ZN6CRobot16line_sensor_readEv+0x22e>
 80003de:	4a26      	ldr	r2, [pc, #152]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 80003e0:	8995      	ldrh	r5, [r2, #12]
 80003e2:	8952      	ldrh	r2, [r2, #10]
 80003e4:	fb1c f302 	smulbb	r3, ip, r2
 80003e8:	4632      	mov	r2, r6
 80003ea:	fb17 3705 	smlabb	r7, r7, r5, r3
 80003ee:	fb97 f3f0 	sdiv	r3, r7, r0
 80003f2:	f8b4 506c 	ldrh.w	r5, [r4, #108]	; 0x6c
 80003f6:	b228      	sxth	r0, r5
 80003f8:	1841      	adds	r1, r0, r1
 80003fa:	d00d      	beq.n	8000418 <_ZN6CRobot16line_sensor_readEv+0x254>
 80003fc:	f9b4 6000 	ldrsh.w	r6, [r4]
 8000400:	4286      	cmp	r6, r0
 8000402:	da09      	bge.n	8000418 <_ZN6CRobot16line_sensor_readEv+0x254>
 8000404:	4a1c      	ldr	r2, [pc, #112]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000406:	8856      	ldrh	r6, [r2, #2]
 8000408:	8892      	ldrh	r2, [r2, #4]
 800040a:	fb1e f302 	smulbb	r3, lr, r2
 800040e:	4602      	mov	r2, r0
 8000410:	fb15 3306 	smlabb	r3, r5, r6, r3
 8000414:	fb93 f3f1 	sdiv	r3, r3, r1
 8000418:	f9b4 0078 	ldrsh.w	r0, [r4, #120]	; 0x78
 800041c:	f9b4 1000 	ldrsh.w	r1, [r4]
 8000420:	4288      	cmp	r0, r1
 8000422:	bfc4      	itt	gt
 8000424:	4b14      	ldrgt	r3, [pc, #80]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000426:	4602      	movgt	r2, r0
 8000428:	f9b4 006a 	ldrsh.w	r0, [r4, #106]	; 0x6a
 800042c:	bfc8      	it	gt
 800042e:	f9b3 300e 	ldrshgt.w	r3, [r3, #14]
 8000432:	4288      	cmp	r0, r1
 8000434:	bfc2      	ittt	gt
 8000436:	4b10      	ldrgt	r3, [pc, #64]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000438:	4602      	movgt	r2, r0
 800043a:	f9b3 3000 	ldrshgt.w	r3, [r3]
 800043e:	428a      	cmp	r2, r1
 8000440:	dd0d      	ble.n	800045e <_ZN6CRobot16line_sensor_readEv+0x29a>
 8000442:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000446:	dc05      	bgt.n	8000454 <_ZN6CRobot16line_sensor_readEv+0x290>
 8000448:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 800044c:	4293      	cmp	r3, r2
 800044e:	bfb8      	it	lt
 8000450:	4613      	movlt	r3, r2
 8000452:	e001      	b.n	8000458 <_ZN6CRobot16line_sensor_readEv+0x294>
 8000454:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000458:	6363      	str	r3, [r4, #52]	; 0x34
 800045a:	2301      	movs	r3, #1
 800045c:	e000      	b.n	8000460 <_ZN6CRobot16line_sensor_readEv+0x29c>
 800045e:	2300      	movs	r3, #0
 8000460:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8000464:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000468:	200004fc 	.word	0x200004fc
 800046c:	2000049c 	.word	0x2000049c
 8000470:	200004bc 	.word	0x200004bc
 8000474:	200004dc 	.word	0x200004dc
 8000478:	20000000 	.word	0x20000000

0800047c <_ZN6CRobot19process_rgb_sensorsEv>:
 800047c:	b510      	push	{r4, lr}
 800047e:	4604      	mov	r4, r0
 8000480:	f001 f9be 	bl	8001800 <rgb_read>
 8000484:	4620      	mov	r0, r4
 8000486:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800048a:	f7ff be9b 	b.w	80001c4 <_ZN6CRobot16line_sensor_readEv>
	...

08000490 <_ZN6CRobot16line_sensor_initEv>:
 8000490:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000494:	4680      	mov	r8, r0
 8000496:	f04f 0900 	mov.w	r9, #0
 800049a:	f001 f96b 	bl	8001774 <rgb_init>
 800049e:	f001 f9af 	bl	8001800 <rgb_read>
 80004a2:	2192      	movs	r1, #146	; 0x92
 80004a4:	2072      	movs	r0, #114	; 0x72
 80004a6:	f108 0260 	add.w	r2, r8, #96	; 0x60
 80004aa:	f001 f948 	bl	800173e <rgb_i2c_read_reg>
 80004ae:	f108 015f 	add.w	r1, r8, #95	; 0x5f
 80004b2:	464b      	mov	r3, r9
 80004b4:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 80004b8:	2a69      	cmp	r2, #105	; 0x69
 80004ba:	bf1c      	itt	ne
 80004bc:	2201      	movne	r2, #1
 80004be:	409a      	lslne	r2, r3
 80004c0:	f103 0301 	add.w	r3, r3, #1
 80004c4:	bf18      	it	ne
 80004c6:	ea49 0902 	orrne.w	r9, r9, r2
 80004ca:	2b09      	cmp	r3, #9
 80004cc:	d1f2      	bne.n	80004b4 <_ZN6CRobot16line_sensor_initEv+0x24>
 80004ce:	f108 0368 	add.w	r3, r8, #104	; 0x68
 80004d2:	9301      	str	r3, [sp, #4]
 80004d4:	9a01      	ldr	r2, [sp, #4]
 80004d6:	f108 0378 	add.w	r3, r8, #120	; 0x78
 80004da:	9300      	str	r3, [sp, #0]
 80004dc:	2300      	movs	r3, #0
 80004de:	f822 3f02 	strh.w	r3, [r2, #2]!
 80004e2:	9900      	ldr	r1, [sp, #0]
 80004e4:	428a      	cmp	r2, r1
 80004e6:	d1f9      	bne.n	80004dc <_ZN6CRobot16line_sensor_initEv+0x4c>
 80004e8:	4a3d      	ldr	r2, [pc, #244]	; (80005e0 <_ZN6CRobot16line_sensor_initEv+0x150>)
 80004ea:	4f3e      	ldr	r7, [pc, #248]	; (80005e4 <_ZN6CRobot16line_sensor_initEv+0x154>)
 80004ec:	4e3e      	ldr	r6, [pc, #248]	; (80005e8 <_ZN6CRobot16line_sensor_initEv+0x158>)
 80004ee:	4d3f      	ldr	r5, [pc, #252]	; (80005ec <_ZN6CRobot16line_sensor_initEv+0x15c>)
 80004f0:	2100      	movs	r1, #0
 80004f2:	f847 1023 	str.w	r1, [r7, r3, lsl #2]
 80004f6:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
 80004fa:	f845 1023 	str.w	r1, [r5, r3, lsl #2]
 80004fe:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8000502:	3301      	adds	r3, #1
 8000504:	2b08      	cmp	r3, #8
 8000506:	4692      	mov	sl, r2
 8000508:	d1ee      	bne.n	80004e8 <_ZN6CRobot16line_sensor_initEv+0x58>
 800050a:	2440      	movs	r4, #64	; 0x40
 800050c:	f001 f978 	bl	8001800 <rgb_read>
 8000510:	f04f 0b00 	mov.w	fp, #0
 8000514:	f001 f970 	bl	80017f8 <rgb_get>
 8000518:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 800051c:	f9b0 1036 	ldrsh.w	r1, [r0, #54]	; 0x36
 8000520:	f857 002b 	ldr.w	r0, [r7, fp, lsl #2]
 8000524:	4401      	add	r1, r0
 8000526:	f847 102b 	str.w	r1, [r7, fp, lsl #2]
 800052a:	f001 f965 	bl	80017f8 <rgb_get>
 800052e:	f930 101b 	ldrsh.w	r1, [r0, fp, lsl #1]
 8000532:	f856 002b 	ldr.w	r0, [r6, fp, lsl #2]
 8000536:	4401      	add	r1, r0
 8000538:	f846 102b 	str.w	r1, [r6, fp, lsl #2]
 800053c:	f001 f95c 	bl	80017f8 <rgb_get>
 8000540:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 8000544:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
 8000548:	f855 002b 	ldr.w	r0, [r5, fp, lsl #2]
 800054c:	4401      	add	r1, r0
 800054e:	f845 102b 	str.w	r1, [r5, fp, lsl #2]
 8000552:	f001 f951 	bl	80017f8 <rgb_get>
 8000556:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 800055a:	f9b0 1024 	ldrsh.w	r1, [r0, #36]	; 0x24
 800055e:	f85a 002b 	ldr.w	r0, [sl, fp, lsl #2]
 8000562:	4401      	add	r1, r0
 8000564:	f84a 102b 	str.w	r1, [sl, fp, lsl #2]
 8000568:	f10b 0b01 	add.w	fp, fp, #1
 800056c:	f1bb 0f08 	cmp.w	fp, #8
 8000570:	d1d0      	bne.n	8000514 <_ZN6CRobot16line_sensor_initEv+0x84>
 8000572:	2005      	movs	r0, #5
 8000574:	f001 fd16 	bl	8001fa4 <timer_delay_ms>
 8000578:	3c01      	subs	r4, #1
 800057a:	d1c7      	bne.n	800050c <_ZN6CRobot16line_sensor_initEv+0x7c>
 800057c:	f857 3024 	ldr.w	r3, [r7, r4, lsl #2]
 8000580:	099b      	lsrs	r3, r3, #6
 8000582:	f847 3024 	str.w	r3, [r7, r4, lsl #2]
 8000586:	f856 3024 	ldr.w	r3, [r6, r4, lsl #2]
 800058a:	099b      	lsrs	r3, r3, #6
 800058c:	f846 3024 	str.w	r3, [r6, r4, lsl #2]
 8000590:	f855 3024 	ldr.w	r3, [r5, r4, lsl #2]
 8000594:	099b      	lsrs	r3, r3, #6
 8000596:	f845 3024 	str.w	r3, [r5, r4, lsl #2]
 800059a:	f85a 3024 	ldr.w	r3, [sl, r4, lsl #2]
 800059e:	099b      	lsrs	r3, r3, #6
 80005a0:	f84a 3024 	str.w	r3, [sl, r4, lsl #2]
 80005a4:	3401      	adds	r4, #1
 80005a6:	2c08      	cmp	r4, #8
 80005a8:	d1e8      	bne.n	800057c <_ZN6CRobot16line_sensor_initEv+0xec>
 80005aa:	4640      	mov	r0, r8
 80005ac:	f7ff fe0a 	bl	80001c4 <_ZN6CRobot16line_sensor_readEv>
 80005b0:	2400      	movs	r4, #0
 80005b2:	4640      	mov	r0, r8
 80005b4:	f7ff fe06 	bl	80001c4 <_ZN6CRobot16line_sensor_readEv>
 80005b8:	9b01      	ldr	r3, [sp, #4]
 80005ba:	f833 1f02 	ldrh.w	r1, [r3, #2]!
 80005be:	191a      	adds	r2, r3, r4
 80005c0:	8211      	strh	r1, [r2, #16]
 80005c2:	9a00      	ldr	r2, [sp, #0]
 80005c4:	4293      	cmp	r3, r2
 80005c6:	d1f8      	bne.n	80005ba <_ZN6CRobot16line_sensor_initEv+0x12a>
 80005c8:	2005      	movs	r0, #5
 80005ca:	3410      	adds	r4, #16
 80005cc:	f001 fcea 	bl	8001fa4 <timer_delay_ms>
 80005d0:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 80005d4:	d1ed      	bne.n	80005b2 <_ZN6CRobot16line_sensor_initEv+0x122>
 80005d6:	4648      	mov	r0, r9
 80005d8:	b003      	add	sp, #12
 80005da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80005de:	bf00      	nop
 80005e0:	200004dc 	.word	0x200004dc
 80005e4:	200004fc 	.word	0x200004fc
 80005e8:	2000049c 	.word	0x2000049c
 80005ec:	200004bc 	.word	0x200004bc

080005f0 <_ZN6CRobot28get_line_sensor_raw_data_difEv>:
 80005f0:	306a      	adds	r0, #106	; 0x6a
 80005f2:	4770      	bx	lr

080005f4 <_ZN6CRobot12lsm9ds0_readEv>:
 80005f4:	b538      	push	{r3, r4, r5, lr}
 80005f6:	2128      	movs	r1, #40	; 0x28
 80005f8:	4604      	mov	r4, r0
 80005fa:	20d4      	movs	r0, #212	; 0xd4
 80005fc:	f001 ff4d 	bl	800249a <i2c_read_reg>
 8000600:	2129      	movs	r1, #41	; 0x29
 8000602:	4605      	mov	r5, r0
 8000604:	20d4      	movs	r0, #212	; 0xd4
 8000606:	f001 ff48 	bl	800249a <i2c_read_reg>
 800060a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800060e:	f8a4 0186 	strh.w	r0, [r4, #390]	; 0x186
 8000612:	212a      	movs	r1, #42	; 0x2a
 8000614:	20d4      	movs	r0, #212	; 0xd4
 8000616:	f001 ff40 	bl	800249a <i2c_read_reg>
 800061a:	212b      	movs	r1, #43	; 0x2b
 800061c:	4605      	mov	r5, r0
 800061e:	20d4      	movs	r0, #212	; 0xd4
 8000620:	f001 ff3b 	bl	800249a <i2c_read_reg>
 8000624:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000628:	f8a4 0188 	strh.w	r0, [r4, #392]	; 0x188
 800062c:	212c      	movs	r1, #44	; 0x2c
 800062e:	20d4      	movs	r0, #212	; 0xd4
 8000630:	f001 ff33 	bl	800249a <i2c_read_reg>
 8000634:	212d      	movs	r1, #45	; 0x2d
 8000636:	4605      	mov	r5, r0
 8000638:	20d4      	movs	r0, #212	; 0xd4
 800063a:	f001 ff2e 	bl	800249a <i2c_read_reg>
 800063e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000642:	f8a4 018a 	strh.w	r0, [r4, #394]	; 0x18a
 8000646:	2108      	movs	r1, #8
 8000648:	203c      	movs	r0, #60	; 0x3c
 800064a:	f001 ff26 	bl	800249a <i2c_read_reg>
 800064e:	2109      	movs	r1, #9
 8000650:	4605      	mov	r5, r0
 8000652:	203c      	movs	r0, #60	; 0x3c
 8000654:	f001 ff21 	bl	800249a <i2c_read_reg>
 8000658:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800065c:	f8a4 0180 	strh.w	r0, [r4, #384]	; 0x180
 8000660:	210a      	movs	r1, #10
 8000662:	203c      	movs	r0, #60	; 0x3c
 8000664:	f001 ff19 	bl	800249a <i2c_read_reg>
 8000668:	210b      	movs	r1, #11
 800066a:	4605      	mov	r5, r0
 800066c:	203c      	movs	r0, #60	; 0x3c
 800066e:	f001 ff14 	bl	800249a <i2c_read_reg>
 8000672:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000676:	f8a4 0182 	strh.w	r0, [r4, #386]	; 0x182
 800067a:	210c      	movs	r1, #12
 800067c:	203c      	movs	r0, #60	; 0x3c
 800067e:	f001 ff0c 	bl	800249a <i2c_read_reg>
 8000682:	210d      	movs	r1, #13
 8000684:	4605      	mov	r5, r0
 8000686:	203c      	movs	r0, #60	; 0x3c
 8000688:	f001 ff07 	bl	800249a <i2c_read_reg>
 800068c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000690:	f8a4 0184 	strh.w	r0, [r4, #388]	; 0x184
 8000694:	2128      	movs	r1, #40	; 0x28
 8000696:	203c      	movs	r0, #60	; 0x3c
 8000698:	f001 feff 	bl	800249a <i2c_read_reg>
 800069c:	2129      	movs	r1, #41	; 0x29
 800069e:	4605      	mov	r5, r0
 80006a0:	203c      	movs	r0, #60	; 0x3c
 80006a2:	f001 fefa 	bl	800249a <i2c_read_reg>
 80006a6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006aa:	f8a4 017a 	strh.w	r0, [r4, #378]	; 0x17a
 80006ae:	212a      	movs	r1, #42	; 0x2a
 80006b0:	203c      	movs	r0, #60	; 0x3c
 80006b2:	f001 fef2 	bl	800249a <i2c_read_reg>
 80006b6:	212b      	movs	r1, #43	; 0x2b
 80006b8:	4605      	mov	r5, r0
 80006ba:	203c      	movs	r0, #60	; 0x3c
 80006bc:	f001 feed 	bl	800249a <i2c_read_reg>
 80006c0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006c4:	f8a4 017c 	strh.w	r0, [r4, #380]	; 0x17c
 80006c8:	212c      	movs	r1, #44	; 0x2c
 80006ca:	203c      	movs	r0, #60	; 0x3c
 80006cc:	f001 fee5 	bl	800249a <i2c_read_reg>
 80006d0:	212d      	movs	r1, #45	; 0x2d
 80006d2:	4605      	mov	r5, r0
 80006d4:	203c      	movs	r0, #60	; 0x3c
 80006d6:	f001 fee0 	bl	800249a <i2c_read_reg>
 80006da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006de:	f8a4 017e 	strh.w	r0, [r4, #382]	; 0x17e
 80006e2:	2105      	movs	r1, #5
 80006e4:	203c      	movs	r0, #60	; 0x3c
 80006e6:	f001 fed8 	bl	800249a <i2c_read_reg>
 80006ea:	2106      	movs	r1, #6
 80006ec:	4605      	mov	r5, r0
 80006ee:	203c      	movs	r0, #60	; 0x3c
 80006f0:	f001 fed3 	bl	800249a <i2c_read_reg>
 80006f4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006f8:	f8a4 0198 	strh.w	r0, [r4, #408]	; 0x198
 80006fc:	bd38      	pop	{r3, r4, r5, pc}

080006fe <_ZN6CRobot18process_imu_sensorEv>:
 80006fe:	b510      	push	{r4, lr}
 8000700:	4604      	mov	r4, r0
 8000702:	f7ff ff77 	bl	80005f4 <_ZN6CRobot12lsm9ds0_readEv>
 8000706:	f9b4 3186 	ldrsh.w	r3, [r4, #390]	; 0x186
 800070a:	f8d4 218c 	ldr.w	r2, [r4, #396]	; 0x18c
 800070e:	1a9a      	subs	r2, r3, r2
 8000710:	6ca3      	ldr	r3, [r4, #72]	; 0x48
 8000712:	2164      	movs	r1, #100	; 0x64
 8000714:	fb92 f2f1 	sdiv	r2, r2, r1
 8000718:	441a      	add	r2, r3
 800071a:	64a2      	str	r2, [r4, #72]	; 0x48
 800071c:	f8d4 3190 	ldr.w	r3, [r4, #400]	; 0x190
 8000720:	f9b4 2188 	ldrsh.w	r2, [r4, #392]	; 0x188
 8000724:	1ad2      	subs	r2, r2, r3
 8000726:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 8000728:	fb92 f2f1 	sdiv	r2, r2, r1
 800072c:	441a      	add	r2, r3
 800072e:	64e2      	str	r2, [r4, #76]	; 0x4c
 8000730:	f8d4 3194 	ldr.w	r3, [r4, #404]	; 0x194
 8000734:	f9b4 218a 	ldrsh.w	r2, [r4, #394]	; 0x18a
 8000738:	1ad3      	subs	r3, r2, r3
 800073a:	6d22      	ldr	r2, [r4, #80]	; 0x50
 800073c:	fb93 f3f1 	sdiv	r3, r3, r1
 8000740:	4413      	add	r3, r2
 8000742:	6523      	str	r3, [r4, #80]	; 0x50
 8000744:	f9b4 317a 	ldrsh.w	r3, [r4, #378]	; 0x17a
 8000748:	6563      	str	r3, [r4, #84]	; 0x54
 800074a:	bd10      	pop	{r4, pc}

0800074c <_ZN6CRobot12lsm9ds0_initEv>:
 800074c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000750:	210f      	movs	r1, #15
 8000752:	4604      	mov	r4, r0
 8000754:	20d4      	movs	r0, #212	; 0xd4
 8000756:	f001 fea0 	bl	800249a <i2c_read_reg>
 800075a:	28d4      	cmp	r0, #212	; 0xd4
 800075c:	4605      	mov	r5, r0
 800075e:	d164      	bne.n	800082a <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000760:	203c      	movs	r0, #60	; 0x3c
 8000762:	210f      	movs	r1, #15
 8000764:	f001 fe99 	bl	800249a <i2c_read_reg>
 8000768:	2849      	cmp	r0, #73	; 0x49
 800076a:	d160      	bne.n	800082e <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 800076c:	4628      	mov	r0, r5
 800076e:	2120      	movs	r1, #32
 8000770:	22ff      	movs	r2, #255	; 0xff
 8000772:	f001 fe7f 	bl	8002474 <i2c_write_reg>
 8000776:	4628      	mov	r0, r5
 8000778:	2123      	movs	r1, #35	; 0x23
 800077a:	2210      	movs	r2, #16
 800077c:	f001 fe7a 	bl	8002474 <i2c_write_reg>
 8000780:	203c      	movs	r0, #60	; 0x3c
 8000782:	211f      	movs	r1, #31
 8000784:	2200      	movs	r2, #0
 8000786:	f001 fe75 	bl	8002474 <i2c_write_reg>
 800078a:	203c      	movs	r0, #60	; 0x3c
 800078c:	2120      	movs	r1, #32
 800078e:	2267      	movs	r2, #103	; 0x67
 8000790:	f001 fe70 	bl	8002474 <i2c_write_reg>
 8000794:	203c      	movs	r0, #60	; 0x3c
 8000796:	2121      	movs	r1, #33	; 0x21
 8000798:	2200      	movs	r2, #0
 800079a:	f001 fe6b 	bl	8002474 <i2c_write_reg>
 800079e:	203c      	movs	r0, #60	; 0x3c
 80007a0:	2124      	movs	r1, #36	; 0x24
 80007a2:	22f4      	movs	r2, #244	; 0xf4
 80007a4:	f001 fe66 	bl	8002474 <i2c_write_reg>
 80007a8:	203c      	movs	r0, #60	; 0x3c
 80007aa:	2125      	movs	r1, #37	; 0x25
 80007ac:	2200      	movs	r2, #0
 80007ae:	f001 fe61 	bl	8002474 <i2c_write_reg>
 80007b2:	203c      	movs	r0, #60	; 0x3c
 80007b4:	2126      	movs	r1, #38	; 0x26
 80007b6:	2280      	movs	r2, #128	; 0x80
 80007b8:	f001 fe5c 	bl	8002474 <i2c_write_reg>
 80007bc:	4620      	mov	r0, r4
 80007be:	f7ff ff19 	bl	80005f4 <_ZN6CRobot12lsm9ds0_readEv>
 80007c2:	2600      	movs	r6, #0
 80007c4:	2540      	movs	r5, #64	; 0x40
 80007c6:	4637      	mov	r7, r6
 80007c8:	46b0      	mov	r8, r6
 80007ca:	4620      	mov	r0, r4
 80007cc:	f7ff ff12 	bl	80005f4 <_ZN6CRobot12lsm9ds0_readEv>
 80007d0:	f9b4 3186 	ldrsh.w	r3, [r4, #390]	; 0x186
 80007d4:	4498      	add	r8, r3
 80007d6:	f9b4 3188 	ldrsh.w	r3, [r4, #392]	; 0x188
 80007da:	441f      	add	r7, r3
 80007dc:	f9b4 318a 	ldrsh.w	r3, [r4, #394]	; 0x18a
 80007e0:	3d01      	subs	r5, #1
 80007e2:	441e      	add	r6, r3
 80007e4:	d1f1      	bne.n	80007ca <_ZN6CRobot12lsm9ds0_initEv+0x7e>
 80007e6:	2240      	movs	r2, #64	; 0x40
 80007e8:	f8a4 517a 	strh.w	r5, [r4, #378]	; 0x17a
 80007ec:	fb98 f3f2 	sdiv	r3, r8, r2
 80007f0:	fb97 f7f2 	sdiv	r7, r7, r2
 80007f4:	fb96 f6f2 	sdiv	r6, r6, r2
 80007f8:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 80007fc:	f8c4 7190 	str.w	r7, [r4, #400]	; 0x190
 8000800:	f8c4 6194 	str.w	r6, [r4, #404]	; 0x194
 8000804:	f8a4 517c 	strh.w	r5, [r4, #380]	; 0x17c
 8000808:	f8a4 517e 	strh.w	r5, [r4, #382]	; 0x17e
 800080c:	f8a4 5180 	strh.w	r5, [r4, #384]	; 0x180
 8000810:	f8a4 5182 	strh.w	r5, [r4, #386]	; 0x182
 8000814:	f8a4 5184 	strh.w	r5, [r4, #388]	; 0x184
 8000818:	f8a4 5186 	strh.w	r5, [r4, #390]	; 0x186
 800081c:	f8a4 5188 	strh.w	r5, [r4, #392]	; 0x188
 8000820:	f8a4 518a 	strh.w	r5, [r4, #394]	; 0x18a
 8000824:	f8a4 5198 	strh.w	r5, [r4, #408]	; 0x198
 8000828:	e002      	b.n	8000830 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 800082a:	2501      	movs	r5, #1
 800082c:	e000      	b.n	8000830 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 800082e:	2502      	movs	r5, #2
 8000830:	4628      	mov	r0, r5
 8000832:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08000836 <_ZN6CRobot4initEv>:
 8000836:	2300      	movs	r3, #0
 8000838:	b510      	push	{r4, lr}
 800083a:	6583      	str	r3, [r0, #88]	; 0x58
 800083c:	65c3      	str	r3, [r0, #92]	; 0x5c
 800083e:	4604      	mov	r4, r0
 8000840:	f7ff fe26 	bl	8000490 <_ZN6CRobot16line_sensor_initEv>
 8000844:	b110      	cbz	r0, 800084c <_ZN6CRobot4initEv+0x16>
 8000846:	65a0      	str	r0, [r4, #88]	; 0x58
 8000848:	2302      	movs	r3, #2
 800084a:	e00d      	b.n	8000868 <_ZN6CRobot4initEv+0x32>
 800084c:	f884 0030 	strb.w	r0, [r4, #48]	; 0x30
 8000850:	6360      	str	r0, [r4, #52]	; 0x34
 8000852:	63a0      	str	r0, [r4, #56]	; 0x38
 8000854:	63e0      	str	r0, [r4, #60]	; 0x3c
 8000856:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 800085a:	6460      	str	r0, [r4, #68]	; 0x44
 800085c:	4620      	mov	r0, r4
 800085e:	f7ff ff75 	bl	800074c <_ZN6CRobot12lsm9ds0_initEv>
 8000862:	b118      	cbz	r0, 800086c <_ZN6CRobot4initEv+0x36>
 8000864:	65a0      	str	r0, [r4, #88]	; 0x58
 8000866:	2303      	movs	r3, #3
 8000868:	65e3      	str	r3, [r4, #92]	; 0x5c
 800086a:	bd10      	pop	{r4, pc}
 800086c:	64a0      	str	r0, [r4, #72]	; 0x48
 800086e:	64e0      	str	r0, [r4, #76]	; 0x4c
 8000870:	6520      	str	r0, [r4, #80]	; 0x50
 8000872:	bd10      	pop	{r4, pc}

08000874 <abort_error_>:
 8000874:	b570      	push	{r4, r5, r6, lr}
 8000876:	4605      	mov	r5, r0
 8000878:	460e      	mov	r6, r1
 800087a:	480f      	ldr	r0, [pc, #60]	; (80008b8 <abort_error_+0x44>)
 800087c:	4629      	mov	r1, r5
 800087e:	4632      	mov	r2, r6
 8000880:	f000 fc88 	bl	8001194 <printf_>
 8000884:	2400      	movs	r4, #0
 8000886:	1ceb      	adds	r3, r5, #3
 8000888:	429c      	cmp	r4, r3
 800088a:	d20f      	bcs.n	80008ac <abort_error_+0x38>
 800088c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000890:	f002 f8f0 	bl	8002a74 <led_on>
 8000894:	2032      	movs	r0, #50	; 0x32
 8000896:	f001 fb85 	bl	8001fa4 <timer_delay_ms>
 800089a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800089e:	f002 f8f3 	bl	8002a88 <led_off>
 80008a2:	2064      	movs	r0, #100	; 0x64
 80008a4:	f001 fb7e 	bl	8001fa4 <timer_delay_ms>
 80008a8:	3401      	adds	r4, #1
 80008aa:	e7ec      	b.n	8000886 <abort_error_+0x12>
 80008ac:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80008b0:	f001 fb78 	bl	8001fa4 <timer_delay_ms>
 80008b4:	e7e1      	b.n	800087a <abort_error_+0x6>
 80008b6:	bf00      	nop
 80008b8:	08004700 	.word	0x08004700

080008bc <_ZN9CObstacle4initEP6CRobot>:
 80008bc:	b121      	cbz	r1, 80008c8 <_ZN9CObstacle4initEP6CRobot+0xc>
 80008be:	2300      	movs	r3, #0
 80008c0:	6003      	str	r3, [r0, #0]
 80008c2:	4b02      	ldr	r3, [pc, #8]	; (80008cc <_ZN9CObstacle4initEP6CRobot+0x10>)
 80008c4:	6041      	str	r1, [r0, #4]
 80008c6:	6019      	str	r1, [r3, #0]
 80008c8:	4770      	bx	lr
 80008ca:	bf00      	nop
 80008cc:	2000051c 	.word	0x2000051c

080008d0 <_ZN4CMap4initEP6CRobot>:
 80008d0:	b111      	cbz	r1, 80008d8 <_ZN4CMap4initEP6CRobot+0x8>
 80008d2:	2300      	movs	r3, #0
 80008d4:	6041      	str	r1, [r0, #4]
 80008d6:	6003      	str	r3, [r0, #0]
 80008d8:	4770      	bx	lr

080008da <_ZN4CMap10save_stateE6sStatej>:
 80008da:	b507      	push	{r0, r1, r2, lr}
 80008dc:	ab02      	add	r3, sp, #8
 80008de:	0090      	lsls	r0, r2, #2
 80008e0:	f843 1d04 	str.w	r1, [r3, #-4]!
 80008e4:	2204      	movs	r2, #4
 80008e6:	4619      	mov	r1, r3
 80008e8:	f000 fd24 	bl	8001334 <log_write>
 80008ec:	b003      	add	sp, #12
 80008ee:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080008f4 <_ZN4CMap10add_to_mapEv>:
 80008f4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80008f6:	4604      	mov	r4, r0
 80008f8:	6840      	ldr	r0, [r0, #4]
 80008fa:	f7ff fc5c 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80008fe:	2100      	movs	r1, #0
 8000900:	6845      	ldr	r5, [r0, #4]
 8000902:	460a      	mov	r2, r1
 8000904:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000908:	4b12      	ldr	r3, [pc, #72]	; (8000954 <_ZN4CMap10add_to_mapEv+0x60>)
 800090a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800090e:	1aeb      	subs	r3, r5, r3
 8000910:	2b00      	cmp	r3, #0
 8000912:	bfb8      	it	lt
 8000914:	425b      	neglt	r3, r3
 8000916:	4283      	cmp	r3, r0
 8000918:	bfb8      	it	lt
 800091a:	4611      	movlt	r1, r2
 800091c:	f102 0201 	add.w	r2, r2, #1
 8000920:	bfb8      	it	lt
 8000922:	4618      	movlt	r0, r3
 8000924:	2a0a      	cmp	r2, #10
 8000926:	d1ef      	bne.n	8000908 <_ZN4CMap10add_to_mapEv+0x14>
 8000928:	2818      	cmp	r0, #24
 800092a:	dc11      	bgt.n	8000950 <_ZN4CMap10add_to_mapEv+0x5c>
 800092c:	6823      	ldr	r3, [r4, #0]
 800092e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000932:	d20d      	bcs.n	8000950 <_ZN4CMap10add_to_mapEv+0x5c>
 8000934:	f88d 1004 	strb.w	r1, [sp, #4]
 8000938:	f002 f8dc 	bl	8002af4 <encoder_get_distance>
 800093c:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000940:	9901      	ldr	r1, [sp, #4]
 8000942:	6822      	ldr	r2, [r4, #0]
 8000944:	4620      	mov	r0, r4
 8000946:	f7ff ffc8 	bl	80008da <_ZN4CMap10save_stateE6sStatej>
 800094a:	6823      	ldr	r3, [r4, #0]
 800094c:	3301      	adds	r3, #1
 800094e:	6023      	str	r3, [r4, #0]
 8000950:	b003      	add	sp, #12
 8000952:	bd30      	pop	{r4, r5, pc}
 8000954:	20000010 	.word	0x20000010

08000958 <_Z18line_sensor_threadv>:
 8000958:	b508      	push	{r3, lr}
 800095a:	2000      	movs	r0, #0
 800095c:	2104      	movs	r1, #4
 800095e:	f001 fb31 	bl	8001fc4 <event_timer_set_period>
 8000962:	2000      	movs	r0, #0
 8000964:	f001 fb46 	bl	8001ff4 <event_timer_wait>
 8000968:	4801      	ldr	r0, [pc, #4]	; (8000970 <_Z18line_sensor_threadv+0x18>)
 800096a:	f7ff fd87 	bl	800047c <_ZN6CRobot19process_rgb_sensorsEv>
 800096e:	e7f8      	b.n	8000962 <_Z18line_sensor_threadv+0xa>
 8000970:	2000093c 	.word	0x2000093c

08000974 <_Z17imu_sensor_threadv>:
 8000974:	b508      	push	{r3, lr}
 8000976:	2001      	movs	r0, #1
 8000978:	210a      	movs	r1, #10
 800097a:	f001 fb23 	bl	8001fc4 <event_timer_set_period>
 800097e:	2001      	movs	r0, #1
 8000980:	f001 fb38 	bl	8001ff4 <event_timer_wait>
 8000984:	4805      	ldr	r0, [pc, #20]	; (800099c <_Z17imu_sensor_threadv+0x28>)
 8000986:	f7ff feba 	bl	80006fe <_ZN6CRobot18process_imu_sensorEv>
 800098a:	4b05      	ldr	r3, [pc, #20]	; (80009a0 <_Z17imu_sensor_threadv+0x2c>)
 800098c:	681b      	ldr	r3, [r3, #0]
 800098e:	2b00      	cmp	r3, #0
 8000990:	d0f5      	beq.n	800097e <_Z17imu_sensor_threadv+0xa>
 8000992:	4804      	ldr	r0, [pc, #16]	; (80009a4 <_Z17imu_sensor_threadv+0x30>)
 8000994:	f7ff ffae 	bl	80008f4 <_ZN4CMap10add_to_mapEv>
 8000998:	e7f1      	b.n	800097e <_Z17imu_sensor_threadv+0xa>
 800099a:	bf00      	nop
 800099c:	2000093c 	.word	0x2000093c
 80009a0:	20000d20 	.word	0x20000d20
 80009a4:	2000052c 	.word	0x2000052c

080009a8 <_Z16telemetry_threadv>:
 80009a8:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80009aa:	4865      	ldr	r0, [pc, #404]	; (8000b40 <_Z16telemetry_threadv+0x198>)
 80009ac:	f000 fbf2 	bl	8001194 <printf_>
 80009b0:	4864      	ldr	r0, [pc, #400]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009b2:	f7ff fbff 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009b6:	f9b0 5000 	ldrsh.w	r5, [r0]
 80009ba:	4862      	ldr	r0, [pc, #392]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009bc:	f7ff fbfa 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009c0:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
 80009c4:	485f      	ldr	r0, [pc, #380]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009c6:	f7ff fbf5 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009ca:	4629      	mov	r1, r5
 80009cc:	7903      	ldrb	r3, [r0, #4]
 80009ce:	485e      	ldr	r0, [pc, #376]	; (8000b48 <_Z16telemetry_threadv+0x1a0>)
 80009d0:	4622      	mov	r2, r4
 80009d2:	f000 fbdf 	bl	8001194 <printf_>
 80009d6:	485b      	ldr	r0, [pc, #364]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009d8:	f7ff fbec 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009dc:	6886      	ldr	r6, [r0, #8]
 80009de:	4859      	ldr	r0, [pc, #356]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009e0:	f7ff fbe8 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009e4:	68c5      	ldr	r5, [r0, #12]
 80009e6:	4857      	ldr	r0, [pc, #348]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009e8:	f7ff fbe4 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009ec:	6904      	ldr	r4, [r0, #16]
 80009ee:	4855      	ldr	r0, [pc, #340]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 80009f0:	f7ff fbe0 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80009f4:	6943      	ldr	r3, [r0, #20]
 80009f6:	9300      	str	r3, [sp, #0]
 80009f8:	4631      	mov	r1, r6
 80009fa:	462a      	mov	r2, r5
 80009fc:	4623      	mov	r3, r4
 80009fe:	4853      	ldr	r0, [pc, #332]	; (8000b4c <_Z16telemetry_threadv+0x1a4>)
 8000a00:	f000 fbc8 	bl	8001194 <printf_>
 8000a04:	484f      	ldr	r0, [pc, #316]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a06:	f7ff fbd5 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000a0a:	6a06      	ldr	r6, [r0, #32]
 8000a0c:	484d      	ldr	r0, [pc, #308]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a0e:	f7ff fbd1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000a12:	6a45      	ldr	r5, [r0, #36]	; 0x24
 8000a14:	484b      	ldr	r0, [pc, #300]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a16:	f7ff fbcd 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000a1a:	6a84      	ldr	r4, [r0, #40]	; 0x28
 8000a1c:	4849      	ldr	r0, [pc, #292]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a1e:	f7ff fbc9 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000a22:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000a24:	9300      	str	r3, [sp, #0]
 8000a26:	4631      	mov	r1, r6
 8000a28:	462a      	mov	r2, r5
 8000a2a:	4623      	mov	r3, r4
 8000a2c:	4848      	ldr	r0, [pc, #288]	; (8000b50 <_Z16telemetry_threadv+0x1a8>)
 8000a2e:	f000 fbb1 	bl	8001194 <printf_>
 8000a32:	4848      	ldr	r0, [pc, #288]	; (8000b54 <_Z16telemetry_threadv+0x1ac>)
 8000a34:	f000 fbae 	bl	8001194 <printf_>
 8000a38:	4847      	ldr	r0, [pc, #284]	; (8000b58 <_Z16telemetry_threadv+0x1b0>)
 8000a3a:	f000 fbab 	bl	8001194 <printf_>
 8000a3e:	4841      	ldr	r0, [pc, #260]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a40:	f7ff fbb9 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000a44:	7806      	ldrb	r6, [r0, #0]
 8000a46:	483f      	ldr	r0, [pc, #252]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a48:	f7ff fbb5 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000a4c:	6845      	ldr	r5, [r0, #4]
 8000a4e:	483d      	ldr	r0, [pc, #244]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a50:	f7ff fbb1 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000a54:	6884      	ldr	r4, [r0, #8]
 8000a56:	483b      	ldr	r0, [pc, #236]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a58:	f7ff fbad 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000a5c:	68c3      	ldr	r3, [r0, #12]
 8000a5e:	9300      	str	r3, [sp, #0]
 8000a60:	4631      	mov	r1, r6
 8000a62:	4623      	mov	r3, r4
 8000a64:	462a      	mov	r2, r5
 8000a66:	483d      	ldr	r0, [pc, #244]	; (8000b5c <_Z16telemetry_threadv+0x1b4>)
 8000a68:	f000 fb94 	bl	8001194 <printf_>
 8000a6c:	4839      	ldr	r0, [pc, #228]	; (8000b54 <_Z16telemetry_threadv+0x1ac>)
 8000a6e:	f000 fb91 	bl	8001194 <printf_>
 8000a72:	483b      	ldr	r0, [pc, #236]	; (8000b60 <_Z16telemetry_threadv+0x1b8>)
 8000a74:	f000 fb8e 	bl	8001194 <printf_>
 8000a78:	4832      	ldr	r0, [pc, #200]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a7a:	f7ff fb9e 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000a7e:	7804      	ldrb	r4, [r0, #0]
 8000a80:	4830      	ldr	r0, [pc, #192]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000a82:	f7ff fb9a 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000a86:	4603      	mov	r3, r0
 8000a88:	4621      	mov	r1, r4
 8000a8a:	685a      	ldr	r2, [r3, #4]
 8000a8c:	4835      	ldr	r0, [pc, #212]	; (8000b64 <_Z16telemetry_threadv+0x1bc>)
 8000a8e:	f000 fb81 	bl	8001194 <printf_>
 8000a92:	4830      	ldr	r0, [pc, #192]	; (8000b54 <_Z16telemetry_threadv+0x1ac>)
 8000a94:	f000 fb7e 	bl	8001194 <printf_>
 8000a98:	4833      	ldr	r0, [pc, #204]	; (8000b68 <_Z16telemetry_threadv+0x1c0>)
 8000a9a:	f000 fb7b 	bl	8001194 <printf_>
 8000a9e:	2400      	movs	r4, #0
 8000aa0:	4828      	ldr	r0, [pc, #160]	; (8000b44 <_Z16telemetry_threadv+0x19c>)
 8000aa2:	f7ff fda5 	bl	80005f0 <_ZN6CRobot28get_line_sensor_raw_data_difEv>
 8000aa6:	5f01      	ldrsh	r1, [r0, r4]
 8000aa8:	4830      	ldr	r0, [pc, #192]	; (8000b6c <_Z16telemetry_threadv+0x1c4>)
 8000aaa:	3402      	adds	r4, #2
 8000aac:	f000 fb72 	bl	8001194 <printf_>
 8000ab0:	2c10      	cmp	r4, #16
 8000ab2:	d1f5      	bne.n	8000aa0 <_Z16telemetry_threadv+0xf8>
 8000ab4:	482e      	ldr	r0, [pc, #184]	; (8000b70 <_Z16telemetry_threadv+0x1c8>)
 8000ab6:	f000 fb6d 	bl	8001194 <printf_>
 8000aba:	2400      	movs	r4, #0
 8000abc:	f000 fe9c 	bl	80017f8 <rgb_get>
 8000ac0:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000ac4:	4829      	ldr	r0, [pc, #164]	; (8000b6c <_Z16telemetry_threadv+0x1c4>)
 8000ac6:	f9b3 1036 	ldrsh.w	r1, [r3, #54]	; 0x36
 8000aca:	3401      	adds	r4, #1
 8000acc:	f000 fb62 	bl	8001194 <printf_>
 8000ad0:	2c08      	cmp	r4, #8
 8000ad2:	d1f3      	bne.n	8000abc <_Z16telemetry_threadv+0x114>
 8000ad4:	4826      	ldr	r0, [pc, #152]	; (8000b70 <_Z16telemetry_threadv+0x1c8>)
 8000ad6:	f000 fb5d 	bl	8001194 <printf_>
 8000ada:	2400      	movs	r4, #0
 8000adc:	f000 fe8c 	bl	80017f8 <rgb_get>
 8000ae0:	f930 1014 	ldrsh.w	r1, [r0, r4, lsl #1]
 8000ae4:	4821      	ldr	r0, [pc, #132]	; (8000b6c <_Z16telemetry_threadv+0x1c4>)
 8000ae6:	3401      	adds	r4, #1
 8000ae8:	f000 fb54 	bl	8001194 <printf_>
 8000aec:	2c08      	cmp	r4, #8
 8000aee:	d1f5      	bne.n	8000adc <_Z16telemetry_threadv+0x134>
 8000af0:	481f      	ldr	r0, [pc, #124]	; (8000b70 <_Z16telemetry_threadv+0x1c8>)
 8000af2:	f000 fb4f 	bl	8001194 <printf_>
 8000af6:	2400      	movs	r4, #0
 8000af8:	f000 fe7e 	bl	80017f8 <rgb_get>
 8000afc:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000b00:	481a      	ldr	r0, [pc, #104]	; (8000b6c <_Z16telemetry_threadv+0x1c4>)
 8000b02:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 8000b06:	3401      	adds	r4, #1
 8000b08:	f000 fb44 	bl	8001194 <printf_>
 8000b0c:	2c08      	cmp	r4, #8
 8000b0e:	d1f3      	bne.n	8000af8 <_Z16telemetry_threadv+0x150>
 8000b10:	4817      	ldr	r0, [pc, #92]	; (8000b70 <_Z16telemetry_threadv+0x1c8>)
 8000b12:	f000 fb3f 	bl	8001194 <printf_>
 8000b16:	2400      	movs	r4, #0
 8000b18:	f000 fe6e 	bl	80017f8 <rgb_get>
 8000b1c:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000b20:	4812      	ldr	r0, [pc, #72]	; (8000b6c <_Z16telemetry_threadv+0x1c4>)
 8000b22:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 8000b26:	3401      	adds	r4, #1
 8000b28:	f000 fb34 	bl	8001194 <printf_>
 8000b2c:	2c08      	cmp	r4, #8
 8000b2e:	d1f3      	bne.n	8000b18 <_Z16telemetry_threadv+0x170>
 8000b30:	4808      	ldr	r0, [pc, #32]	; (8000b54 <_Z16telemetry_threadv+0x1ac>)
 8000b32:	f000 fb2f 	bl	8001194 <printf_>
 8000b36:	2064      	movs	r0, #100	; 0x64
 8000b38:	f001 fa34 	bl	8001fa4 <timer_delay_ms>
 8000b3c:	e735      	b.n	80009aa <_Z16telemetry_threadv+0x2>
 8000b3e:	bf00      	nop
 8000b40:	08004718 	.word	0x08004718
 8000b44:	2000093c 	.word	0x2000093c
 8000b48:	08004721 	.word	0x08004721
 8000b4c:	0800471e 	.word	0x0800471e
 8000b50:	0800472b 	.word	0x0800472b
 8000b54:	08004738 	.word	0x08004738
 8000b58:	0800473b 	.word	0x0800473b
 8000b5c:	08004741 	.word	0x08004741
 8000b60:	0800474e 	.word	0x0800474e
 8000b64:	08004731 	.word	0x08004731
 8000b68:	08004754 	.word	0x08004754
 8000b6c:	08004727 	.word	0x08004727
 8000b70:	08004739 	.word	0x08004739

08000b74 <main_thread>:
 8000b74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b76:	4854      	ldr	r0, [pc, #336]	; (8000cc8 <main_thread+0x154>)
 8000b78:	4e54      	ldr	r6, [pc, #336]	; (8000ccc <main_thread+0x158>)
 8000b7a:	b097      	sub	sp, #92	; 0x5c
 8000b7c:	f000 fb0a 	bl	8001194 <printf_>
 8000b80:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000b84:	f001 fa0e 	bl	8001fa4 <timer_delay_ms>
 8000b88:	2300      	movs	r3, #0
 8000b8a:	6033      	str	r3, [r6, #0]
 8000b8c:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000b90:	930d      	str	r3, [sp, #52]	; 0x34
 8000b92:	930f      	str	r3, [sp, #60]	; 0x3c
 8000b94:	2328      	movs	r3, #40	; 0x28
 8000b96:	22b4      	movs	r2, #180	; 0xb4
 8000b98:	9310      	str	r3, [sp, #64]	; 0x40
 8000b9a:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000b9e:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000ba2:	9312      	str	r3, [sp, #72]	; 0x48
 8000ba4:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000ba8:	f240 2326 	movw	r3, #550	; 0x226
 8000bac:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000bb0:	9313      	str	r3, [sp, #76]	; 0x4c
 8000bb2:	223c      	movs	r2, #60	; 0x3c
 8000bb4:	f44f 73c8 	mov.w	r3, #400	; 0x190
 8000bb8:	920c      	str	r2, [sp, #48]	; 0x30
 8000bba:	9314      	str	r3, [sp, #80]	; 0x50
 8000bbc:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000bc0:	231e      	movs	r3, #30
 8000bc2:	4843      	ldr	r0, [pc, #268]	; (8000cd0 <main_thread+0x15c>)
 8000bc4:	920e      	str	r2, [sp, #56]	; 0x38
 8000bc6:	ad0d      	add	r5, sp, #52	; 0x34
 8000bc8:	9211      	str	r2, [sp, #68]	; 0x44
 8000bca:	9315      	str	r3, [sp, #84]	; 0x54
 8000bcc:	f7ff fe33 	bl	8000836 <_ZN6CRobot4initEv>
 8000bd0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000bd2:	466c      	mov	r4, sp
 8000bd4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000bd6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000bd8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000bda:	682b      	ldr	r3, [r5, #0]
 8000bdc:	6023      	str	r3, [r4, #0]
 8000bde:	ab0a      	add	r3, sp, #40	; 0x28
 8000be0:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000be2:	483b      	ldr	r0, [pc, #236]	; (8000cd0 <main_thread+0x15c>)
 8000be4:	f7ff fad4 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000be8:	483a      	ldr	r0, [pc, #232]	; (8000cd4 <main_thread+0x160>)
 8000bea:	4939      	ldr	r1, [pc, #228]	; (8000cd0 <main_thread+0x15c>)
 8000bec:	f000 f888 	bl	8000d00 <_ZN13CLineFollower4initEP6CRobot>
 8000bf0:	4839      	ldr	r0, [pc, #228]	; (8000cd8 <main_thread+0x164>)
 8000bf2:	4937      	ldr	r1, [pc, #220]	; (8000cd0 <main_thread+0x15c>)
 8000bf4:	f7ff fe62 	bl	80008bc <_ZN9CObstacle4initEP6CRobot>
 8000bf8:	4838      	ldr	r0, [pc, #224]	; (8000cdc <main_thread+0x168>)
 8000bfa:	4935      	ldr	r1, [pc, #212]	; (8000cd0 <main_thread+0x15c>)
 8000bfc:	f000 f8fc 	bl	8000df8 <_ZN11CBrokenLine4initEP6CRobot>
 8000c00:	4837      	ldr	r0, [pc, #220]	; (8000ce0 <main_thread+0x16c>)
 8000c02:	4933      	ldr	r1, [pc, #204]	; (8000cd0 <main_thread+0x15c>)
 8000c04:	f7ff fe64 	bl	80008d0 <_ZN4CMap4initEP6CRobot>
 8000c08:	4831      	ldr	r0, [pc, #196]	; (8000cd0 <main_thread+0x15c>)
 8000c0a:	f7ff fabd 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000c0e:	b158      	cbz	r0, 8000c28 <main_thread+0xb4>
 8000c10:	482f      	ldr	r0, [pc, #188]	; (8000cd0 <main_thread+0x15c>)
 8000c12:	f7ff fab9 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000c16:	4604      	mov	r4, r0
 8000c18:	482d      	ldr	r0, [pc, #180]	; (8000cd0 <main_thread+0x15c>)
 8000c1a:	f7ff fab7 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000c1e:	4601      	mov	r1, r0
 8000c20:	4620      	mov	r0, r4
 8000c22:	f7ff fe27 	bl	8000874 <abort_error_>
 8000c26:	e7f3      	b.n	8000c10 <main_thread+0x9c>
 8000c28:	492e      	ldr	r1, [pc, #184]	; (8000ce4 <main_thread+0x170>)
 8000c2a:	482f      	ldr	r0, [pc, #188]	; (8000ce8 <main_thread+0x174>)
 8000c2c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000c30:	2306      	movs	r3, #6
 8000c32:	f000 f981 	bl	8000f38 <create_thread>
 8000c36:	492d      	ldr	r1, [pc, #180]	; (8000cec <main_thread+0x178>)
 8000c38:	482d      	ldr	r0, [pc, #180]	; (8000cf0 <main_thread+0x17c>)
 8000c3a:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000c3e:	2306      	movs	r3, #6
 8000c40:	f000 f97a 	bl	8000f38 <create_thread>
 8000c44:	482b      	ldr	r0, [pc, #172]	; (8000cf4 <main_thread+0x180>)
 8000c46:	492c      	ldr	r1, [pc, #176]	; (8000cf8 <main_thread+0x184>)
 8000c48:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000c4c:	231a      	movs	r3, #26
 8000c4e:	f000 f973 	bl	8000f38 <create_thread>
 8000c52:	f001 ff23 	bl	8002a9c <get_key>
 8000c56:	b1a0      	cbz	r0, 8000c82 <main_thread+0x10e>
 8000c58:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000c5c:	f001 f9a2 	bl	8001fa4 <timer_delay_ms>
 8000c60:	201e      	movs	r0, #30
 8000c62:	2301      	movs	r3, #1
 8000c64:	4601      	mov	r1, r0
 8000c66:	6033      	str	r3, [r6, #0]
 8000c68:	f001 fd54 	bl	8002714 <drv8834_run>
 8000c6c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000c70:	f001 f998 	bl	8001fa4 <timer_delay_ms>
 8000c74:	2000      	movs	r0, #0
 8000c76:	4601      	mov	r1, r0
 8000c78:	f001 fd4c 	bl	8002714 <drv8834_run>
 8000c7c:	2032      	movs	r0, #50	; 0x32
 8000c7e:	f001 f991 	bl	8001fa4 <timer_delay_ms>
 8000c82:	f001 ff37 	bl	8002af4 <encoder_get_distance>
 8000c86:	4607      	mov	r7, r0
 8000c88:	f001 ff10 	bl	8002aac <left_encoder_read>
 8000c8c:	4605      	mov	r5, r0
 8000c8e:	f001 ff1f 	bl	8002ad0 <right_encoder_read>
 8000c92:	4604      	mov	r4, r0
 8000c94:	480e      	ldr	r0, [pc, #56]	; (8000cd0 <main_thread+0x15c>)
 8000c96:	f7ff fa92 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000c9a:	6883      	ldr	r3, [r0, #8]
 8000c9c:	9300      	str	r3, [sp, #0]
 8000c9e:	4639      	mov	r1, r7
 8000ca0:	462a      	mov	r2, r5
 8000ca2:	4623      	mov	r3, r4
 8000ca4:	4815      	ldr	r0, [pc, #84]	; (8000cfc <main_thread+0x188>)
 8000ca6:	f000 fa75 	bl	8001194 <printf_>
 8000caa:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000cae:	f001 fee1 	bl	8002a74 <led_on>
 8000cb2:	2064      	movs	r0, #100	; 0x64
 8000cb4:	f001 f976 	bl	8001fa4 <timer_delay_ms>
 8000cb8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000cbc:	f001 fee4 	bl	8002a88 <led_off>
 8000cc0:	20c8      	movs	r0, #200	; 0xc8
 8000cc2:	f001 f96f 	bl	8001fa4 <timer_delay_ms>
 8000cc6:	e7c4      	b.n	8000c52 <main_thread+0xde>
 8000cc8:	08004759 	.word	0x08004759
 8000ccc:	20000d20 	.word	0x20000d20
 8000cd0:	2000093c 	.word	0x2000093c
 8000cd4:	20000ad8 	.word	0x20000ad8
 8000cd8:	20000734 	.word	0x20000734
 8000cdc:	20000520 	.word	0x20000520
 8000ce0:	2000052c 	.word	0x2000052c
 8000ce4:	20000534 	.word	0x20000534
 8000ce8:	08000959 	.word	0x08000959
 8000cec:	2000073c 	.word	0x2000073c
 8000cf0:	08000975 	.word	0x08000975
 8000cf4:	080009a9 	.word	0x080009a9
 8000cf8:	20000b20 	.word	0x20000b20
 8000cfc:	08004794 	.word	0x08004794

08000d00 <_ZN13CLineFollower4initEP6CRobot>:
 8000d00:	b510      	push	{r4, lr}
 8000d02:	ed2d 8b04 	vpush	{d8-d9}
 8000d06:	4604      	mov	r4, r0
 8000d08:	b082      	sub	sp, #8
 8000d0a:	2900      	cmp	r1, #0
 8000d0c:	d069      	beq.n	8000de2 <_ZN13CLineFollower4initEP6CRobot+0xe2>
 8000d0e:	2300      	movs	r3, #0
 8000d10:	6103      	str	r3, [r0, #16]
 8000d12:	6143      	str	r3, [r0, #20]
 8000d14:	6441      	str	r1, [r0, #68]	; 0x44
 8000d16:	4835      	ldr	r0, [pc, #212]	; (8000dec <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000d18:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000df0 <_ZN13CLineFollower4initEP6CRobot+0xf0>
 8000d1c:	f000 f87b 	bl	8000e16 <_ZN11CQPredictor4initEv>
 8000d20:	f001 f932 	bl	8001f88 <timer_get_time>
 8000d24:	3064      	adds	r0, #100	; 0x64
 8000d26:	61a0      	str	r0, [r4, #24]
 8000d28:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d2a:	f7ff fa43 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d2e:	ed90 9a02 	vldr	s18, [r0, #8]
 8000d32:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d34:	f7ff fa3e 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d38:	edd0 8a03 	vldr	s17, [r0, #12]
 8000d3c:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d3e:	f7ff fa39 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d42:	edd0 9a04 	vldr	s19, [r0, #16]
 8000d46:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d48:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000d4c:	f7ff fa32 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d50:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000d54:	4927      	ldr	r1, [pc, #156]	; (8000df4 <_ZN13CLineFollower4initEP6CRobot+0xf4>)
 8000d56:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000d5a:	edcd 9a00 	vstr	s19, [sp]
 8000d5e:	edd0 7a05 	vldr	s15, [r0, #20]
 8000d62:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000d66:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d6a:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000d6e:	f104 001c 	add.w	r0, r4, #28
 8000d72:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000d76:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000d7a:	ee19 2a10 	vmov	r2, s18
 8000d7e:	ee18 3a90 	vmov	r3, s17
 8000d82:	edcd 7a01 	vstr	s15, [sp, #4]
 8000d86:	f000 faf1 	bl	800136c <pid_init>
 8000d8a:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d8c:	f7ff fa12 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d90:	edd0 7a06 	vldr	s15, [r0, #24]
 8000d94:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000d96:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000d9a:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000d9e:	edc4 7a00 	vstr	s15, [r4]
 8000da2:	f7ff fa07 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000da6:	edd0 7a07 	vldr	s15, [r0, #28]
 8000daa:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000dac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000db0:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000db4:	edc4 7a01 	vstr	s15, [r4, #4]
 8000db8:	f7ff f9fc 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dbc:	edd0 7a08 	vldr	s15, [r0, #32]
 8000dc0:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8000dc2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000dc6:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000dca:	edc4 7a02 	vstr	s15, [r4, #8]
 8000dce:	f7ff f9f1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dd2:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000dd6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000dda:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000dde:	ed84 8a03 	vstr	s16, [r4, #12]
 8000de2:	b002      	add	sp, #8
 8000de4:	ecbd 8b04 	vpop	{d8-d9}
 8000de8:	bd10      	pop	{r4, pc}
 8000dea:	bf00      	nop
 8000dec:	20000d24 	.word	0x20000d24
 8000df0:	447a0000 	.word	0x447a0000
 8000df4:	42c80000 	.word	0x42c80000

08000df8 <_ZN11CBrokenLine4initEP6CRobot>:
 8000df8:	b510      	push	{r4, lr}
 8000dfa:	4604      	mov	r4, r0
 8000dfc:	b151      	cbz	r1, 8000e14 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000dfe:	6001      	str	r1, [r0, #0]
 8000e00:	4608      	mov	r0, r1
 8000e02:	f7ff f9d7 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e06:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000e08:	6063      	str	r3, [r4, #4]
 8000e0a:	6820      	ldr	r0, [r4, #0]
 8000e0c:	f7ff f9d2 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e10:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000e12:	60a3      	str	r3, [r4, #8]
 8000e14:	bd10      	pop	{r4, pc}

08000e16 <_ZN11CQPredictor4initEv>:
 8000e16:	1d03      	adds	r3, r0, #4
 8000e18:	3044      	adds	r0, #68	; 0x44
 8000e1a:	2200      	movs	r2, #0
 8000e1c:	f843 2b04 	str.w	r2, [r3], #4
 8000e20:	4283      	cmp	r3, r0
 8000e22:	d1fa      	bne.n	8000e1a <_ZN11CQPredictor4initEv+0x4>
 8000e24:	4770      	bx	lr
	...

08000e28 <thread_ending>:
 8000e28:	b672      	cpsid	i
 8000e2a:	4b05      	ldr	r3, [pc, #20]	; (8000e40 <thread_ending+0x18>)
 8000e2c:	681a      	ldr	r2, [r3, #0]
 8000e2e:	4b05      	ldr	r3, [pc, #20]	; (8000e44 <thread_ending+0x1c>)
 8000e30:	210c      	movs	r1, #12
 8000e32:	fb01 3302 	mla	r3, r1, r2, r3
 8000e36:	2200      	movs	r2, #0
 8000e38:	605a      	str	r2, [r3, #4]
 8000e3a:	b662      	cpsie	i
 8000e3c:	bf00      	nop
 8000e3e:	e7fd      	b.n	8000e3c <thread_ending+0x14>
 8000e40:	20000db0 	.word	0x20000db0
 8000e44:	20000d68 	.word	0x20000d68

08000e48 <null_thread>:
 8000e48:	b508      	push	{r3, lr}
 8000e4a:	f001 fbcf 	bl	80025ec <sleep>
 8000e4e:	e7fc      	b.n	8000e4a <null_thread+0x2>

08000e50 <scheduler>:
 8000e50:	b570      	push	{r4, r5, r6, lr}
 8000e52:	2200      	movs	r2, #0
 8000e54:	4611      	mov	r1, r2
 8000e56:	4b15      	ldr	r3, [pc, #84]	; (8000eac <scheduler+0x5c>)
 8000e58:	200c      	movs	r0, #12
 8000e5a:	fb00 f401 	mul.w	r4, r0, r1
 8000e5e:	191e      	adds	r6, r3, r4
 8000e60:	6875      	ldr	r5, [r6, #4]
 8000e62:	f015 0f02 	tst.w	r5, #2
 8000e66:	461d      	mov	r5, r3
 8000e68:	d10a      	bne.n	8000e80 <scheduler+0x30>
 8000e6a:	6876      	ldr	r6, [r6, #4]
 8000e6c:	07f6      	lsls	r6, r6, #31
 8000e6e:	d507      	bpl.n	8000e80 <scheduler+0x30>
 8000e70:	4350      	muls	r0, r2
 8000e72:	5b1c      	ldrh	r4, [r3, r4]
 8000e74:	5a18      	ldrh	r0, [r3, r0]
 8000e76:	b2a4      	uxth	r4, r4
 8000e78:	b280      	uxth	r0, r0
 8000e7a:	4284      	cmp	r4, r0
 8000e7c:	bf38      	it	cc
 8000e7e:	460a      	movcc	r2, r1
 8000e80:	200c      	movs	r0, #12
 8000e82:	4348      	muls	r0, r1
 8000e84:	5a1c      	ldrh	r4, [r3, r0]
 8000e86:	b2a4      	uxth	r4, r4
 8000e88:	b11c      	cbz	r4, 8000e92 <scheduler+0x42>
 8000e8a:	5a1c      	ldrh	r4, [r3, r0]
 8000e8c:	3c01      	subs	r4, #1
 8000e8e:	b2a4      	uxth	r4, r4
 8000e90:	521c      	strh	r4, [r3, r0]
 8000e92:	3101      	adds	r1, #1
 8000e94:	2906      	cmp	r1, #6
 8000e96:	d1de      	bne.n	8000e56 <scheduler+0x6>
 8000e98:	230c      	movs	r3, #12
 8000e9a:	4353      	muls	r3, r2
 8000e9c:	18e9      	adds	r1, r5, r3
 8000e9e:	8849      	ldrh	r1, [r1, #2]
 8000ea0:	b289      	uxth	r1, r1
 8000ea2:	52e9      	strh	r1, [r5, r3]
 8000ea4:	4b02      	ldr	r3, [pc, #8]	; (8000eb0 <scheduler+0x60>)
 8000ea6:	601a      	str	r2, [r3, #0]
 8000ea8:	bd70      	pop	{r4, r5, r6, pc}
 8000eaa:	bf00      	nop
 8000eac:	20000d68 	.word	0x20000d68
 8000eb0:	20000db0 	.word	0x20000db0

08000eb4 <SysTick_Handler>:
 8000eb4:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000eb8:	f3ef 8308 	mrs	r3, MSP
 8000ebc:	4c0f      	ldr	r4, [pc, #60]	; (8000efc <SysTick_Handler+0x48>)
 8000ebe:	4d10      	ldr	r5, [pc, #64]	; (8000f00 <SysTick_Handler+0x4c>)
 8000ec0:	6822      	ldr	r2, [r4, #0]
 8000ec2:	3201      	adds	r2, #1
 8000ec4:	bf1d      	ittte	ne
 8000ec6:	6822      	ldrne	r2, [r4, #0]
 8000ec8:	210c      	movne	r1, #12
 8000eca:	fb01 5202 	mlane	r2, r1, r2, r5
 8000ece:	2300      	moveq	r3, #0
 8000ed0:	bf14      	ite	ne
 8000ed2:	6093      	strne	r3, [r2, #8]
 8000ed4:	6023      	streq	r3, [r4, #0]
 8000ed6:	f7ff ffbb 	bl	8000e50 <scheduler>
 8000eda:	4b0a      	ldr	r3, [pc, #40]	; (8000f04 <SysTick_Handler+0x50>)
 8000edc:	681a      	ldr	r2, [r3, #0]
 8000ede:	3201      	adds	r2, #1
 8000ee0:	601a      	str	r2, [r3, #0]
 8000ee2:	6822      	ldr	r2, [r4, #0]
 8000ee4:	230c      	movs	r3, #12
 8000ee6:	fb03 5302 	mla	r3, r3, r2, r5
 8000eea:	689a      	ldr	r2, [r3, #8]
 8000eec:	f06f 0306 	mvn.w	r3, #6
 8000ef0:	469e      	mov	lr, r3
 8000ef2:	f382 8808 	msr	MSP, r2
 8000ef6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000efa:	4770      	bx	lr
 8000efc:	20000db0 	.word	0x20000db0
 8000f00:	20000d68 	.word	0x20000d68
 8000f04:	20000db4 	.word	0x20000db4

08000f08 <sched_off>:
 8000f08:	b672      	cpsid	i
 8000f0a:	4770      	bx	lr

08000f0c <sched_on>:
 8000f0c:	b662      	cpsie	i
 8000f0e:	4770      	bx	lr

08000f10 <yield>:
 8000f10:	bf00      	nop
 8000f12:	4770      	bx	lr

08000f14 <get_thread_id>:
 8000f14:	b082      	sub	sp, #8
 8000f16:	b672      	cpsid	i
 8000f18:	4b03      	ldr	r3, [pc, #12]	; (8000f28 <get_thread_id+0x14>)
 8000f1a:	681b      	ldr	r3, [r3, #0]
 8000f1c:	9301      	str	r3, [sp, #4]
 8000f1e:	b662      	cpsie	i
 8000f20:	9801      	ldr	r0, [sp, #4]
 8000f22:	b002      	add	sp, #8
 8000f24:	4770      	bx	lr
 8000f26:	bf00      	nop
 8000f28:	20000db0 	.word	0x20000db0

08000f2c <kernel_start>:
 8000f2c:	b508      	push	{r3, lr}
 8000f2e:	f001 fb4b 	bl	80025c8 <sys_tick_init>
 8000f32:	bf00      	nop
 8000f34:	e7fd      	b.n	8000f32 <kernel_start+0x6>
	...

08000f38 <create_thread>:
 8000f38:	f022 0203 	bic.w	r2, r2, #3
 8000f3c:	3a40      	subs	r2, #64	; 0x40
 8000f3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000f42:	eb01 0e02 	add.w	lr, r1, r2
 8000f46:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000f4a:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000f4e:	323c      	adds	r2, #60	; 0x3c
 8000f50:	440e      	add	r6, r1
 8000f52:	440f      	add	r7, r1
 8000f54:	4411      	add	r1, r2
 8000f56:	2200      	movs	r2, #0
 8000f58:	b672      	cpsid	i
 8000f5a:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000fb0 <create_thread+0x78>
 8000f5e:	250c      	movs	r5, #12
 8000f60:	4355      	muls	r5, r2
 8000f62:	eb0c 0405 	add.w	r4, ip, r5
 8000f66:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000f6a:	f018 0f01 	tst.w	r8, #1
 8000f6e:	d114      	bne.n	8000f9a <create_thread+0x62>
 8000f70:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000fb4 <create_thread+0x7c>
 8000f74:	f8c4 e008 	str.w	lr, [r4, #8]
 8000f78:	2b05      	cmp	r3, #5
 8000f7a:	f8c6 8000 	str.w	r8, [r6]
 8000f7e:	bf98      	it	ls
 8000f80:	2306      	movls	r3, #6
 8000f82:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000f86:	6038      	str	r0, [r7, #0]
 8000f88:	f8c1 8000 	str.w	r8, [r1]
 8000f8c:	8063      	strh	r3, [r4, #2]
 8000f8e:	f82c 3005 	strh.w	r3, [ip, r5]
 8000f92:	2501      	movs	r5, #1
 8000f94:	6065      	str	r5, [r4, #4]
 8000f96:	4614      	mov	r4, r2
 8000f98:	e000      	b.n	8000f9c <create_thread+0x64>
 8000f9a:	2406      	movs	r4, #6
 8000f9c:	b662      	cpsie	i
 8000f9e:	3201      	adds	r2, #1
 8000fa0:	2a06      	cmp	r2, #6
 8000fa2:	d001      	beq.n	8000fa8 <create_thread+0x70>
 8000fa4:	2c06      	cmp	r4, #6
 8000fa6:	d0d7      	beq.n	8000f58 <create_thread+0x20>
 8000fa8:	4620      	mov	r0, r4
 8000faa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000fae:	bf00      	nop
 8000fb0:	20000d68 	.word	0x20000d68
 8000fb4:	08000e29 	.word	0x08000e29

08000fb8 <kernel_init>:
 8000fb8:	b530      	push	{r4, r5, lr}
 8000fba:	2300      	movs	r3, #0
 8000fbc:	480c      	ldr	r0, [pc, #48]	; (8000ff0 <kernel_init+0x38>)
 8000fbe:	220c      	movs	r2, #12
 8000fc0:	435a      	muls	r2, r3
 8000fc2:	2406      	movs	r4, #6
 8000fc4:	1885      	adds	r5, r0, r2
 8000fc6:	3301      	adds	r3, #1
 8000fc8:	2100      	movs	r1, #0
 8000fca:	42a3      	cmp	r3, r4
 8000fcc:	6069      	str	r1, [r5, #4]
 8000fce:	806c      	strh	r4, [r5, #2]
 8000fd0:	5284      	strh	r4, [r0, r2]
 8000fd2:	d1f3      	bne.n	8000fbc <kernel_init+0x4>
 8000fd4:	4b07      	ldr	r3, [pc, #28]	; (8000ff4 <kernel_init+0x3c>)
 8000fd6:	4808      	ldr	r0, [pc, #32]	; (8000ff8 <kernel_init+0x40>)
 8000fd8:	6019      	str	r1, [r3, #0]
 8000fda:	4b08      	ldr	r3, [pc, #32]	; (8000ffc <kernel_init+0x44>)
 8000fdc:	4908      	ldr	r1, [pc, #32]	; (8001000 <kernel_init+0x48>)
 8000fde:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000fe2:	601a      	str	r2, [r3, #0]
 8000fe4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000fe8:	2280      	movs	r2, #128	; 0x80
 8000fea:	23ff      	movs	r3, #255	; 0xff
 8000fec:	f7ff bfa4 	b.w	8000f38 <create_thread>
 8000ff0:	20000d68 	.word	0x20000d68
 8000ff4:	20000db4 	.word	0x20000db4
 8000ff8:	08000e49 	.word	0x08000e49
 8000ffc:	20000db0 	.word	0x20000db0
 8001000:	20000db8 	.word	0x20000db8

08001004 <set_wait_state>:
 8001004:	b507      	push	{r0, r1, r2, lr}
 8001006:	f7ff ff85 	bl	8000f14 <get_thread_id>
 800100a:	9000      	str	r0, [sp, #0]
 800100c:	b672      	cpsid	i
 800100e:	4b0d      	ldr	r3, [pc, #52]	; (8001044 <set_wait_state+0x40>)
 8001010:	9a00      	ldr	r2, [sp, #0]
 8001012:	210c      	movs	r1, #12
 8001014:	fb01 3202 	mla	r2, r1, r2, r3
 8001018:	6851      	ldr	r1, [r2, #4]
 800101a:	f041 0102 	orr.w	r1, r1, #2
 800101e:	6051      	str	r1, [r2, #4]
 8001020:	b672      	cpsid	i
 8001022:	9a00      	ldr	r2, [sp, #0]
 8001024:	210c      	movs	r1, #12
 8001026:	fb01 3202 	mla	r2, r1, r2, r3
 800102a:	6852      	ldr	r2, [r2, #4]
 800102c:	9201      	str	r2, [sp, #4]
 800102e:	b662      	cpsie	i
 8001030:	9a01      	ldr	r2, [sp, #4]
 8001032:	0791      	lsls	r1, r2, #30
 8001034:	d500      	bpl.n	8001038 <set_wait_state+0x34>
 8001036:	bf00      	nop
 8001038:	9a01      	ldr	r2, [sp, #4]
 800103a:	0792      	lsls	r2, r2, #30
 800103c:	d4f0      	bmi.n	8001020 <set_wait_state+0x1c>
 800103e:	b003      	add	sp, #12
 8001040:	f85d fb04 	ldr.w	pc, [sp], #4
 8001044:	20000d68 	.word	0x20000d68

08001048 <wake_up_threads>:
 8001048:	2300      	movs	r3, #0
 800104a:	b672      	cpsid	i
 800104c:	4906      	ldr	r1, [pc, #24]	; (8001068 <wake_up_threads+0x20>)
 800104e:	220c      	movs	r2, #12
 8001050:	fb02 1203 	mla	r2, r2, r3, r1
 8001054:	6851      	ldr	r1, [r2, #4]
 8001056:	f021 0102 	bic.w	r1, r1, #2
 800105a:	6051      	str	r1, [r2, #4]
 800105c:	b662      	cpsie	i
 800105e:	3301      	adds	r3, #1
 8001060:	2b06      	cmp	r3, #6
 8001062:	d1f2      	bne.n	800104a <wake_up_threads+0x2>
 8001064:	4770      	bx	lr
 8001066:	bf00      	nop
 8001068:	20000d68 	.word	0x20000d68

0800106c <messages_init>:
 800106c:	4a0a      	ldr	r2, [pc, #40]	; (8001098 <messages_init+0x2c>)
 800106e:	2300      	movs	r3, #0
 8001070:	b510      	push	{r4, lr}
 8001072:	6013      	str	r3, [r2, #0]
 8001074:	6053      	str	r3, [r2, #4]
 8001076:	6093      	str	r3, [r2, #8]
 8001078:	60d3      	str	r3, [r2, #12]
 800107a:	6113      	str	r3, [r2, #16]
 800107c:	6153      	str	r3, [r2, #20]
 800107e:	4c07      	ldr	r4, [pc, #28]	; (800109c <messages_init+0x30>)
 8001080:	0118      	lsls	r0, r3, #4
 8001082:	1821      	adds	r1, r4, r0
 8001084:	3301      	adds	r3, #1
 8001086:	2200      	movs	r2, #0
 8001088:	2b04      	cmp	r3, #4
 800108a:	604a      	str	r2, [r1, #4]
 800108c:	5022      	str	r2, [r4, r0]
 800108e:	60ca      	str	r2, [r1, #12]
 8001090:	608a      	str	r2, [r1, #8]
 8001092:	d1f4      	bne.n	800107e <messages_init+0x12>
 8001094:	bd10      	pop	{r4, pc}
 8001096:	bf00      	nop
 8001098:	20000e38 	.word	0x20000e38
 800109c:	20000e50 	.word	0x20000e50

080010a0 <putc_>:
 80010a0:	b538      	push	{r3, r4, r5, lr}
 80010a2:	4c06      	ldr	r4, [pc, #24]	; (80010bc <putc_+0x1c>)
 80010a4:	4605      	mov	r5, r0
 80010a6:	4620      	mov	r0, r4
 80010a8:	f000 f91f 	bl	80012ea <mutex_lock>
 80010ac:	4628      	mov	r0, r5
 80010ae:	f001 f865 	bl	800217c <uart_write>
 80010b2:	4620      	mov	r0, r4
 80010b4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80010b8:	f000 b933 	b.w	8001322 <mutex_unlock>
 80010bc:	20000e90 	.word	0x20000e90

080010c0 <puts_>:
 80010c0:	b510      	push	{r4, lr}
 80010c2:	4604      	mov	r4, r0
 80010c4:	4807      	ldr	r0, [pc, #28]	; (80010e4 <puts_+0x24>)
 80010c6:	f000 f910 	bl	80012ea <mutex_lock>
 80010ca:	3c01      	subs	r4, #1
 80010cc:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80010d0:	b110      	cbz	r0, 80010d8 <puts_+0x18>
 80010d2:	f7ff ffe5 	bl	80010a0 <putc_>
 80010d6:	e7f9      	b.n	80010cc <puts_+0xc>
 80010d8:	4802      	ldr	r0, [pc, #8]	; (80010e4 <puts_+0x24>)
 80010da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80010de:	f000 b920 	b.w	8001322 <mutex_unlock>
 80010e2:	bf00      	nop
 80010e4:	20000e9c 	.word	0x20000e9c

080010e8 <puti_>:
 80010e8:	b530      	push	{r4, r5, lr}
 80010ea:	b085      	sub	sp, #20
 80010ec:	1e03      	subs	r3, r0, #0
 80010ee:	f04f 0200 	mov.w	r2, #0
 80010f2:	bfba      	itte	lt
 80010f4:	425b      	neglt	r3, r3
 80010f6:	2401      	movlt	r4, #1
 80010f8:	4614      	movge	r4, r2
 80010fa:	f88d 200f 	strb.w	r2, [sp, #15]
 80010fe:	210a      	movs	r1, #10
 8001100:	220a      	movs	r2, #10
 8001102:	a801      	add	r0, sp, #4
 8001104:	fb93 f5f2 	sdiv	r5, r3, r2
 8001108:	fb02 3315 	mls	r3, r2, r5, r3
 800110c:	3330      	adds	r3, #48	; 0x30
 800110e:	540b      	strb	r3, [r1, r0]
 8001110:	1e4a      	subs	r2, r1, #1
 8001112:	462b      	mov	r3, r5
 8001114:	b10d      	cbz	r5, 800111a <puti_+0x32>
 8001116:	4611      	mov	r1, r2
 8001118:	e7f2      	b.n	8001100 <puti_+0x18>
 800111a:	b12c      	cbz	r4, 8001128 <puti_+0x40>
 800111c:	ab04      	add	r3, sp, #16
 800111e:	4413      	add	r3, r2
 8001120:	212d      	movs	r1, #45	; 0x2d
 8001122:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001126:	4611      	mov	r1, r2
 8001128:	4408      	add	r0, r1
 800112a:	f7ff ffc9 	bl	80010c0 <puts_>
 800112e:	b005      	add	sp, #20
 8001130:	bd30      	pop	{r4, r5, pc}

08001132 <putui_>:
 8001132:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001134:	2300      	movs	r3, #0
 8001136:	f88d 300f 	strb.w	r3, [sp, #15]
 800113a:	220a      	movs	r2, #10
 800113c:	230a      	movs	r3, #10
 800113e:	a901      	add	r1, sp, #4
 8001140:	fbb0 f4f3 	udiv	r4, r0, r3
 8001144:	fb03 0314 	mls	r3, r3, r4, r0
 8001148:	3330      	adds	r3, #48	; 0x30
 800114a:	5453      	strb	r3, [r2, r1]
 800114c:	4620      	mov	r0, r4
 800114e:	1e53      	subs	r3, r2, #1
 8001150:	b10c      	cbz	r4, 8001156 <putui_+0x24>
 8001152:	461a      	mov	r2, r3
 8001154:	e7f2      	b.n	800113c <putui_+0xa>
 8001156:	1888      	adds	r0, r1, r2
 8001158:	f7ff ffb2 	bl	80010c0 <puts_>
 800115c:	b004      	add	sp, #16
 800115e:	bd10      	pop	{r4, pc}

08001160 <putx_>:
 8001160:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001162:	2300      	movs	r3, #0
 8001164:	f88d 300f 	strb.w	r3, [sp, #15]
 8001168:	220a      	movs	r2, #10
 800116a:	f000 030f 	and.w	r3, r0, #15
 800116e:	2b09      	cmp	r3, #9
 8001170:	a901      	add	r1, sp, #4
 8001172:	bf94      	ite	ls
 8001174:	3330      	addls	r3, #48	; 0x30
 8001176:	3357      	addhi	r3, #87	; 0x57
 8001178:	0900      	lsrs	r0, r0, #4
 800117a:	548b      	strb	r3, [r1, r2]
 800117c:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001180:	d001      	beq.n	8001186 <putx_+0x26>
 8001182:	461a      	mov	r2, r3
 8001184:	e7f1      	b.n	800116a <putx_+0xa>
 8001186:	1888      	adds	r0, r1, r2
 8001188:	f7ff ff9a 	bl	80010c0 <puts_>
 800118c:	b005      	add	sp, #20
 800118e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08001194 <printf_>:
 8001194:	b40f      	push	{r0, r1, r2, r3}
 8001196:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001198:	ac06      	add	r4, sp, #24
 800119a:	4826      	ldr	r0, [pc, #152]	; (8001234 <printf_+0xa0>)
 800119c:	f854 5b04 	ldr.w	r5, [r4], #4
 80011a0:	f000 f8a3 	bl	80012ea <mutex_lock>
 80011a4:	9401      	str	r4, [sp, #4]
 80011a6:	2400      	movs	r4, #0
 80011a8:	5d28      	ldrb	r0, [r5, r4]
 80011aa:	2800      	cmp	r0, #0
 80011ac:	d039      	beq.n	8001222 <printf_+0x8e>
 80011ae:	2825      	cmp	r0, #37	; 0x25
 80011b0:	d003      	beq.n	80011ba <printf_+0x26>
 80011b2:	f7ff ff75 	bl	80010a0 <putc_>
 80011b6:	3401      	adds	r4, #1
 80011b8:	e7f6      	b.n	80011a8 <printf_+0x14>
 80011ba:	192b      	adds	r3, r5, r4
 80011bc:	7858      	ldrb	r0, [r3, #1]
 80011be:	2869      	cmp	r0, #105	; 0x69
 80011c0:	d016      	beq.n	80011f0 <printf_+0x5c>
 80011c2:	d808      	bhi.n	80011d6 <printf_+0x42>
 80011c4:	2825      	cmp	r0, #37	; 0x25
 80011c6:	d028      	beq.n	800121a <printf_+0x86>
 80011c8:	2863      	cmp	r0, #99	; 0x63
 80011ca:	d128      	bne.n	800121e <printf_+0x8a>
 80011cc:	9b01      	ldr	r3, [sp, #4]
 80011ce:	1d1a      	adds	r2, r3, #4
 80011d0:	9201      	str	r2, [sp, #4]
 80011d2:	7818      	ldrb	r0, [r3, #0]
 80011d4:	e021      	b.n	800121a <printf_+0x86>
 80011d6:	2875      	cmp	r0, #117	; 0x75
 80011d8:	d011      	beq.n	80011fe <printf_+0x6a>
 80011da:	2878      	cmp	r0, #120	; 0x78
 80011dc:	d016      	beq.n	800120c <printf_+0x78>
 80011de:	2873      	cmp	r0, #115	; 0x73
 80011e0:	d11d      	bne.n	800121e <printf_+0x8a>
 80011e2:	9b01      	ldr	r3, [sp, #4]
 80011e4:	1d1a      	adds	r2, r3, #4
 80011e6:	6818      	ldr	r0, [r3, #0]
 80011e8:	9201      	str	r2, [sp, #4]
 80011ea:	f7ff ff69 	bl	80010c0 <puts_>
 80011ee:	e016      	b.n	800121e <printf_+0x8a>
 80011f0:	9b01      	ldr	r3, [sp, #4]
 80011f2:	1d1a      	adds	r2, r3, #4
 80011f4:	6818      	ldr	r0, [r3, #0]
 80011f6:	9201      	str	r2, [sp, #4]
 80011f8:	f7ff ff76 	bl	80010e8 <puti_>
 80011fc:	e00f      	b.n	800121e <printf_+0x8a>
 80011fe:	9b01      	ldr	r3, [sp, #4]
 8001200:	1d1a      	adds	r2, r3, #4
 8001202:	6818      	ldr	r0, [r3, #0]
 8001204:	9201      	str	r2, [sp, #4]
 8001206:	f7ff ff94 	bl	8001132 <putui_>
 800120a:	e008      	b.n	800121e <printf_+0x8a>
 800120c:	9b01      	ldr	r3, [sp, #4]
 800120e:	1d1a      	adds	r2, r3, #4
 8001210:	6818      	ldr	r0, [r3, #0]
 8001212:	9201      	str	r2, [sp, #4]
 8001214:	f7ff ffa4 	bl	8001160 <putx_>
 8001218:	e001      	b.n	800121e <printf_+0x8a>
 800121a:	f7ff ff41 	bl	80010a0 <putc_>
 800121e:	3402      	adds	r4, #2
 8001220:	e7c2      	b.n	80011a8 <printf_+0x14>
 8001222:	4804      	ldr	r0, [pc, #16]	; (8001234 <printf_+0xa0>)
 8001224:	f000 f87d 	bl	8001322 <mutex_unlock>
 8001228:	b003      	add	sp, #12
 800122a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800122e:	b004      	add	sp, #16
 8001230:	4770      	bx	lr
 8001232:	bf00      	nop
 8001234:	20000e98 	.word	0x20000e98

08001238 <stdio_init>:
 8001238:	b510      	push	{r4, lr}
 800123a:	480e      	ldr	r0, [pc, #56]	; (8001274 <stdio_init+0x3c>)
 800123c:	f000 f84b 	bl	80012d6 <mutex_init>
 8001240:	480d      	ldr	r0, [pc, #52]	; (8001278 <stdio_init+0x40>)
 8001242:	f000 f848 	bl	80012d6 <mutex_init>
 8001246:	480d      	ldr	r0, [pc, #52]	; (800127c <stdio_init+0x44>)
 8001248:	f000 f845 	bl	80012d6 <mutex_init>
 800124c:	480c      	ldr	r0, [pc, #48]	; (8001280 <stdio_init+0x48>)
 800124e:	f000 f842 	bl	80012d6 <mutex_init>
 8001252:	2408      	movs	r4, #8
 8001254:	2020      	movs	r0, #32
 8001256:	f7ff ff23 	bl	80010a0 <putc_>
 800125a:	3c01      	subs	r4, #1
 800125c:	d1fa      	bne.n	8001254 <stdio_init+0x1c>
 800125e:	2420      	movs	r4, #32
 8001260:	200a      	movs	r0, #10
 8001262:	f7ff ff1d 	bl	80010a0 <putc_>
 8001266:	3c01      	subs	r4, #1
 8001268:	d1fa      	bne.n	8001260 <stdio_init+0x28>
 800126a:	4806      	ldr	r0, [pc, #24]	; (8001284 <stdio_init+0x4c>)
 800126c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001270:	f7ff bf90 	b.w	8001194 <printf_>
 8001274:	20000e90 	.word	0x20000e90
 8001278:	20000e94 	.word	0x20000e94
 800127c:	20000e9c 	.word	0x20000e9c
 8001280:	20000e98 	.word	0x20000e98
 8001284:	080047af 	.word	0x080047af

08001288 <mem_init>:
 8001288:	4b06      	ldr	r3, [pc, #24]	; (80012a4 <mem_init+0x1c>)
 800128a:	4a07      	ldr	r2, [pc, #28]	; (80012a8 <mem_init+0x20>)
 800128c:	601a      	str	r2, [r3, #0]
 800128e:	4907      	ldr	r1, [pc, #28]	; (80012ac <mem_init+0x24>)
 8001290:	4b07      	ldr	r3, [pc, #28]	; (80012b0 <mem_init+0x28>)
 8001292:	4808      	ldr	r0, [pc, #32]	; (80012b4 <mem_init+0x2c>)
 8001294:	1a5b      	subs	r3, r3, r1
 8001296:	4908      	ldr	r1, [pc, #32]	; (80012b8 <mem_init+0x30>)
 8001298:	4413      	add	r3, r2
 800129a:	600b      	str	r3, [r1, #0]
 800129c:	4b07      	ldr	r3, [pc, #28]	; (80012bc <mem_init+0x34>)
 800129e:	601a      	str	r2, [r3, #0]
 80012a0:	f000 b819 	b.w	80012d6 <mutex_init>
 80012a4:	20000ea0 	.word	0x20000ea0
 80012a8:	20001380 	.word	0x20001380
 80012ac:	20001380 	.word	0x20001380
 80012b0:	20004000 	.word	0x20004000
 80012b4:	20000eac 	.word	0x20000eac
 80012b8:	20000ea8 	.word	0x20000ea8
 80012bc:	20000ea4 	.word	0x20000ea4

080012c0 <lib_os_init>:
 80012c0:	b508      	push	{r3, lr}
 80012c2:	f7ff fe79 	bl	8000fb8 <kernel_init>
 80012c6:	f7ff ffdf 	bl	8001288 <mem_init>
 80012ca:	f7ff fecf 	bl	800106c <messages_init>
 80012ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012d2:	f7ff bfb1 	b.w	8001238 <stdio_init>

080012d6 <mutex_init>:
 80012d6:	b510      	push	{r4, lr}
 80012d8:	4604      	mov	r4, r0
 80012da:	f7ff fe15 	bl	8000f08 <sched_off>
 80012de:	2300      	movs	r3, #0
 80012e0:	6023      	str	r3, [r4, #0]
 80012e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80012e6:	f7ff be11 	b.w	8000f0c <sched_on>

080012ea <mutex_lock>:
 80012ea:	b513      	push	{r0, r1, r4, lr}
 80012ec:	4604      	mov	r4, r0
 80012ee:	f7ff fe0b 	bl	8000f08 <sched_off>
 80012f2:	6823      	ldr	r3, [r4, #0]
 80012f4:	9301      	str	r3, [sp, #4]
 80012f6:	f7ff fe09 	bl	8000f0c <sched_on>
 80012fa:	9b01      	ldr	r3, [sp, #4]
 80012fc:	b10b      	cbz	r3, 8001302 <mutex_lock+0x18>
 80012fe:	f7ff fe81 	bl	8001004 <set_wait_state>
 8001302:	9b01      	ldr	r3, [sp, #4]
 8001304:	2b00      	cmp	r3, #0
 8001306:	d1f2      	bne.n	80012ee <mutex_lock+0x4>
 8001308:	f7ff fdfe 	bl	8000f08 <sched_off>
 800130c:	6823      	ldr	r3, [r4, #0]
 800130e:	9301      	str	r3, [sp, #4]
 8001310:	9b01      	ldr	r3, [sp, #4]
 8001312:	2b00      	cmp	r3, #0
 8001314:	d1eb      	bne.n	80012ee <mutex_lock+0x4>
 8001316:	2301      	movs	r3, #1
 8001318:	6023      	str	r3, [r4, #0]
 800131a:	f7ff fdf7 	bl	8000f0c <sched_on>
 800131e:	b002      	add	sp, #8
 8001320:	bd10      	pop	{r4, pc}

08001322 <mutex_unlock>:
 8001322:	b508      	push	{r3, lr}
 8001324:	f7ff ffd7 	bl	80012d6 <mutex_init>
 8001328:	f7ff fe8e 	bl	8001048 <wake_up_threads>
 800132c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001330:	f7ff bdee 	b.w	8000f10 <yield>

08001334 <log_write>:
 8001334:	b570      	push	{r4, r5, r6, lr}
 8001336:	f3c0 060a 	ubfx	r6, r0, #0, #11
 800133a:	460c      	mov	r4, r1
 800133c:	4615      	mov	r5, r2
 800133e:	f001 f82b 	bl	8002398 <i2cStart>
 8001342:	0a30      	lsrs	r0, r6, #8
 8001344:	0040      	lsls	r0, r0, #1
 8001346:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 800134a:	f001 f843 	bl	80023d4 <i2cWrite>
 800134e:	b2f0      	uxtb	r0, r6
 8001350:	f001 f840 	bl	80023d4 <i2cWrite>
 8001354:	4425      	add	r5, r4
 8001356:	42ac      	cmp	r4, r5
 8001358:	d004      	beq.n	8001364 <log_write+0x30>
 800135a:	f814 0b01 	ldrb.w	r0, [r4], #1
 800135e:	f001 f839 	bl	80023d4 <i2cWrite>
 8001362:	e7f8      	b.n	8001356 <log_write+0x22>
 8001364:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001368:	f001 b825 	b.w	80023b6 <i2cStop>

0800136c <pid_init>:
 800136c:	ee07 2a90 	vmov	s15, r2
 8001370:	ee06 3a10 	vmov	s12, r3
 8001374:	ed9d 7a00 	vldr	s14, [sp]
 8001378:	eddd 6a01 	vldr	s13, [sp, #4]
 800137c:	6241      	str	r1, [r0, #36]	; 0x24
 800137e:	ee37 6a86 	vadd.f32	s12, s15, s12
 8001382:	ee77 5a07 	vadd.f32	s11, s14, s14
 8001386:	ee36 6a07 	vadd.f32	s12, s12, s14
 800138a:	eef1 7a67 	vneg.f32	s15, s15
 800138e:	ee36 6a26 	vadd.f32	s12, s12, s13
 8001392:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8001396:	ed80 6a04 	vstr	s12, [r0, #16]
 800139a:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 80013c8 <pid_init+0x5c>
 800139e:	ee26 6a86 	vmul.f32	s12, s13, s12
 80013a2:	2200      	movs	r2, #0
 80013a4:	ee77 7ac6 	vsub.f32	s15, s15, s12
 80013a8:	ee37 7a06 	vadd.f32	s14, s14, s12
 80013ac:	eef1 6a66 	vneg.f32	s13, s13
 80013b0:	6002      	str	r2, [r0, #0]
 80013b2:	6042      	str	r2, [r0, #4]
 80013b4:	6082      	str	r2, [r0, #8]
 80013b6:	60c2      	str	r2, [r0, #12]
 80013b8:	edc0 7a05 	vstr	s15, [r0, #20]
 80013bc:	ed80 7a06 	vstr	s14, [r0, #24]
 80013c0:	edc0 6a07 	vstr	s13, [r0, #28]
 80013c4:	6202      	str	r2, [r0, #32]
 80013c6:	4770      	bx	lr
 80013c8:	40400000 	.word	0x40400000

080013cc <TIM2_IRQHandler>:
 80013cc:	4a21      	ldr	r2, [pc, #132]	; (8001454 <TIM2_IRQHandler+0x88>)
 80013ce:	4922      	ldr	r1, [pc, #136]	; (8001458 <TIM2_IRQHandler+0x8c>)
 80013d0:	6813      	ldr	r3, [r2, #0]
 80013d2:	2b01      	cmp	r3, #1
 80013d4:	b510      	push	{r4, lr}
 80013d6:	d011      	beq.n	80013fc <TIM2_IRQHandler+0x30>
 80013d8:	d306      	bcc.n	80013e8 <TIM2_IRQHandler+0x1c>
 80013da:	2b02      	cmp	r3, #2
 80013dc:	d113      	bne.n	8001406 <TIM2_IRQHandler+0x3a>
 80013de:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80013e2:	850b      	strh	r3, [r1, #40]	; 0x28
 80013e4:	2304      	movs	r3, #4
 80013e6:	e023      	b.n	8001430 <TIM2_IRQHandler+0x64>
 80013e8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80013ec:	850b      	strh	r3, [r1, #40]	; 0x28
 80013ee:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80013f2:	618b      	str	r3, [r1, #24]
 80013f4:	2301      	movs	r3, #1
 80013f6:	6013      	str	r3, [r2, #0]
 80013f8:	6093      	str	r3, [r2, #8]
 80013fa:	e023      	b.n	8001444 <TIM2_IRQHandler+0x78>
 80013fc:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001400:	618b      	str	r3, [r1, #24]
 8001402:	2302      	movs	r3, #2
 8001404:	e014      	b.n	8001430 <TIM2_IRQHandler+0x64>
 8001406:	f013 0f01 	tst.w	r3, #1
 800140a:	4814      	ldr	r0, [pc, #80]	; (800145c <TIM2_IRQHandler+0x90>)
 800140c:	f103 0401 	add.w	r4, r3, #1
 8001410:	d010      	beq.n	8001434 <TIM2_IRQHandler+0x68>
 8001412:	3b04      	subs	r3, #4
 8001414:	f023 0301 	bic.w	r3, r3, #1
 8001418:	4413      	add	r3, r2
 800141a:	6c00      	ldr	r0, [r0, #64]	; 0x40
 800141c:	8298      	strh	r0, [r3, #20]
 800141e:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001422:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001426:	850b      	strh	r3, [r1, #40]	; 0x28
 8001428:	d201      	bcs.n	800142e <TIM2_IRQHandler+0x62>
 800142a:	6014      	str	r4, [r2, #0]
 800142c:	e00a      	b.n	8001444 <TIM2_IRQHandler+0x78>
 800142e:	2300      	movs	r3, #0
 8001430:	6013      	str	r3, [r2, #0]
 8001432:	e007      	b.n	8001444 <TIM2_IRQHandler+0x78>
 8001434:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001438:	618b      	str	r3, [r1, #24]
 800143a:	6883      	ldr	r3, [r0, #8]
 800143c:	6014      	str	r4, [r2, #0]
 800143e:	f043 0304 	orr.w	r3, r3, #4
 8001442:	6083      	str	r3, [r0, #8]
 8001444:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001448:	2101      	movs	r1, #1
 800144a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800144e:	f000 bd1e 	b.w	8001e8e <TIM_ClearITPendingBit>
 8001452:	bf00      	nop
 8001454:	20000eb0 	.word	0x20000eb0
 8001458:	48000400 	.word	0x48000400
 800145c:	50000500 	.word	0x50000500

08001460 <rgb_i2c_delay>:
 8001460:	bf00      	nop
 8001462:	bf00      	nop
 8001464:	bf00      	nop
 8001466:	bf00      	nop
 8001468:	4770      	bx	lr
	...

0800146c <RGBSetLowSDA>:
 800146c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800146e:	4f15      	ldr	r7, [pc, #84]	; (80014c4 <RGBSetLowSDA+0x58>)
 8001470:	2401      	movs	r4, #1
 8001472:	783b      	ldrb	r3, [r7, #0]
 8001474:	9300      	str	r3, [sp, #0]
 8001476:	2603      	movs	r6, #3
 8001478:	2500      	movs	r5, #0
 800147a:	4669      	mov	r1, sp
 800147c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001480:	f88d 5007 	strb.w	r5, [sp, #7]
 8001484:	f88d 4004 	strb.w	r4, [sp, #4]
 8001488:	f88d 6005 	strb.w	r6, [sp, #5]
 800148c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001490:	f001 fa7c 	bl	800298c <GPIO_Init>
 8001494:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001498:	783a      	ldrb	r2, [r7, #0]
 800149a:	851a      	strh	r2, [r3, #40]	; 0x28
 800149c:	f88d 5007 	strb.w	r5, [sp, #7]
 80014a0:	4d09      	ldr	r5, [pc, #36]	; (80014c8 <RGBSetLowSDA+0x5c>)
 80014a2:	9400      	str	r4, [sp, #0]
 80014a4:	4628      	mov	r0, r5
 80014a6:	4669      	mov	r1, sp
 80014a8:	f88d 4004 	strb.w	r4, [sp, #4]
 80014ac:	f88d 6005 	strb.w	r6, [sp, #5]
 80014b0:	f88d 4006 	strb.w	r4, [sp, #6]
 80014b4:	f001 fa6a 	bl	800298c <GPIO_Init>
 80014b8:	852c      	strh	r4, [r5, #40]	; 0x28
 80014ba:	f7ff ffd1 	bl	8001460 <rgb_i2c_delay>
 80014be:	b003      	add	sp, #12
 80014c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80014c2:	bf00      	nop
 80014c4:	2000111e 	.word	0x2000111e
 80014c8:	48000400 	.word	0x48000400

080014cc <RGBSetHighSDA>:
 80014cc:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80014ce:	4d13      	ldr	r5, [pc, #76]	; (800151c <RGBSetHighSDA+0x50>)
 80014d0:	2400      	movs	r4, #0
 80014d2:	782b      	ldrb	r3, [r5, #0]
 80014d4:	9300      	str	r3, [sp, #0]
 80014d6:	2603      	movs	r6, #3
 80014d8:	4669      	mov	r1, sp
 80014da:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014de:	f88d 4004 	strb.w	r4, [sp, #4]
 80014e2:	f88d 4007 	strb.w	r4, [sp, #7]
 80014e6:	f88d 6005 	strb.w	r6, [sp, #5]
 80014ea:	f001 fa4f 	bl	800298c <GPIO_Init>
 80014ee:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80014f2:	782a      	ldrb	r2, [r5, #0]
 80014f4:	619a      	str	r2, [r3, #24]
 80014f6:	f88d 4004 	strb.w	r4, [sp, #4]
 80014fa:	f88d 4007 	strb.w	r4, [sp, #7]
 80014fe:	4c08      	ldr	r4, [pc, #32]	; (8001520 <RGBSetHighSDA+0x54>)
 8001500:	f88d 6005 	strb.w	r6, [sp, #5]
 8001504:	2501      	movs	r5, #1
 8001506:	4620      	mov	r0, r4
 8001508:	4669      	mov	r1, sp
 800150a:	9500      	str	r5, [sp, #0]
 800150c:	f001 fa3e 	bl	800298c <GPIO_Init>
 8001510:	61a5      	str	r5, [r4, #24]
 8001512:	f7ff ffa5 	bl	8001460 <rgb_i2c_delay>
 8001516:	b002      	add	sp, #8
 8001518:	bd70      	pop	{r4, r5, r6, pc}
 800151a:	bf00      	nop
 800151c:	2000111e 	.word	0x2000111e
 8001520:	48000400 	.word	0x48000400

08001524 <RGBSetLowSCL>:
 8001524:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001528:	f44f 7280 	mov.w	r2, #256	; 0x100
 800152c:	851a      	strh	r2, [r3, #40]	; 0x28
 800152e:	f7ff bf97 	b.w	8001460 <rgb_i2c_delay>

08001532 <RGBSetHighSCL>:
 8001532:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001536:	f44f 7280 	mov.w	r2, #256	; 0x100
 800153a:	619a      	str	r2, [r3, #24]
 800153c:	f7ff bf90 	b.w	8001460 <rgb_i2c_delay>

08001540 <rgb_i2c_init>:
 8001540:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001542:	4f1f      	ldr	r7, [pc, #124]	; (80015c0 <rgb_i2c_init+0x80>)
 8001544:	2400      	movs	r4, #0
 8001546:	2501      	movs	r5, #1
 8001548:	2603      	movs	r6, #3
 800154a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800154e:	4669      	mov	r1, sp
 8001550:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001554:	9300      	str	r3, [sp, #0]
 8001556:	f88d 4006 	strb.w	r4, [sp, #6]
 800155a:	f88d 4007 	strb.w	r4, [sp, #7]
 800155e:	f88d 5004 	strb.w	r5, [sp, #4]
 8001562:	f88d 6005 	strb.w	r6, [sp, #5]
 8001566:	f001 fa11 	bl	800298c <GPIO_Init>
 800156a:	783b      	ldrb	r3, [r7, #0]
 800156c:	9300      	str	r3, [sp, #0]
 800156e:	4669      	mov	r1, sp
 8001570:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001574:	f88d 4004 	strb.w	r4, [sp, #4]
 8001578:	f88d 4007 	strb.w	r4, [sp, #7]
 800157c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001580:	f001 fa04 	bl	800298c <GPIO_Init>
 8001584:	7839      	ldrb	r1, [r7, #0]
 8001586:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800158a:	f001 fa41 	bl	8002a10 <GPIO_SetBits>
 800158e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001592:	f88d 4007 	strb.w	r4, [sp, #7]
 8001596:	4c0b      	ldr	r4, [pc, #44]	; (80015c4 <rgb_i2c_init+0x84>)
 8001598:	9500      	str	r5, [sp, #0]
 800159a:	4620      	mov	r0, r4
 800159c:	4669      	mov	r1, sp
 800159e:	f88d 6005 	strb.w	r6, [sp, #5]
 80015a2:	f001 f9f3 	bl	800298c <GPIO_Init>
 80015a6:	4620      	mov	r0, r4
 80015a8:	4629      	mov	r1, r5
 80015aa:	f001 fa31 	bl	8002a10 <GPIO_SetBits>
 80015ae:	f7ff ffc0 	bl	8001532 <RGBSetHighSCL>
 80015b2:	f7ff ff5b 	bl	800146c <RGBSetLowSDA>
 80015b6:	f7ff ff89 	bl	80014cc <RGBSetHighSDA>
 80015ba:	b003      	add	sp, #12
 80015bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80015be:	bf00      	nop
 80015c0:	2000111e 	.word	0x2000111e
 80015c4:	48000400 	.word	0x48000400

080015c8 <rgb_i2cStart>:
 80015c8:	b508      	push	{r3, lr}
 80015ca:	f7ff ffb2 	bl	8001532 <RGBSetHighSCL>
 80015ce:	f7ff ff7d 	bl	80014cc <RGBSetHighSDA>
 80015d2:	f7ff ffae 	bl	8001532 <RGBSetHighSCL>
 80015d6:	f7ff ff49 	bl	800146c <RGBSetLowSDA>
 80015da:	f7ff ffa3 	bl	8001524 <RGBSetLowSCL>
 80015de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80015e2:	f7ff bf73 	b.w	80014cc <RGBSetHighSDA>

080015e6 <rgb_i2cStop>:
 80015e6:	b508      	push	{r3, lr}
 80015e8:	f7ff ff9c 	bl	8001524 <RGBSetLowSCL>
 80015ec:	f7ff ff3e 	bl	800146c <RGBSetLowSDA>
 80015f0:	f7ff ff9f 	bl	8001532 <RGBSetHighSCL>
 80015f4:	f7ff ff3a 	bl	800146c <RGBSetLowSDA>
 80015f8:	f7ff ff9b 	bl	8001532 <RGBSetHighSCL>
 80015fc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001600:	f7ff bf64 	b.w	80014cc <RGBSetHighSDA>

08001604 <rgb_i2cWrite>:
 8001604:	b538      	push	{r3, r4, r5, lr}
 8001606:	4605      	mov	r5, r0
 8001608:	2408      	movs	r4, #8
 800160a:	f7ff ff8b 	bl	8001524 <RGBSetLowSCL>
 800160e:	062b      	lsls	r3, r5, #24
 8001610:	d502      	bpl.n	8001618 <rgb_i2cWrite+0x14>
 8001612:	f7ff ff5b 	bl	80014cc <RGBSetHighSDA>
 8001616:	e001      	b.n	800161c <rgb_i2cWrite+0x18>
 8001618:	f7ff ff28 	bl	800146c <RGBSetLowSDA>
 800161c:	3c01      	subs	r4, #1
 800161e:	f7ff ff88 	bl	8001532 <RGBSetHighSCL>
 8001622:	006d      	lsls	r5, r5, #1
 8001624:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001628:	b2ed      	uxtb	r5, r5
 800162a:	d1ee      	bne.n	800160a <rgb_i2cWrite+0x6>
 800162c:	f7ff ff7a 	bl	8001524 <RGBSetLowSCL>
 8001630:	f7ff ff4c 	bl	80014cc <RGBSetHighSDA>
 8001634:	f7ff ff7d 	bl	8001532 <RGBSetHighSCL>
 8001638:	f7ff ff74 	bl	8001524 <RGBSetLowSCL>
 800163c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001640:	f7ff bf0e 	b.w	8001460 <rgb_i2c_delay>

08001644 <rgb_i2cRead>:
 8001644:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001648:	1e4e      	subs	r6, r1, #1
 800164a:	4680      	mov	r8, r0
 800164c:	460c      	mov	r4, r1
 800164e:	f101 0708 	add.w	r7, r1, #8
 8001652:	4633      	mov	r3, r6
 8001654:	2200      	movs	r2, #0
 8001656:	f803 2f01 	strb.w	r2, [r3, #1]!
 800165a:	42bb      	cmp	r3, r7
 800165c:	d1fa      	bne.n	8001654 <rgb_i2cRead+0x10>
 800165e:	f7ff ff61 	bl	8001524 <RGBSetLowSCL>
 8001662:	f7ff ff33 	bl	80014cc <RGBSetHighSDA>
 8001666:	2508      	movs	r5, #8
 8001668:	4633      	mov	r3, r6
 800166a:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800166e:	0052      	lsls	r2, r2, #1
 8001670:	42bb      	cmp	r3, r7
 8001672:	701a      	strb	r2, [r3, #0]
 8001674:	d1f9      	bne.n	800166a <rgb_i2cRead+0x26>
 8001676:	f7ff ff5c 	bl	8001532 <RGBSetHighSCL>
 800167a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800167e:	8a1b      	ldrh	r3, [r3, #16]
 8001680:	b29b      	uxth	r3, r3
 8001682:	07d9      	lsls	r1, r3, #31
 8001684:	bf42      	ittt	mi
 8001686:	7822      	ldrbmi	r2, [r4, #0]
 8001688:	f042 0201 	orrmi.w	r2, r2, #1
 800168c:	7022      	strbmi	r2, [r4, #0]
 800168e:	079a      	lsls	r2, r3, #30
 8001690:	bf42      	ittt	mi
 8001692:	7862      	ldrbmi	r2, [r4, #1]
 8001694:	f042 0201 	orrmi.w	r2, r2, #1
 8001698:	7062      	strbmi	r2, [r4, #1]
 800169a:	0758      	lsls	r0, r3, #29
 800169c:	bf42      	ittt	mi
 800169e:	78a2      	ldrbmi	r2, [r4, #2]
 80016a0:	f042 0201 	orrmi.w	r2, r2, #1
 80016a4:	70a2      	strbmi	r2, [r4, #2]
 80016a6:	0719      	lsls	r1, r3, #28
 80016a8:	bf42      	ittt	mi
 80016aa:	78e2      	ldrbmi	r2, [r4, #3]
 80016ac:	f042 0201 	orrmi.w	r2, r2, #1
 80016b0:	70e2      	strbmi	r2, [r4, #3]
 80016b2:	06da      	lsls	r2, r3, #27
 80016b4:	bf42      	ittt	mi
 80016b6:	7922      	ldrbmi	r2, [r4, #4]
 80016b8:	f042 0201 	orrmi.w	r2, r2, #1
 80016bc:	7122      	strbmi	r2, [r4, #4]
 80016be:	0698      	lsls	r0, r3, #26
 80016c0:	bf42      	ittt	mi
 80016c2:	7962      	ldrbmi	r2, [r4, #5]
 80016c4:	f042 0201 	orrmi.w	r2, r2, #1
 80016c8:	7162      	strbmi	r2, [r4, #5]
 80016ca:	0659      	lsls	r1, r3, #25
 80016cc:	bf42      	ittt	mi
 80016ce:	79a2      	ldrbmi	r2, [r4, #6]
 80016d0:	f042 0201 	orrmi.w	r2, r2, #1
 80016d4:	71a2      	strbmi	r2, [r4, #6]
 80016d6:	061a      	lsls	r2, r3, #24
 80016d8:	bf42      	ittt	mi
 80016da:	79e3      	ldrbmi	r3, [r4, #7]
 80016dc:	f043 0301 	orrmi.w	r3, r3, #1
 80016e0:	71e3      	strbmi	r3, [r4, #7]
 80016e2:	4b0c      	ldr	r3, [pc, #48]	; (8001714 <rgb_i2cRead+0xd0>)
 80016e4:	8a1b      	ldrh	r3, [r3, #16]
 80016e6:	07db      	lsls	r3, r3, #31
 80016e8:	bf42      	ittt	mi
 80016ea:	7a23      	ldrbmi	r3, [r4, #8]
 80016ec:	f043 0301 	orrmi.w	r3, r3, #1
 80016f0:	7223      	strbmi	r3, [r4, #8]
 80016f2:	f7ff ff17 	bl	8001524 <RGBSetLowSCL>
 80016f6:	3d01      	subs	r5, #1
 80016f8:	d1b6      	bne.n	8001668 <rgb_i2cRead+0x24>
 80016fa:	f1b8 0f00 	cmp.w	r8, #0
 80016fe:	d001      	beq.n	8001704 <rgb_i2cRead+0xc0>
 8001700:	f7ff feb4 	bl	800146c <RGBSetLowSDA>
 8001704:	f7ff ff15 	bl	8001532 <RGBSetHighSCL>
 8001708:	f7ff ff0c 	bl	8001524 <RGBSetLowSCL>
 800170c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001710:	f7ff bea6 	b.w	8001460 <rgb_i2c_delay>
 8001714:	48000400 	.word	0x48000400

08001718 <rgb_i2c_write_reg>:
 8001718:	b570      	push	{r4, r5, r6, lr}
 800171a:	4606      	mov	r6, r0
 800171c:	460d      	mov	r5, r1
 800171e:	4614      	mov	r4, r2
 8001720:	f7ff ff52 	bl	80015c8 <rgb_i2cStart>
 8001724:	4630      	mov	r0, r6
 8001726:	f7ff ff6d 	bl	8001604 <rgb_i2cWrite>
 800172a:	4628      	mov	r0, r5
 800172c:	f7ff ff6a 	bl	8001604 <rgb_i2cWrite>
 8001730:	4620      	mov	r0, r4
 8001732:	f7ff ff67 	bl	8001604 <rgb_i2cWrite>
 8001736:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800173a:	f7ff bf54 	b.w	80015e6 <rgb_i2cStop>

0800173e <rgb_i2c_read_reg>:
 800173e:	b570      	push	{r4, r5, r6, lr}
 8001740:	4604      	mov	r4, r0
 8001742:	460e      	mov	r6, r1
 8001744:	4615      	mov	r5, r2
 8001746:	f7ff ff3f 	bl	80015c8 <rgb_i2cStart>
 800174a:	4620      	mov	r0, r4
 800174c:	f7ff ff5a 	bl	8001604 <rgb_i2cWrite>
 8001750:	4630      	mov	r0, r6
 8001752:	f7ff ff57 	bl	8001604 <rgb_i2cWrite>
 8001756:	f7ff ff37 	bl	80015c8 <rgb_i2cStart>
 800175a:	f044 0001 	orr.w	r0, r4, #1
 800175e:	f7ff ff51 	bl	8001604 <rgb_i2cWrite>
 8001762:	4629      	mov	r1, r5
 8001764:	2000      	movs	r0, #0
 8001766:	f7ff ff6d 	bl	8001644 <rgb_i2cRead>
 800176a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800176e:	f7ff bf3a 	b.w	80015e6 <rgb_i2cStop>
	...

08001774 <rgb_init>:
 8001774:	b570      	push	{r4, r5, r6, lr}
 8001776:	4b1e      	ldr	r3, [pc, #120]	; (80017f0 <rgb_init+0x7c>)
 8001778:	2200      	movs	r2, #0
 800177a:	3201      	adds	r2, #1
 800177c:	2400      	movs	r4, #0
 800177e:	2a09      	cmp	r2, #9
 8001780:	801c      	strh	r4, [r3, #0]
 8001782:	825c      	strh	r4, [r3, #18]
 8001784:	849c      	strh	r4, [r3, #36]	; 0x24
 8001786:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 800178a:	86dc      	strh	r4, [r3, #54]	; 0x36
 800178c:	f103 0302 	add.w	r3, r3, #2
 8001790:	d1f3      	bne.n	800177a <rgb_init+0x6>
 8001792:	4d18      	ldr	r5, [pc, #96]	; (80017f4 <rgb_init+0x80>)
 8001794:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001798:	802e      	strh	r6, [r5, #0]
 800179a:	f7ff fed1 	bl	8001540 <rgb_i2c_init>
 800179e:	2072      	movs	r0, #114	; 0x72
 80017a0:	2181      	movs	r1, #129	; 0x81
 80017a2:	22ff      	movs	r2, #255	; 0xff
 80017a4:	f7ff ffb8 	bl	8001718 <rgb_i2c_write_reg>
 80017a8:	2072      	movs	r0, #114	; 0x72
 80017aa:	2183      	movs	r1, #131	; 0x83
 80017ac:	22ff      	movs	r2, #255	; 0xff
 80017ae:	f7ff ffb3 	bl	8001718 <rgb_i2c_write_reg>
 80017b2:	2072      	movs	r0, #114	; 0x72
 80017b4:	218d      	movs	r1, #141	; 0x8d
 80017b6:	4622      	mov	r2, r4
 80017b8:	f7ff ffae 	bl	8001718 <rgb_i2c_write_reg>
 80017bc:	2072      	movs	r0, #114	; 0x72
 80017be:	2180      	movs	r1, #128	; 0x80
 80017c0:	2203      	movs	r2, #3
 80017c2:	f7ff ffa9 	bl	8001718 <rgb_i2c_write_reg>
 80017c6:	2072      	movs	r0, #114	; 0x72
 80017c8:	218f      	movs	r1, #143	; 0x8f
 80017ca:	2223      	movs	r2, #35	; 0x23
 80017cc:	f7ff ffa4 	bl	8001718 <rgb_i2c_write_reg>
 80017d0:	f7ff fe7c 	bl	80014cc <RGBSetHighSDA>
 80017d4:	2072      	movs	r0, #114	; 0x72
 80017d6:	2180      	movs	r1, #128	; 0x80
 80017d8:	2207      	movs	r2, #7
 80017da:	802c      	strh	r4, [r5, #0]
 80017dc:	f7ff ff9c 	bl	8001718 <rgb_i2c_write_reg>
 80017e0:	2072      	movs	r0, #114	; 0x72
 80017e2:	218e      	movs	r1, #142	; 0x8e
 80017e4:	2208      	movs	r2, #8
 80017e6:	f7ff ff97 	bl	8001718 <rgb_i2c_write_reg>
 80017ea:	802e      	strh	r6, [r5, #0]
 80017ec:	bd70      	pop	{r4, r5, r6, pc}
 80017ee:	bf00      	nop
 80017f0:	200010c4 	.word	0x200010c4
 80017f4:	2000111e 	.word	0x2000111e

080017f8 <rgb_get>:
 80017f8:	4800      	ldr	r0, [pc, #0]	; (80017fc <rgb_get+0x4>)
 80017fa:	4770      	bx	lr
 80017fc:	200010c4 	.word	0x200010c4

08001800 <rgb_read>:
 8001800:	b538      	push	{r3, r4, r5, lr}
 8001802:	f7ff fee1 	bl	80015c8 <rgb_i2cStart>
 8001806:	2072      	movs	r0, #114	; 0x72
 8001808:	f7ff fefc 	bl	8001604 <rgb_i2cWrite>
 800180c:	20b4      	movs	r0, #180	; 0xb4
 800180e:	f7ff fef9 	bl	8001604 <rgb_i2cWrite>
 8001812:	4d48      	ldr	r5, [pc, #288]	; (8001934 <rgb_read+0x134>)
 8001814:	f7ff fed8 	bl	80015c8 <rgb_i2cStart>
 8001818:	2073      	movs	r0, #115	; 0x73
 800181a:	f7ff fef3 	bl	8001604 <rgb_i2cWrite>
 800181e:	2001      	movs	r0, #1
 8001820:	4945      	ldr	r1, [pc, #276]	; (8001938 <rgb_read+0x138>)
 8001822:	f7ff ff0f 	bl	8001644 <rgb_i2cRead>
 8001826:	462a      	mov	r2, r5
 8001828:	2300      	movs	r3, #0
 800182a:	4c43      	ldr	r4, [pc, #268]	; (8001938 <rgb_read+0x138>)
 800182c:	5d19      	ldrb	r1, [r3, r4]
 800182e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001832:	3301      	adds	r3, #1
 8001834:	2b09      	cmp	r3, #9
 8001836:	d1f8      	bne.n	800182a <rgb_read+0x2a>
 8001838:	2001      	movs	r0, #1
 800183a:	4621      	mov	r1, r4
 800183c:	f7ff ff02 	bl	8001644 <rgb_i2cRead>
 8001840:	2300      	movs	r3, #0
 8001842:	5ce1      	ldrb	r1, [r4, r3]
 8001844:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001848:	3301      	adds	r3, #1
 800184a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800184e:	2b09      	cmp	r3, #9
 8001850:	802a      	strh	r2, [r5, #0]
 8001852:	d1f6      	bne.n	8001842 <rgb_read+0x42>
 8001854:	2001      	movs	r0, #1
 8001856:	4938      	ldr	r1, [pc, #224]	; (8001938 <rgb_read+0x138>)
 8001858:	f7ff fef4 	bl	8001644 <rgb_i2cRead>
 800185c:	2300      	movs	r3, #0
 800185e:	4d37      	ldr	r5, [pc, #220]	; (800193c <rgb_read+0x13c>)
 8001860:	5ce2      	ldrb	r2, [r4, r3]
 8001862:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001866:	3301      	adds	r3, #1
 8001868:	2b09      	cmp	r3, #9
 800186a:	d1f8      	bne.n	800185e <rgb_read+0x5e>
 800186c:	2001      	movs	r0, #1
 800186e:	4932      	ldr	r1, [pc, #200]	; (8001938 <rgb_read+0x138>)
 8001870:	f7ff fee8 	bl	8001644 <rgb_i2cRead>
 8001874:	2300      	movs	r3, #0
 8001876:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 800187a:	5ce1      	ldrb	r1, [r4, r3]
 800187c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001880:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001884:	3301      	adds	r3, #1
 8001886:	2b09      	cmp	r3, #9
 8001888:	d1f5      	bne.n	8001876 <rgb_read+0x76>
 800188a:	4d2d      	ldr	r5, [pc, #180]	; (8001940 <rgb_read+0x140>)
 800188c:	492a      	ldr	r1, [pc, #168]	; (8001938 <rgb_read+0x138>)
 800188e:	2001      	movs	r0, #1
 8001890:	f7ff fed8 	bl	8001644 <rgb_i2cRead>
 8001894:	462a      	mov	r2, r5
 8001896:	2300      	movs	r3, #0
 8001898:	5ce1      	ldrb	r1, [r4, r3]
 800189a:	f822 1f02 	strh.w	r1, [r2, #2]!
 800189e:	3301      	adds	r3, #1
 80018a0:	2b09      	cmp	r3, #9
 80018a2:	d1f9      	bne.n	8001898 <rgb_read+0x98>
 80018a4:	2001      	movs	r0, #1
 80018a6:	4924      	ldr	r1, [pc, #144]	; (8001938 <rgb_read+0x138>)
 80018a8:	f7ff fecc 	bl	8001644 <rgb_i2cRead>
 80018ac:	2300      	movs	r3, #0
 80018ae:	5ce1      	ldrb	r1, [r4, r3]
 80018b0:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80018b4:	3301      	adds	r3, #1
 80018b6:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80018ba:	2b09      	cmp	r3, #9
 80018bc:	802a      	strh	r2, [r5, #0]
 80018be:	d1f6      	bne.n	80018ae <rgb_read+0xae>
 80018c0:	4d20      	ldr	r5, [pc, #128]	; (8001944 <rgb_read+0x144>)
 80018c2:	491d      	ldr	r1, [pc, #116]	; (8001938 <rgb_read+0x138>)
 80018c4:	2001      	movs	r0, #1
 80018c6:	f7ff febd 	bl	8001644 <rgb_i2cRead>
 80018ca:	462a      	mov	r2, r5
 80018cc:	2300      	movs	r3, #0
 80018ce:	5ce1      	ldrb	r1, [r4, r3]
 80018d0:	f822 1f02 	strh.w	r1, [r2, #2]!
 80018d4:	3301      	adds	r3, #1
 80018d6:	2b09      	cmp	r3, #9
 80018d8:	d1f9      	bne.n	80018ce <rgb_read+0xce>
 80018da:	2001      	movs	r0, #1
 80018dc:	4916      	ldr	r1, [pc, #88]	; (8001938 <rgb_read+0x138>)
 80018de:	f7ff feb1 	bl	8001644 <rgb_i2cRead>
 80018e2:	2300      	movs	r3, #0
 80018e4:	5ce1      	ldrb	r1, [r4, r3]
 80018e6:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80018ea:	3301      	adds	r3, #1
 80018ec:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80018f0:	2b09      	cmp	r3, #9
 80018f2:	802a      	strh	r2, [r5, #0]
 80018f4:	d1f6      	bne.n	80018e4 <rgb_read+0xe4>
 80018f6:	4d14      	ldr	r5, [pc, #80]	; (8001948 <rgb_read+0x148>)
 80018f8:	490f      	ldr	r1, [pc, #60]	; (8001938 <rgb_read+0x138>)
 80018fa:	2001      	movs	r0, #1
 80018fc:	f7ff fea2 	bl	8001644 <rgb_i2cRead>
 8001900:	462a      	mov	r2, r5
 8001902:	2300      	movs	r3, #0
 8001904:	5ce1      	ldrb	r1, [r4, r3]
 8001906:	f822 1f02 	strh.w	r1, [r2, #2]!
 800190a:	3301      	adds	r3, #1
 800190c:	2b09      	cmp	r3, #9
 800190e:	d1f9      	bne.n	8001904 <rgb_read+0x104>
 8001910:	2000      	movs	r0, #0
 8001912:	4909      	ldr	r1, [pc, #36]	; (8001938 <rgb_read+0x138>)
 8001914:	f7ff fe96 	bl	8001644 <rgb_i2cRead>
 8001918:	2300      	movs	r3, #0
 800191a:	5ce1      	ldrb	r1, [r4, r3]
 800191c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001920:	3301      	adds	r3, #1
 8001922:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001926:	2b09      	cmp	r3, #9
 8001928:	802a      	strh	r2, [r5, #0]
 800192a:	d1f6      	bne.n	800191a <rgb_read+0x11a>
 800192c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001930:	f7ff be59 	b.w	80015e6 <rgb_i2cStop>
 8001934:	200010f8 	.word	0x200010f8
 8001938:	20001120 	.word	0x20001120
 800193c:	200010c4 	.word	0x200010c4
 8001940:	200010d4 	.word	0x200010d4
 8001944:	200010e6 	.word	0x200010e6
 8001948:	2000110a 	.word	0x2000110a

0800194c <main>:
 800194c:	b508      	push	{r3, lr}
 800194e:	f000 ff79 	bl	8002844 <lib_low_level_init>
 8001952:	f7ff fcb5 	bl	80012c0 <lib_os_init>
 8001956:	4905      	ldr	r1, [pc, #20]	; (800196c <main+0x20>)
 8001958:	4805      	ldr	r0, [pc, #20]	; (8001970 <main+0x24>)
 800195a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800195e:	2306      	movs	r3, #6
 8001960:	f7ff faea 	bl	8000f38 <create_thread>
 8001964:	f7ff fae2 	bl	8000f2c <kernel_start>
 8001968:	2000      	movs	r0, #0
 800196a:	bd08      	pop	{r3, pc}
 800196c:	2000112c 	.word	0x2000112c
 8001970:	08000b75 	.word	0x08000b75

08001974 <RCC_GetClocksFreq>:
 8001974:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001978:	4f9b      	ldr	r7, [pc, #620]	; (8001be8 <RCC_GetClocksFreq+0x274>)
 800197a:	687b      	ldr	r3, [r7, #4]
 800197c:	f003 030c 	and.w	r3, r3, #12
 8001980:	2b04      	cmp	r3, #4
 8001982:	d005      	beq.n	8001990 <RCC_GetClocksFreq+0x1c>
 8001984:	2b08      	cmp	r3, #8
 8001986:	d006      	beq.n	8001996 <RCC_GetClocksFreq+0x22>
 8001988:	4a98      	ldr	r2, [pc, #608]	; (8001bec <RCC_GetClocksFreq+0x278>)
 800198a:	6002      	str	r2, [r0, #0]
 800198c:	b9b3      	cbnz	r3, 80019bc <RCC_GetClocksFreq+0x48>
 800198e:	e016      	b.n	80019be <RCC_GetClocksFreq+0x4a>
 8001990:	4b96      	ldr	r3, [pc, #600]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001992:	6003      	str	r3, [r0, #0]
 8001994:	e012      	b.n	80019bc <RCC_GetClocksFreq+0x48>
 8001996:	687b      	ldr	r3, [r7, #4]
 8001998:	6879      	ldr	r1, [r7, #4]
 800199a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800199e:	1c9a      	adds	r2, r3, #2
 80019a0:	03cb      	lsls	r3, r1, #15
 80019a2:	bf49      	itett	mi
 80019a4:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 80019a6:	4b92      	ldrpl	r3, [pc, #584]	; (8001bf0 <RCC_GetClocksFreq+0x27c>)
 80019a8:	4990      	ldrmi	r1, [pc, #576]	; (8001bec <RCC_GetClocksFreq+0x278>)
 80019aa:	f003 030f 	andmi.w	r3, r3, #15
 80019ae:	bf44      	itt	mi
 80019b0:	3301      	addmi	r3, #1
 80019b2:	fbb1 f3f3 	udivmi	r3, r1, r3
 80019b6:	4353      	muls	r3, r2
 80019b8:	6003      	str	r3, [r0, #0]
 80019ba:	e000      	b.n	80019be <RCC_GetClocksFreq+0x4a>
 80019bc:	2300      	movs	r3, #0
 80019be:	687a      	ldr	r2, [r7, #4]
 80019c0:	4e8c      	ldr	r6, [pc, #560]	; (8001bf4 <RCC_GetClocksFreq+0x280>)
 80019c2:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001bf8 <RCC_GetClocksFreq+0x284>
 80019c6:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80019ca:	5cb4      	ldrb	r4, [r6, r2]
 80019cc:	6802      	ldr	r2, [r0, #0]
 80019ce:	b2e4      	uxtb	r4, r4
 80019d0:	fa22 f104 	lsr.w	r1, r2, r4
 80019d4:	6041      	str	r1, [r0, #4]
 80019d6:	687d      	ldr	r5, [r7, #4]
 80019d8:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80019dc:	5d75      	ldrb	r5, [r6, r5]
 80019de:	fa21 fe05 	lsr.w	lr, r1, r5
 80019e2:	f8c0 e008 	str.w	lr, [r0, #8]
 80019e6:	687d      	ldr	r5, [r7, #4]
 80019e8:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80019ec:	5d75      	ldrb	r5, [r6, r5]
 80019ee:	b2ed      	uxtb	r5, r5
 80019f0:	40e9      	lsrs	r1, r5
 80019f2:	60c1      	str	r1, [r0, #12]
 80019f4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80019f6:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80019fa:	f008 060f 	and.w	r6, r8, #15
 80019fe:	f018 0f10 	tst.w	r8, #16
 8001a02:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001a06:	46e0      	mov	r8, ip
 8001a08:	b2b6      	uxth	r6, r6
 8001a0a:	d004      	beq.n	8001a16 <RCC_GetClocksFreq+0xa2>
 8001a0c:	b11e      	cbz	r6, 8001a16 <RCC_GetClocksFreq+0xa2>
 8001a0e:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a12:	6106      	str	r6, [r0, #16]
 8001a14:	e000      	b.n	8001a18 <RCC_GetClocksFreq+0xa4>
 8001a16:	6102      	str	r2, [r0, #16]
 8001a18:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001a1a:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001a1e:	f00c 060f 	and.w	r6, ip, #15
 8001a22:	f01c 0f10 	tst.w	ip, #16
 8001a26:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001a2a:	b2b6      	uxth	r6, r6
 8001a2c:	d004      	beq.n	8001a38 <RCC_GetClocksFreq+0xc4>
 8001a2e:	b11e      	cbz	r6, 8001a38 <RCC_GetClocksFreq+0xc4>
 8001a30:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a34:	6146      	str	r6, [r0, #20]
 8001a36:	e000      	b.n	8001a3a <RCC_GetClocksFreq+0xc6>
 8001a38:	6142      	str	r2, [r0, #20]
 8001a3a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a3c:	06f6      	lsls	r6, r6, #27
 8001a3e:	bf5a      	itte	pl
 8001a40:	4e6a      	ldrpl	r6, [pc, #424]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001a42:	6186      	strpl	r6, [r0, #24]
 8001a44:	6182      	strmi	r2, [r0, #24]
 8001a46:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a48:	06b6      	lsls	r6, r6, #26
 8001a4a:	bf5a      	itte	pl
 8001a4c:	4e67      	ldrpl	r6, [pc, #412]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001a4e:	61c6      	strpl	r6, [r0, #28]
 8001a50:	61c2      	strmi	r2, [r0, #28]
 8001a52:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a54:	0676      	lsls	r6, r6, #25
 8001a56:	bf5a      	itte	pl
 8001a58:	4e64      	ldrpl	r6, [pc, #400]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001a5a:	6206      	strpl	r6, [r0, #32]
 8001a5c:	6202      	strmi	r2, [r0, #32]
 8001a5e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a60:	05f6      	lsls	r6, r6, #23
 8001a62:	d506      	bpl.n	8001a72 <RCC_GetClocksFreq+0xfe>
 8001a64:	429a      	cmp	r2, r3
 8001a66:	d104      	bne.n	8001a72 <RCC_GetClocksFreq+0xfe>
 8001a68:	42a5      	cmp	r5, r4
 8001a6a:	d102      	bne.n	8001a72 <RCC_GetClocksFreq+0xfe>
 8001a6c:	0056      	lsls	r6, r2, #1
 8001a6e:	6246      	str	r6, [r0, #36]	; 0x24
 8001a70:	e000      	b.n	8001a74 <RCC_GetClocksFreq+0x100>
 8001a72:	6241      	str	r1, [r0, #36]	; 0x24
 8001a74:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a76:	04f6      	lsls	r6, r6, #19
 8001a78:	d506      	bpl.n	8001a88 <RCC_GetClocksFreq+0x114>
 8001a7a:	429a      	cmp	r2, r3
 8001a7c:	d104      	bne.n	8001a88 <RCC_GetClocksFreq+0x114>
 8001a7e:	42a5      	cmp	r5, r4
 8001a80:	d102      	bne.n	8001a88 <RCC_GetClocksFreq+0x114>
 8001a82:	0056      	lsls	r6, r2, #1
 8001a84:	6286      	str	r6, [r0, #40]	; 0x28
 8001a86:	e000      	b.n	8001a8a <RCC_GetClocksFreq+0x116>
 8001a88:	6281      	str	r1, [r0, #40]	; 0x28
 8001a8a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a8c:	05b6      	lsls	r6, r6, #22
 8001a8e:	d506      	bpl.n	8001a9e <RCC_GetClocksFreq+0x12a>
 8001a90:	429a      	cmp	r2, r3
 8001a92:	d104      	bne.n	8001a9e <RCC_GetClocksFreq+0x12a>
 8001a94:	42a5      	cmp	r5, r4
 8001a96:	d102      	bne.n	8001a9e <RCC_GetClocksFreq+0x12a>
 8001a98:	0056      	lsls	r6, r2, #1
 8001a9a:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001a9c:	e000      	b.n	8001aa0 <RCC_GetClocksFreq+0x12c>
 8001a9e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001aa0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001aa2:	0576      	lsls	r6, r6, #21
 8001aa4:	d506      	bpl.n	8001ab4 <RCC_GetClocksFreq+0x140>
 8001aa6:	429a      	cmp	r2, r3
 8001aa8:	d104      	bne.n	8001ab4 <RCC_GetClocksFreq+0x140>
 8001aaa:	42a5      	cmp	r5, r4
 8001aac:	d102      	bne.n	8001ab4 <RCC_GetClocksFreq+0x140>
 8001aae:	0056      	lsls	r6, r2, #1
 8001ab0:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001ab2:	e000      	b.n	8001ab6 <RCC_GetClocksFreq+0x142>
 8001ab4:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001ab6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ab8:	0536      	lsls	r6, r6, #20
 8001aba:	d506      	bpl.n	8001aca <RCC_GetClocksFreq+0x156>
 8001abc:	429a      	cmp	r2, r3
 8001abe:	d104      	bne.n	8001aca <RCC_GetClocksFreq+0x156>
 8001ac0:	42a5      	cmp	r5, r4
 8001ac2:	d102      	bne.n	8001aca <RCC_GetClocksFreq+0x156>
 8001ac4:	0056      	lsls	r6, r2, #1
 8001ac6:	6506      	str	r6, [r0, #80]	; 0x50
 8001ac8:	e000      	b.n	8001acc <RCC_GetClocksFreq+0x158>
 8001aca:	6501      	str	r1, [r0, #80]	; 0x50
 8001acc:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ace:	04b6      	lsls	r6, r6, #18
 8001ad0:	d506      	bpl.n	8001ae0 <RCC_GetClocksFreq+0x16c>
 8001ad2:	429a      	cmp	r2, r3
 8001ad4:	d104      	bne.n	8001ae0 <RCC_GetClocksFreq+0x16c>
 8001ad6:	42a5      	cmp	r5, r4
 8001ad8:	d102      	bne.n	8001ae0 <RCC_GetClocksFreq+0x16c>
 8001ada:	0056      	lsls	r6, r2, #1
 8001adc:	6546      	str	r6, [r0, #84]	; 0x54
 8001ade:	e000      	b.n	8001ae2 <RCC_GetClocksFreq+0x16e>
 8001ae0:	6501      	str	r1, [r0, #80]	; 0x50
 8001ae2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ae4:	0436      	lsls	r6, r6, #16
 8001ae6:	d506      	bpl.n	8001af6 <RCC_GetClocksFreq+0x182>
 8001ae8:	429a      	cmp	r2, r3
 8001aea:	d104      	bne.n	8001af6 <RCC_GetClocksFreq+0x182>
 8001aec:	42a5      	cmp	r5, r4
 8001aee:	d102      	bne.n	8001af6 <RCC_GetClocksFreq+0x182>
 8001af0:	0053      	lsls	r3, r2, #1
 8001af2:	6583      	str	r3, [r0, #88]	; 0x58
 8001af4:	e000      	b.n	8001af8 <RCC_GetClocksFreq+0x184>
 8001af6:	6581      	str	r1, [r0, #88]	; 0x58
 8001af8:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001afa:	4b3b      	ldr	r3, [pc, #236]	; (8001be8 <RCC_GetClocksFreq+0x274>)
 8001afc:	07a4      	lsls	r4, r4, #30
 8001afe:	d101      	bne.n	8001b04 <RCC_GetClocksFreq+0x190>
 8001b00:	6381      	str	r1, [r0, #56]	; 0x38
 8001b02:	e015      	b.n	8001b30 <RCC_GetClocksFreq+0x1bc>
 8001b04:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b06:	f001 0103 	and.w	r1, r1, #3
 8001b0a:	2901      	cmp	r1, #1
 8001b0c:	d101      	bne.n	8001b12 <RCC_GetClocksFreq+0x19e>
 8001b0e:	6382      	str	r2, [r0, #56]	; 0x38
 8001b10:	e00e      	b.n	8001b30 <RCC_GetClocksFreq+0x1bc>
 8001b12:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b14:	f001 0103 	and.w	r1, r1, #3
 8001b18:	2902      	cmp	r1, #2
 8001b1a:	d102      	bne.n	8001b22 <RCC_GetClocksFreq+0x1ae>
 8001b1c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b20:	e005      	b.n	8001b2e <RCC_GetClocksFreq+0x1ba>
 8001b22:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b24:	f003 0303 	and.w	r3, r3, #3
 8001b28:	2b03      	cmp	r3, #3
 8001b2a:	d101      	bne.n	8001b30 <RCC_GetClocksFreq+0x1bc>
 8001b2c:	4b2f      	ldr	r3, [pc, #188]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001b2e:	6383      	str	r3, [r0, #56]	; 0x38
 8001b30:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b32:	4b2d      	ldr	r3, [pc, #180]	; (8001be8 <RCC_GetClocksFreq+0x274>)
 8001b34:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001b38:	d102      	bne.n	8001b40 <RCC_GetClocksFreq+0x1cc>
 8001b3a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001b3e:	e018      	b.n	8001b72 <RCC_GetClocksFreq+0x1fe>
 8001b40:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b42:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b46:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001b4a:	d101      	bne.n	8001b50 <RCC_GetClocksFreq+0x1dc>
 8001b4c:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001b4e:	e010      	b.n	8001b72 <RCC_GetClocksFreq+0x1fe>
 8001b50:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b52:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b56:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001b5a:	d102      	bne.n	8001b62 <RCC_GetClocksFreq+0x1ee>
 8001b5c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b60:	e006      	b.n	8001b70 <RCC_GetClocksFreq+0x1fc>
 8001b62:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b64:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001b68:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001b6c:	d101      	bne.n	8001b72 <RCC_GetClocksFreq+0x1fe>
 8001b6e:	4b1f      	ldr	r3, [pc, #124]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001b70:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001b72:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b74:	4b1c      	ldr	r3, [pc, #112]	; (8001be8 <RCC_GetClocksFreq+0x274>)
 8001b76:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001b7a:	d102      	bne.n	8001b82 <RCC_GetClocksFreq+0x20e>
 8001b7c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001b80:	e018      	b.n	8001bb4 <RCC_GetClocksFreq+0x240>
 8001b82:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b84:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b88:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001b8c:	d101      	bne.n	8001b92 <RCC_GetClocksFreq+0x21e>
 8001b8e:	6402      	str	r2, [r0, #64]	; 0x40
 8001b90:	e010      	b.n	8001bb4 <RCC_GetClocksFreq+0x240>
 8001b92:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b94:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b98:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001b9c:	d102      	bne.n	8001ba4 <RCC_GetClocksFreq+0x230>
 8001b9e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001ba2:	e006      	b.n	8001bb2 <RCC_GetClocksFreq+0x23e>
 8001ba4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001ba6:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001baa:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001bae:	d101      	bne.n	8001bb4 <RCC_GetClocksFreq+0x240>
 8001bb0:	4b0e      	ldr	r3, [pc, #56]	; (8001bec <RCC_GetClocksFreq+0x278>)
 8001bb2:	6403      	str	r3, [r0, #64]	; 0x40
 8001bb4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001bb6:	4b0c      	ldr	r3, [pc, #48]	; (8001be8 <RCC_GetClocksFreq+0x274>)
 8001bb8:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001bbc:	d102      	bne.n	8001bc4 <RCC_GetClocksFreq+0x250>
 8001bbe:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001bc2:	e023      	b.n	8001c0c <RCC_GetClocksFreq+0x298>
 8001bc4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bc6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001bca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001bce:	d101      	bne.n	8001bd4 <RCC_GetClocksFreq+0x260>
 8001bd0:	6442      	str	r2, [r0, #68]	; 0x44
 8001bd2:	e01b      	b.n	8001c0c <RCC_GetClocksFreq+0x298>
 8001bd4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bd6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001bda:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001bde:	d10d      	bne.n	8001bfc <RCC_GetClocksFreq+0x288>
 8001be0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001be4:	e011      	b.n	8001c0a <RCC_GetClocksFreq+0x296>
 8001be6:	bf00      	nop
 8001be8:	40021000 	.word	0x40021000
 8001bec:	007a1200 	.word	0x007a1200
 8001bf0:	003d0900 	.word	0x003d0900
 8001bf4:	20000058 	.word	0x20000058
 8001bf8:	20000038 	.word	0x20000038
 8001bfc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001bfe:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001c02:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001c06:	d101      	bne.n	8001c0c <RCC_GetClocksFreq+0x298>
 8001c08:	4b13      	ldr	r3, [pc, #76]	; (8001c58 <RCC_GetClocksFreq+0x2e4>)
 8001c0a:	6443      	str	r3, [r0, #68]	; 0x44
 8001c0c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c0e:	4b13      	ldr	r3, [pc, #76]	; (8001c5c <RCC_GetClocksFreq+0x2e8>)
 8001c10:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001c14:	d103      	bne.n	8001c1e <RCC_GetClocksFreq+0x2aa>
 8001c16:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001c1a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c1e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c20:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001c24:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001c28:	d102      	bne.n	8001c30 <RCC_GetClocksFreq+0x2bc>
 8001c2a:	6482      	str	r2, [r0, #72]	; 0x48
 8001c2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c30:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001c32:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001c36:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001c3a:	d102      	bne.n	8001c42 <RCC_GetClocksFreq+0x2ce>
 8001c3c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c40:	e006      	b.n	8001c50 <RCC_GetClocksFreq+0x2dc>
 8001c42:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c44:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001c48:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001c4c:	d101      	bne.n	8001c52 <RCC_GetClocksFreq+0x2de>
 8001c4e:	4b02      	ldr	r3, [pc, #8]	; (8001c58 <RCC_GetClocksFreq+0x2e4>)
 8001c50:	6483      	str	r3, [r0, #72]	; 0x48
 8001c52:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c56:	bf00      	nop
 8001c58:	007a1200 	.word	0x007a1200
 8001c5c:	40021000 	.word	0x40021000

08001c60 <RCC_AHBPeriphClockCmd>:
 8001c60:	bf00      	nop
 8001c62:	bf00      	nop
 8001c64:	4b04      	ldr	r3, [pc, #16]	; (8001c78 <RCC_AHBPeriphClockCmd+0x18>)
 8001c66:	695a      	ldr	r2, [r3, #20]
 8001c68:	b109      	cbz	r1, 8001c6e <RCC_AHBPeriphClockCmd+0xe>
 8001c6a:	4310      	orrs	r0, r2
 8001c6c:	e001      	b.n	8001c72 <RCC_AHBPeriphClockCmd+0x12>
 8001c6e:	ea22 0000 	bic.w	r0, r2, r0
 8001c72:	6158      	str	r0, [r3, #20]
 8001c74:	4770      	bx	lr
 8001c76:	bf00      	nop
 8001c78:	40021000 	.word	0x40021000

08001c7c <RCC_APB2PeriphClockCmd>:
 8001c7c:	bf00      	nop
 8001c7e:	bf00      	nop
 8001c80:	4b04      	ldr	r3, [pc, #16]	; (8001c94 <RCC_APB2PeriphClockCmd+0x18>)
 8001c82:	699a      	ldr	r2, [r3, #24]
 8001c84:	b109      	cbz	r1, 8001c8a <RCC_APB2PeriphClockCmd+0xe>
 8001c86:	4310      	orrs	r0, r2
 8001c88:	e001      	b.n	8001c8e <RCC_APB2PeriphClockCmd+0x12>
 8001c8a:	ea22 0000 	bic.w	r0, r2, r0
 8001c8e:	6198      	str	r0, [r3, #24]
 8001c90:	4770      	bx	lr
 8001c92:	bf00      	nop
 8001c94:	40021000 	.word	0x40021000

08001c98 <RCC_APB1PeriphClockCmd>:
 8001c98:	bf00      	nop
 8001c9a:	bf00      	nop
 8001c9c:	4b04      	ldr	r3, [pc, #16]	; (8001cb0 <RCC_APB1PeriphClockCmd+0x18>)
 8001c9e:	69da      	ldr	r2, [r3, #28]
 8001ca0:	b109      	cbz	r1, 8001ca6 <RCC_APB1PeriphClockCmd+0xe>
 8001ca2:	4310      	orrs	r0, r2
 8001ca4:	e001      	b.n	8001caa <RCC_APB1PeriphClockCmd+0x12>
 8001ca6:	ea22 0000 	bic.w	r0, r2, r0
 8001caa:	61d8      	str	r0, [r3, #28]
 8001cac:	4770      	bx	lr
 8001cae:	bf00      	nop
 8001cb0:	40021000 	.word	0x40021000

08001cb4 <TIM_TimeBaseInit>:
 8001cb4:	bf00      	nop
 8001cb6:	bf00      	nop
 8001cb8:	bf00      	nop
 8001cba:	4a24      	ldr	r2, [pc, #144]	; (8001d4c <TIM_TimeBaseInit+0x98>)
 8001cbc:	8803      	ldrh	r3, [r0, #0]
 8001cbe:	4290      	cmp	r0, r2
 8001cc0:	b29b      	uxth	r3, r3
 8001cc2:	d012      	beq.n	8001cea <TIM_TimeBaseInit+0x36>
 8001cc4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001cc8:	4290      	cmp	r0, r2
 8001cca:	d00e      	beq.n	8001cea <TIM_TimeBaseInit+0x36>
 8001ccc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001cd0:	d00b      	beq.n	8001cea <TIM_TimeBaseInit+0x36>
 8001cd2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001cd6:	4290      	cmp	r0, r2
 8001cd8:	d007      	beq.n	8001cea <TIM_TimeBaseInit+0x36>
 8001cda:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001cde:	4290      	cmp	r0, r2
 8001ce0:	d003      	beq.n	8001cea <TIM_TimeBaseInit+0x36>
 8001ce2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001ce6:	4290      	cmp	r0, r2
 8001ce8:	d103      	bne.n	8001cf2 <TIM_TimeBaseInit+0x3e>
 8001cea:	884a      	ldrh	r2, [r1, #2]
 8001cec:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001cf0:	4313      	orrs	r3, r2
 8001cf2:	4a17      	ldr	r2, [pc, #92]	; (8001d50 <TIM_TimeBaseInit+0x9c>)
 8001cf4:	4290      	cmp	r0, r2
 8001cf6:	d008      	beq.n	8001d0a <TIM_TimeBaseInit+0x56>
 8001cf8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001cfc:	4290      	cmp	r0, r2
 8001cfe:	bf1f      	itttt	ne
 8001d00:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001d04:	890a      	ldrhne	r2, [r1, #8]
 8001d06:	b29b      	uxthne	r3, r3
 8001d08:	4313      	orrne	r3, r2
 8001d0a:	8003      	strh	r3, [r0, #0]
 8001d0c:	684b      	ldr	r3, [r1, #4]
 8001d0e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001d10:	880b      	ldrh	r3, [r1, #0]
 8001d12:	8503      	strh	r3, [r0, #40]	; 0x28
 8001d14:	4b0d      	ldr	r3, [pc, #52]	; (8001d4c <TIM_TimeBaseInit+0x98>)
 8001d16:	4298      	cmp	r0, r3
 8001d18:	d013      	beq.n	8001d42 <TIM_TimeBaseInit+0x8e>
 8001d1a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d1e:	4298      	cmp	r0, r3
 8001d20:	d00f      	beq.n	8001d42 <TIM_TimeBaseInit+0x8e>
 8001d22:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001d26:	4298      	cmp	r0, r3
 8001d28:	d00b      	beq.n	8001d42 <TIM_TimeBaseInit+0x8e>
 8001d2a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d2e:	4298      	cmp	r0, r3
 8001d30:	d007      	beq.n	8001d42 <TIM_TimeBaseInit+0x8e>
 8001d32:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d36:	4298      	cmp	r0, r3
 8001d38:	d003      	beq.n	8001d42 <TIM_TimeBaseInit+0x8e>
 8001d3a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d3e:	4298      	cmp	r0, r3
 8001d40:	d101      	bne.n	8001d46 <TIM_TimeBaseInit+0x92>
 8001d42:	894b      	ldrh	r3, [r1, #10]
 8001d44:	8603      	strh	r3, [r0, #48]	; 0x30
 8001d46:	2301      	movs	r3, #1
 8001d48:	6143      	str	r3, [r0, #20]
 8001d4a:	4770      	bx	lr
 8001d4c:	40012c00 	.word	0x40012c00
 8001d50:	40001000 	.word	0x40001000

08001d54 <TIM_Cmd>:
 8001d54:	bf00      	nop
 8001d56:	bf00      	nop
 8001d58:	8803      	ldrh	r3, [r0, #0]
 8001d5a:	b119      	cbz	r1, 8001d64 <TIM_Cmd+0x10>
 8001d5c:	b29b      	uxth	r3, r3
 8001d5e:	f043 0301 	orr.w	r3, r3, #1
 8001d62:	e003      	b.n	8001d6c <TIM_Cmd+0x18>
 8001d64:	f023 0301 	bic.w	r3, r3, #1
 8001d68:	041b      	lsls	r3, r3, #16
 8001d6a:	0c1b      	lsrs	r3, r3, #16
 8001d6c:	8003      	strh	r3, [r0, #0]
 8001d6e:	4770      	bx	lr

08001d70 <TIM_OC1Init>:
 8001d70:	b570      	push	{r4, r5, r6, lr}
 8001d72:	bf00      	nop
 8001d74:	bf00      	nop
 8001d76:	bf00      	nop
 8001d78:	bf00      	nop
 8001d7a:	6a03      	ldr	r3, [r0, #32]
 8001d7c:	680d      	ldr	r5, [r1, #0]
 8001d7e:	f023 0301 	bic.w	r3, r3, #1
 8001d82:	6203      	str	r3, [r0, #32]
 8001d84:	6a03      	ldr	r3, [r0, #32]
 8001d86:	6844      	ldr	r4, [r0, #4]
 8001d88:	6982      	ldr	r2, [r0, #24]
 8001d8a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001d8e:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001d92:	4315      	orrs	r5, r2
 8001d94:	898a      	ldrh	r2, [r1, #12]
 8001d96:	f023 0302 	bic.w	r3, r3, #2
 8001d9a:	4313      	orrs	r3, r2
 8001d9c:	888a      	ldrh	r2, [r1, #4]
 8001d9e:	4313      	orrs	r3, r2
 8001da0:	4a15      	ldr	r2, [pc, #84]	; (8001df8 <TIM_OC1Init+0x88>)
 8001da2:	4290      	cmp	r0, r2
 8001da4:	d00f      	beq.n	8001dc6 <TIM_OC1Init+0x56>
 8001da6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001daa:	4290      	cmp	r0, r2
 8001dac:	d00b      	beq.n	8001dc6 <TIM_OC1Init+0x56>
 8001dae:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001db2:	4290      	cmp	r0, r2
 8001db4:	d007      	beq.n	8001dc6 <TIM_OC1Init+0x56>
 8001db6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dba:	4290      	cmp	r0, r2
 8001dbc:	d003      	beq.n	8001dc6 <TIM_OC1Init+0x56>
 8001dbe:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dc2:	4290      	cmp	r0, r2
 8001dc4:	d111      	bne.n	8001dea <TIM_OC1Init+0x7a>
 8001dc6:	bf00      	nop
 8001dc8:	bf00      	nop
 8001dca:	bf00      	nop
 8001dcc:	bf00      	nop
 8001dce:	89ca      	ldrh	r2, [r1, #14]
 8001dd0:	88ce      	ldrh	r6, [r1, #6]
 8001dd2:	f023 0308 	bic.w	r3, r3, #8
 8001dd6:	4313      	orrs	r3, r2
 8001dd8:	8a0a      	ldrh	r2, [r1, #16]
 8001dda:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001dde:	4314      	orrs	r4, r2
 8001de0:	8a4a      	ldrh	r2, [r1, #18]
 8001de2:	f023 0304 	bic.w	r3, r3, #4
 8001de6:	4333      	orrs	r3, r6
 8001de8:	4314      	orrs	r4, r2
 8001dea:	688a      	ldr	r2, [r1, #8]
 8001dec:	6044      	str	r4, [r0, #4]
 8001dee:	6185      	str	r5, [r0, #24]
 8001df0:	6342      	str	r2, [r0, #52]	; 0x34
 8001df2:	6203      	str	r3, [r0, #32]
 8001df4:	bd70      	pop	{r4, r5, r6, pc}
 8001df6:	bf00      	nop
 8001df8:	40012c00 	.word	0x40012c00

08001dfc <TIM_OC2Init>:
 8001dfc:	b570      	push	{r4, r5, r6, lr}
 8001dfe:	bf00      	nop
 8001e00:	bf00      	nop
 8001e02:	bf00      	nop
 8001e04:	bf00      	nop
 8001e06:	6a03      	ldr	r3, [r0, #32]
 8001e08:	680d      	ldr	r5, [r1, #0]
 8001e0a:	898e      	ldrh	r6, [r1, #12]
 8001e0c:	f023 0310 	bic.w	r3, r3, #16
 8001e10:	6203      	str	r3, [r0, #32]
 8001e12:	6a03      	ldr	r3, [r0, #32]
 8001e14:	6844      	ldr	r4, [r0, #4]
 8001e16:	6982      	ldr	r2, [r0, #24]
 8001e18:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001e1c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001e20:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001e24:	f023 0220 	bic.w	r2, r3, #32
 8001e28:	888b      	ldrh	r3, [r1, #4]
 8001e2a:	4333      	orrs	r3, r6
 8001e2c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001e30:	4a10      	ldr	r2, [pc, #64]	; (8001e74 <TIM_OC2Init+0x78>)
 8001e32:	4290      	cmp	r0, r2
 8001e34:	d003      	beq.n	8001e3e <TIM_OC2Init+0x42>
 8001e36:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e3a:	4290      	cmp	r0, r2
 8001e3c:	d114      	bne.n	8001e68 <TIM_OC2Init+0x6c>
 8001e3e:	bf00      	nop
 8001e40:	bf00      	nop
 8001e42:	bf00      	nop
 8001e44:	bf00      	nop
 8001e46:	89ca      	ldrh	r2, [r1, #14]
 8001e48:	8a0e      	ldrh	r6, [r1, #16]
 8001e4a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001e4e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001e52:	88ca      	ldrh	r2, [r1, #6]
 8001e54:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001e58:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001e5c:	8a4a      	ldrh	r2, [r1, #18]
 8001e5e:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001e62:	4332      	orrs	r2, r6
 8001e64:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001e68:	688a      	ldr	r2, [r1, #8]
 8001e6a:	6044      	str	r4, [r0, #4]
 8001e6c:	6185      	str	r5, [r0, #24]
 8001e6e:	6382      	str	r2, [r0, #56]	; 0x38
 8001e70:	6203      	str	r3, [r0, #32]
 8001e72:	bd70      	pop	{r4, r5, r6, pc}
 8001e74:	40012c00 	.word	0x40012c00

08001e78 <TIM_CtrlPWMOutputs>:
 8001e78:	bf00      	nop
 8001e7a:	bf00      	nop
 8001e7c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001e7e:	b111      	cbz	r1, 8001e86 <TIM_CtrlPWMOutputs+0xe>
 8001e80:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001e84:	e001      	b.n	8001e8a <TIM_CtrlPWMOutputs+0x12>
 8001e86:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001e8a:	6443      	str	r3, [r0, #68]	; 0x44
 8001e8c:	4770      	bx	lr

08001e8e <TIM_ClearITPendingBit>:
 8001e8e:	bf00      	nop
 8001e90:	43c9      	mvns	r1, r1
 8001e92:	b289      	uxth	r1, r1
 8001e94:	6101      	str	r1, [r0, #16]
 8001e96:	4770      	bx	lr

08001e98 <timer_init>:
 8001e98:	b530      	push	{r4, r5, lr}
 8001e9a:	2300      	movs	r3, #0
 8001e9c:	b085      	sub	sp, #20
 8001e9e:	491f      	ldr	r1, [pc, #124]	; (8001f1c <timer_init+0x84>)
 8001ea0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001ea4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001ea8:	491d      	ldr	r1, [pc, #116]	; (8001f20 <timer_init+0x88>)
 8001eaa:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001eae:	4a1d      	ldr	r2, [pc, #116]	; (8001f24 <timer_init+0x8c>)
 8001eb0:	2400      	movs	r4, #0
 8001eb2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001eb6:	3301      	adds	r3, #1
 8001eb8:	2b04      	cmp	r3, #4
 8001eba:	4625      	mov	r5, r4
 8001ebc:	d1ef      	bne.n	8001e9e <timer_init+0x6>
 8001ebe:	4b1a      	ldr	r3, [pc, #104]	; (8001f28 <timer_init+0x90>)
 8001ec0:	2002      	movs	r0, #2
 8001ec2:	2101      	movs	r1, #1
 8001ec4:	601c      	str	r4, [r3, #0]
 8001ec6:	f7ff fee7 	bl	8001c98 <RCC_APB1PeriphClockCmd>
 8001eca:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001ece:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001ed2:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001ed6:	4c15      	ldr	r4, [pc, #84]	; (8001f2c <timer_init+0x94>)
 8001ed8:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001edc:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001ee0:	4620      	mov	r0, r4
 8001ee2:	2331      	movs	r3, #49	; 0x31
 8001ee4:	a901      	add	r1, sp, #4
 8001ee6:	9302      	str	r3, [sp, #8]
 8001ee8:	f7ff fee4 	bl	8001cb4 <TIM_TimeBaseInit>
 8001eec:	4620      	mov	r0, r4
 8001eee:	2101      	movs	r1, #1
 8001ef0:	f7ff ff30 	bl	8001d54 <TIM_Cmd>
 8001ef4:	68e3      	ldr	r3, [r4, #12]
 8001ef6:	f043 0301 	orr.w	r3, r3, #1
 8001efa:	60e3      	str	r3, [r4, #12]
 8001efc:	231d      	movs	r3, #29
 8001efe:	f88d 3000 	strb.w	r3, [sp]
 8001f02:	4668      	mov	r0, sp
 8001f04:	2301      	movs	r3, #1
 8001f06:	f88d 5001 	strb.w	r5, [sp, #1]
 8001f0a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001f0e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001f12:	f000 fc5d 	bl	80027d0 <NVIC_Init>
 8001f16:	b005      	add	sp, #20
 8001f18:	bd30      	pop	{r4, r5, pc}
 8001f1a:	bf00      	nop
 8001f1c:	20001340 	.word	0x20001340
 8001f20:	20001334 	.word	0x20001334
 8001f24:	2000132c 	.word	0x2000132c
 8001f28:	2000133c 	.word	0x2000133c
 8001f2c:	40000400 	.word	0x40000400

08001f30 <TIM3_IRQHandler>:
 8001f30:	2300      	movs	r3, #0
 8001f32:	4910      	ldr	r1, [pc, #64]	; (8001f74 <TIM3_IRQHandler+0x44>)
 8001f34:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001f38:	b292      	uxth	r2, r2
 8001f3a:	b132      	cbz	r2, 8001f4a <TIM3_IRQHandler+0x1a>
 8001f3c:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001f40:	3a01      	subs	r2, #1
 8001f42:	b292      	uxth	r2, r2
 8001f44:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f48:	e009      	b.n	8001f5e <TIM3_IRQHandler+0x2e>
 8001f4a:	4a0b      	ldr	r2, [pc, #44]	; (8001f78 <TIM3_IRQHandler+0x48>)
 8001f4c:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8001f50:	b292      	uxth	r2, r2
 8001f52:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f56:	4a09      	ldr	r2, [pc, #36]	; (8001f7c <TIM3_IRQHandler+0x4c>)
 8001f58:	2101      	movs	r1, #1
 8001f5a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001f5e:	3301      	adds	r3, #1
 8001f60:	2b04      	cmp	r3, #4
 8001f62:	d1e6      	bne.n	8001f32 <TIM3_IRQHandler+0x2>
 8001f64:	4a06      	ldr	r2, [pc, #24]	; (8001f80 <TIM3_IRQHandler+0x50>)
 8001f66:	4807      	ldr	r0, [pc, #28]	; (8001f84 <TIM3_IRQHandler+0x54>)
 8001f68:	6813      	ldr	r3, [r2, #0]
 8001f6a:	2101      	movs	r1, #1
 8001f6c:	3301      	adds	r3, #1
 8001f6e:	6013      	str	r3, [r2, #0]
 8001f70:	f7ff bf8d 	b.w	8001e8e <TIM_ClearITPendingBit>
 8001f74:	20001340 	.word	0x20001340
 8001f78:	20001334 	.word	0x20001334
 8001f7c:	2000132c 	.word	0x2000132c
 8001f80:	2000133c 	.word	0x2000133c
 8001f84:	40000400 	.word	0x40000400

08001f88 <timer_get_time>:
 8001f88:	b082      	sub	sp, #8
 8001f8a:	b672      	cpsid	i
 8001f8c:	4b04      	ldr	r3, [pc, #16]	; (8001fa0 <timer_get_time+0x18>)
 8001f8e:	681b      	ldr	r3, [r3, #0]
 8001f90:	9301      	str	r3, [sp, #4]
 8001f92:	b662      	cpsie	i
 8001f94:	230a      	movs	r3, #10
 8001f96:	9801      	ldr	r0, [sp, #4]
 8001f98:	fbb0 f0f3 	udiv	r0, r0, r3
 8001f9c:	b002      	add	sp, #8
 8001f9e:	4770      	bx	lr
 8001fa0:	2000133c 	.word	0x2000133c

08001fa4 <timer_delay_ms>:
 8001fa4:	b513      	push	{r0, r1, r4, lr}
 8001fa6:	4604      	mov	r4, r0
 8001fa8:	f7ff ffee 	bl	8001f88 <timer_get_time>
 8001fac:	4420      	add	r0, r4
 8001fae:	9001      	str	r0, [sp, #4]
 8001fb0:	9c01      	ldr	r4, [sp, #4]
 8001fb2:	f7ff ffe9 	bl	8001f88 <timer_get_time>
 8001fb6:	4284      	cmp	r4, r0
 8001fb8:	d902      	bls.n	8001fc0 <timer_delay_ms+0x1c>
 8001fba:	f000 fb19 	bl	80025f0 <core_yield>
 8001fbe:	e7f7      	b.n	8001fb0 <timer_delay_ms+0xc>
 8001fc0:	b002      	add	sp, #8
 8001fc2:	bd10      	pop	{r4, pc}

08001fc4 <event_timer_set_period>:
 8001fc4:	b672      	cpsid	i
 8001fc6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8001fca:	4b07      	ldr	r3, [pc, #28]	; (8001fe8 <event_timer_set_period+0x24>)
 8001fcc:	0049      	lsls	r1, r1, #1
 8001fce:	b289      	uxth	r1, r1
 8001fd0:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001fd4:	4b05      	ldr	r3, [pc, #20]	; (8001fec <event_timer_set_period+0x28>)
 8001fd6:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001fda:	4b05      	ldr	r3, [pc, #20]	; (8001ff0 <event_timer_set_period+0x2c>)
 8001fdc:	2200      	movs	r2, #0
 8001fde:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001fe2:	b662      	cpsie	i
 8001fe4:	4770      	bx	lr
 8001fe6:	bf00      	nop
 8001fe8:	20001340 	.word	0x20001340
 8001fec:	20001334 	.word	0x20001334
 8001ff0:	2000132c 	.word	0x2000132c

08001ff4 <event_timer_wait>:
 8001ff4:	b510      	push	{r4, lr}
 8001ff6:	4604      	mov	r4, r0
 8001ff8:	4a06      	ldr	r2, [pc, #24]	; (8002014 <event_timer_wait+0x20>)
 8001ffa:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 8001ffe:	b29b      	uxth	r3, r3
 8002000:	b913      	cbnz	r3, 8002008 <event_timer_wait+0x14>
 8002002:	f000 faf5 	bl	80025f0 <core_yield>
 8002006:	e7f7      	b.n	8001ff8 <event_timer_wait+0x4>
 8002008:	b672      	cpsid	i
 800200a:	2300      	movs	r3, #0
 800200c:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8002010:	b662      	cpsie	i
 8002012:	bd10      	pop	{r4, pc}
 8002014:	2000132c 	.word	0x2000132c

08002018 <USART_Init>:
 8002018:	b530      	push	{r4, r5, lr}
 800201a:	4604      	mov	r4, r0
 800201c:	b099      	sub	sp, #100	; 0x64
 800201e:	460d      	mov	r5, r1
 8002020:	bf00      	nop
 8002022:	bf00      	nop
 8002024:	bf00      	nop
 8002026:	bf00      	nop
 8002028:	bf00      	nop
 800202a:	bf00      	nop
 800202c:	bf00      	nop
 800202e:	6803      	ldr	r3, [r0, #0]
 8002030:	f023 0301 	bic.w	r3, r3, #1
 8002034:	6003      	str	r3, [r0, #0]
 8002036:	6843      	ldr	r3, [r0, #4]
 8002038:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 800203c:	688b      	ldr	r3, [r1, #8]
 800203e:	68c9      	ldr	r1, [r1, #12]
 8002040:	4313      	orrs	r3, r2
 8002042:	6043      	str	r3, [r0, #4]
 8002044:	686a      	ldr	r2, [r5, #4]
 8002046:	6803      	ldr	r3, [r0, #0]
 8002048:	4311      	orrs	r1, r2
 800204a:	692a      	ldr	r2, [r5, #16]
 800204c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002050:	430a      	orrs	r2, r1
 8002052:	f023 030c 	bic.w	r3, r3, #12
 8002056:	4313      	orrs	r3, r2
 8002058:	6003      	str	r3, [r0, #0]
 800205a:	6883      	ldr	r3, [r0, #8]
 800205c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002060:	696b      	ldr	r3, [r5, #20]
 8002062:	4313      	orrs	r3, r2
 8002064:	6083      	str	r3, [r0, #8]
 8002066:	a801      	add	r0, sp, #4
 8002068:	f7ff fc84 	bl	8001974 <RCC_GetClocksFreq>
 800206c:	4b17      	ldr	r3, [pc, #92]	; (80020cc <USART_Init+0xb4>)
 800206e:	429c      	cmp	r4, r3
 8002070:	d101      	bne.n	8002076 <USART_Init+0x5e>
 8002072:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002074:	e00e      	b.n	8002094 <USART_Init+0x7c>
 8002076:	4b16      	ldr	r3, [pc, #88]	; (80020d0 <USART_Init+0xb8>)
 8002078:	429c      	cmp	r4, r3
 800207a:	d101      	bne.n	8002080 <USART_Init+0x68>
 800207c:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800207e:	e009      	b.n	8002094 <USART_Init+0x7c>
 8002080:	4b14      	ldr	r3, [pc, #80]	; (80020d4 <USART_Init+0xbc>)
 8002082:	429c      	cmp	r4, r3
 8002084:	d101      	bne.n	800208a <USART_Init+0x72>
 8002086:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002088:	e004      	b.n	8002094 <USART_Init+0x7c>
 800208a:	4b13      	ldr	r3, [pc, #76]	; (80020d8 <USART_Init+0xc0>)
 800208c:	429c      	cmp	r4, r3
 800208e:	bf0c      	ite	eq
 8002090:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002092:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002094:	6822      	ldr	r2, [r4, #0]
 8002096:	6829      	ldr	r1, [r5, #0]
 8002098:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 800209c:	bf18      	it	ne
 800209e:	005b      	lslne	r3, r3, #1
 80020a0:	fbb3 f2f1 	udiv	r2, r3, r1
 80020a4:	fb01 3312 	mls	r3, r1, r2, r3
 80020a8:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80020ac:	6823      	ldr	r3, [r4, #0]
 80020ae:	bf28      	it	cs
 80020b0:	3201      	addcs	r2, #1
 80020b2:	041b      	lsls	r3, r3, #16
 80020b4:	bf41      	itttt	mi
 80020b6:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80020ba:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80020be:	4013      	andmi	r3, r2
 80020c0:	ea41 0203 	orrmi.w	r2, r1, r3
 80020c4:	b292      	uxth	r2, r2
 80020c6:	81a2      	strh	r2, [r4, #12]
 80020c8:	b019      	add	sp, #100	; 0x64
 80020ca:	bd30      	pop	{r4, r5, pc}
 80020cc:	40013800 	.word	0x40013800
 80020d0:	40004400 	.word	0x40004400
 80020d4:	40004800 	.word	0x40004800
 80020d8:	40004c00 	.word	0x40004c00

080020dc <USART_Cmd>:
 80020dc:	bf00      	nop
 80020de:	bf00      	nop
 80020e0:	6803      	ldr	r3, [r0, #0]
 80020e2:	b111      	cbz	r1, 80020ea <USART_Cmd+0xe>
 80020e4:	f043 0301 	orr.w	r3, r3, #1
 80020e8:	e001      	b.n	80020ee <USART_Cmd+0x12>
 80020ea:	f023 0301 	bic.w	r3, r3, #1
 80020ee:	6003      	str	r3, [r0, #0]
 80020f0:	4770      	bx	lr

080020f2 <USART_ReceiveData>:
 80020f2:	bf00      	nop
 80020f4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80020f6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80020fa:	4770      	bx	lr

080020fc <USART_ITConfig>:
 80020fc:	b510      	push	{r4, lr}
 80020fe:	bf00      	nop
 8002100:	bf00      	nop
 8002102:	bf00      	nop
 8002104:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002108:	2301      	movs	r3, #1
 800210a:	b2c9      	uxtb	r1, r1
 800210c:	2c02      	cmp	r4, #2
 800210e:	fa03 f301 	lsl.w	r3, r3, r1
 8002112:	d101      	bne.n	8002118 <USART_ITConfig+0x1c>
 8002114:	3004      	adds	r0, #4
 8002116:	e002      	b.n	800211e <USART_ITConfig+0x22>
 8002118:	2c03      	cmp	r4, #3
 800211a:	bf08      	it	eq
 800211c:	3008      	addeq	r0, #8
 800211e:	b112      	cbz	r2, 8002126 <USART_ITConfig+0x2a>
 8002120:	6802      	ldr	r2, [r0, #0]
 8002122:	4313      	orrs	r3, r2
 8002124:	e002      	b.n	800212c <USART_ITConfig+0x30>
 8002126:	6802      	ldr	r2, [r0, #0]
 8002128:	ea22 0303 	bic.w	r3, r2, r3
 800212c:	6003      	str	r3, [r0, #0]
 800212e:	bd10      	pop	{r4, pc}

08002130 <USART_GetITStatus>:
 8002130:	b510      	push	{r4, lr}
 8002132:	bf00      	nop
 8002134:	bf00      	nop
 8002136:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800213a:	b2cc      	uxtb	r4, r1
 800213c:	2301      	movs	r3, #1
 800213e:	2a01      	cmp	r2, #1
 8002140:	fa03 f304 	lsl.w	r3, r3, r4
 8002144:	d101      	bne.n	800214a <USART_GetITStatus+0x1a>
 8002146:	6802      	ldr	r2, [r0, #0]
 8002148:	e003      	b.n	8002152 <USART_GetITStatus+0x22>
 800214a:	2a02      	cmp	r2, #2
 800214c:	bf0c      	ite	eq
 800214e:	6842      	ldreq	r2, [r0, #4]
 8002150:	6882      	ldrne	r2, [r0, #8]
 8002152:	4013      	ands	r3, r2
 8002154:	69c2      	ldr	r2, [r0, #28]
 8002156:	b13b      	cbz	r3, 8002168 <USART_GetITStatus+0x38>
 8002158:	0c09      	lsrs	r1, r1, #16
 800215a:	2301      	movs	r3, #1
 800215c:	408b      	lsls	r3, r1
 800215e:	4213      	tst	r3, r2
 8002160:	bf14      	ite	ne
 8002162:	2001      	movne	r0, #1
 8002164:	2000      	moveq	r0, #0
 8002166:	bd10      	pop	{r4, pc}
 8002168:	4618      	mov	r0, r3
 800216a:	bd10      	pop	{r4, pc}

0800216c <USART_ClearITPendingBit>:
 800216c:	bf00      	nop
 800216e:	bf00      	nop
 8002170:	2301      	movs	r3, #1
 8002172:	0c09      	lsrs	r1, r1, #16
 8002174:	408b      	lsls	r3, r1
 8002176:	6203      	str	r3, [r0, #32]
 8002178:	4770      	bx	lr
	...

0800217c <uart_write>:
 800217c:	4b04      	ldr	r3, [pc, #16]	; (8002190 <uart_write+0x14>)
 800217e:	69da      	ldr	r2, [r3, #28]
 8002180:	0612      	lsls	r2, r2, #24
 8002182:	d401      	bmi.n	8002188 <uart_write+0xc>
 8002184:	bf00      	nop
 8002186:	e7f9      	b.n	800217c <uart_write>
 8002188:	b280      	uxth	r0, r0
 800218a:	8518      	strh	r0, [r3, #40]	; 0x28
 800218c:	4770      	bx	lr
 800218e:	bf00      	nop
 8002190:	40013800 	.word	0x40013800

08002194 <uart_init>:
 8002194:	b530      	push	{r4, r5, lr}
 8002196:	4b2c      	ldr	r3, [pc, #176]	; (8002248 <uart_init+0xb4>)
 8002198:	4d2c      	ldr	r5, [pc, #176]	; (800224c <uart_init+0xb8>)
 800219a:	2400      	movs	r4, #0
 800219c:	601c      	str	r4, [r3, #0]
 800219e:	4b2c      	ldr	r3, [pc, #176]	; (8002250 <uart_init+0xbc>)
 80021a0:	b08b      	sub	sp, #44	; 0x2c
 80021a2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80021a6:	2101      	movs	r1, #1
 80021a8:	601c      	str	r4, [r3, #0]
 80021aa:	f7ff fd59 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 80021ae:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80021b2:	2101      	movs	r1, #1
 80021b4:	f7ff fd62 	bl	8001c7c <RCC_APB2PeriphClockCmd>
 80021b8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80021bc:	9302      	str	r3, [sp, #8]
 80021be:	2302      	movs	r3, #2
 80021c0:	f88d 300c 	strb.w	r3, [sp, #12]
 80021c4:	a902      	add	r1, sp, #8
 80021c6:	2303      	movs	r3, #3
 80021c8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80021cc:	f88d 300d 	strb.w	r3, [sp, #13]
 80021d0:	f88d 400e 	strb.w	r4, [sp, #14]
 80021d4:	f88d 400f 	strb.w	r4, [sp, #15]
 80021d8:	f000 fbd8 	bl	800298c <GPIO_Init>
 80021dc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80021e0:	2109      	movs	r1, #9
 80021e2:	2207      	movs	r2, #7
 80021e4:	f000 fc1c 	bl	8002a20 <GPIO_PinAFConfig>
 80021e8:	2207      	movs	r2, #7
 80021ea:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80021ee:	210a      	movs	r1, #10
 80021f0:	f000 fc16 	bl	8002a20 <GPIO_PinAFConfig>
 80021f4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80021f8:	9304      	str	r3, [sp, #16]
 80021fa:	4628      	mov	r0, r5
 80021fc:	230c      	movs	r3, #12
 80021fe:	a904      	add	r1, sp, #16
 8002200:	9308      	str	r3, [sp, #32]
 8002202:	9405      	str	r4, [sp, #20]
 8002204:	9406      	str	r4, [sp, #24]
 8002206:	9407      	str	r4, [sp, #28]
 8002208:	9409      	str	r4, [sp, #36]	; 0x24
 800220a:	f7ff ff05 	bl	8002018 <USART_Init>
 800220e:	4628      	mov	r0, r5
 8002210:	2101      	movs	r1, #1
 8002212:	f7ff ff63 	bl	80020dc <USART_Cmd>
 8002216:	2201      	movs	r2, #1
 8002218:	4628      	mov	r0, r5
 800221a:	490e      	ldr	r1, [pc, #56]	; (8002254 <uart_init+0xc0>)
 800221c:	f7ff ff6e 	bl	80020fc <USART_ITConfig>
 8002220:	2325      	movs	r3, #37	; 0x25
 8002222:	f88d 4005 	strb.w	r4, [sp, #5]
 8002226:	f88d 4006 	strb.w	r4, [sp, #6]
 800222a:	a801      	add	r0, sp, #4
 800222c:	2401      	movs	r4, #1
 800222e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002232:	f88d 4007 	strb.w	r4, [sp, #7]
 8002236:	f000 facb 	bl	80027d0 <NVIC_Init>
 800223a:	4628      	mov	r0, r5
 800223c:	4621      	mov	r1, r4
 800223e:	f7ff ff4d 	bl	80020dc <USART_Cmd>
 8002242:	b00b      	add	sp, #44	; 0x2c
 8002244:	bd30      	pop	{r4, r5, pc}
 8002246:	bf00      	nop
 8002248:	20001368 	.word	0x20001368
 800224c:	40013800 	.word	0x40013800
 8002250:	2000136c 	.word	0x2000136c
 8002254:	00050105 	.word	0x00050105

08002258 <USART1_IRQHandler>:
 8002258:	b508      	push	{r3, lr}
 800225a:	480d      	ldr	r0, [pc, #52]	; (8002290 <USART1_IRQHandler+0x38>)
 800225c:	490d      	ldr	r1, [pc, #52]	; (8002294 <USART1_IRQHandler+0x3c>)
 800225e:	f7ff ff67 	bl	8002130 <USART_GetITStatus>
 8002262:	b178      	cbz	r0, 8002284 <USART1_IRQHandler+0x2c>
 8002264:	480a      	ldr	r0, [pc, #40]	; (8002290 <USART1_IRQHandler+0x38>)
 8002266:	f7ff ff44 	bl	80020f2 <USART_ReceiveData>
 800226a:	4b0b      	ldr	r3, [pc, #44]	; (8002298 <USART1_IRQHandler+0x40>)
 800226c:	490b      	ldr	r1, [pc, #44]	; (800229c <USART1_IRQHandler+0x44>)
 800226e:	681a      	ldr	r2, [r3, #0]
 8002270:	b2c0      	uxtb	r0, r0
 8002272:	5488      	strb	r0, [r1, r2]
 8002274:	681a      	ldr	r2, [r3, #0]
 8002276:	3201      	adds	r2, #1
 8002278:	601a      	str	r2, [r3, #0]
 800227a:	681a      	ldr	r2, [r3, #0]
 800227c:	2a1f      	cmp	r2, #31
 800227e:	bf84      	itt	hi
 8002280:	2200      	movhi	r2, #0
 8002282:	601a      	strhi	r2, [r3, #0]
 8002284:	4802      	ldr	r0, [pc, #8]	; (8002290 <USART1_IRQHandler+0x38>)
 8002286:	4903      	ldr	r1, [pc, #12]	; (8002294 <USART1_IRQHandler+0x3c>)
 8002288:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800228c:	f7ff bf6e 	b.w	800216c <USART_ClearITPendingBit>
 8002290:	40013800 	.word	0x40013800
 8002294:	00050105 	.word	0x00050105
 8002298:	20001368 	.word	0x20001368
 800229c:	20001348 	.word	0x20001348

080022a0 <i2c_delay>:
 80022a0:	bf00      	nop
 80022a2:	bf00      	nop
 80022a4:	bf00      	nop
 80022a6:	bf00      	nop
 80022a8:	4770      	bx	lr
	...

080022ac <SetLowSDA>:
 80022ac:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80022ae:	4d0d      	ldr	r5, [pc, #52]	; (80022e4 <SetLowSDA+0x38>)
 80022b0:	2301      	movs	r3, #1
 80022b2:	2203      	movs	r2, #3
 80022b4:	2480      	movs	r4, #128	; 0x80
 80022b6:	f88d 3004 	strb.w	r3, [sp, #4]
 80022ba:	f88d 3006 	strb.w	r3, [sp, #6]
 80022be:	4628      	mov	r0, r5
 80022c0:	2300      	movs	r3, #0
 80022c2:	4669      	mov	r1, sp
 80022c4:	f88d 2005 	strb.w	r2, [sp, #5]
 80022c8:	f88d 3007 	strb.w	r3, [sp, #7]
 80022cc:	9400      	str	r4, [sp, #0]
 80022ce:	f000 fb5d 	bl	800298c <GPIO_Init>
 80022d2:	4628      	mov	r0, r5
 80022d4:	4621      	mov	r1, r4
 80022d6:	f000 fb9f 	bl	8002a18 <GPIO_ResetBits>
 80022da:	f7ff ffe1 	bl	80022a0 <i2c_delay>
 80022de:	b003      	add	sp, #12
 80022e0:	bd30      	pop	{r4, r5, pc}
 80022e2:	bf00      	nop
 80022e4:	48000400 	.word	0x48000400

080022e8 <SetHighSDA>:
 80022e8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80022ea:	4d0d      	ldr	r5, [pc, #52]	; (8002320 <SetHighSDA+0x38>)
 80022ec:	2203      	movs	r2, #3
 80022ee:	2300      	movs	r3, #0
 80022f0:	2480      	movs	r4, #128	; 0x80
 80022f2:	f88d 2005 	strb.w	r2, [sp, #5]
 80022f6:	4628      	mov	r0, r5
 80022f8:	2201      	movs	r2, #1
 80022fa:	4669      	mov	r1, sp
 80022fc:	f88d 3004 	strb.w	r3, [sp, #4]
 8002300:	f88d 2006 	strb.w	r2, [sp, #6]
 8002304:	f88d 3007 	strb.w	r3, [sp, #7]
 8002308:	9400      	str	r4, [sp, #0]
 800230a:	f000 fb3f 	bl	800298c <GPIO_Init>
 800230e:	4628      	mov	r0, r5
 8002310:	4621      	mov	r1, r4
 8002312:	f000 fb7d 	bl	8002a10 <GPIO_SetBits>
 8002316:	f7ff ffc3 	bl	80022a0 <i2c_delay>
 800231a:	b003      	add	sp, #12
 800231c:	bd30      	pop	{r4, r5, pc}
 800231e:	bf00      	nop
 8002320:	48000400 	.word	0x48000400

08002324 <SetLowSCL>:
 8002324:	b508      	push	{r3, lr}
 8002326:	4804      	ldr	r0, [pc, #16]	; (8002338 <SetLowSCL+0x14>)
 8002328:	2140      	movs	r1, #64	; 0x40
 800232a:	f000 fb75 	bl	8002a18 <GPIO_ResetBits>
 800232e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002332:	f7ff bfb5 	b.w	80022a0 <i2c_delay>
 8002336:	bf00      	nop
 8002338:	48000400 	.word	0x48000400

0800233c <SetHighSCL>:
 800233c:	b508      	push	{r3, lr}
 800233e:	4804      	ldr	r0, [pc, #16]	; (8002350 <SetHighSCL+0x14>)
 8002340:	2140      	movs	r1, #64	; 0x40
 8002342:	f000 fb65 	bl	8002a10 <GPIO_SetBits>
 8002346:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800234a:	f7ff bfa9 	b.w	80022a0 <i2c_delay>
 800234e:	bf00      	nop
 8002350:	48000400 	.word	0x48000400

08002354 <i2c_0_init>:
 8002354:	b507      	push	{r0, r1, r2, lr}
 8002356:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800235a:	2101      	movs	r1, #1
 800235c:	f7ff fc80 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 8002360:	23c0      	movs	r3, #192	; 0xc0
 8002362:	9300      	str	r3, [sp, #0]
 8002364:	2301      	movs	r3, #1
 8002366:	2203      	movs	r2, #3
 8002368:	480a      	ldr	r0, [pc, #40]	; (8002394 <i2c_0_init+0x40>)
 800236a:	f88d 3004 	strb.w	r3, [sp, #4]
 800236e:	4669      	mov	r1, sp
 8002370:	f88d 3006 	strb.w	r3, [sp, #6]
 8002374:	2300      	movs	r3, #0
 8002376:	f88d 2005 	strb.w	r2, [sp, #5]
 800237a:	f88d 3007 	strb.w	r3, [sp, #7]
 800237e:	f000 fb05 	bl	800298c <GPIO_Init>
 8002382:	f7ff ffdb 	bl	800233c <SetHighSCL>
 8002386:	f7ff ff91 	bl	80022ac <SetLowSDA>
 800238a:	f7ff ffad 	bl	80022e8 <SetHighSDA>
 800238e:	b003      	add	sp, #12
 8002390:	f85d fb04 	ldr.w	pc, [sp], #4
 8002394:	48000400 	.word	0x48000400

08002398 <i2cStart>:
 8002398:	b508      	push	{r3, lr}
 800239a:	f7ff ffcf 	bl	800233c <SetHighSCL>
 800239e:	f7ff ffa3 	bl	80022e8 <SetHighSDA>
 80023a2:	f7ff ffcb 	bl	800233c <SetHighSCL>
 80023a6:	f7ff ff81 	bl	80022ac <SetLowSDA>
 80023aa:	f7ff ffbb 	bl	8002324 <SetLowSCL>
 80023ae:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023b2:	f7ff bf99 	b.w	80022e8 <SetHighSDA>

080023b6 <i2cStop>:
 80023b6:	b508      	push	{r3, lr}
 80023b8:	f7ff ffb4 	bl	8002324 <SetLowSCL>
 80023bc:	f7ff ff76 	bl	80022ac <SetLowSDA>
 80023c0:	f7ff ffbc 	bl	800233c <SetHighSCL>
 80023c4:	f7ff ff72 	bl	80022ac <SetLowSDA>
 80023c8:	f7ff ffb8 	bl	800233c <SetHighSCL>
 80023cc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023d0:	f7ff bf8a 	b.w	80022e8 <SetHighSDA>

080023d4 <i2cWrite>:
 80023d4:	b538      	push	{r3, r4, r5, lr}
 80023d6:	4605      	mov	r5, r0
 80023d8:	2408      	movs	r4, #8
 80023da:	f7ff ffa3 	bl	8002324 <SetLowSCL>
 80023de:	062b      	lsls	r3, r5, #24
 80023e0:	d502      	bpl.n	80023e8 <i2cWrite+0x14>
 80023e2:	f7ff ff81 	bl	80022e8 <SetHighSDA>
 80023e6:	e001      	b.n	80023ec <i2cWrite+0x18>
 80023e8:	f7ff ff60 	bl	80022ac <SetLowSDA>
 80023ec:	3c01      	subs	r4, #1
 80023ee:	f7ff ffa5 	bl	800233c <SetHighSCL>
 80023f2:	006d      	lsls	r5, r5, #1
 80023f4:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80023f8:	b2ed      	uxtb	r5, r5
 80023fa:	d1ee      	bne.n	80023da <i2cWrite+0x6>
 80023fc:	f7ff ff92 	bl	8002324 <SetLowSCL>
 8002400:	f7ff ff72 	bl	80022e8 <SetHighSDA>
 8002404:	f7ff ff9a 	bl	800233c <SetHighSCL>
 8002408:	4b05      	ldr	r3, [pc, #20]	; (8002420 <i2cWrite+0x4c>)
 800240a:	8a1c      	ldrh	r4, [r3, #16]
 800240c:	b2a4      	uxth	r4, r4
 800240e:	f7ff ff89 	bl	8002324 <SetLowSCL>
 8002412:	f7ff ff45 	bl	80022a0 <i2c_delay>
 8002416:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800241a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800241e:	bd38      	pop	{r3, r4, r5, pc}
 8002420:	48000400 	.word	0x48000400

08002424 <i2cRead>:
 8002424:	b570      	push	{r4, r5, r6, lr}
 8002426:	4606      	mov	r6, r0
 8002428:	f7ff ff7c 	bl	8002324 <SetLowSCL>
 800242c:	f7ff ff5c 	bl	80022e8 <SetHighSDA>
 8002430:	2508      	movs	r5, #8
 8002432:	2400      	movs	r4, #0
 8002434:	f7ff ff82 	bl	800233c <SetHighSCL>
 8002438:	4b0d      	ldr	r3, [pc, #52]	; (8002470 <i2cRead+0x4c>)
 800243a:	8a1b      	ldrh	r3, [r3, #16]
 800243c:	0064      	lsls	r4, r4, #1
 800243e:	061b      	lsls	r3, r3, #24
 8002440:	b2e4      	uxtb	r4, r4
 8002442:	bf48      	it	mi
 8002444:	3401      	addmi	r4, #1
 8002446:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800244a:	bf48      	it	mi
 800244c:	b2e4      	uxtbmi	r4, r4
 800244e:	f7ff ff69 	bl	8002324 <SetLowSCL>
 8002452:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002456:	d1ed      	bne.n	8002434 <i2cRead+0x10>
 8002458:	b10e      	cbz	r6, 800245e <i2cRead+0x3a>
 800245a:	f7ff ff27 	bl	80022ac <SetLowSDA>
 800245e:	f7ff ff6d 	bl	800233c <SetHighSCL>
 8002462:	f7ff ff5f 	bl	8002324 <SetLowSCL>
 8002466:	f7ff ff1b 	bl	80022a0 <i2c_delay>
 800246a:	4620      	mov	r0, r4
 800246c:	bd70      	pop	{r4, r5, r6, pc}
 800246e:	bf00      	nop
 8002470:	48000400 	.word	0x48000400

08002474 <i2c_write_reg>:
 8002474:	b570      	push	{r4, r5, r6, lr}
 8002476:	4606      	mov	r6, r0
 8002478:	460d      	mov	r5, r1
 800247a:	4614      	mov	r4, r2
 800247c:	f7ff ff8c 	bl	8002398 <i2cStart>
 8002480:	4630      	mov	r0, r6
 8002482:	f7ff ffa7 	bl	80023d4 <i2cWrite>
 8002486:	4628      	mov	r0, r5
 8002488:	f7ff ffa4 	bl	80023d4 <i2cWrite>
 800248c:	4620      	mov	r0, r4
 800248e:	f7ff ffa1 	bl	80023d4 <i2cWrite>
 8002492:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002496:	f7ff bf8e 	b.w	80023b6 <i2cStop>

0800249a <i2c_read_reg>:
 800249a:	b538      	push	{r3, r4, r5, lr}
 800249c:	4604      	mov	r4, r0
 800249e:	460d      	mov	r5, r1
 80024a0:	f7ff ff7a 	bl	8002398 <i2cStart>
 80024a4:	4620      	mov	r0, r4
 80024a6:	f7ff ff95 	bl	80023d4 <i2cWrite>
 80024aa:	4628      	mov	r0, r5
 80024ac:	f7ff ff92 	bl	80023d4 <i2cWrite>
 80024b0:	f7ff ff72 	bl	8002398 <i2cStart>
 80024b4:	f044 0001 	orr.w	r0, r4, #1
 80024b8:	f7ff ff8c 	bl	80023d4 <i2cWrite>
 80024bc:	2000      	movs	r0, #0
 80024be:	f7ff ffb1 	bl	8002424 <i2cRead>
 80024c2:	4604      	mov	r4, r0
 80024c4:	f7ff ff77 	bl	80023b6 <i2cStop>
 80024c8:	4620      	mov	r0, r4
 80024ca:	bd38      	pop	{r3, r4, r5, pc}

080024cc <SystemInit>:
 80024cc:	4a39      	ldr	r2, [pc, #228]	; (80025b4 <SystemInit+0xe8>)
 80024ce:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80024d2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80024d6:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80024da:	4b37      	ldr	r3, [pc, #220]	; (80025b8 <SystemInit+0xec>)
 80024dc:	681a      	ldr	r2, [r3, #0]
 80024de:	f042 0201 	orr.w	r2, r2, #1
 80024e2:	601a      	str	r2, [r3, #0]
 80024e4:	6859      	ldr	r1, [r3, #4]
 80024e6:	4a35      	ldr	r2, [pc, #212]	; (80025bc <SystemInit+0xf0>)
 80024e8:	400a      	ands	r2, r1
 80024ea:	605a      	str	r2, [r3, #4]
 80024ec:	681a      	ldr	r2, [r3, #0]
 80024ee:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80024f2:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80024f6:	601a      	str	r2, [r3, #0]
 80024f8:	681a      	ldr	r2, [r3, #0]
 80024fa:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80024fe:	601a      	str	r2, [r3, #0]
 8002500:	685a      	ldr	r2, [r3, #4]
 8002502:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002506:	605a      	str	r2, [r3, #4]
 8002508:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800250a:	f022 020f 	bic.w	r2, r2, #15
 800250e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002510:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002512:	4a2b      	ldr	r2, [pc, #172]	; (80025c0 <SystemInit+0xf4>)
 8002514:	b082      	sub	sp, #8
 8002516:	400a      	ands	r2, r1
 8002518:	631a      	str	r2, [r3, #48]	; 0x30
 800251a:	2200      	movs	r2, #0
 800251c:	609a      	str	r2, [r3, #8]
 800251e:	9200      	str	r2, [sp, #0]
 8002520:	9201      	str	r2, [sp, #4]
 8002522:	681a      	ldr	r2, [r3, #0]
 8002524:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002528:	601a      	str	r2, [r3, #0]
 800252a:	681a      	ldr	r2, [r3, #0]
 800252c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002530:	9201      	str	r2, [sp, #4]
 8002532:	9a00      	ldr	r2, [sp, #0]
 8002534:	3201      	adds	r2, #1
 8002536:	9200      	str	r2, [sp, #0]
 8002538:	9a01      	ldr	r2, [sp, #4]
 800253a:	b91a      	cbnz	r2, 8002544 <SystemInit+0x78>
 800253c:	9a00      	ldr	r2, [sp, #0]
 800253e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002542:	d1f2      	bne.n	800252a <SystemInit+0x5e>
 8002544:	681a      	ldr	r2, [r3, #0]
 8002546:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800254a:	bf18      	it	ne
 800254c:	2201      	movne	r2, #1
 800254e:	9201      	str	r2, [sp, #4]
 8002550:	9a01      	ldr	r2, [sp, #4]
 8002552:	2a01      	cmp	r2, #1
 8002554:	d005      	beq.n	8002562 <SystemInit+0x96>
 8002556:	4b17      	ldr	r3, [pc, #92]	; (80025b4 <SystemInit+0xe8>)
 8002558:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800255c:	609a      	str	r2, [r3, #8]
 800255e:	b002      	add	sp, #8
 8002560:	4770      	bx	lr
 8002562:	4a18      	ldr	r2, [pc, #96]	; (80025c4 <SystemInit+0xf8>)
 8002564:	2112      	movs	r1, #18
 8002566:	6011      	str	r1, [r2, #0]
 8002568:	685a      	ldr	r2, [r3, #4]
 800256a:	605a      	str	r2, [r3, #4]
 800256c:	685a      	ldr	r2, [r3, #4]
 800256e:	605a      	str	r2, [r3, #4]
 8002570:	685a      	ldr	r2, [r3, #4]
 8002572:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002576:	605a      	str	r2, [r3, #4]
 8002578:	685a      	ldr	r2, [r3, #4]
 800257a:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800257e:	605a      	str	r2, [r3, #4]
 8002580:	685a      	ldr	r2, [r3, #4]
 8002582:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002586:	605a      	str	r2, [r3, #4]
 8002588:	681a      	ldr	r2, [r3, #0]
 800258a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800258e:	601a      	str	r2, [r3, #0]
 8002590:	6819      	ldr	r1, [r3, #0]
 8002592:	4a09      	ldr	r2, [pc, #36]	; (80025b8 <SystemInit+0xec>)
 8002594:	0189      	lsls	r1, r1, #6
 8002596:	d5fb      	bpl.n	8002590 <SystemInit+0xc4>
 8002598:	6851      	ldr	r1, [r2, #4]
 800259a:	f021 0103 	bic.w	r1, r1, #3
 800259e:	6051      	str	r1, [r2, #4]
 80025a0:	6851      	ldr	r1, [r2, #4]
 80025a2:	f041 0102 	orr.w	r1, r1, #2
 80025a6:	6051      	str	r1, [r2, #4]
 80025a8:	685a      	ldr	r2, [r3, #4]
 80025aa:	f002 020c 	and.w	r2, r2, #12
 80025ae:	2a08      	cmp	r2, #8
 80025b0:	d1fa      	bne.n	80025a8 <SystemInit+0xdc>
 80025b2:	e7d0      	b.n	8002556 <SystemInit+0x8a>
 80025b4:	e000ed00 	.word	0xe000ed00
 80025b8:	40021000 	.word	0x40021000
 80025bc:	f87fc00c 	.word	0xf87fc00c
 80025c0:	ff00fccc 	.word	0xff00fccc
 80025c4:	40022000 	.word	0x40022000

080025c8 <sys_tick_init>:
 80025c8:	4b06      	ldr	r3, [pc, #24]	; (80025e4 <sys_tick_init+0x1c>)
 80025ca:	f244 6250 	movw	r2, #18000	; 0x4650
 80025ce:	605a      	str	r2, [r3, #4]
 80025d0:	4a05      	ldr	r2, [pc, #20]	; (80025e8 <sys_tick_init+0x20>)
 80025d2:	21f0      	movs	r1, #240	; 0xf0
 80025d4:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80025d8:	2200      	movs	r2, #0
 80025da:	609a      	str	r2, [r3, #8]
 80025dc:	2207      	movs	r2, #7
 80025de:	601a      	str	r2, [r3, #0]
 80025e0:	4770      	bx	lr
 80025e2:	bf00      	nop
 80025e4:	e000e010 	.word	0xe000e010
 80025e8:	e000ed00 	.word	0xe000ed00

080025ec <sleep>:
 80025ec:	bf30      	wfi
 80025ee:	4770      	bx	lr

080025f0 <core_yield>:
 80025f0:	bf00      	nop
 80025f2:	4770      	bx	lr

080025f4 <sytem_clock_init>:
 80025f4:	f7ff bf6a 	b.w	80024cc <SystemInit>

080025f8 <pwm_set>:
 80025f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80025fc:	b086      	sub	sp, #24
 80025fe:	2370      	movs	r3, #112	; 0x70
 8002600:	9301      	str	r3, [sp, #4]
 8002602:	2301      	movs	r3, #1
 8002604:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002608:	2304      	movs	r3, #4
 800260a:	f8ad 300a 	strh.w	r3, [sp, #10]
 800260e:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002674 <pwm_set+0x7c>
 8002612:	4c17      	ldr	r4, [pc, #92]	; (8002670 <pwm_set+0x78>)
 8002614:	2302      	movs	r3, #2
 8002616:	f8ad 3010 	strh.w	r3, [sp, #16]
 800261a:	2300      	movs	r3, #0
 800261c:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002620:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002624:	f242 7710 	movw	r7, #10000	; 0x2710
 8002628:	f8d8 3000 	ldr.w	r3, [r8]
 800262c:	fbb3 f3f7 	udiv	r3, r3, r7
 8002630:	3b02      	subs	r3, #2
 8002632:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002636:	460e      	mov	r6, r1
 8002638:	2564      	movs	r5, #100	; 0x64
 800263a:	a901      	add	r1, sp, #4
 800263c:	4358      	muls	r0, r3
 800263e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002642:	4620      	mov	r0, r4
 8002644:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002648:	9303      	str	r3, [sp, #12]
 800264a:	f7ff fb91 	bl	8001d70 <TIM_OC1Init>
 800264e:	f8d8 1000 	ldr.w	r1, [r8]
 8002652:	fbb1 f1f7 	udiv	r1, r1, r7
 8002656:	3902      	subs	r1, #2
 8002658:	4371      	muls	r1, r6
 800265a:	4620      	mov	r0, r4
 800265c:	fbb1 f1f5 	udiv	r1, r1, r5
 8002660:	9103      	str	r1, [sp, #12]
 8002662:	a901      	add	r1, sp, #4
 8002664:	f7ff fbca 	bl	8001dfc <TIM_OC2Init>
 8002668:	b006      	add	sp, #24
 800266a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800266e:	bf00      	nop
 8002670:	40012c00 	.word	0x40012c00
 8002674:	20000068 	.word	0x20000068

08002678 <pwm_init>:
 8002678:	b530      	push	{r4, r5, lr}
 800267a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800267e:	b087      	sub	sp, #28
 8002680:	2101      	movs	r1, #1
 8002682:	f7ff fafb 	bl	8001c7c <RCC_APB2PeriphClockCmd>
 8002686:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800268a:	2101      	movs	r1, #1
 800268c:	f7ff fae8 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 8002690:	4c1d      	ldr	r4, [pc, #116]	; (8002708 <pwm_init+0x90>)
 8002692:	4d1e      	ldr	r5, [pc, #120]	; (800270c <pwm_init+0x94>)
 8002694:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002698:	9301      	str	r3, [sp, #4]
 800269a:	2302      	movs	r3, #2
 800269c:	f88d 3008 	strb.w	r3, [sp, #8]
 80026a0:	4620      	mov	r0, r4
 80026a2:	2303      	movs	r3, #3
 80026a4:	a901      	add	r1, sp, #4
 80026a6:	f88d 3009 	strb.w	r3, [sp, #9]
 80026aa:	f000 f96f 	bl	800298c <GPIO_Init>
 80026ae:	4620      	mov	r0, r4
 80026b0:	210d      	movs	r1, #13
 80026b2:	2206      	movs	r2, #6
 80026b4:	f000 f9b4 	bl	8002a20 <GPIO_PinAFConfig>
 80026b8:	4620      	mov	r0, r4
 80026ba:	210e      	movs	r1, #14
 80026bc:	2206      	movs	r2, #6
 80026be:	f000 f9af 	bl	8002a20 <GPIO_PinAFConfig>
 80026c2:	4b13      	ldr	r3, [pc, #76]	; (8002710 <pwm_init+0x98>)
 80026c4:	2400      	movs	r4, #0
 80026c6:	f242 7210 	movw	r2, #10000	; 0x2710
 80026ca:	4628      	mov	r0, r5
 80026cc:	a903      	add	r1, sp, #12
 80026ce:	681b      	ldr	r3, [r3, #0]
 80026d0:	fbb3 f3f2 	udiv	r3, r3, r2
 80026d4:	3b01      	subs	r3, #1
 80026d6:	9304      	str	r3, [sp, #16]
 80026d8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80026dc:	f8ad 400e 	strh.w	r4, [sp, #14]
 80026e0:	f8ad 4014 	strh.w	r4, [sp, #20]
 80026e4:	f8ad 4016 	strh.w	r4, [sp, #22]
 80026e8:	f7ff fae4 	bl	8001cb4 <TIM_TimeBaseInit>
 80026ec:	4620      	mov	r0, r4
 80026ee:	4621      	mov	r1, r4
 80026f0:	f7ff ff82 	bl	80025f8 <pwm_set>
 80026f4:	4628      	mov	r0, r5
 80026f6:	2101      	movs	r1, #1
 80026f8:	f7ff fb2c 	bl	8001d54 <TIM_Cmd>
 80026fc:	4628      	mov	r0, r5
 80026fe:	2101      	movs	r1, #1
 8002700:	f7ff fbba 	bl	8001e78 <TIM_CtrlPWMOutputs>
 8002704:	b007      	add	sp, #28
 8002706:	bd30      	pop	{r4, r5, pc}
 8002708:	48000400 	.word	0x48000400
 800270c:	40012c00 	.word	0x40012c00
 8002710:	20000068 	.word	0x20000068

08002714 <drv8834_run>:
 8002714:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8002718:	1e03      	subs	r3, r0, #0
 800271a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800271e:	bfce      	itee	gt
 8002720:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002722:	6190      	strle	r0, [r2, #24]
 8002724:	425b      	negle	r3, r3
 8002726:	4a09      	ldr	r2, [pc, #36]	; (800274c <drv8834_run+0x38>)
 8002728:	2900      	cmp	r1, #0
 800272a:	bfd8      	it	le
 800272c:	4249      	negle	r1, r1
 800272e:	f04f 0020 	mov.w	r0, #32
 8002732:	bfcc      	ite	gt
 8002734:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002736:	6190      	strle	r0, [r2, #24]
 8002738:	2964      	cmp	r1, #100	; 0x64
 800273a:	bfa8      	it	ge
 800273c:	2164      	movge	r1, #100	; 0x64
 800273e:	2b64      	cmp	r3, #100	; 0x64
 8002740:	bfa8      	it	ge
 8002742:	2364      	movge	r3, #100	; 0x64
 8002744:	4608      	mov	r0, r1
 8002746:	4619      	mov	r1, r3
 8002748:	f7ff bf56 	b.w	80025f8 <pwm_set>
 800274c:	48000400 	.word	0x48000400

08002750 <drv8834_init>:
 8002750:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002754:	4f1d      	ldr	r7, [pc, #116]	; (80027cc <drv8834_init+0x7c>)
 8002756:	2400      	movs	r4, #0
 8002758:	2601      	movs	r6, #1
 800275a:	2503      	movs	r5, #3
 800275c:	f04f 0810 	mov.w	r8, #16
 8002760:	4638      	mov	r0, r7
 8002762:	4669      	mov	r1, sp
 8002764:	f8cd 8000 	str.w	r8, [sp]
 8002768:	f88d 6004 	strb.w	r6, [sp, #4]
 800276c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002770:	f88d 5005 	strb.w	r5, [sp, #5]
 8002774:	f88d 4007 	strb.w	r4, [sp, #7]
 8002778:	f000 f908 	bl	800298c <GPIO_Init>
 800277c:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002780:	2320      	movs	r3, #32
 8002782:	4638      	mov	r0, r7
 8002784:	4669      	mov	r1, sp
 8002786:	9300      	str	r3, [sp, #0]
 8002788:	f88d 6004 	strb.w	r6, [sp, #4]
 800278c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002790:	f88d 5005 	strb.w	r5, [sp, #5]
 8002794:	f88d 4007 	strb.w	r4, [sp, #7]
 8002798:	f000 f8f8 	bl	800298c <GPIO_Init>
 800279c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80027a0:	4669      	mov	r1, sp
 80027a2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80027a6:	9300      	str	r3, [sp, #0]
 80027a8:	f88d 6004 	strb.w	r6, [sp, #4]
 80027ac:	f88d 4006 	strb.w	r4, [sp, #6]
 80027b0:	f88d 5005 	strb.w	r5, [sp, #5]
 80027b4:	f88d 4007 	strb.w	r4, [sp, #7]
 80027b8:	f000 f8e8 	bl	800298c <GPIO_Init>
 80027bc:	4620      	mov	r0, r4
 80027be:	4621      	mov	r1, r4
 80027c0:	f7ff ffa8 	bl	8002714 <drv8834_run>
 80027c4:	b002      	add	sp, #8
 80027c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027ca:	bf00      	nop
 80027cc:	48000400 	.word	0x48000400

080027d0 <NVIC_Init>:
 80027d0:	b510      	push	{r4, lr}
 80027d2:	bf00      	nop
 80027d4:	bf00      	nop
 80027d6:	bf00      	nop
 80027d8:	78c2      	ldrb	r2, [r0, #3]
 80027da:	7803      	ldrb	r3, [r0, #0]
 80027dc:	b312      	cbz	r2, 8002824 <NVIC_Init+0x54>
 80027de:	4a17      	ldr	r2, [pc, #92]	; (800283c <NVIC_Init+0x6c>)
 80027e0:	68d1      	ldr	r1, [r2, #12]
 80027e2:	7842      	ldrb	r2, [r0, #1]
 80027e4:	43c9      	mvns	r1, r1
 80027e6:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80027ea:	f1c1 0404 	rsb	r4, r1, #4
 80027ee:	b2e4      	uxtb	r4, r4
 80027f0:	40a2      	lsls	r2, r4
 80027f2:	b2d4      	uxtb	r4, r2
 80027f4:	220f      	movs	r2, #15
 80027f6:	410a      	asrs	r2, r1
 80027f8:	7881      	ldrb	r1, [r0, #2]
 80027fa:	400a      	ands	r2, r1
 80027fc:	4322      	orrs	r2, r4
 80027fe:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002802:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002806:	0112      	lsls	r2, r2, #4
 8002808:	b2d2      	uxtb	r2, r2
 800280a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800280e:	7803      	ldrb	r3, [r0, #0]
 8002810:	2201      	movs	r2, #1
 8002812:	0959      	lsrs	r1, r3, #5
 8002814:	f003 031f 	and.w	r3, r3, #31
 8002818:	fa02 f303 	lsl.w	r3, r2, r3
 800281c:	4a08      	ldr	r2, [pc, #32]	; (8002840 <NVIC_Init+0x70>)
 800281e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002822:	bd10      	pop	{r4, pc}
 8002824:	095a      	lsrs	r2, r3, #5
 8002826:	2101      	movs	r1, #1
 8002828:	f003 031f 	and.w	r3, r3, #31
 800282c:	4099      	lsls	r1, r3
 800282e:	f102 0320 	add.w	r3, r2, #32
 8002832:	4a03      	ldr	r2, [pc, #12]	; (8002840 <NVIC_Init+0x70>)
 8002834:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002838:	bd10      	pop	{r4, pc}
 800283a:	bf00      	nop
 800283c:	e000ed00 	.word	0xe000ed00
 8002840:	e000e100 	.word	0xe000e100

08002844 <lib_low_level_init>:
 8002844:	b508      	push	{r3, lr}
 8002846:	f7ff fed5 	bl	80025f4 <sytem_clock_init>
 800284a:	f000 f969 	bl	8002b20 <gpio_init>
 800284e:	f7ff fca1 	bl	8002194 <uart_init>
 8002852:	f7ff fb21 	bl	8001e98 <timer_init>
 8002856:	f7ff ff0f 	bl	8002678 <pwm_init>
 800285a:	f7ff ff79 	bl	8002750 <drv8834_init>
 800285e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002862:	f7ff bd77 	b.w	8002354 <i2c_0_init>
	...

08002868 <EXTI_Init>:
 8002868:	b570      	push	{r4, r5, r6, lr}
 800286a:	bf00      	nop
 800286c:	bf00      	nop
 800286e:	bf00      	nop
 8002870:	bf00      	nop
 8002872:	7982      	ldrb	r2, [r0, #6]
 8002874:	6803      	ldr	r3, [r0, #0]
 8002876:	7904      	ldrb	r4, [r0, #4]
 8002878:	2a00      	cmp	r2, #0
 800287a:	d064      	beq.n	8002946 <EXTI_Init+0xde>
 800287c:	f023 011f 	bic.w	r1, r3, #31
 8002880:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002884:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002888:	f003 021f 	and.w	r2, r3, #31
 800288c:	680d      	ldr	r5, [r1, #0]
 800288e:	2301      	movs	r3, #1
 8002890:	fa03 f202 	lsl.w	r2, r3, r2
 8002894:	ea25 0202 	bic.w	r2, r5, r2
 8002898:	600a      	str	r2, [r1, #0]
 800289a:	6802      	ldr	r2, [r0, #0]
 800289c:	4d32      	ldr	r5, [pc, #200]	; (8002968 <EXTI_Init+0x100>)
 800289e:	f022 061f 	bic.w	r6, r2, #31
 80028a2:	f002 021f 	and.w	r2, r2, #31
 80028a6:	5971      	ldr	r1, [r6, r5]
 80028a8:	fa03 f202 	lsl.w	r2, r3, r2
 80028ac:	ea21 0202 	bic.w	r2, r1, r2
 80028b0:	5172      	str	r2, [r6, r5]
 80028b2:	6801      	ldr	r1, [r0, #0]
 80028b4:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80028b8:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80028bc:	f021 041f 	bic.w	r4, r1, #31
 80028c0:	f001 011f 	and.w	r1, r1, #31
 80028c4:	5915      	ldr	r5, [r2, r4]
 80028c6:	fa03 f101 	lsl.w	r1, r3, r1
 80028ca:	4329      	orrs	r1, r5
 80028cc:	5111      	str	r1, [r2, r4]
 80028ce:	6802      	ldr	r2, [r0, #0]
 80028d0:	4d26      	ldr	r5, [pc, #152]	; (800296c <EXTI_Init+0x104>)
 80028d2:	f022 041f 	bic.w	r4, r2, #31
 80028d6:	f002 021f 	and.w	r2, r2, #31
 80028da:	5961      	ldr	r1, [r4, r5]
 80028dc:	fa03 f202 	lsl.w	r2, r3, r2
 80028e0:	ea21 0202 	bic.w	r2, r1, r2
 80028e4:	5162      	str	r2, [r4, r5]
 80028e6:	6802      	ldr	r2, [r0, #0]
 80028e8:	4c21      	ldr	r4, [pc, #132]	; (8002970 <EXTI_Init+0x108>)
 80028ea:	f022 061f 	bic.w	r6, r2, #31
 80028ee:	f002 021f 	and.w	r2, r2, #31
 80028f2:	5931      	ldr	r1, [r6, r4]
 80028f4:	fa03 f202 	lsl.w	r2, r3, r2
 80028f8:	ea21 0202 	bic.w	r2, r1, r2
 80028fc:	7941      	ldrb	r1, [r0, #5]
 80028fe:	5132      	str	r2, [r6, r4]
 8002900:	2910      	cmp	r1, #16
 8002902:	6802      	ldr	r2, [r0, #0]
 8002904:	d112      	bne.n	800292c <EXTI_Init+0xc4>
 8002906:	f022 011f 	bic.w	r1, r2, #31
 800290a:	f002 021f 	and.w	r2, r2, #31
 800290e:	594e      	ldr	r6, [r1, r5]
 8002910:	fa03 f202 	lsl.w	r2, r3, r2
 8002914:	4332      	orrs	r2, r6
 8002916:	514a      	str	r2, [r1, r5]
 8002918:	6802      	ldr	r2, [r0, #0]
 800291a:	f022 011f 	bic.w	r1, r2, #31
 800291e:	f002 021f 	and.w	r2, r2, #31
 8002922:	5908      	ldr	r0, [r1, r4]
 8002924:	4093      	lsls	r3, r2
 8002926:	4303      	orrs	r3, r0
 8002928:	510b      	str	r3, [r1, r4]
 800292a:	bd70      	pop	{r4, r5, r6, pc}
 800292c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002930:	f022 001f 	bic.w	r0, r2, #31
 8002934:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002938:	f002 021f 	and.w	r2, r2, #31
 800293c:	580c      	ldr	r4, [r1, r0]
 800293e:	4093      	lsls	r3, r2
 8002940:	4323      	orrs	r3, r4
 8002942:	500b      	str	r3, [r1, r0]
 8002944:	bd70      	pop	{r4, r5, r6, pc}
 8002946:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 800294a:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 800294e:	f023 041f 	bic.w	r4, r3, #31
 8002952:	2001      	movs	r0, #1
 8002954:	5911      	ldr	r1, [r2, r4]
 8002956:	f003 031f 	and.w	r3, r3, #31
 800295a:	fa00 f303 	lsl.w	r3, r0, r3
 800295e:	ea21 0303 	bic.w	r3, r1, r3
 8002962:	5113      	str	r3, [r2, r4]
 8002964:	bd70      	pop	{r4, r5, r6, pc}
 8002966:	bf00      	nop
 8002968:	40010404 	.word	0x40010404
 800296c:	40010408 	.word	0x40010408
 8002970:	4001040c 	.word	0x4001040c

08002974 <EXTI_ClearITPendingBit>:
 8002974:	f020 011f 	bic.w	r1, r0, #31
 8002978:	2301      	movs	r3, #1
 800297a:	f000 001f 	and.w	r0, r0, #31
 800297e:	4a02      	ldr	r2, [pc, #8]	; (8002988 <EXTI_ClearITPendingBit+0x14>)
 8002980:	4083      	lsls	r3, r0
 8002982:	508b      	str	r3, [r1, r2]
 8002984:	4770      	bx	lr
 8002986:	bf00      	nop
 8002988:	40010414 	.word	0x40010414

0800298c <GPIO_Init>:
 800298c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800298e:	bf00      	nop
 8002990:	bf00      	nop
 8002992:	bf00      	nop
 8002994:	bf00      	nop
 8002996:	2300      	movs	r3, #0
 8002998:	680e      	ldr	r6, [r1, #0]
 800299a:	461c      	mov	r4, r3
 800299c:	2501      	movs	r5, #1
 800299e:	40a5      	lsls	r5, r4
 80029a0:	ea05 0e06 	and.w	lr, r5, r6
 80029a4:	45ae      	cmp	lr, r5
 80029a6:	d12d      	bne.n	8002a04 <GPIO_Init+0x78>
 80029a8:	790f      	ldrb	r7, [r1, #4]
 80029aa:	1e7a      	subs	r2, r7, #1
 80029ac:	2a01      	cmp	r2, #1
 80029ae:	d817      	bhi.n	80029e0 <GPIO_Init+0x54>
 80029b0:	bf00      	nop
 80029b2:	2203      	movs	r2, #3
 80029b4:	6885      	ldr	r5, [r0, #8]
 80029b6:	409a      	lsls	r2, r3
 80029b8:	ea25 0202 	bic.w	r2, r5, r2
 80029bc:	6082      	str	r2, [r0, #8]
 80029be:	794d      	ldrb	r5, [r1, #5]
 80029c0:	6882      	ldr	r2, [r0, #8]
 80029c2:	409d      	lsls	r5, r3
 80029c4:	4315      	orrs	r5, r2
 80029c6:	6085      	str	r5, [r0, #8]
 80029c8:	bf00      	nop
 80029ca:	8882      	ldrh	r2, [r0, #4]
 80029cc:	b292      	uxth	r2, r2
 80029ce:	ea22 020e 	bic.w	r2, r2, lr
 80029d2:	8082      	strh	r2, [r0, #4]
 80029d4:	798a      	ldrb	r2, [r1, #6]
 80029d6:	8885      	ldrh	r5, [r0, #4]
 80029d8:	40a2      	lsls	r2, r4
 80029da:	432a      	orrs	r2, r5
 80029dc:	b292      	uxth	r2, r2
 80029de:	8082      	strh	r2, [r0, #4]
 80029e0:	2203      	movs	r2, #3
 80029e2:	6805      	ldr	r5, [r0, #0]
 80029e4:	409a      	lsls	r2, r3
 80029e6:	43d2      	mvns	r2, r2
 80029e8:	4015      	ands	r5, r2
 80029ea:	6005      	str	r5, [r0, #0]
 80029ec:	6805      	ldr	r5, [r0, #0]
 80029ee:	409f      	lsls	r7, r3
 80029f0:	432f      	orrs	r7, r5
 80029f2:	6007      	str	r7, [r0, #0]
 80029f4:	68c7      	ldr	r7, [r0, #12]
 80029f6:	4017      	ands	r7, r2
 80029f8:	79ca      	ldrb	r2, [r1, #7]
 80029fa:	fa02 f503 	lsl.w	r5, r2, r3
 80029fe:	ea47 0205 	orr.w	r2, r7, r5
 8002a02:	60c2      	str	r2, [r0, #12]
 8002a04:	3401      	adds	r4, #1
 8002a06:	2c10      	cmp	r4, #16
 8002a08:	f103 0302 	add.w	r3, r3, #2
 8002a0c:	d1c6      	bne.n	800299c <GPIO_Init+0x10>
 8002a0e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a10 <GPIO_SetBits>:
 8002a10:	bf00      	nop
 8002a12:	bf00      	nop
 8002a14:	6181      	str	r1, [r0, #24]
 8002a16:	4770      	bx	lr

08002a18 <GPIO_ResetBits>:
 8002a18:	bf00      	nop
 8002a1a:	bf00      	nop
 8002a1c:	8501      	strh	r1, [r0, #40]	; 0x28
 8002a1e:	4770      	bx	lr

08002a20 <GPIO_PinAFConfig>:
 8002a20:	b510      	push	{r4, lr}
 8002a22:	bf00      	nop
 8002a24:	bf00      	nop
 8002a26:	bf00      	nop
 8002a28:	f001 0307 	and.w	r3, r1, #7
 8002a2c:	08c9      	lsrs	r1, r1, #3
 8002a2e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002a32:	009b      	lsls	r3, r3, #2
 8002a34:	6a04      	ldr	r4, [r0, #32]
 8002a36:	210f      	movs	r1, #15
 8002a38:	4099      	lsls	r1, r3
 8002a3a:	ea24 0101 	bic.w	r1, r4, r1
 8002a3e:	6201      	str	r1, [r0, #32]
 8002a40:	6a01      	ldr	r1, [r0, #32]
 8002a42:	409a      	lsls	r2, r3
 8002a44:	430a      	orrs	r2, r1
 8002a46:	6202      	str	r2, [r0, #32]
 8002a48:	bd10      	pop	{r4, pc}
	...

08002a4c <EXTI9_5_IRQHandler>:
 8002a4c:	4a03      	ldr	r2, [pc, #12]	; (8002a5c <EXTI9_5_IRQHandler+0x10>)
 8002a4e:	6813      	ldr	r3, [r2, #0]
 8002a50:	2006      	movs	r0, #6
 8002a52:	3301      	adds	r3, #1
 8002a54:	6013      	str	r3, [r2, #0]
 8002a56:	f7ff bf8d 	b.w	8002974 <EXTI_ClearITPendingBit>
 8002a5a:	bf00      	nop
 8002a5c:	20001378 	.word	0x20001378

08002a60 <EXTI15_10_IRQHandler>:
 8002a60:	4a03      	ldr	r2, [pc, #12]	; (8002a70 <EXTI15_10_IRQHandler+0x10>)
 8002a62:	6813      	ldr	r3, [r2, #0]
 8002a64:	200c      	movs	r0, #12
 8002a66:	3301      	adds	r3, #1
 8002a68:	6013      	str	r3, [r2, #0]
 8002a6a:	f7ff bf83 	b.w	8002974 <EXTI_ClearITPendingBit>
 8002a6e:	bf00      	nop
 8002a70:	20001370 	.word	0x20001370

08002a74 <led_on>:
 8002a74:	0403      	lsls	r3, r0, #16
 8002a76:	bf42      	ittt	mi
 8002a78:	4b02      	ldrmi	r3, [pc, #8]	; (8002a84 <led_on+0x10>)
 8002a7a:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002a7e:	619a      	strmi	r2, [r3, #24]
 8002a80:	4770      	bx	lr
 8002a82:	bf00      	nop
 8002a84:	48000400 	.word	0x48000400

08002a88 <led_off>:
 8002a88:	0403      	lsls	r3, r0, #16
 8002a8a:	bf42      	ittt	mi
 8002a8c:	4b02      	ldrmi	r3, [pc, #8]	; (8002a98 <led_off+0x10>)
 8002a8e:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002a92:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002a94:	4770      	bx	lr
 8002a96:	bf00      	nop
 8002a98:	48000400 	.word	0x48000400

08002a9c <get_key>:
 8002a9c:	4b02      	ldr	r3, [pc, #8]	; (8002aa8 <get_key+0xc>)
 8002a9e:	8a18      	ldrh	r0, [r3, #16]
 8002aa0:	43c0      	mvns	r0, r0
 8002aa2:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002aa6:	4770      	bx	lr
 8002aa8:	48000400 	.word	0x48000400

08002aac <left_encoder_read>:
 8002aac:	b082      	sub	sp, #8
 8002aae:	b672      	cpsid	i
 8002ab0:	4b06      	ldr	r3, [pc, #24]	; (8002acc <left_encoder_read+0x20>)
 8002ab2:	681b      	ldr	r3, [r3, #0]
 8002ab4:	9301      	str	r3, [sp, #4]
 8002ab6:	b662      	cpsie	i
 8002ab8:	9801      	ldr	r0, [sp, #4]
 8002aba:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002abe:	4343      	muls	r3, r0
 8002ac0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002ac4:	fbb3 f0f0 	udiv	r0, r3, r0
 8002ac8:	b002      	add	sp, #8
 8002aca:	4770      	bx	lr
 8002acc:	20001378 	.word	0x20001378

08002ad0 <right_encoder_read>:
 8002ad0:	b082      	sub	sp, #8
 8002ad2:	b672      	cpsid	i
 8002ad4:	4b06      	ldr	r3, [pc, #24]	; (8002af0 <right_encoder_read+0x20>)
 8002ad6:	681b      	ldr	r3, [r3, #0]
 8002ad8:	9301      	str	r3, [sp, #4]
 8002ada:	b662      	cpsie	i
 8002adc:	9801      	ldr	r0, [sp, #4]
 8002ade:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002ae2:	4343      	muls	r3, r0
 8002ae4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002ae8:	fbb3 f0f0 	udiv	r0, r3, r0
 8002aec:	b002      	add	sp, #8
 8002aee:	4770      	bx	lr
 8002af0:	20001370 	.word	0x20001370

08002af4 <encoder_get_distance>:
 8002af4:	b510      	push	{r4, lr}
 8002af6:	f7ff ffd9 	bl	8002aac <left_encoder_read>
 8002afa:	4604      	mov	r4, r0
 8002afc:	f7ff ffe8 	bl	8002ad0 <right_encoder_read>
 8002b00:	4420      	add	r0, r4
 8002b02:	0840      	lsrs	r0, r0, #1
 8002b04:	bd10      	pop	{r4, pc}
	...

08002b08 <encoder_reset>:
 8002b08:	b672      	cpsid	i
 8002b0a:	4a03      	ldr	r2, [pc, #12]	; (8002b18 <encoder_reset+0x10>)
 8002b0c:	2300      	movs	r3, #0
 8002b0e:	6013      	str	r3, [r2, #0]
 8002b10:	4a02      	ldr	r2, [pc, #8]	; (8002b1c <encoder_reset+0x14>)
 8002b12:	6013      	str	r3, [r2, #0]
 8002b14:	b662      	cpsie	i
 8002b16:	4770      	bx	lr
 8002b18:	20001378 	.word	0x20001378
 8002b1c:	20001370 	.word	0x20001370

08002b20 <gpio_init>:
 8002b20:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002b24:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002b28:	b087      	sub	sp, #28
 8002b2a:	2101      	movs	r1, #1
 8002b2c:	f7ff f898 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 8002b30:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002b34:	2101      	movs	r1, #1
 8002b36:	f7ff f893 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 8002b3a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002b3e:	2101      	movs	r1, #1
 8002b40:	f7ff f88e 	bl	8001c60 <RCC_AHBPeriphClockCmd>
 8002b44:	2400      	movs	r4, #0
 8002b46:	2603      	movs	r6, #3
 8002b48:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002b4c:	f04f 0801 	mov.w	r8, #1
 8002b50:	a902      	add	r1, sp, #8
 8002b52:	4846      	ldr	r0, [pc, #280]	; (8002c6c <gpio_init+0x14c>)
 8002b54:	9502      	str	r5, [sp, #8]
 8002b56:	f88d 800c 	strb.w	r8, [sp, #12]
 8002b5a:	f88d 400e 	strb.w	r4, [sp, #14]
 8002b5e:	f88d 600d 	strb.w	r6, [sp, #13]
 8002b62:	f88d 400f 	strb.w	r4, [sp, #15]
 8002b66:	f7ff ff11 	bl	800298c <GPIO_Init>
 8002b6a:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002b6e:	a902      	add	r1, sp, #8
 8002b70:	483e      	ldr	r0, [pc, #248]	; (8002c6c <gpio_init+0x14c>)
 8002b72:	9302      	str	r3, [sp, #8]
 8002b74:	f88d 400c 	strb.w	r4, [sp, #12]
 8002b78:	f88d 600d 	strb.w	r6, [sp, #13]
 8002b7c:	f88d 400f 	strb.w	r4, [sp, #15]
 8002b80:	4f3b      	ldr	r7, [pc, #236]	; (8002c70 <gpio_init+0x150>)
 8002b82:	f7ff ff03 	bl	800298c <GPIO_Init>
 8002b86:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002b8a:	9302      	str	r3, [sp, #8]
 8002b8c:	a902      	add	r1, sp, #8
 8002b8e:	2302      	movs	r3, #2
 8002b90:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002b94:	603c      	str	r4, [r7, #0]
 8002b96:	f88d 400c 	strb.w	r4, [sp, #12]
 8002b9a:	f88d 600d 	strb.w	r6, [sp, #13]
 8002b9e:	f88d 300f 	strb.w	r3, [sp, #15]
 8002ba2:	f7ff fef3 	bl	800298c <GPIO_Init>
 8002ba6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002baa:	2401      	movs	r4, #1
 8002bac:	8a1b      	ldrh	r3, [r3, #16]
 8002bae:	4831      	ldr	r0, [pc, #196]	; (8002c74 <gpio_init+0x154>)
 8002bb0:	055b      	lsls	r3, r3, #21
 8002bb2:	4b2e      	ldr	r3, [pc, #184]	; (8002c6c <gpio_init+0x14c>)
 8002bb4:	bf48      	it	mi
 8002bb6:	f8c7 8000 	strmi.w	r8, [r7]
 8002bba:	2600      	movs	r6, #0
 8002bbc:	619d      	str	r5, [r3, #24]
 8002bbe:	a902      	add	r1, sp, #8
 8002bc0:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002bc4:	9302      	str	r3, [sp, #8]
 8002bc6:	f88d 600c 	strb.w	r6, [sp, #12]
 8002bca:	f88d 400f 	strb.w	r4, [sp, #15]
 8002bce:	f7ff fedd 	bl	800298c <GPIO_Init>
 8002bd2:	4620      	mov	r0, r4
 8002bd4:	4621      	mov	r1, r4
 8002bd6:	f7ff f851 	bl	8001c7c <RCC_APB2PeriphClockCmd>
 8002bda:	f04f 0910 	mov.w	r9, #16
 8002bde:	2106      	movs	r1, #6
 8002be0:	2002      	movs	r0, #2
 8002be2:	f000 f88d 	bl	8002d00 <SYSCFG_EXTILineConfig>
 8002be6:	f04f 0806 	mov.w	r8, #6
 8002bea:	eb0d 0009 	add.w	r0, sp, r9
 8002bee:	250f      	movs	r5, #15
 8002bf0:	f8cd 8010 	str.w	r8, [sp, #16]
 8002bf4:	f88d 6014 	strb.w	r6, [sp, #20]
 8002bf8:	f88d 9015 	strb.w	r9, [sp, #21]
 8002bfc:	f88d 4016 	strb.w	r4, [sp, #22]
 8002c00:	f7ff fe32 	bl	8002868 <EXTI_Init>
 8002c04:	2317      	movs	r3, #23
 8002c06:	a801      	add	r0, sp, #4
 8002c08:	f88d 3004 	strb.w	r3, [sp, #4]
 8002c0c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002c10:	f88d 5006 	strb.w	r5, [sp, #6]
 8002c14:	f88d 4007 	strb.w	r4, [sp, #7]
 8002c18:	f7ff fdda 	bl	80027d0 <NVIC_Init>
 8002c1c:	210c      	movs	r1, #12
 8002c1e:	2002      	movs	r0, #2
 8002c20:	f000 f86e 	bl	8002d00 <SYSCFG_EXTILineConfig>
 8002c24:	270c      	movs	r7, #12
 8002c26:	eb0d 0009 	add.w	r0, sp, r9
 8002c2a:	9704      	str	r7, [sp, #16]
 8002c2c:	f88d 6014 	strb.w	r6, [sp, #20]
 8002c30:	f88d 9015 	strb.w	r9, [sp, #21]
 8002c34:	f88d 4016 	strb.w	r4, [sp, #22]
 8002c38:	f7ff fe16 	bl	8002868 <EXTI_Init>
 8002c3c:	2328      	movs	r3, #40	; 0x28
 8002c3e:	a801      	add	r0, sp, #4
 8002c40:	f88d 3004 	strb.w	r3, [sp, #4]
 8002c44:	f88d 5005 	strb.w	r5, [sp, #5]
 8002c48:	f88d 5006 	strb.w	r5, [sp, #6]
 8002c4c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002c50:	f7ff fdbe 	bl	80027d0 <NVIC_Init>
 8002c54:	4640      	mov	r0, r8
 8002c56:	f7ff fe8d 	bl	8002974 <EXTI_ClearITPendingBit>
 8002c5a:	4638      	mov	r0, r7
 8002c5c:	f7ff fe8a 	bl	8002974 <EXTI_ClearITPendingBit>
 8002c60:	f7ff ff52 	bl	8002b08 <encoder_reset>
 8002c64:	b007      	add	sp, #28
 8002c66:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002c6a:	bf00      	nop
 8002c6c:	48000400 	.word	0x48000400
 8002c70:	20001374 	.word	0x20001374
 8002c74:	48000800 	.word	0x48000800

08002c78 <Default_Handler>:
 8002c78:	4668      	mov	r0, sp
 8002c7a:	f020 0107 	bic.w	r1, r0, #7
 8002c7e:	468d      	mov	sp, r1
 8002c80:	b501      	push	{r0, lr}
 8002c82:	bf00      	nop
 8002c84:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002c88:	4685      	mov	sp, r0
 8002c8a:	4770      	bx	lr

08002c8c <HardFault_Handler>:
 8002c8c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002c90:	f7ff fef0 	bl	8002a74 <led_on>
 8002c94:	4b06      	ldr	r3, [pc, #24]	; (8002cb0 <HardFault_Handler+0x24>)
 8002c96:	3b01      	subs	r3, #1
 8002c98:	d001      	beq.n	8002c9e <HardFault_Handler+0x12>
 8002c9a:	bf00      	nop
 8002c9c:	e7fb      	b.n	8002c96 <HardFault_Handler+0xa>
 8002c9e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002ca2:	f7ff fef1 	bl	8002a88 <led_off>
 8002ca6:	4b02      	ldr	r3, [pc, #8]	; (8002cb0 <HardFault_Handler+0x24>)
 8002ca8:	3b01      	subs	r3, #1
 8002caa:	d0ef      	beq.n	8002c8c <HardFault_Handler>
 8002cac:	bf00      	nop
 8002cae:	e7fb      	b.n	8002ca8 <HardFault_Handler+0x1c>
 8002cb0:	00989681 	.word	0x00989681

08002cb4 <_reset_init>:
 8002cb4:	490e      	ldr	r1, [pc, #56]	; (8002cf0 <_reset_init+0x3c>)
 8002cb6:	4b0f      	ldr	r3, [pc, #60]	; (8002cf4 <_reset_init+0x40>)
 8002cb8:	1a5b      	subs	r3, r3, r1
 8002cba:	109b      	asrs	r3, r3, #2
 8002cbc:	2200      	movs	r2, #0
 8002cbe:	429a      	cmp	r2, r3
 8002cc0:	d006      	beq.n	8002cd0 <_reset_init+0x1c>
 8002cc2:	480d      	ldr	r0, [pc, #52]	; (8002cf8 <_reset_init+0x44>)
 8002cc4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002cc8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002ccc:	3201      	adds	r2, #1
 8002cce:	e7f6      	b.n	8002cbe <_reset_init+0xa>
 8002cd0:	4a0a      	ldr	r2, [pc, #40]	; (8002cfc <_reset_init+0x48>)
 8002cd2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002cd6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002cda:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002cde:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002ce2:	6853      	ldr	r3, [r2, #4]
 8002ce4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002ce8:	6053      	str	r3, [r2, #4]
 8002cea:	f7fe be2f 	b.w	800194c <main>
 8002cee:	bf00      	nop
 8002cf0:	20000000 	.word	0x20000000
 8002cf4:	2000049c 	.word	0x2000049c
 8002cf8:	08004954 	.word	0x08004954
 8002cfc:	e000ed00 	.word	0xe000ed00

08002d00 <SYSCFG_EXTILineConfig>:
 8002d00:	b510      	push	{r4, lr}
 8002d02:	bf00      	nop
 8002d04:	bf00      	nop
 8002d06:	f001 0303 	and.w	r3, r1, #3
 8002d0a:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8002d0e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002d12:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8002d16:	009b      	lsls	r3, r3, #2
 8002d18:	688c      	ldr	r4, [r1, #8]
 8002d1a:	220f      	movs	r2, #15
 8002d1c:	409a      	lsls	r2, r3
 8002d1e:	ea24 0202 	bic.w	r2, r4, r2
 8002d22:	608a      	str	r2, [r1, #8]
 8002d24:	688a      	ldr	r2, [r1, #8]
 8002d26:	4098      	lsls	r0, r3
 8002d28:	4310      	orrs	r0, r2
 8002d2a:	6088      	str	r0, [r1, #8]
 8002d2c:	bd10      	pop	{r4, pc}
	...

08002d30 <selfrel_offset31>:
 8002d30:	e5903000 	ldr	r3, [r0]
 8002d34:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002d38:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002d3c:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002d40:	e0800003 	add	r0, r0, r3
 8002d44:	e12fff1e 	bx	lr

08002d48 <search_EIT_table>:
 8002d48:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002d4c:	e3510000 	cmp	r1, #0
 8002d50:	e24dd00c 	sub	sp, sp, #12
 8002d54:	0a000029 	beq	8002e00 <search_EIT_table+0xb8>
 8002d58:	e2413001 	sub	r3, r1, #1
 8002d5c:	e1a07002 	mov	r7, r2
 8002d60:	e1a05000 	mov	r5, r0
 8002d64:	e1a08003 	mov	r8, r3
 8002d68:	e3a06000 	mov	r6, #0
 8002d6c:	e58d3004 	str	r3, [sp, #4]
 8002d70:	e0864008 	add	r4, r6, r8
 8002d74:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002d78:	e1a040c4 	asr	r4, r4, #1
 8002d7c:	e1a0a184 	lsl	sl, r4, #3
 8002d80:	e085b00a 	add	fp, r5, sl
 8002d84:	e1a0000b 	mov	r0, fp
 8002d88:	ebffffe8 	bl	8002d30 <selfrel_offset31>
 8002d8c:	e59d3004 	ldr	r3, [sp, #4]
 8002d90:	e1a09000 	mov	r9, r0
 8002d94:	e1530004 	cmp	r3, r4
 8002d98:	e28a0008 	add	r0, sl, #8
 8002d9c:	e0850000 	add	r0, r5, r0
 8002da0:	0a00000b 	beq	8002dd4 <search_EIT_table+0x8c>
 8002da4:	ebffffe1 	bl	8002d30 <selfrel_offset31>
 8002da8:	e1590007 	cmp	r9, r7
 8002dac:	e2400001 	sub	r0, r0, #1
 8002db0:	9a000003 	bls	8002dc4 <search_EIT_table+0x7c>
 8002db4:	e1540006 	cmp	r4, r6
 8002db8:	0a00000b 	beq	8002dec <search_EIT_table+0xa4>
 8002dbc:	e2448001 	sub	r8, r4, #1
 8002dc0:	eaffffea 	b	8002d70 <search_EIT_table+0x28>
 8002dc4:	e1500007 	cmp	r0, r7
 8002dc8:	2a000003 	bcs	8002ddc <search_EIT_table+0x94>
 8002dcc:	e2846001 	add	r6, r4, #1
 8002dd0:	eaffffe6 	b	8002d70 <search_EIT_table+0x28>
 8002dd4:	e1590007 	cmp	r9, r7
 8002dd8:	8afffff5 	bhi	8002db4 <search_EIT_table+0x6c>
 8002ddc:	e1a0000b 	mov	r0, fp
 8002de0:	e28dd00c 	add	sp, sp, #12
 8002de4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002de8:	e12fff1e 	bx	lr
 8002dec:	e3a0b000 	mov	fp, #0
 8002df0:	e1a0000b 	mov	r0, fp
 8002df4:	e28dd00c 	add	sp, sp, #12
 8002df8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002dfc:	e12fff1e 	bx	lr
 8002e00:	e1a0b001 	mov	fp, r1
 8002e04:	e1a0000b 	mov	r0, fp
 8002e08:	e28dd00c 	add	sp, sp, #12
 8002e0c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002e10:	e12fff1e 	bx	lr

08002e14 <__gnu_unwind_get_pr_addr>:
 8002e14:	e3500001 	cmp	r0, #1
 8002e18:	0a000006 	beq	8002e38 <__gnu_unwind_get_pr_addr+0x24>
 8002e1c:	e3500002 	cmp	r0, #2
 8002e20:	0a000006 	beq	8002e40 <__gnu_unwind_get_pr_addr+0x2c>
 8002e24:	e59f301c 	ldr	r3, [pc, #28]	; 8002e48 <__gnu_unwind_get_pr_addr+0x34>
 8002e28:	e3500000 	cmp	r0, #0
 8002e2c:	01a00003 	moveq	r0, r3
 8002e30:	13a00000 	movne	r0, #0
 8002e34:	e12fff1e 	bx	lr
 8002e38:	e59f000c 	ldr	r0, [pc, #12]	; 8002e4c <__gnu_unwind_get_pr_addr+0x38>
 8002e3c:	e12fff1e 	bx	lr
 8002e40:	e59f0008 	ldr	r0, [pc, #8]	; 8002e50 <__gnu_unwind_get_pr_addr+0x3c>
 8002e44:	e12fff1e 	bx	lr
 8002e48:	080039bc 	.word	0x080039bc
 8002e4c:	080039c4 	.word	0x080039c4
 8002e50:	080039cc 	.word	0x080039cc

08002e54 <get_eit_entry>:
 8002e54:	e92d4030 	push	{r4, r5, lr}
 8002e58:	e59f3118 	ldr	r3, [pc, #280]	; 8002f78 <get_eit_entry+0x124>
 8002e5c:	e3530000 	cmp	r3, #0
 8002e60:	e24dd00c 	sub	sp, sp, #12
 8002e64:	e1a04000 	mov	r4, r0
 8002e68:	e2415002 	sub	r5, r1, #2
 8002e6c:	0a00002d 	beq	8002f28 <get_eit_entry+0xd4>
 8002e70:	e1a00005 	mov	r0, r5
 8002e74:	e28d1004 	add	r1, sp, #4
 8002e78:	e320f000 	nop	{0}
 8002e7c:	e3500000 	cmp	r0, #0
 8002e80:	0a000021 	beq	8002f0c <get_eit_entry+0xb8>
 8002e84:	e59d1004 	ldr	r1, [sp, #4]
 8002e88:	e1a02005 	mov	r2, r5
 8002e8c:	ebffffad 	bl	8002d48 <search_EIT_table>
 8002e90:	e2505000 	subs	r5, r0, #0
 8002e94:	0a00001c 	beq	8002f0c <get_eit_entry+0xb8>
 8002e98:	ebffffa4 	bl	8002d30 <selfrel_offset31>
 8002e9c:	e5953004 	ldr	r3, [r5, #4]
 8002ea0:	e3530001 	cmp	r3, #1
 8002ea4:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002ea8:	0a000010 	beq	8002ef0 <get_eit_entry+0x9c>
 8002eac:	e3530000 	cmp	r3, #0
 8002eb0:	ba000023 	blt	8002f44 <get_eit_entry+0xf0>
 8002eb4:	e2850004 	add	r0, r5, #4
 8002eb8:	ebffff9c 	bl	8002d30 <selfrel_offset31>
 8002ebc:	e3a03000 	mov	r3, #0
 8002ec0:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002ec4:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002ec8:	e5903000 	ldr	r3, [r0]
 8002ecc:	e3530000 	cmp	r3, #0
 8002ed0:	ba000020 	blt	8002f58 <get_eit_entry+0x104>
 8002ed4:	ebffff95 	bl	8002d30 <selfrel_offset31>
 8002ed8:	e3a03000 	mov	r3, #0
 8002edc:	e5840010 	str	r0, [r4, #16]
 8002ee0:	e1a00003 	mov	r0, r3
 8002ee4:	e28dd00c 	add	sp, sp, #12
 8002ee8:	e8bd4030 	pop	{r4, r5, lr}
 8002eec:	e12fff1e 	bx	lr
 8002ef0:	e3a03005 	mov	r3, #5
 8002ef4:	e3a02000 	mov	r2, #0
 8002ef8:	e1a00003 	mov	r0, r3
 8002efc:	e5842010 	str	r2, [r4, #16]
 8002f00:	e28dd00c 	add	sp, sp, #12
 8002f04:	e8bd4030 	pop	{r4, r5, lr}
 8002f08:	e12fff1e 	bx	lr
 8002f0c:	e3a03009 	mov	r3, #9
 8002f10:	e3a02000 	mov	r2, #0
 8002f14:	e1a00003 	mov	r0, r3
 8002f18:	e5842010 	str	r2, [r4, #16]
 8002f1c:	e28dd00c 	add	sp, sp, #12
 8002f20:	e8bd4030 	pop	{r4, r5, lr}
 8002f24:	e12fff1e 	bx	lr
 8002f28:	e59f104c 	ldr	r1, [pc, #76]	; 8002f7c <get_eit_entry+0x128>
 8002f2c:	e59f304c 	ldr	r3, [pc, #76]	; 8002f80 <get_eit_entry+0x12c>
 8002f30:	e1a00001 	mov	r0, r1
 8002f34:	e0611003 	rsb	r1, r1, r3
 8002f38:	e1a011c1 	asr	r1, r1, #3
 8002f3c:	e58d1004 	str	r1, [sp, #4]
 8002f40:	eaffffd0 	b	8002e88 <get_eit_entry+0x34>
 8002f44:	e3a03001 	mov	r3, #1
 8002f48:	e2850004 	add	r0, r5, #4
 8002f4c:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002f50:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002f54:	eaffffdb 	b	8002ec8 <get_eit_entry+0x74>
 8002f58:	e1a00c23 	lsr	r0, r3, #24
 8002f5c:	e200000f 	and	r0, r0, #15
 8002f60:	ebffffab 	bl	8002e14 <__gnu_unwind_get_pr_addr>
 8002f64:	e3500000 	cmp	r0, #0
 8002f68:	e5840010 	str	r0, [r4, #16]
 8002f6c:	03a03009 	moveq	r3, #9
 8002f70:	13a03000 	movne	r3, #0
 8002f74:	eaffffd9 	b	8002ee0 <get_eit_entry+0x8c>
 8002f78:	00000000 	.word	0x00000000
 8002f7c:	08004804 	.word	0x08004804
 8002f80:	08004954 	.word	0x08004954

08002f84 <restore_non_core_regs>:
 8002f84:	e5903000 	ldr	r3, [r0]
 8002f88:	e3130001 	tst	r3, #1
 8002f8c:	e92d4010 	push	{r4, lr}
 8002f90:	e1a04000 	mov	r4, r0
 8002f94:	1a000004 	bne	8002fac <restore_non_core_regs+0x28>
 8002f98:	e3130002 	tst	r3, #2
 8002f9c:	e2800048 	add	r0, r0, #72	; 0x48
 8002fa0:	0a00000a 	beq	8002fd0 <restore_non_core_regs+0x4c>
 8002fa4:	eb0003a2 	bl	8003e34 <__gnu_Unwind_Restore_VFP_D>
 8002fa8:	e5943000 	ldr	r3, [r4]
 8002fac:	e3130004 	tst	r3, #4
 8002fb0:	0a00000a 	beq	8002fe0 <restore_non_core_regs+0x5c>
 8002fb4:	e3130008 	tst	r3, #8
 8002fb8:	0a00000d 	beq	8002ff4 <restore_non_core_regs+0x70>
 8002fbc:	e3130010 	tst	r3, #16
 8002fc0:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8002fc4:	0b0003c4 	bleq	8003edc <__gnu_Unwind_Restore_WMMXC>
 8002fc8:	e8bd4010 	pop	{r4, lr}
 8002fcc:	e12fff1e 	bx	lr
 8002fd0:	eb000393 	bl	8003e24 <__gnu_Unwind_Restore_VFP>
 8002fd4:	e5943000 	ldr	r3, [r4]
 8002fd8:	e3130004 	tst	r3, #4
 8002fdc:	1afffff4 	bne	8002fb4 <restore_non_core_regs+0x30>
 8002fe0:	e28400d0 	add	r0, r4, #208	; 0xd0
 8002fe4:	eb000396 	bl	8003e44 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8002fe8:	e5943000 	ldr	r3, [r4]
 8002fec:	e3130008 	tst	r3, #8
 8002ff0:	1afffff1 	bne	8002fbc <restore_non_core_regs+0x38>
 8002ff4:	e2840e15 	add	r0, r4, #336	; 0x150
 8002ff8:	eb000395 	bl	8003e54 <__gnu_Unwind_Restore_WMMXD>
 8002ffc:	e5943000 	ldr	r3, [r4]
 8003000:	eaffffed 	b	8002fbc <restore_non_core_regs+0x38>

08003004 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003004:	e5903000 	ldr	r3, [r0]
 8003008:	e3530000 	cmp	r3, #0
 800300c:	10830000 	addne	r0, r3, r0
 8003010:	01a00003 	moveq	r0, r3
 8003014:	e12fff1e 	bx	lr

08003018 <__gnu_unwind_24bit.isra.1>:
 8003018:	e3a00009 	mov	r0, #9
 800301c:	e12fff1e 	bx	lr

08003020 <_Unwind_DebugHook>:
 8003020:	e12fff1e 	bx	lr

08003024 <unwind_phase2>:
 8003024:	e92d4070 	push	{r4, r5, r6, lr}
 8003028:	e1a04000 	mov	r4, r0
 800302c:	e1a05001 	mov	r5, r1
 8003030:	ea000009 	b	800305c <unwind_phase2+0x38>
 8003034:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8003038:	e3a00001 	mov	r0, #1
 800303c:	e5843014 	str	r3, [r4, #20]
 8003040:	e1a01004 	mov	r1, r4
 8003044:	e1a02005 	mov	r2, r5
 8003048:	e594c010 	ldr	ip, [r4, #16]
 800304c:	e1a0e00f 	mov	lr, pc
 8003050:	e12fff1c 	bx	ip
 8003054:	e3500008 	cmp	r0, #8
 8003058:	1a000005 	bne	8003074 <unwind_phase2+0x50>
 800305c:	e1a00004 	mov	r0, r4
 8003060:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003064:	ebffff7a 	bl	8002e54 <get_eit_entry>
 8003068:	e2506000 	subs	r6, r0, #0
 800306c:	0afffff0 	beq	8003034 <unwind_phase2+0x10>
 8003070:	eb000509 	bl	800449c <abort>
 8003074:	e3500007 	cmp	r0, #7
 8003078:	1afffffc 	bne	8003070 <unwind_phase2+0x4c>
 800307c:	e1a00006 	mov	r0, r6
 8003080:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003084:	ebffffe5 	bl	8003020 <_Unwind_DebugHook>
 8003088:	e2850004 	add	r0, r5, #4
 800308c:	eb00035d 	bl	8003e08 <__restore_core_regs>

08003090 <unwind_phase2_forced>:
 8003090:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003094:	e1a05000 	mov	r5, r0
 8003098:	e1a06002 	mov	r6, r2
 800309c:	e3a04000 	mov	r4, #0
 80030a0:	e281e004 	add	lr, r1, #4
 80030a4:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 80030a8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80030ac:	e28dc00c 	add	ip, sp, #12
 80030b0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80030b4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80030b8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80030bc:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80030c0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80030c4:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80030c8:	e1560004 	cmp	r6, r4
 80030cc:	e595800c 	ldr	r8, [r5, #12]
 80030d0:	e5959018 	ldr	r9, [r5, #24]
 80030d4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80030d8:	e1a00005 	mov	r0, r5
 80030dc:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80030e0:	e58d4008 	str	r4, [sp, #8]
 80030e4:	03a06009 	moveq	r6, #9
 80030e8:	13a0600a 	movne	r6, #10
 80030ec:	ebffff58 	bl	8002e54 <get_eit_entry>
 80030f0:	e1a04000 	mov	r4, r0
 80030f4:	e28d7008 	add	r7, sp, #8
 80030f8:	e3540000 	cmp	r4, #0
 80030fc:	0a00000e 	beq	800313c <unwind_phase2_forced+0xac>
 8003100:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003104:	e88d0280 	stm	sp, {r7, r9}
 8003108:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800310c:	e3861010 	orr	r1, r6, #16
 8003110:	e3a00001 	mov	r0, #1
 8003114:	e1a02005 	mov	r2, r5
 8003118:	e1a03005 	mov	r3, r5
 800311c:	e1a0e00f 	mov	lr, pc
 8003120:	e12fff18 	bx	r8
 8003124:	e3500000 	cmp	r0, #0
 8003128:	1a000029 	bne	80031d4 <unwind_phase2_forced+0x144>
 800312c:	e1a00004 	mov	r0, r4
 8003130:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003134:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003138:	e12fff1e 	bx	lr
 800313c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8003140:	e1a01007 	mov	r1, r7
 8003144:	e5853014 	str	r3, [r5, #20]
 8003148:	e3a02e1e 	mov	r2, #480	; 0x1e0
 800314c:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8003150:	eb0004d6 	bl	80044b0 <memcpy>
 8003154:	e1a01005 	mov	r1, r5
 8003158:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 800315c:	e1a00006 	mov	r0, r6
 8003160:	e595c010 	ldr	ip, [r5, #16]
 8003164:	e1a0e00f 	mov	lr, pc
 8003168:	e12fff1c 	bx	ip
 800316c:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 8003170:	e1a0a000 	mov	sl, r0
 8003174:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8003178:	e88d0280 	stm	sp, {r7, r9}
 800317c:	e1a01006 	mov	r1, r6
 8003180:	e3a00001 	mov	r0, #1
 8003184:	e1a02005 	mov	r2, r5
 8003188:	e1a03005 	mov	r3, r5
 800318c:	e1a0e00f 	mov	lr, pc
 8003190:	e12fff18 	bx	r8
 8003194:	e3500000 	cmp	r0, #0
 8003198:	1a00000d 	bne	80031d4 <unwind_phase2_forced+0x144>
 800319c:	e1a00007 	mov	r0, r7
 80031a0:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 80031a4:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80031a8:	eb0004c0 	bl	80044b0 <memcpy>
 80031ac:	e35a0008 	cmp	sl, #8
 80031b0:	1a000005 	bne	80031cc <unwind_phase2_forced+0x13c>
 80031b4:	e1a00005 	mov	r0, r5
 80031b8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80031bc:	ebffff24 	bl	8002e54 <get_eit_entry>
 80031c0:	e3a06009 	mov	r6, #9
 80031c4:	e1a04000 	mov	r4, r0
 80031c8:	eaffffca 	b	80030f8 <unwind_phase2_forced+0x68>
 80031cc:	e35a0007 	cmp	sl, #7
 80031d0:	0a000003 	beq	80031e4 <unwind_phase2_forced+0x154>
 80031d4:	e3a00009 	mov	r0, #9
 80031d8:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80031dc:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80031e0:	e12fff1e 	bx	lr
 80031e4:	e1a00004 	mov	r0, r4
 80031e8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80031ec:	ebffff8b 	bl	8003020 <_Unwind_DebugHook>
 80031f0:	e28d000c 	add	r0, sp, #12
 80031f4:	eb000303 	bl	8003e08 <__restore_core_regs>

080031f8 <_Unwind_GetCFA>:
 80031f8:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 80031fc:	e12fff1e 	bx	lr

08003200 <__gnu_Unwind_RaiseException>:
 8003200:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003204:	e3e05000 	mvn	r5, #0
 8003208:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800320c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003210:	e281e004 	add	lr, r1, #4
 8003214:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003218:	e1a07001 	mov	r7, r1
 800321c:	e1a04000 	mov	r4, r0
 8003220:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003224:	e28dc004 	add	ip, sp, #4
 8003228:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800322c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003230:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003234:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003238:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800323c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003240:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8003244:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003248:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 800324c:	ea000007 	b	8003270 <__gnu_Unwind_RaiseException+0x70>
 8003250:	e1a01004 	mov	r1, r4
 8003254:	e1a02006 	mov	r2, r6
 8003258:	e594c010 	ldr	ip, [r4, #16]
 800325c:	e1a0e00f 	mov	lr, pc
 8003260:	e12fff1c 	bx	ip
 8003264:	e3500008 	cmp	r0, #8
 8003268:	e1a05000 	mov	r5, r0
 800326c:	1a000008 	bne	8003294 <__gnu_Unwind_RaiseException+0x94>
 8003270:	e1a00004 	mov	r0, r4
 8003274:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 8003278:	ebfffef5 	bl	8002e54 <get_eit_entry>
 800327c:	e3500000 	cmp	r0, #0
 8003280:	0afffff2 	beq	8003250 <__gnu_Unwind_RaiseException+0x50>
 8003284:	e3a00009 	mov	r0, #9
 8003288:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 800328c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8003290:	e12fff1e 	bx	lr
 8003294:	e1a00006 	mov	r0, r6
 8003298:	ebffff39 	bl	8002f84 <restore_non_core_regs>
 800329c:	e3550006 	cmp	r5, #6
 80032a0:	1afffff7 	bne	8003284 <__gnu_Unwind_RaiseException+0x84>
 80032a4:	e1a00004 	mov	r0, r4
 80032a8:	e1a01007 	mov	r1, r7
 80032ac:	ebffff5c 	bl	8003024 <unwind_phase2>

080032b0 <__gnu_Unwind_ForcedUnwind>:
 80032b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80032b4:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 80032b8:	e580100c 	str	r1, [r0, #12]
 80032bc:	e5802018 	str	r2, [r0, #24]
 80032c0:	e1a01003 	mov	r1, r3
 80032c4:	e583e040 	str	lr, [r3, #64]	; 0x40
 80032c8:	e3a02000 	mov	r2, #0
 80032cc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80032d0:	eaffff6e 	b	8003090 <unwind_phase2_forced>

080032d4 <__gnu_Unwind_Resume>:
 80032d4:	e92d4070 	push	{r4, r5, r6, lr}
 80032d8:	e590600c 	ldr	r6, [r0, #12]
 80032dc:	e5903014 	ldr	r3, [r0, #20]
 80032e0:	e3560000 	cmp	r6, #0
 80032e4:	e1a04000 	mov	r4, r0
 80032e8:	e1a05001 	mov	r5, r1
 80032ec:	e5813040 	str	r3, [r1, #64]	; 0x40
 80032f0:	0a000002 	beq	8003300 <__gnu_Unwind_Resume+0x2c>
 80032f4:	e3a02001 	mov	r2, #1
 80032f8:	ebffff64 	bl	8003090 <unwind_phase2_forced>
 80032fc:	eb000466 	bl	800449c <abort>
 8003300:	e3a00002 	mov	r0, #2
 8003304:	e1a01004 	mov	r1, r4
 8003308:	e1a02005 	mov	r2, r5
 800330c:	e594c010 	ldr	ip, [r4, #16]
 8003310:	e1a0e00f 	mov	lr, pc
 8003314:	e12fff1c 	bx	ip
 8003318:	e3500007 	cmp	r0, #7
 800331c:	0a000004 	beq	8003334 <__gnu_Unwind_Resume+0x60>
 8003320:	e3500008 	cmp	r0, #8
 8003324:	01a00004 	moveq	r0, r4
 8003328:	01a01005 	moveq	r1, r5
 800332c:	0bffff3c 	bleq	8003024 <unwind_phase2>
 8003330:	eb000459 	bl	800449c <abort>
 8003334:	e1a00006 	mov	r0, r6
 8003338:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 800333c:	ebffff37 	bl	8003020 <_Unwind_DebugHook>
 8003340:	e2850004 	add	r0, r5, #4
 8003344:	eb0002af 	bl	8003e08 <__restore_core_regs>

08003348 <__gnu_Unwind_Resume_or_Rethrow>:
 8003348:	e590300c 	ldr	r3, [r0, #12]
 800334c:	e3530000 	cmp	r3, #0
 8003350:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003354:	13a02000 	movne	r2, #0
 8003358:	1581c040 	strne	ip, [r1, #64]	; 0x40
 800335c:	1affff4b 	bne	8003090 <unwind_phase2_forced>
 8003360:	eaffffa6 	b	8003200 <__gnu_Unwind_RaiseException>

08003364 <_Unwind_Complete>:
 8003364:	e12fff1e 	bx	lr

08003368 <_Unwind_DeleteException>:
 8003368:	e5903008 	ldr	r3, [r0, #8]
 800336c:	e3530000 	cmp	r3, #0
 8003370:	012fff1e 	bxeq	lr
 8003374:	e1a01000 	mov	r1, r0
 8003378:	e3a00001 	mov	r0, #1
 800337c:	e12fff13 	bx	r3

08003380 <_Unwind_VRS_Get>:
 8003380:	e3510004 	cmp	r1, #4
 8003384:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003388:	ea000009 	b	80033b4 <_Unwind_VRS_Get+0x34>
 800338c:	080033a0 	.word	0x080033a0
 8003390:	080033bc 	.word	0x080033bc
 8003394:	080033b4 	.word	0x080033b4
 8003398:	080033bc 	.word	0x080033bc
 800339c:	080033bc 	.word	0x080033bc
 80033a0:	e352000f 	cmp	r2, #15
 80033a4:	93530000 	cmpls	r3, #0
 80033a8:	13a03001 	movne	r3, #1
 80033ac:	03a03000 	moveq	r3, #0
 80033b0:	0a000003 	beq	80033c4 <_Unwind_VRS_Get+0x44>
 80033b4:	e3a00002 	mov	r0, #2
 80033b8:	e12fff1e 	bx	lr
 80033bc:	e3a00001 	mov	r0, #1
 80033c0:	e12fff1e 	bx	lr
 80033c4:	e0802102 	add	r2, r0, r2, lsl #2
 80033c8:	e5922004 	ldr	r2, [r2, #4]
 80033cc:	e1a00003 	mov	r0, r3
 80033d0:	e59d3000 	ldr	r3, [sp]
 80033d4:	e5832000 	str	r2, [r3]
 80033d8:	e12fff1e 	bx	lr

080033dc <_Unwind_GetGR>:
 80033dc:	e1a02001 	mov	r2, r1
 80033e0:	e3a01000 	mov	r1, #0
 80033e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80033e8:	e24dd014 	sub	sp, sp, #20
 80033ec:	e28dc00c 	add	ip, sp, #12
 80033f0:	e1a03001 	mov	r3, r1
 80033f4:	e58dc000 	str	ip, [sp]
 80033f8:	ebffffe0 	bl	8003380 <_Unwind_VRS_Get>
 80033fc:	e59d000c 	ldr	r0, [sp, #12]
 8003400:	e28dd014 	add	sp, sp, #20
 8003404:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003408:	e12fff1e 	bx	lr

0800340c <_Unwind_VRS_Set>:
 800340c:	e3510004 	cmp	r1, #4
 8003410:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003414:	ea000009 	b	8003440 <_Unwind_VRS_Set+0x34>
 8003418:	0800342c 	.word	0x0800342c
 800341c:	08003448 	.word	0x08003448
 8003420:	08003440 	.word	0x08003440
 8003424:	08003448 	.word	0x08003448
 8003428:	08003448 	.word	0x08003448
 800342c:	e352000f 	cmp	r2, #15
 8003430:	93530000 	cmpls	r3, #0
 8003434:	13a03001 	movne	r3, #1
 8003438:	03a03000 	moveq	r3, #0
 800343c:	0a000003 	beq	8003450 <_Unwind_VRS_Set+0x44>
 8003440:	e3a00002 	mov	r0, #2
 8003444:	e12fff1e 	bx	lr
 8003448:	e3a00001 	mov	r0, #1
 800344c:	e12fff1e 	bx	lr
 8003450:	e59d1000 	ldr	r1, [sp]
 8003454:	e5911000 	ldr	r1, [r1]
 8003458:	e0802102 	add	r2, r0, r2, lsl #2
 800345c:	e5821004 	str	r1, [r2, #4]
 8003460:	e1a00003 	mov	r0, r3
 8003464:	e12fff1e 	bx	lr

08003468 <_Unwind_SetGR>:
 8003468:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800346c:	e1a0e001 	mov	lr, r1
 8003470:	e3a01000 	mov	r1, #0
 8003474:	e24dd014 	sub	sp, sp, #20
 8003478:	e28dc010 	add	ip, sp, #16
 800347c:	e52c2004 	str	r2, [ip, #-4]!
 8003480:	e1a03001 	mov	r3, r1
 8003484:	e58dc000 	str	ip, [sp]
 8003488:	e1a0200e 	mov	r2, lr
 800348c:	ebffffde 	bl	800340c <_Unwind_VRS_Set>
 8003490:	e28dd014 	add	sp, sp, #20
 8003494:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003498:	e12fff1e 	bx	lr

0800349c <__gnu_Unwind_Backtrace>:
 800349c:	e92d4070 	push	{r4, r5, r6, lr}
 80034a0:	e3e04000 	mvn	r4, #0
 80034a4:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 80034a8:	e5823040 	str	r3, [r2, #64]	; 0x40
 80034ac:	e282c004 	add	ip, r2, #4
 80034b0:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 80034b4:	e1a06000 	mov	r6, r0
 80034b8:	e1a05001 	mov	r5, r1
 80034bc:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80034c0:	e28de05c 	add	lr, sp, #92	; 0x5c
 80034c4:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80034c8:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80034cc:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80034d0:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80034d4:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80034d8:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 80034dc:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 80034e0:	e58d4058 	str	r4, [sp, #88]	; 0x58
 80034e4:	ea000013 	b	8003538 <__gnu_Unwind_Backtrace+0x9c>
 80034e8:	e28d0058 	add	r0, sp, #88	; 0x58
 80034ec:	e3a0100c 	mov	r1, #12
 80034f0:	e1a0200d 	mov	r2, sp
 80034f4:	ebffffdb 	bl	8003468 <_Unwind_SetGR>
 80034f8:	e28d0058 	add	r0, sp, #88	; 0x58
 80034fc:	e1a01005 	mov	r1, r5
 8003500:	e1a0e00f 	mov	lr, pc
 8003504:	e12fff16 	bx	r6
 8003508:	e3500000 	cmp	r0, #0
 800350c:	1a00000e 	bne	800354c <__gnu_Unwind_Backtrace+0xb0>
 8003510:	e3a00008 	mov	r0, #8
 8003514:	e1a0100d 	mov	r1, sp
 8003518:	e28d2058 	add	r2, sp, #88	; 0x58
 800351c:	e59dc010 	ldr	ip, [sp, #16]
 8003520:	e1a0e00f 	mov	lr, pc
 8003524:	e12fff1c 	bx	ip
 8003528:	e2403005 	sub	r3, r0, #5
 800352c:	e31300fb 	tst	r3, #251	; 0xfb
 8003530:	e1a04000 	mov	r4, r0
 8003534:	0a000005 	beq	8003550 <__gnu_Unwind_Backtrace+0xb4>
 8003538:	e1a0000d 	mov	r0, sp
 800353c:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003540:	ebfffe43 	bl	8002e54 <get_eit_entry>
 8003544:	e3500000 	cmp	r0, #0
 8003548:	0affffe6 	beq	80034e8 <__gnu_Unwind_Backtrace+0x4c>
 800354c:	e3a04009 	mov	r4, #9
 8003550:	e28d0058 	add	r0, sp, #88	; 0x58
 8003554:	ebfffe8a 	bl	8002f84 <restore_non_core_regs>
 8003558:	e1a00004 	mov	r0, r4
 800355c:	e28ddf8e 	add	sp, sp, #568	; 0x238
 8003560:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003564:	e12fff1e 	bx	lr

08003568 <__gnu_unwind_pr_common>:
 8003568:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800356c:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 8003570:	e1a05001 	mov	r5, r1
 8003574:	e5961000 	ldr	r1, [r6]
 8003578:	e24dd024 	sub	sp, sp, #36	; 0x24
 800357c:	e2866004 	add	r6, r6, #4
 8003580:	e2537000 	subs	r7, r3, #0
 8003584:	e58d0004 	str	r0, [sp, #4]
 8003588:	e1a09002 	mov	r9, r2
 800358c:	e58d1014 	str	r1, [sp, #20]
 8003590:	e58d6018 	str	r6, [sp, #24]
 8003594:	e2008003 	and	r8, r0, #3
 8003598:	1a000076 	bne	8003778 <__gnu_unwind_pr_common+0x210>
 800359c:	e3a03003 	mov	r3, #3
 80035a0:	e1a01401 	lsl	r1, r1, #8
 80035a4:	e58d1014 	str	r1, [sp, #20]
 80035a8:	e5cd701d 	strb	r7, [sp, #29]
 80035ac:	e5cd301c 	strb	r3, [sp, #28]
 80035b0:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 80035b4:	e3580002 	cmp	r8, #2
 80035b8:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 80035bc:	e2133001 	ands	r3, r3, #1
 80035c0:	1a000061 	bne	800374c <__gnu_unwind_pr_common+0x1e4>
 80035c4:	e58d3000 	str	r3, [sp]
 80035c8:	e2853058 	add	r3, r5, #88	; 0x58
 80035cc:	e58d3008 	str	r3, [sp, #8]
 80035d0:	e5964000 	ldr	r4, [r6]
 80035d4:	e3540000 	cmp	r4, #0
 80035d8:	0a00005d 	beq	8003754 <__gnu_unwind_pr_common+0x1ec>
 80035dc:	e3570002 	cmp	r7, #2
 80035e0:	0596b004 	ldreq	fp, [r6, #4]
 80035e4:	11d6b0b2 	ldrhne	fp, [r6, #2]
 80035e8:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 80035ec:	e3cba001 	bic	sl, fp, #1
 80035f0:	e1a00009 	mov	r0, r9
 80035f4:	e3a0100f 	mov	r1, #15
 80035f8:	11d640b0 	ldrhne	r4, [r6]
 80035fc:	02866008 	addeq	r6, r6, #8
 8003600:	12866004 	addne	r6, r6, #4
 8003604:	e08aa003 	add	sl, sl, r3
 8003608:	ebffff73 	bl	80033dc <_Unwind_GetGR>
 800360c:	e15a0000 	cmp	sl, r0
 8003610:	e20bb001 	and	fp, fp, #1
 8003614:	8a00003c 	bhi	800370c <__gnu_unwind_pr_common+0x1a4>
 8003618:	e3c43001 	bic	r3, r4, #1
 800361c:	e08aa003 	add	sl, sl, r3
 8003620:	e150000a 	cmp	r0, sl
 8003624:	2a000038 	bcs	800370c <__gnu_unwind_pr_common+0x1a4>
 8003628:	e2044001 	and	r4, r4, #1
 800362c:	e184408b 	orr	r4, r4, fp, lsl #1
 8003630:	e3540001 	cmp	r4, #1
 8003634:	0a00005e 	beq	80037b4 <__gnu_unwind_pr_common+0x24c>
 8003638:	3a000059 	bcc	80037a4 <__gnu_unwind_pr_common+0x23c>
 800363c:	e3540002 	cmp	r4, #2
 8003640:	1a000048 	bne	8003768 <__gnu_unwind_pr_common+0x200>
 8003644:	e5963000 	ldr	r3, [r6]
 8003648:	e3580000 	cmp	r8, #0
 800364c:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003650:	1a000090 	bne	8003898 <__gnu_unwind_pr_common+0x330>
 8003654:	e59d2004 	ldr	r2, [sp, #4]
 8003658:	e3120008 	tst	r2, #8
 800365c:	03a02001 	moveq	r2, #1
 8003660:	13a02000 	movne	r2, #0
 8003664:	e3540000 	cmp	r4, #0
 8003668:	03822001 	orreq	r2, r2, #1
 800366c:	e3520000 	cmp	r2, #0
 8003670:	0a000030 	beq	8003738 <__gnu_unwind_pr_common+0x1d0>
 8003674:	e3540000 	cmp	r4, #0
 8003678:	0a00001a 	beq	80036e8 <__gnu_unwind_pr_common+0x180>
 800367c:	e1a0a007 	mov	sl, r7
 8003680:	e286b004 	add	fp, r6, #4
 8003684:	e1a07004 	mov	r7, r4
 8003688:	e58d800c 	str	r8, [sp, #12]
 800368c:	e59d4008 	ldr	r4, [sp, #8]
 8003690:	ea000003 	b	80036a4 <__gnu_unwind_pr_common+0x13c>
 8003694:	e1530007 	cmp	r3, r7
 8003698:	e1a08003 	mov	r8, r3
 800369c:	e28bb004 	add	fp, fp, #4
 80036a0:	0a000010 	beq	80036e8 <__gnu_unwind_pr_common+0x180>
 80036a4:	e1a0000b 	mov	r0, fp
 80036a8:	e58d4010 	str	r4, [sp, #16]
 80036ac:	ebfffe54 	bl	8003004 <_Unwind_decode_typeinfo_ptr.isra.0>
 80036b0:	e28d3010 	add	r3, sp, #16
 80036b4:	e1a01000 	mov	r1, r0
 80036b8:	e3a02000 	mov	r2, #0
 80036bc:	e1a00005 	mov	r0, r5
 80036c0:	e320f000 	nop	{0}
 80036c4:	e3500000 	cmp	r0, #0
 80036c8:	e2883001 	add	r3, r8, #1
 80036cc:	0afffff0 	beq	8003694 <__gnu_unwind_pr_common+0x12c>
 80036d0:	e1a04007 	mov	r4, r7
 80036d4:	e1a0700a 	mov	r7, sl
 80036d8:	e1a0a008 	mov	sl, r8
 80036dc:	e15a0004 	cmp	sl, r4
 80036e0:	e59d800c 	ldr	r8, [sp, #12]
 80036e4:	1a000071 	bne	80038b0 <__gnu_unwind_pr_common+0x348>
 80036e8:	e1a00009 	mov	r0, r9
 80036ec:	e3a0100d 	mov	r1, #13
 80036f0:	ebffff39 	bl	80033dc <_Unwind_GetGR>
 80036f4:	e59d3010 	ldr	r3, [sp, #16]
 80036f8:	e5850020 	str	r0, [r5, #32]
 80036fc:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003700:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003704:	e3a00006 	mov	r0, #6
 8003708:	ea000017 	b	800376c <__gnu_unwind_pr_common+0x204>
 800370c:	e2044001 	and	r4, r4, #1
 8003710:	e184408b 	orr	r4, r4, fp, lsl #1
 8003714:	e3540001 	cmp	r4, #1
 8003718:	0a000044 	beq	8003830 <__gnu_unwind_pr_common+0x2c8>
 800371c:	3a000022 	bcc	80037ac <__gnu_unwind_pr_common+0x244>
 8003720:	e3540002 	cmp	r4, #2
 8003724:	1a00000f 	bne	8003768 <__gnu_unwind_pr_common+0x200>
 8003728:	e5963000 	ldr	r3, [r6]
 800372c:	e3580000 	cmp	r8, #0
 8003730:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003734:	1a000057 	bne	8003898 <__gnu_unwind_pr_common+0x330>
 8003738:	e3530000 	cmp	r3, #0
 800373c:	b2866004 	addlt	r6, r6, #4
 8003740:	e2844001 	add	r4, r4, #1
 8003744:	e0866104 	add	r6, r6, r4, lsl #2
 8003748:	eaffffa0 	b	80035d0 <__gnu_unwind_pr_common+0x68>
 800374c:	e3a03000 	mov	r3, #0
 8003750:	e58d3000 	str	r3, [sp]
 8003754:	e3570002 	cmp	r7, #2
 8003758:	da000038 	ble	8003840 <__gnu_unwind_pr_common+0x2d8>
 800375c:	ebfffe2d 	bl	8003018 <__gnu_unwind_24bit.isra.1>
 8003760:	e3500000 	cmp	r0, #0
 8003764:	0a00003a 	beq	8003854 <__gnu_unwind_pr_common+0x2ec>
 8003768:	e3a00009 	mov	r0, #9
 800376c:	e28dd024 	add	sp, sp, #36	; 0x24
 8003770:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003774:	e12fff1e 	bx	lr
 8003778:	e3570002 	cmp	r7, #2
 800377c:	caffff8b 	bgt	80035b0 <__gnu_unwind_pr_common+0x48>
 8003780:	e3a02002 	mov	r2, #2
 8003784:	e1a03821 	lsr	r3, r1, #16
 8003788:	e5cd301d 	strb	r3, [sp, #29]
 800378c:	e1a01801 	lsl	r1, r1, #16
 8003790:	e20330ff 	and	r3, r3, #255	; 0xff
 8003794:	e58d1014 	str	r1, [sp, #20]
 8003798:	e5cd201c 	strb	r2, [sp, #28]
 800379c:	e0866103 	add	r6, r6, r3, lsl #2
 80037a0:	eaffff82 	b	80035b0 <__gnu_unwind_pr_common+0x48>
 80037a4:	e3580000 	cmp	r8, #0
 80037a8:	1a000070 	bne	8003970 <__gnu_unwind_pr_common+0x408>
 80037ac:	e2866004 	add	r6, r6, #4
 80037b0:	eaffff86 	b	80035d0 <__gnu_unwind_pr_common+0x68>
 80037b4:	e3580000 	cmp	r8, #0
 80037b8:	1a00003e 	bne	80038b8 <__gnu_unwind_pr_common+0x350>
 80037bc:	e896000c 	ldm	r6, {r2, r3}
 80037c0:	e3730002 	cmn	r3, #2
 80037c4:	e1a04fa2 	lsr	r4, r2, #31
 80037c8:	0affffe6 	beq	8003768 <__gnu_unwind_pr_common+0x200>
 80037cc:	e3730001 	cmn	r3, #1
 80037d0:	e59d3008 	ldr	r3, [sp, #8]
 80037d4:	e58d3010 	str	r3, [sp, #16]
 80037d8:	0a00005b 	beq	800394c <__gnu_unwind_pr_common+0x3e4>
 80037dc:	e2860004 	add	r0, r6, #4
 80037e0:	ebfffe07 	bl	8003004 <_Unwind_decode_typeinfo_ptr.isra.0>
 80037e4:	e1a02004 	mov	r2, r4
 80037e8:	e1a01000 	mov	r1, r0
 80037ec:	e28d3010 	add	r3, sp, #16
 80037f0:	e1a00005 	mov	r0, r5
 80037f4:	e320f000 	nop	{0}
 80037f8:	e3500000 	cmp	r0, #0
 80037fc:	0a00000d 	beq	8003838 <__gnu_unwind_pr_common+0x2d0>
 8003800:	e1a04000 	mov	r4, r0
 8003804:	e3a0100d 	mov	r1, #13
 8003808:	e1a00009 	mov	r0, r9
 800380c:	ebfffef2 	bl	80033dc <_Unwind_GetGR>
 8003810:	e3540002 	cmp	r4, #2
 8003814:	e5850020 	str	r0, [r5, #32]
 8003818:	1a00004f 	bne	800395c <__gnu_unwind_pr_common+0x3f4>
 800381c:	e1a03005 	mov	r3, r5
 8003820:	e59d2010 	ldr	r2, [sp, #16]
 8003824:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003828:	e5853024 	str	r3, [r5, #36]	; 0x24
 800382c:	ea00004c 	b	8003964 <__gnu_unwind_pr_common+0x3fc>
 8003830:	e3580000 	cmp	r8, #0
 8003834:	1a00001f 	bne	80038b8 <__gnu_unwind_pr_common+0x350>
 8003838:	e2866008 	add	r6, r6, #8
 800383c:	eaffff63 	b	80035d0 <__gnu_unwind_pr_common+0x68>
 8003840:	e1a00009 	mov	r0, r9
 8003844:	e28d1014 	add	r1, sp, #20
 8003848:	eb0001ff 	bl	800404c <__gnu_unwind_execute>
 800384c:	e3500000 	cmp	r0, #0
 8003850:	1affffc4 	bne	8003768 <__gnu_unwind_pr_common+0x200>
 8003854:	e59d3000 	ldr	r3, [sp]
 8003858:	e3530000 	cmp	r3, #0
 800385c:	03a00008 	moveq	r0, #8
 8003860:	0affffc1 	beq	800376c <__gnu_unwind_pr_common+0x204>
 8003864:	e3a0100f 	mov	r1, #15
 8003868:	e1a00009 	mov	r0, r9
 800386c:	ebfffeda 	bl	80033dc <_Unwind_GetGR>
 8003870:	e3a0100e 	mov	r1, #14
 8003874:	e1a02000 	mov	r2, r0
 8003878:	e1a00009 	mov	r0, r9
 800387c:	ebfffef9 	bl	8003468 <_Unwind_SetGR>
 8003880:	e1a00009 	mov	r0, r9
 8003884:	e3a0100f 	mov	r1, #15
 8003888:	e59f2128 	ldr	r2, [pc, #296]	; 80039b8 <__gnu_unwind_pr_common+0x450>
 800388c:	ebfffef5 	bl	8003468 <_Unwind_SetGR>
 8003890:	e3a00007 	mov	r0, #7
 8003894:	eaffffb4 	b	800376c <__gnu_unwind_pr_common+0x204>
 8003898:	e1a00009 	mov	r0, r9
 800389c:	e3a0100d 	mov	r1, #13
 80038a0:	e595a020 	ldr	sl, [r5, #32]
 80038a4:	ebfffecc 	bl	80033dc <_Unwind_GetGR>
 80038a8:	e15a0000 	cmp	sl, r0
 80038ac:	0a000016 	beq	800390c <__gnu_unwind_pr_common+0x3a4>
 80038b0:	e5963000 	ldr	r3, [r6]
 80038b4:	eaffff9f 	b	8003738 <__gnu_unwind_pr_common+0x1d0>
 80038b8:	e1a00009 	mov	r0, r9
 80038bc:	e3a0100d 	mov	r1, #13
 80038c0:	e5954020 	ldr	r4, [r5, #32]
 80038c4:	ebfffec4 	bl	80033dc <_Unwind_GetGR>
 80038c8:	e1540000 	cmp	r4, r0
 80038cc:	1affffd9 	bne	8003838 <__gnu_unwind_pr_common+0x2d0>
 80038d0:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 80038d4:	e1560003 	cmp	r6, r3
 80038d8:	1affffd6 	bne	8003838 <__gnu_unwind_pr_common+0x2d0>
 80038dc:	e1a00006 	mov	r0, r6
 80038e0:	ebfffd12 	bl	8002d30 <selfrel_offset31>
 80038e4:	e3a0100f 	mov	r1, #15
 80038e8:	e1a02000 	mov	r2, r0
 80038ec:	e1a00009 	mov	r0, r9
 80038f0:	ebfffedc 	bl	8003468 <_Unwind_SetGR>
 80038f4:	e1a00009 	mov	r0, r9
 80038f8:	e1a02005 	mov	r2, r5
 80038fc:	e3a01000 	mov	r1, #0
 8003900:	ebfffed8 	bl	8003468 <_Unwind_SetGR>
 8003904:	e3a00007 	mov	r0, #7
 8003908:	eaffff97 	b	800376c <__gnu_unwind_pr_common+0x204>
 800390c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003910:	e1560003 	cmp	r6, r3
 8003914:	1affffe5 	bne	80038b0 <__gnu_unwind_pr_common+0x348>
 8003918:	e3a02000 	mov	r2, #0
 800391c:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003920:	e3a02004 	mov	r2, #4
 8003924:	e2863004 	add	r3, r6, #4
 8003928:	e5854028 	str	r4, [r5, #40]	; 0x28
 800392c:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003930:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003934:	e5963000 	ldr	r3, [r6]
 8003938:	e3530000 	cmp	r3, #0
 800393c:	ba00001a 	blt	80039ac <__gnu_unwind_pr_common+0x444>
 8003940:	e3a03001 	mov	r3, #1
 8003944:	e58d3000 	str	r3, [sp]
 8003948:	eaffff7c 	b	8003740 <__gnu_unwind_pr_common+0x1d8>
 800394c:	e1a00009 	mov	r0, r9
 8003950:	e3a0100d 	mov	r1, #13
 8003954:	ebfffea0 	bl	80033dc <_Unwind_GetGR>
 8003958:	e5850020 	str	r0, [r5, #32]
 800395c:	e59d3010 	ldr	r3, [sp, #16]
 8003960:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003964:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003968:	e3a00006 	mov	r0, #6
 800396c:	eaffff7e 	b	800376c <__gnu_unwind_pr_common+0x204>
 8003970:	e1a00006 	mov	r0, r6
 8003974:	ebfffced 	bl	8002d30 <selfrel_offset31>
 8003978:	e2866004 	add	r6, r6, #4
 800397c:	e1a04000 	mov	r4, r0
 8003980:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003984:	e1a00005 	mov	r0, r5
 8003988:	e320f000 	nop	{0}
 800398c:	e3500000 	cmp	r0, #0
 8003990:	0affff74 	beq	8003768 <__gnu_unwind_pr_common+0x200>
 8003994:	e1a00009 	mov	r0, r9
 8003998:	e1a02004 	mov	r2, r4
 800399c:	e3a0100f 	mov	r1, #15
 80039a0:	ebfffeb0 	bl	8003468 <_Unwind_SetGR>
 80039a4:	e3a00007 	mov	r0, #7
 80039a8:	eaffff6f 	b	800376c <__gnu_unwind_pr_common+0x204>
 80039ac:	e2840001 	add	r0, r4, #1
 80039b0:	e0860100 	add	r0, r6, r0, lsl #2
 80039b4:	eaffffc9 	b	80038e0 <__gnu_unwind_pr_common+0x378>
 80039b8:	00000000 	.word	0x00000000

080039bc <__aeabi_unwind_cpp_pr0>:
 80039bc:	e3a03000 	mov	r3, #0
 80039c0:	eafffee8 	b	8003568 <__gnu_unwind_pr_common>

080039c4 <__aeabi_unwind_cpp_pr1>:
 80039c4:	e3a03001 	mov	r3, #1
 80039c8:	eafffee6 	b	8003568 <__gnu_unwind_pr_common>

080039cc <__aeabi_unwind_cpp_pr2>:
 80039cc:	e3a03002 	mov	r3, #2
 80039d0:	eafffee4 	b	8003568 <__gnu_unwind_pr_common>

080039d4 <_Unwind_VRS_Pop>:
 80039d4:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 80039d8:	e1a04000 	mov	r4, r0
 80039dc:	e24ddf45 	sub	sp, sp, #276	; 0x114
 80039e0:	e3510004 	cmp	r1, #4
 80039e4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80039e8:	ea000006 	b	8003a08 <_Unwind_VRS_Pop+0x34>
 80039ec:	08003be8 	.word	0x08003be8
 80039f0:	08003a80 	.word	0x08003a80
 80039f4:	08003a08 	.word	0x08003a08
 80039f8:	08003a00 	.word	0x08003a00
 80039fc:	08003a18 	.word	0x08003a18
 8003a00:	e3530003 	cmp	r3, #3
 8003a04:	0a00009c 	beq	8003c7c <_Unwind_VRS_Pop+0x2a8>
 8003a08:	e3a00002 	mov	r0, #2
 8003a0c:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003a10:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003a14:	e12fff1e 	bx	lr
 8003a18:	e3520010 	cmp	r2, #16
 8003a1c:	93530000 	cmpls	r3, #0
 8003a20:	1afffff8 	bne	8003a08 <_Unwind_VRS_Pop+0x34>
 8003a24:	e5903000 	ldr	r3, [r0]
 8003a28:	e3130010 	tst	r3, #16
 8003a2c:	1a0000b1 	bne	8003cf8 <_Unwind_VRS_Pop+0x324>
 8003a30:	e28d5088 	add	r5, sp, #136	; 0x88
 8003a34:	e1a00005 	mov	r0, r5
 8003a38:	e58d2004 	str	r2, [sp, #4]
 8003a3c:	eb00012b 	bl	8003ef0 <__gnu_Unwind_Save_WMMXC>
 8003a40:	e3a03000 	mov	r3, #0
 8003a44:	e3a00001 	mov	r0, #1
 8003a48:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003a4c:	e59d2004 	ldr	r2, [sp, #4]
 8003a50:	e012c310 	ands	ip, r2, r0, lsl r3
 8003a54:	1591c000 	ldrne	ip, [r1]
 8003a58:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003a5c:	e2833001 	add	r3, r3, #1
 8003a60:	12811004 	addne	r1, r1, #4
 8003a64:	e3530004 	cmp	r3, #4
 8003a68:	1afffff8 	bne	8003a50 <_Unwind_VRS_Pop+0x7c>
 8003a6c:	e1a00005 	mov	r0, r5
 8003a70:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003a74:	eb000118 	bl	8003edc <__gnu_Unwind_Restore_WMMXC>
 8003a78:	e3a00000 	mov	r0, #0
 8003a7c:	eaffffe2 	b	8003a0c <_Unwind_VRS_Pop+0x38>
 8003a80:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003a84:	e3510001 	cmp	r1, #1
 8003a88:	1affffde 	bne	8003a08 <_Unwind_VRS_Pop+0x34>
 8003a8c:	e1a06802 	lsl	r6, r2, #16
 8003a90:	e1a06826 	lsr	r6, r6, #16
 8003a94:	e1a08822 	lsr	r8, r2, #16
 8003a98:	e3530001 	cmp	r3, #1
 8003a9c:	e0861008 	add	r1, r6, r8
 8003aa0:	0a000063 	beq	8003c34 <_Unwind_VRS_Pop+0x260>
 8003aa4:	e3510020 	cmp	r1, #32
 8003aa8:	8affffd6 	bhi	8003a08 <_Unwind_VRS_Pop+0x34>
 8003aac:	e358000f 	cmp	r8, #15
 8003ab0:	9a000096 	bls	8003d10 <_Unwind_VRS_Pop+0x33c>
 8003ab4:	e1a07006 	mov	r7, r6
 8003ab8:	e3570000 	cmp	r7, #0
 8003abc:	13530005 	cmpne	r3, #5
 8003ac0:	13a09001 	movne	r9, #1
 8003ac4:	03a09000 	moveq	r9, #0
 8003ac8:	1affffce 	bne	8003a08 <_Unwind_VRS_Pop+0x34>
 8003acc:	e358000f 	cmp	r8, #15
 8003ad0:	8a000096 	bhi	8003d30 <_Unwind_VRS_Pop+0x35c>
 8003ad4:	e5942000 	ldr	r2, [r4]
 8003ad8:	e3120001 	tst	r2, #1
 8003adc:	0a000093 	beq	8003d30 <_Unwind_VRS_Pop+0x35c>
 8003ae0:	e3530005 	cmp	r3, #5
 8003ae4:	e3c23001 	bic	r3, r2, #1
 8003ae8:	e5843000 	str	r3, [r4]
 8003aec:	0a0000bb 	beq	8003de0 <_Unwind_VRS_Pop+0x40c>
 8003af0:	e1a00004 	mov	r0, r4
 8003af4:	e3c22003 	bic	r2, r2, #3
 8003af8:	e4802048 	str	r2, [r0], #72	; 0x48
 8003afc:	eb0000ca 	bl	8003e2c <__gnu_Unwind_Save_VFP>
 8003b00:	e3570000 	cmp	r7, #0
 8003b04:	0a000099 	beq	8003d70 <_Unwind_VRS_Pop+0x39c>
 8003b08:	e5943000 	ldr	r3, [r4]
 8003b0c:	e3130004 	tst	r3, #4
 8003b10:	1a0000ad 	bne	8003dcc <_Unwind_VRS_Pop+0x3f8>
 8003b14:	e3590000 	cmp	r9, #0
 8003b18:	1a0000b7 	bne	8003dfc <_Unwind_VRS_Pop+0x428>
 8003b1c:	e358000f 	cmp	r8, #15
 8003b20:	8a000004 	bhi	8003b38 <_Unwind_VRS_Pop+0x164>
 8003b24:	e28d5088 	add	r5, sp, #136	; 0x88
 8003b28:	e1a00005 	mov	r0, r5
 8003b2c:	eb0000c2 	bl	8003e3c <__gnu_Unwind_Save_VFP_D>
 8003b30:	e3570000 	cmp	r7, #0
 8003b34:	0a00009b 	beq	8003da8 <_Unwind_VRS_Pop+0x3d4>
 8003b38:	e28d0008 	add	r0, sp, #8
 8003b3c:	eb0000c2 	bl	8003e4c <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003b40:	e2683010 	rsb	r3, r8, #16
 8003b44:	e3530000 	cmp	r3, #0
 8003b48:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003b4c:	da00000d 	ble	8003b88 <_Unwind_VRS_Pop+0x1b4>
 8003b50:	e28d5088 	add	r5, sp, #136	; 0x88
 8003b54:	e1a00001 	mov	r0, r1
 8003b58:	e1a0e083 	lsl	lr, r3, #1
 8003b5c:	e0852188 	add	r2, r5, r8, lsl #3
 8003b60:	e2422004 	sub	r2, r2, #4
 8003b64:	e24e3001 	sub	r3, lr, #1
 8003b68:	e2433001 	sub	r3, r3, #1
 8003b6c:	e490c004 	ldr	ip, [r0], #4
 8003b70:	e3730001 	cmn	r3, #1
 8003b74:	e5a2c004 	str	ip, [r2, #4]!
 8003b78:	1afffffa 	bne	8003b68 <_Unwind_VRS_Pop+0x194>
 8003b7c:	e3570000 	cmp	r7, #0
 8003b80:	e081110e 	add	r1, r1, lr, lsl #2
 8003b84:	0a00000d 	beq	8003bc0 <_Unwind_VRS_Pop+0x1ec>
 8003b88:	e3580010 	cmp	r8, #16
 8003b8c:	21a02008 	movcs	r2, r8
 8003b90:	33a02010 	movcc	r2, #16
 8003b94:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003b98:	e0832182 	add	r2, r3, r2, lsl #3
 8003b9c:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003ba0:	e1a00087 	lsl	r0, r7, #1
 8003ba4:	e1a03001 	mov	r3, r1
 8003ba8:	e2422004 	sub	r2, r2, #4
 8003bac:	e0811100 	add	r1, r1, r0, lsl #2
 8003bb0:	e4930004 	ldr	r0, [r3], #4
 8003bb4:	e1530001 	cmp	r3, r1
 8003bb8:	e5a20004 	str	r0, [r2, #4]!
 8003bbc:	1afffffb 	bne	8003bb0 <_Unwind_VRS_Pop+0x1dc>
 8003bc0:	e3590000 	cmp	r9, #0
 8003bc4:	1a00007b 	bne	8003db8 <_Unwind_VRS_Pop+0x3e4>
 8003bc8:	e358000f 	cmp	r8, #15
 8003bcc:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003bd0:	9a00007a 	bls	8003dc0 <_Unwind_VRS_Pop+0x3ec>
 8003bd4:	e3570000 	cmp	r7, #0
 8003bd8:	128d0008 	addne	r0, sp, #8
 8003bdc:	1b000098 	blne	8003e44 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003be0:	e3a00000 	mov	r0, #0
 8003be4:	eaffff88 	b	8003a0c <_Unwind_VRS_Pop+0x38>
 8003be8:	e3530000 	cmp	r3, #0
 8003bec:	1affff85 	bne	8003a08 <_Unwind_VRS_Pop+0x34>
 8003bf0:	e3a0e001 	mov	lr, #1
 8003bf4:	e1a00802 	lsl	r0, r2, #16
 8003bf8:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003bfc:	e1a00820 	lsr	r0, r0, #16
 8003c00:	e2841004 	add	r1, r4, #4
 8003c04:	e010531e 	ands	r5, r0, lr, lsl r3
 8003c08:	159c5000 	ldrne	r5, [ip]
 8003c0c:	e2833001 	add	r3, r3, #1
 8003c10:	15815000 	strne	r5, [r1]
 8003c14:	128cc004 	addne	ip, ip, #4
 8003c18:	e3530010 	cmp	r3, #16
 8003c1c:	e2811004 	add	r1, r1, #4
 8003c20:	1afffff7 	bne	8003c04 <_Unwind_VRS_Pop+0x230>
 8003c24:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003c28:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003c2c:	0affff76 	beq	8003a0c <_Unwind_VRS_Pop+0x38>
 8003c30:	eaffffea 	b	8003be0 <_Unwind_VRS_Pop+0x20c>
 8003c34:	e3510010 	cmp	r1, #16
 8003c38:	8affff72 	bhi	8003a08 <_Unwind_VRS_Pop+0x34>
 8003c3c:	e358000f 	cmp	r8, #15
 8003c40:	91a09003 	movls	r9, r3
 8003c44:	8affff6f 	bhi	8003a08 <_Unwind_VRS_Pop+0x34>
 8003c48:	e5942000 	ldr	r2, [r4]
 8003c4c:	e3120001 	tst	r2, #1
 8003c50:	0a000046 	beq	8003d70 <_Unwind_VRS_Pop+0x39c>
 8003c54:	e3530005 	cmp	r3, #5
 8003c58:	e3c23001 	bic	r3, r2, #1
 8003c5c:	e5843000 	str	r3, [r4]
 8003c60:	e3a07000 	mov	r7, #0
 8003c64:	1affffa1 	bne	8003af0 <_Unwind_VRS_Pop+0x11c>
 8003c68:	e1a00004 	mov	r0, r4
 8003c6c:	e3833002 	orr	r3, r3, #2
 8003c70:	e4803048 	str	r3, [r0], #72	; 0x48
 8003c74:	eb000070 	bl	8003e3c <__gnu_Unwind_Save_VFP_D>
 8003c78:	eaffffa9 	b	8003b24 <_Unwind_VRS_Pop+0x150>
 8003c7c:	e1a07802 	lsl	r7, r2, #16
 8003c80:	e1a07827 	lsr	r7, r7, #16
 8003c84:	e1a06822 	lsr	r6, r2, #16
 8003c88:	e0873006 	add	r3, r7, r6
 8003c8c:	e3530010 	cmp	r3, #16
 8003c90:	8affff5c 	bhi	8003a08 <_Unwind_VRS_Pop+0x34>
 8003c94:	e5903000 	ldr	r3, [r0]
 8003c98:	e3130008 	tst	r3, #8
 8003c9c:	1a00001f 	bne	8003d20 <_Unwind_VRS_Pop+0x34c>
 8003ca0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003ca4:	e1a07087 	lsl	r7, r7, #1
 8003ca8:	e1a00005 	mov	r0, r5
 8003cac:	eb000079 	bl	8003e98 <__gnu_Unwind_Save_WMMXD>
 8003cb0:	e3570000 	cmp	r7, #0
 8003cb4:	e0852186 	add	r2, r5, r6, lsl #3
 8003cb8:	e2473001 	sub	r3, r7, #1
 8003cbc:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003cc0:	0a000007 	beq	8003ce4 <_Unwind_VRS_Pop+0x310>
 8003cc4:	e1a0100c 	mov	r1, ip
 8003cc8:	e2422004 	sub	r2, r2, #4
 8003ccc:	e2433001 	sub	r3, r3, #1
 8003cd0:	e4910004 	ldr	r0, [r1], #4
 8003cd4:	e3730001 	cmn	r3, #1
 8003cd8:	e5a20004 	str	r0, [r2, #4]!
 8003cdc:	1afffffa 	bne	8003ccc <_Unwind_VRS_Pop+0x2f8>
 8003ce0:	e08cc107 	add	ip, ip, r7, lsl #2
 8003ce4:	e1a00005 	mov	r0, r5
 8003ce8:	e584c038 	str	ip, [r4, #56]	; 0x38
 8003cec:	eb000058 	bl	8003e54 <__gnu_Unwind_Restore_WMMXD>
 8003cf0:	e3a00000 	mov	r0, #0
 8003cf4:	eaffff44 	b	8003a0c <_Unwind_VRS_Pop+0x38>
 8003cf8:	e3c33010 	bic	r3, r3, #16
 8003cfc:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003d00:	e58d2004 	str	r2, [sp, #4]
 8003d04:	eb000079 	bl	8003ef0 <__gnu_Unwind_Save_WMMXC>
 8003d08:	e59d2004 	ldr	r2, [sp, #4]
 8003d0c:	eaffff47 	b	8003a30 <_Unwind_VRS_Pop+0x5c>
 8003d10:	e3510010 	cmp	r1, #16
 8003d14:	9a000013 	bls	8003d68 <_Unwind_VRS_Pop+0x394>
 8003d18:	e2417010 	sub	r7, r1, #16
 8003d1c:	eaffff65 	b	8003ab8 <_Unwind_VRS_Pop+0xe4>
 8003d20:	e3c33008 	bic	r3, r3, #8
 8003d24:	e4803150 	str	r3, [r0], #336	; 0x150
 8003d28:	eb00005a 	bl	8003e98 <__gnu_Unwind_Save_WMMXD>
 8003d2c:	eaffffdb 	b	8003ca0 <_Unwind_VRS_Pop+0x2cc>
 8003d30:	e3570000 	cmp	r7, #0
 8003d34:	1affff73 	bne	8003b08 <_Unwind_VRS_Pop+0x134>
 8003d38:	e358000f 	cmp	r8, #15
 8003d3c:	93a09000 	movls	r9, #0
 8003d40:	91a07009 	movls	r7, r9
 8003d44:	9affff76 	bls	8003b24 <_Unwind_VRS_Pop+0x150>
 8003d48:	e3a09000 	mov	r9, #0
 8003d4c:	e3560000 	cmp	r6, #0
 8003d50:	e1a03006 	mov	r3, r6
 8003d54:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003d58:	11a07009 	movne	r7, r9
 8003d5c:	1affff7b 	bne	8003b50 <_Unwind_VRS_Pop+0x17c>
 8003d60:	e1a07006 	mov	r7, r6
 8003d64:	eaffff97 	b	8003bc8 <_Unwind_VRS_Pop+0x1f4>
 8003d68:	e3a09000 	mov	r9, #0
 8003d6c:	eaffffb5 	b	8003c48 <_Unwind_VRS_Pop+0x274>
 8003d70:	e3590000 	cmp	r9, #0
 8003d74:	0affffef 	beq	8003d38 <_Unwind_VRS_Pop+0x364>
 8003d78:	e28d5088 	add	r5, sp, #136	; 0x88
 8003d7c:	e1a00005 	mov	r0, r5
 8003d80:	eb000029 	bl	8003e2c <__gnu_Unwind_Save_VFP>
 8003d84:	e2563000 	subs	r3, r6, #0
 8003d88:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003d8c:	13a07000 	movne	r7, #0
 8003d90:	1affff6f 	bne	8003b54 <_Unwind_VRS_Pop+0x180>
 8003d94:	e2811004 	add	r1, r1, #4
 8003d98:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003d9c:	e1a00005 	mov	r0, r5
 8003da0:	eb00001f 	bl	8003e24 <__gnu_Unwind_Restore_VFP>
 8003da4:	eaffff8d 	b	8003be0 <_Unwind_VRS_Pop+0x20c>
 8003da8:	e2563000 	subs	r3, r6, #0
 8003dac:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003db0:	1affff67 	bne	8003b54 <_Unwind_VRS_Pop+0x180>
 8003db4:	eaffff81 	b	8003bc0 <_Unwind_VRS_Pop+0x1ec>
 8003db8:	e28d5088 	add	r5, sp, #136	; 0x88
 8003dbc:	eafffff4 	b	8003d94 <_Unwind_VRS_Pop+0x3c0>
 8003dc0:	e28d0088 	add	r0, sp, #136	; 0x88
 8003dc4:	eb00001a 	bl	8003e34 <__gnu_Unwind_Restore_VFP_D>
 8003dc8:	eaffff81 	b	8003bd4 <_Unwind_VRS_Pop+0x200>
 8003dcc:	e1a00004 	mov	r0, r4
 8003dd0:	e3c33004 	bic	r3, r3, #4
 8003dd4:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003dd8:	eb00001b 	bl	8003e4c <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003ddc:	eaffff4c 	b	8003b14 <_Unwind_VRS_Pop+0x140>
 8003de0:	e1a00004 	mov	r0, r4
 8003de4:	e3833002 	orr	r3, r3, #2
 8003de8:	e4803048 	str	r3, [r0], #72	; 0x48
 8003dec:	eb000012 	bl	8003e3c <__gnu_Unwind_Save_VFP_D>
 8003df0:	e3570000 	cmp	r7, #0
 8003df4:	1affff43 	bne	8003b08 <_Unwind_VRS_Pop+0x134>
 8003df8:	eaffff49 	b	8003b24 <_Unwind_VRS_Pop+0x150>
 8003dfc:	e28d0088 	add	r0, sp, #136	; 0x88
 8003e00:	eb000009 	bl	8003e2c <__gnu_Unwind_Save_VFP>
 8003e04:	eaffff4d 	b	8003b40 <_Unwind_VRS_Pop+0x16c>

08003e08 <__restore_core_regs>:
 8003e08:	e2801034 	add	r1, r0, #52	; 0x34
 8003e0c:	e8910038 	ldm	r1, {r3, r4, r5}
 8003e10:	e1a02005 	mov	r2, r5
 8003e14:	e92d001c 	push	{r2, r3, r4}
 8003e18:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8003e1c:	e89d7000 	ldm	sp, {ip, sp, lr}
 8003e20:	e12fff1c 	bx	ip

08003e24 <__gnu_Unwind_Restore_VFP>:
 8003e24:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8003e28:	e12fff1e 	bx	lr

08003e2c <__gnu_Unwind_Save_VFP>:
 8003e2c:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8003e30:	e12fff1e 	bx	lr

08003e34 <__gnu_Unwind_Restore_VFP_D>:
 8003e34:	ec900b20 	vldmia	r0, {d0-d15}
 8003e38:	e12fff1e 	bx	lr

08003e3c <__gnu_Unwind_Save_VFP_D>:
 8003e3c:	ec800b20 	vstmia	r0, {d0-d15}
 8003e40:	e12fff1e 	bx	lr

08003e44 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8003e44:	ecd00b20 	vldmia	r0, {d16-d31}
 8003e48:	e12fff1e 	bx	lr

08003e4c <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8003e4c:	ecc00b20 	vstmia	r0, {d16-d31}
 8003e50:	e12fff1e 	bx	lr

08003e54 <__gnu_Unwind_Restore_WMMXD>:
 8003e54:	ecf00102 	ldfe	f0, [r0], #8
 8003e58:	ecf01102 	ldfe	f1, [r0], #8
 8003e5c:	ecf02102 	ldfe	f2, [r0], #8
 8003e60:	ecf03102 	ldfe	f3, [r0], #8
 8003e64:	ecf04102 	ldfe	f4, [r0], #8
 8003e68:	ecf05102 	ldfe	f5, [r0], #8
 8003e6c:	ecf06102 	ldfe	f6, [r0], #8
 8003e70:	ecf07102 	ldfe	f7, [r0], #8
 8003e74:	ecf08102 	ldfp	f0, [r0], #8
 8003e78:	ecf09102 	ldfp	f1, [r0], #8
 8003e7c:	ecf0a102 	ldfp	f2, [r0], #8
 8003e80:	ecf0b102 	ldfp	f3, [r0], #8
 8003e84:	ecf0c102 	ldfp	f4, [r0], #8
 8003e88:	ecf0d102 	ldfp	f5, [r0], #8
 8003e8c:	ecf0e102 	ldfp	f6, [r0], #8
 8003e90:	ecf0f102 	ldfp	f7, [r0], #8
 8003e94:	e12fff1e 	bx	lr

08003e98 <__gnu_Unwind_Save_WMMXD>:
 8003e98:	ece00102 	stfe	f0, [r0], #8
 8003e9c:	ece01102 	stfe	f1, [r0], #8
 8003ea0:	ece02102 	stfe	f2, [r0], #8
 8003ea4:	ece03102 	stfe	f3, [r0], #8
 8003ea8:	ece04102 	stfe	f4, [r0], #8
 8003eac:	ece05102 	stfe	f5, [r0], #8
 8003eb0:	ece06102 	stfe	f6, [r0], #8
 8003eb4:	ece07102 	stfe	f7, [r0], #8
 8003eb8:	ece08102 	stfp	f0, [r0], #8
 8003ebc:	ece09102 	stfp	f1, [r0], #8
 8003ec0:	ece0a102 	stfp	f2, [r0], #8
 8003ec4:	ece0b102 	stfp	f3, [r0], #8
 8003ec8:	ece0c102 	stfp	f4, [r0], #8
 8003ecc:	ece0d102 	stfp	f5, [r0], #8
 8003ed0:	ece0e102 	stfp	f6, [r0], #8
 8003ed4:	ece0f102 	stfp	f7, [r0], #8
 8003ed8:	e12fff1e 	bx	lr

08003edc <__gnu_Unwind_Restore_WMMXC>:
 8003edc:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003ee0:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003ee4:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003ee8:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8003eec:	e12fff1e 	bx	lr

08003ef0 <__gnu_Unwind_Save_WMMXC>:
 8003ef0:	fca08101 	stc2	1, cr8, [r0], #4
 8003ef4:	fca09101 	stc2	1, cr9, [r0], #4
 8003ef8:	fca0a101 	stc2	1, cr10, [r0], #4
 8003efc:	fca0b101 	stc2	1, cr11, [r0], #4
 8003f00:	e12fff1e 	bx	lr

08003f04 <_Unwind_RaiseException>:
 8003f04:	e92de000 	push	{sp, lr, pc}
 8003f08:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003f0c:	e3a03000 	mov	r3, #0
 8003f10:	e92d000c 	push	{r2, r3}
 8003f14:	e28d1004 	add	r1, sp, #4
 8003f18:	ebfffcb8 	bl	8003200 <__gnu_Unwind_RaiseException>
 8003f1c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003f20:	e28dd048 	add	sp, sp, #72	; 0x48
 8003f24:	e12fff1e 	bx	lr

08003f28 <_Unwind_Resume>:
 8003f28:	e92de000 	push	{sp, lr, pc}
 8003f2c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003f30:	e3a03000 	mov	r3, #0
 8003f34:	e92d000c 	push	{r2, r3}
 8003f38:	e28d1004 	add	r1, sp, #4
 8003f3c:	ebfffce4 	bl	80032d4 <__gnu_Unwind_Resume>
 8003f40:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003f44:	e28dd048 	add	sp, sp, #72	; 0x48
 8003f48:	e12fff1e 	bx	lr

08003f4c <_Unwind_Resume_or_Rethrow>:
 8003f4c:	e92de000 	push	{sp, lr, pc}
 8003f50:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003f54:	e3a03000 	mov	r3, #0
 8003f58:	e92d000c 	push	{r2, r3}
 8003f5c:	e28d1004 	add	r1, sp, #4
 8003f60:	ebfffcf8 	bl	8003348 <__gnu_Unwind_Resume_or_Rethrow>
 8003f64:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003f68:	e28dd048 	add	sp, sp, #72	; 0x48
 8003f6c:	e12fff1e 	bx	lr

08003f70 <_Unwind_ForcedUnwind>:
 8003f70:	e92de000 	push	{sp, lr, pc}
 8003f74:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003f78:	e3a03000 	mov	r3, #0
 8003f7c:	e92d000c 	push	{r2, r3}
 8003f80:	e28d3004 	add	r3, sp, #4
 8003f84:	ebfffcc9 	bl	80032b0 <__gnu_Unwind_ForcedUnwind>
 8003f88:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003f8c:	e28dd048 	add	sp, sp, #72	; 0x48
 8003f90:	e12fff1e 	bx	lr

08003f94 <_Unwind_Backtrace>:
 8003f94:	e92de000 	push	{sp, lr, pc}
 8003f98:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003f9c:	e3a03000 	mov	r3, #0
 8003fa0:	e92d000c 	push	{r2, r3}
 8003fa4:	e28d2004 	add	r2, sp, #4
 8003fa8:	ebfffd3b 	bl	800349c <__gnu_Unwind_Backtrace>
 8003fac:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003fb0:	e28dd048 	add	sp, sp, #72	; 0x48
 8003fb4:	e12fff1e 	bx	lr

08003fb8 <next_unwind_byte>:
 8003fb8:	e5d03008 	ldrb	r3, [r0, #8]
 8003fbc:	e3530000 	cmp	r3, #0
 8003fc0:	1a000004 	bne	8003fd8 <next_unwind_byte+0x20>
 8003fc4:	e5d03009 	ldrb	r3, [r0, #9]
 8003fc8:	e3530000 	cmp	r3, #0
 8003fcc:	1a000008 	bne	8003ff4 <next_unwind_byte+0x3c>
 8003fd0:	e3a000b0 	mov	r0, #176	; 0xb0
 8003fd4:	e12fff1e 	bx	lr
 8003fd8:	e2433001 	sub	r3, r3, #1
 8003fdc:	e5c03008 	strb	r3, [r0, #8]
 8003fe0:	e5903000 	ldr	r3, [r0]
 8003fe4:	e1a02403 	lsl	r2, r3, #8
 8003fe8:	e5802000 	str	r2, [r0]
 8003fec:	e1a00c23 	lsr	r0, r3, #24
 8003ff0:	e12fff1e 	bx	lr
 8003ff4:	e3a01003 	mov	r1, #3
 8003ff8:	e5902004 	ldr	r2, [r0, #4]
 8003ffc:	e2433001 	sub	r3, r3, #1
 8004000:	e5c03009 	strb	r3, [r0, #9]
 8004004:	e282c004 	add	ip, r2, #4
 8004008:	e5923000 	ldr	r3, [r2]
 800400c:	e580c004 	str	ip, [r0, #4]
 8004010:	e5c01008 	strb	r1, [r0, #8]
 8004014:	eafffff2 	b	8003fe4 <next_unwind_byte+0x2c>

08004018 <_Unwind_GetGR.constprop.0>:
 8004018:	e3a01000 	mov	r1, #0
 800401c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004020:	e24dd014 	sub	sp, sp, #20
 8004024:	e28d200c 	add	r2, sp, #12
 8004028:	e58d2000 	str	r2, [sp]
 800402c:	e1a03001 	mov	r3, r1
 8004030:	e3a0200c 	mov	r2, #12
 8004034:	ebfffcd1 	bl	8003380 <_Unwind_VRS_Get>
 8004038:	e59d000c 	ldr	r0, [sp, #12]
 800403c:	e28dd014 	add	sp, sp, #20
 8004040:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004044:	e12fff1e 	bx	lr

08004048 <unwind_UCB_from_context>:
 8004048:	eafffff2 	b	8004018 <_Unwind_GetGR.constprop.0>

0800404c <__gnu_unwind_execute>:
 800404c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8004050:	e1a07000 	mov	r7, r0
 8004054:	e1a05001 	mov	r5, r1
 8004058:	e3a08000 	mov	r8, #0
 800405c:	e24dd010 	sub	sp, sp, #16
 8004060:	e1a00005 	mov	r0, r5
 8004064:	ebffffd3 	bl	8003fb8 <next_unwind_byte>
 8004068:	e35000b0 	cmp	r0, #176	; 0xb0
 800406c:	e1a04000 	mov	r4, r0
 8004070:	0a00007d 	beq	800426c <__gnu_unwind_execute+0x220>
 8004074:	e2101080 	ands	r1, r0, #128	; 0x80
 8004078:	0a00001a 	beq	80040e8 <__gnu_unwind_execute+0x9c>
 800407c:	e20030f0 	and	r3, r0, #240	; 0xf0
 8004080:	e3530080 	cmp	r3, #128	; 0x80
 8004084:	0a000054 	beq	80041dc <__gnu_unwind_execute+0x190>
 8004088:	e3530090 	cmp	r3, #144	; 0x90
 800408c:	0a00002b 	beq	8004140 <__gnu_unwind_execute+0xf4>
 8004090:	e35300a0 	cmp	r3, #160	; 0xa0
 8004094:	0a000034 	beq	800416c <__gnu_unwind_execute+0x120>
 8004098:	e35300b0 	cmp	r3, #176	; 0xb0
 800409c:	0a000040 	beq	80041a4 <__gnu_unwind_execute+0x158>
 80040a0:	e35300c0 	cmp	r3, #192	; 0xc0
 80040a4:	0a00005e 	beq	8004224 <__gnu_unwind_execute+0x1d8>
 80040a8:	e20030f8 	and	r3, r0, #248	; 0xf8
 80040ac:	e35300d0 	cmp	r3, #208	; 0xd0
 80040b0:	1a000008 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80040b4:	e2002007 	and	r2, r0, #7
 80040b8:	e2822001 	add	r2, r2, #1
 80040bc:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80040c0:	e1a00007 	mov	r0, r7
 80040c4:	e3a01001 	mov	r1, #1
 80040c8:	e3a03005 	mov	r3, #5
 80040cc:	ebfffe40 	bl	80039d4 <_Unwind_VRS_Pop>
 80040d0:	e3500000 	cmp	r0, #0
 80040d4:	0affffe1 	beq	8004060 <__gnu_unwind_execute+0x14>
 80040d8:	e3a00009 	mov	r0, #9
 80040dc:	e28dd010 	add	sp, sp, #16
 80040e0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 80040e4:	e12fff1e 	bx	lr
 80040e8:	e28d300c 	add	r3, sp, #12
 80040ec:	e1a06100 	lsl	r6, r0, #2
 80040f0:	e58d3000 	str	r3, [sp]
 80040f4:	e1a00007 	mov	r0, r7
 80040f8:	e1a03001 	mov	r3, r1
 80040fc:	e3a0200d 	mov	r2, #13
 8004100:	ebfffc9e 	bl	8003380 <_Unwind_VRS_Get>
 8004104:	e20660ff 	and	r6, r6, #255	; 0xff
 8004108:	e59d300c 	ldr	r3, [sp, #12]
 800410c:	e2866004 	add	r6, r6, #4
 8004110:	e3140040 	tst	r4, #64	; 0x40
 8004114:	10666003 	rsbne	r6, r6, r3
 8004118:	00836006 	addeq	r6, r3, r6
 800411c:	e58d600c 	str	r6, [sp, #12]
 8004120:	e3a01000 	mov	r1, #0
 8004124:	e28d300c 	add	r3, sp, #12
 8004128:	e58d3000 	str	r3, [sp]
 800412c:	e1a00007 	mov	r0, r7
 8004130:	e1a03001 	mov	r3, r1
 8004134:	e3a0200d 	mov	r2, #13
 8004138:	ebfffcb3 	bl	800340c <_Unwind_VRS_Set>
 800413c:	eaffffc7 	b	8004060 <__gnu_unwind_execute+0x14>
 8004140:	e200300d 	and	r3, r0, #13
 8004144:	e353000d 	cmp	r3, #13
 8004148:	0affffe2 	beq	80040d8 <__gnu_unwind_execute+0x8c>
 800414c:	e3a01000 	mov	r1, #0
 8004150:	e28d300c 	add	r3, sp, #12
 8004154:	e58d3000 	str	r3, [sp]
 8004158:	e200200f 	and	r2, r0, #15
 800415c:	e1a03001 	mov	r3, r1
 8004160:	e1a00007 	mov	r0, r7
 8004164:	ebfffc85 	bl	8003380 <_Unwind_VRS_Get>
 8004168:	eaffffec 	b	8004120 <__gnu_unwind_execute+0xd4>
 800416c:	e1e02000 	mvn	r2, r0
 8004170:	e3a03eff 	mov	r3, #4080	; 0xff0
 8004174:	e3a01000 	mov	r1, #0
 8004178:	e2022007 	and	r2, r2, #7
 800417c:	e1a02253 	asr	r2, r3, r2
 8004180:	e3100008 	tst	r0, #8
 8004184:	e0022003 	and	r2, r2, r3
 8004188:	13822901 	orrne	r2, r2, #16384	; 0x4000
 800418c:	e1a03001 	mov	r3, r1
 8004190:	e1a00007 	mov	r0, r7
 8004194:	ebfffe0e 	bl	80039d4 <_Unwind_VRS_Pop>
 8004198:	e3500000 	cmp	r0, #0
 800419c:	1affffcd 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80041a0:	eaffffae 	b	8004060 <__gnu_unwind_execute+0x14>
 80041a4:	e35000b1 	cmp	r0, #177	; 0xb1
 80041a8:	0a000041 	beq	80042b4 <__gnu_unwind_execute+0x268>
 80041ac:	e35000b2 	cmp	r0, #178	; 0xb2
 80041b0:	0a00004b 	beq	80042e4 <__gnu_unwind_execute+0x298>
 80041b4:	e35000b3 	cmp	r0, #179	; 0xb3
 80041b8:	0a00006b 	beq	800436c <__gnu_unwind_execute+0x320>
 80041bc:	e20030fc 	and	r3, r0, #252	; 0xfc
 80041c0:	e35300b4 	cmp	r3, #180	; 0xb4
 80041c4:	0affffc3 	beq	80040d8 <__gnu_unwind_execute+0x8c>
 80041c8:	e3a01001 	mov	r1, #1
 80041cc:	e2002007 	and	r2, r0, #7
 80041d0:	e0822001 	add	r2, r2, r1
 80041d4:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80041d8:	eaffffeb 	b	800418c <__gnu_unwind_execute+0x140>
 80041dc:	e1a00005 	mov	r0, r5
 80041e0:	ebffff74 	bl	8003fb8 <next_unwind_byte>
 80041e4:	e1a04404 	lsl	r4, r4, #8
 80041e8:	e1804004 	orr	r4, r0, r4
 80041ec:	e3540902 	cmp	r4, #32768	; 0x8000
 80041f0:	0affffb8 	beq	80040d8 <__gnu_unwind_execute+0x8c>
 80041f4:	e3a01000 	mov	r1, #0
 80041f8:	e1a02a04 	lsl	r2, r4, #20
 80041fc:	e1a03001 	mov	r3, r1
 8004200:	e1a02822 	lsr	r2, r2, #16
 8004204:	e1a00007 	mov	r0, r7
 8004208:	ebfffdf1 	bl	80039d4 <_Unwind_VRS_Pop>
 800420c:	e3500000 	cmp	r0, #0
 8004210:	e1a04204 	lsl	r4, r4, #4
 8004214:	1affffaf 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 8004218:	e3140902 	tst	r4, #32768	; 0x8000
 800421c:	13a08001 	movne	r8, #1
 8004220:	eaffff8e 	b	8004060 <__gnu_unwind_execute+0x14>
 8004224:	e35000c6 	cmp	r0, #198	; 0xc6
 8004228:	0a000057 	beq	800438c <__gnu_unwind_execute+0x340>
 800422c:	e35000c7 	cmp	r0, #199	; 0xc7
 8004230:	0a00005d 	beq	80043ac <__gnu_unwind_execute+0x360>
 8004234:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004238:	e35300c0 	cmp	r3, #192	; 0xc0
 800423c:	0a000066 	beq	80043dc <__gnu_unwind_execute+0x390>
 8004240:	e35000c8 	cmp	r0, #200	; 0xc8
 8004244:	0a000069 	beq	80043f0 <__gnu_unwind_execute+0x3a4>
 8004248:	e35000c9 	cmp	r0, #201	; 0xc9
 800424c:	1affffa1 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 8004250:	e1a00005 	mov	r0, r5
 8004254:	ebffff57 	bl	8003fb8 <next_unwind_byte>
 8004258:	e200200f 	and	r2, r0, #15
 800425c:	e2822001 	add	r2, r2, #1
 8004260:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004264:	e1822600 	orr	r2, r2, r0, lsl #12
 8004268:	eaffff94 	b	80040c0 <__gnu_unwind_execute+0x74>
 800426c:	e3580000 	cmp	r8, #0
 8004270:	13a00000 	movne	r0, #0
 8004274:	1affff98 	bne	80040dc <__gnu_unwind_execute+0x90>
 8004278:	e28d400c 	add	r4, sp, #12
 800427c:	e1a01008 	mov	r1, r8
 8004280:	e3a0200e 	mov	r2, #14
 8004284:	e1a03008 	mov	r3, r8
 8004288:	e58d4000 	str	r4, [sp]
 800428c:	e1a00007 	mov	r0, r7
 8004290:	ebfffc3a 	bl	8003380 <_Unwind_VRS_Get>
 8004294:	e58d4000 	str	r4, [sp]
 8004298:	e1a00007 	mov	r0, r7
 800429c:	e1a01008 	mov	r1, r8
 80042a0:	e3a0200f 	mov	r2, #15
 80042a4:	e1a03008 	mov	r3, r8
 80042a8:	ebfffc57 	bl	800340c <_Unwind_VRS_Set>
 80042ac:	e1a00008 	mov	r0, r8
 80042b0:	eaffff89 	b	80040dc <__gnu_unwind_execute+0x90>
 80042b4:	e1a00005 	mov	r0, r5
 80042b8:	ebffff3e 	bl	8003fb8 <next_unwind_byte>
 80042bc:	e2502000 	subs	r2, r0, #0
 80042c0:	0affff84 	beq	80040d8 <__gnu_unwind_execute+0x8c>
 80042c4:	e21210f0 	ands	r1, r2, #240	; 0xf0
 80042c8:	1affff82 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80042cc:	e1a00007 	mov	r0, r7
 80042d0:	e1a03001 	mov	r3, r1
 80042d4:	ebfffdbe 	bl	80039d4 <_Unwind_VRS_Pop>
 80042d8:	e3500000 	cmp	r0, #0
 80042dc:	1affff7d 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80042e0:	eaffff5e 	b	8004060 <__gnu_unwind_execute+0x14>
 80042e4:	e3a01000 	mov	r1, #0
 80042e8:	e28d300c 	add	r3, sp, #12
 80042ec:	e58d3000 	str	r3, [sp]
 80042f0:	e3a0200d 	mov	r2, #13
 80042f4:	e1a03001 	mov	r3, r1
 80042f8:	e1a00007 	mov	r0, r7
 80042fc:	ebfffc1f 	bl	8003380 <_Unwind_VRS_Get>
 8004300:	e1a00005 	mov	r0, r5
 8004304:	ebffff2b 	bl	8003fb8 <next_unwind_byte>
 8004308:	e3100080 	tst	r0, #128	; 0x80
 800430c:	e3a04002 	mov	r4, #2
 8004310:	0a000008 	beq	8004338 <__gnu_unwind_execute+0x2ec>
 8004314:	e59d300c 	ldr	r3, [sp, #12]
 8004318:	e200007f 	and	r0, r0, #127	; 0x7f
 800431c:	e0833410 	add	r3, r3, r0, lsl r4
 8004320:	e1a00005 	mov	r0, r5
 8004324:	e58d300c 	str	r3, [sp, #12]
 8004328:	ebffff22 	bl	8003fb8 <next_unwind_byte>
 800432c:	e3100080 	tst	r0, #128	; 0x80
 8004330:	e2844007 	add	r4, r4, #7
 8004334:	1afffff6 	bne	8004314 <__gnu_unwind_execute+0x2c8>
 8004338:	e3a01000 	mov	r1, #0
 800433c:	e59d300c 	ldr	r3, [sp, #12]
 8004340:	e28d200c 	add	r2, sp, #12
 8004344:	e200007f 	and	r0, r0, #127	; 0x7f
 8004348:	e2833f81 	add	r3, r3, #516	; 0x204
 800434c:	e0834410 	add	r4, r3, r0, lsl r4
 8004350:	e58d2000 	str	r2, [sp]
 8004354:	e1a03001 	mov	r3, r1
 8004358:	e1a00007 	mov	r0, r7
 800435c:	e3a0200d 	mov	r2, #13
 8004360:	e58d400c 	str	r4, [sp, #12]
 8004364:	ebfffc28 	bl	800340c <_Unwind_VRS_Set>
 8004368:	eaffff3c 	b	8004060 <__gnu_unwind_execute+0x14>
 800436c:	e1a00005 	mov	r0, r5
 8004370:	ebffff10 	bl	8003fb8 <next_unwind_byte>
 8004374:	e3a01001 	mov	r1, #1
 8004378:	e200200f 	and	r2, r0, #15
 800437c:	e0822001 	add	r2, r2, r1
 8004380:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004384:	e1822600 	orr	r2, r2, r0, lsl #12
 8004388:	eaffff7f 	b	800418c <__gnu_unwind_execute+0x140>
 800438c:	e1a00005 	mov	r0, r5
 8004390:	ebffff08 	bl	8003fb8 <next_unwind_byte>
 8004394:	e200200f 	and	r2, r0, #15
 8004398:	e2822001 	add	r2, r2, #1
 800439c:	e20000f0 	and	r0, r0, #240	; 0xf0
 80043a0:	e3a01003 	mov	r1, #3
 80043a4:	e1822600 	orr	r2, r2, r0, lsl #12
 80043a8:	eaffff77 	b	800418c <__gnu_unwind_execute+0x140>
 80043ac:	e1a00005 	mov	r0, r5
 80043b0:	ebffff00 	bl	8003fb8 <next_unwind_byte>
 80043b4:	e2502000 	subs	r2, r0, #0
 80043b8:	0affff46 	beq	80040d8 <__gnu_unwind_execute+0x8c>
 80043bc:	e21230f0 	ands	r3, r2, #240	; 0xf0
 80043c0:	1affff44 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80043c4:	e1a00007 	mov	r0, r7
 80043c8:	e3a01004 	mov	r1, #4
 80043cc:	ebfffd80 	bl	80039d4 <_Unwind_VRS_Pop>
 80043d0:	e3500000 	cmp	r0, #0
 80043d4:	1affff3f 	bne	80040d8 <__gnu_unwind_execute+0x8c>
 80043d8:	eaffff20 	b	8004060 <__gnu_unwind_execute+0x14>
 80043dc:	e200200f 	and	r2, r0, #15
 80043e0:	e2822001 	add	r2, r2, #1
 80043e4:	e3a01003 	mov	r1, #3
 80043e8:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 80043ec:	eaffff66 	b	800418c <__gnu_unwind_execute+0x140>
 80043f0:	e1a00005 	mov	r0, r5
 80043f4:	ebfffeef 	bl	8003fb8 <next_unwind_byte>
 80043f8:	e20020f0 	and	r2, r0, #240	; 0xf0
 80043fc:	e200300f 	and	r3, r0, #15
 8004400:	e2822010 	add	r2, r2, #16
 8004404:	e2833001 	add	r3, r3, #1
 8004408:	e1832602 	orr	r2, r3, r2, lsl #12
 800440c:	eaffff2b 	b	80040c0 <__gnu_unwind_execute+0x74>

08004410 <__gnu_unwind_frame>:
 8004410:	e3a0c003 	mov	ip, #3
 8004414:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004418:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800441c:	e24dd014 	sub	sp, sp, #20
 8004420:	e5932004 	ldr	r2, [r3, #4]
 8004424:	e5cdc00c 	strb	ip, [sp, #12]
 8004428:	e5d3c007 	ldrb	ip, [r3, #7]
 800442c:	e1a02402 	lsl	r2, r2, #8
 8004430:	e2833008 	add	r3, r3, #8
 8004434:	e1a00001 	mov	r0, r1
 8004438:	e28d1004 	add	r1, sp, #4
 800443c:	e58d2004 	str	r2, [sp, #4]
 8004440:	e5cdc00d 	strb	ip, [sp, #13]
 8004444:	e58d3008 	str	r3, [sp, #8]
 8004448:	ebfffeff 	bl	800404c <__gnu_unwind_execute>
 800444c:	e28dd014 	add	sp, sp, #20
 8004450:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004454:	e12fff1e 	bx	lr

08004458 <_Unwind_GetRegionStart>:
 8004458:	e92d4008 	push	{r3, lr}
 800445c:	ebfffef9 	bl	8004048 <unwind_UCB_from_context>
 8004460:	e8bd4008 	pop	{r3, lr}
 8004464:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8004468:	e12fff1e 	bx	lr

0800446c <_Unwind_GetLanguageSpecificData>:
 800446c:	e92d4008 	push	{r3, lr}
 8004470:	ebfffef4 	bl	8004048 <unwind_UCB_from_context>
 8004474:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004478:	e5d30007 	ldrb	r0, [r3, #7]
 800447c:	e0830100 	add	r0, r3, r0, lsl #2
 8004480:	e2800008 	add	r0, r0, #8
 8004484:	e8bd4008 	pop	{r3, lr}
 8004488:	e12fff1e 	bx	lr

0800448c <_Unwind_GetDataRelBase>:
 800448c:	e92d4008 	push	{r3, lr}
 8004490:	eb000001 	bl	800449c <abort>

08004494 <_Unwind_GetTextRelBase>:
 8004494:	e92d4008 	push	{r3, lr}
 8004498:	ebffffff 	bl	800449c <abort>

0800449c <abort>:
 800449c:	e92d4008 	push	{r3, lr}
 80044a0:	e3a00006 	mov	r0, #6
 80044a4:	eb000063 	bl	8004638 <raise>
 80044a8:	e3a00001 	mov	r0, #1
 80044ac:	eb000086 	bl	80046cc <_exit>

080044b0 <memcpy>:
 80044b0:	e352000f 	cmp	r2, #15
 80044b4:	e92d4070 	push	{r4, r5, r6, lr}
 80044b8:	9a000029 	bls	8004564 <memcpy+0xb4>
 80044bc:	e1803001 	orr	r3, r0, r1
 80044c0:	e3130003 	tst	r3, #3
 80044c4:	1a000031 	bne	8004590 <memcpy+0xe0>
 80044c8:	e1a0e002 	mov	lr, r2
 80044cc:	e280c010 	add	ip, r0, #16
 80044d0:	e2813010 	add	r3, r1, #16
 80044d4:	e5134010 	ldr	r4, [r3, #-16]
 80044d8:	e50c4010 	str	r4, [ip, #-16]
 80044dc:	e513400c 	ldr	r4, [r3, #-12]
 80044e0:	e50c400c 	str	r4, [ip, #-12]
 80044e4:	e5134008 	ldr	r4, [r3, #-8]
 80044e8:	e50c4008 	str	r4, [ip, #-8]
 80044ec:	e24ee010 	sub	lr, lr, #16
 80044f0:	e5134004 	ldr	r4, [r3, #-4]
 80044f4:	e35e000f 	cmp	lr, #15
 80044f8:	e50c4004 	str	r4, [ip, #-4]
 80044fc:	e2833010 	add	r3, r3, #16
 8004500:	e28cc010 	add	ip, ip, #16
 8004504:	8afffff2 	bhi	80044d4 <memcpy+0x24>
 8004508:	e2423010 	sub	r3, r2, #16
 800450c:	e3c3300f 	bic	r3, r3, #15
 8004510:	e202600f 	and	r6, r2, #15
 8004514:	e2833010 	add	r3, r3, #16
 8004518:	e3560003 	cmp	r6, #3
 800451c:	e0811003 	add	r1, r1, r3
 8004520:	e0803003 	add	r3, r0, r3
 8004524:	9a00001b 	bls	8004598 <memcpy+0xe8>
 8004528:	e1a04001 	mov	r4, r1
 800452c:	e1a0c006 	mov	ip, r6
 8004530:	e243e004 	sub	lr, r3, #4
 8004534:	e24cc004 	sub	ip, ip, #4
 8004538:	e4945004 	ldr	r5, [r4], #4
 800453c:	e35c0003 	cmp	ip, #3
 8004540:	e5ae5004 	str	r5, [lr, #4]!
 8004544:	8afffffa 	bhi	8004534 <memcpy+0x84>
 8004548:	e246c004 	sub	ip, r6, #4
 800454c:	e3ccc003 	bic	ip, ip, #3
 8004550:	e28cc004 	add	ip, ip, #4
 8004554:	e083300c 	add	r3, r3, ip
 8004558:	e081100c 	add	r1, r1, ip
 800455c:	e2022003 	and	r2, r2, #3
 8004560:	ea000000 	b	8004568 <memcpy+0xb8>
 8004564:	e1a03000 	mov	r3, r0
 8004568:	e3520000 	cmp	r2, #0
 800456c:	0a000005 	beq	8004588 <memcpy+0xd8>
 8004570:	e2433001 	sub	r3, r3, #1
 8004574:	e0812002 	add	r2, r1, r2
 8004578:	e4d1c001 	ldrb	ip, [r1], #1
 800457c:	e1510002 	cmp	r1, r2
 8004580:	e5e3c001 	strb	ip, [r3, #1]!
 8004584:	1afffffb 	bne	8004578 <memcpy+0xc8>
 8004588:	e8bd4070 	pop	{r4, r5, r6, lr}
 800458c:	e12fff1e 	bx	lr
 8004590:	e1a03000 	mov	r3, r0
 8004594:	eafffff5 	b	8004570 <memcpy+0xc0>
 8004598:	e1a02006 	mov	r2, r6
 800459c:	eafffff1 	b	8004568 <memcpy+0xb8>

080045a0 <_raise_r>:
 80045a0:	e351001f 	cmp	r1, #31
 80045a4:	e92d4038 	push	{r3, r4, r5, lr}
 80045a8:	e1a05000 	mov	r5, r0
 80045ac:	83a03016 	movhi	r3, #22
 80045b0:	83e00000 	mvnhi	r0, #0
 80045b4:	85853000 	strhi	r3, [r5]
 80045b8:	8a000013 	bhi	800460c <_raise_r+0x6c>
 80045bc:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 80045c0:	e3520000 	cmp	r2, #0
 80045c4:	e1a04001 	mov	r4, r1
 80045c8:	0a000013 	beq	800461c <_raise_r+0x7c>
 80045cc:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 80045d0:	e3530000 	cmp	r3, #0
 80045d4:	0a000010 	beq	800461c <_raise_r+0x7c>
 80045d8:	e3530001 	cmp	r3, #1
 80045dc:	0a00000c 	beq	8004614 <_raise_r+0x74>
 80045e0:	e3730001 	cmn	r3, #1
 80045e4:	03a03016 	moveq	r3, #22
 80045e8:	03a00001 	moveq	r0, #1
 80045ec:	05853000 	streq	r3, [r5]
 80045f0:	0a000005 	beq	800460c <_raise_r+0x6c>
 80045f4:	e3a05000 	mov	r5, #0
 80045f8:	e1a00001 	mov	r0, r1
 80045fc:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004600:	e1a0e00f 	mov	lr, pc
 8004604:	e12fff13 	bx	r3
 8004608:	e1a00005 	mov	r0, r5
 800460c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004610:	e12fff1e 	bx	lr
 8004614:	e3a00000 	mov	r0, #0
 8004618:	eafffffb 	b	800460c <_raise_r+0x6c>
 800461c:	e1a00005 	mov	r0, r5
 8004620:	eb000019 	bl	800468c <_getpid_r>
 8004624:	e1a02004 	mov	r2, r4
 8004628:	e1a01000 	mov	r1, r0
 800462c:	e1a00005 	mov	r0, r5
 8004630:	eb000005 	bl	800464c <_kill_r>
 8004634:	eafffff4 	b	800460c <_raise_r+0x6c>

08004638 <raise>:
 8004638:	e59f3008 	ldr	r3, [pc, #8]	; 8004648 <raise+0x10>
 800463c:	e1a01000 	mov	r1, r0
 8004640:	e5930000 	ldr	r0, [r3]
 8004644:	eaffffd5 	b	80045a0 <_raise_r>
 8004648:	20000498 	.word	0x20000498

0800464c <_kill_r>:
 800464c:	e92d4038 	push	{r3, r4, r5, lr}
 8004650:	e3a03000 	mov	r3, #0
 8004654:	e59f402c 	ldr	r4, [pc, #44]	; 8004688 <_kill_r+0x3c>
 8004658:	e1a05000 	mov	r5, r0
 800465c:	e1a00001 	mov	r0, r1
 8004660:	e1a01002 	mov	r1, r2
 8004664:	e5843000 	str	r3, [r4]
 8004668:	eb000011 	bl	80046b4 <_kill>
 800466c:	e3700001 	cmn	r0, #1
 8004670:	1a000002 	bne	8004680 <_kill_r+0x34>
 8004674:	e5943000 	ldr	r3, [r4]
 8004678:	e3530000 	cmp	r3, #0
 800467c:	15853000 	strne	r3, [r5]
 8004680:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004684:	e12fff1e 	bx	lr
 8004688:	2000137c 	.word	0x2000137c

0800468c <_getpid_r>:
 800468c:	e92d4008 	push	{r3, lr}
 8004690:	eb000001 	bl	800469c <_getpid>
 8004694:	e8bd4008 	pop	{r3, lr}
 8004698:	e12fff1e 	bx	lr

0800469c <_getpid>:
 800469c:	e3a02058 	mov	r2, #88	; 0x58
 80046a0:	e59f3008 	ldr	r3, [pc, #8]	; 80046b0 <_getpid+0x14>
 80046a4:	e3e00000 	mvn	r0, #0
 80046a8:	e5832000 	str	r2, [r3]
 80046ac:	e12fff1e 	bx	lr
 80046b0:	2000137c 	.word	0x2000137c

080046b4 <_kill>:
 80046b4:	e3a02058 	mov	r2, #88	; 0x58
 80046b8:	e59f3008 	ldr	r3, [pc, #8]	; 80046c8 <_kill+0x14>
 80046bc:	e3e00000 	mvn	r0, #0
 80046c0:	e5832000 	str	r2, [r3]
 80046c4:	e12fff1e 	bx	lr
 80046c8:	2000137c 	.word	0x2000137c

080046cc <_exit>:
 80046cc:	eafffffe 	b	80046cc <_exit>

080046d0 <_init>:
 80046d0:	e1a0c00d 	mov	ip, sp
 80046d4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80046d8:	e24cb004 	sub	fp, ip, #4
 80046dc:	e24bd028 	sub	sp, fp, #40	; 0x28
 80046e0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80046e4:	e12fff1e 	bx	lr

080046e8 <_fini>:
 80046e8:	e1a0c00d 	mov	ip, sp
 80046ec:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80046f0:	e24cb004 	sub	fp, ip, #4
 80046f4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80046f8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80046fc:	e12fff1e 	bx	lr
 8004700:	453e3e3e 	.word	0x453e3e3e
 8004704:	72652020 	.word	0x72652020
 8004708:	20726f72 	.word	0x20726f72
 800470c:	65646f63 	.word	0x65646f63
 8004710:	3a752520 	.word	0x3a752520
 8004714:	000a7525 	.word	0x000a7525
 8004718:	433e3e3e 	.word	0x433e3e3e
 800471c:	69250020 	.word	0x69250020
 8004720:	20692520 	.word	0x20692520
 8004724:	25206925 	.word	0x25206925
 8004728:	25002069 	.word	0x25002069
 800472c:	69252069 	.word	0x69252069
 8004730:	20752520 	.word	0x20752520
 8004734:	00206925 	.word	0x00206925
 8004738:	3e000a0a 	.word	0x3e000a0a
 800473c:	204c3e3e 	.word	0x204c3e3e
 8004740:	20692500 	.word	0x20692500
 8004744:	25206925 	.word	0x25206925
 8004748:	75252075 	.word	0x75252075
 800474c:	3e3e0020 	.word	0x3e3e0020
 8004750:	00204f3e 	.word	0x00204f3e
 8004754:	20533e3e 	.word	0x20533e3e
 8004758:	65770a00 	.word	0x65770a00
 800475c:	6d6f636c 	.word	0x6d6f636c
 8004760:	6f742065 	.word	0x6f742065
 8004764:	7a755320 	.word	0x7a755320
 8004768:	4f616875 	.word	0x4f616875
 800476c:	5f5e2053 	.word	0x5f5e2053
 8004770:	2e32205e 	.word	0x2e32205e
 8004774:	0a362e30 	.word	0x0a362e30
 8004778:	4c495542 	.word	0x4c495542
 800477c:	65532044 	.word	0x65532044
 8004780:	31322070 	.word	0x31322070
 8004784:	31303220 	.word	0x31303220
 8004788:	38302036 	.word	0x38302036
 800478c:	3a36343a 	.word	0x3a36343a
 8004790:	000a3330 	.word	0x000a3330
 8004794:	6f636e65 	.word	0x6f636e65
 8004798:	73726564 	.word	0x73726564
 800479c:	20752520 	.word	0x20752520
 80047a0:	25207525 	.word	0x25207525
 80047a4:	79202c75 	.word	0x79202c75
 80047a8:	25207761 	.word	0x25207761
 80047ac:	0a69      	.short	0x0a69
 80047ae:	00          	.byte	0x00
 80047af:	73          	.byte	0x73
 80047b0:	6f696474 	.word	0x6f696474
 80047b4:	696e6920 	.word	0x696e6920
 80047b8:	6f642074 	.word	0x6f642074
 80047bc:	000a656e 	.word	0x000a656e
 80047c0:	00000043 	.word	0x00000043

080047c4 <__EH_FRAME_BEGIN__>:
 80047c4:	00000000                                ....
