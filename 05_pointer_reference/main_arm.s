
main_arm:     file format elf32-littlearm


Disassembly of section .init:

000105b8 <_init>:
   105b8:	e92d4008 	push	{r3, lr}
   105bc:	eb000032 	bl	1068c <call_weak_fn>
   105c0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000105c4 <.plt>:
   105c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   105c8:	e59fe004 	ldr	lr, [pc, #4]	; 105d4 <.plt+0x10>
   105cc:	e08fe00e 	add	lr, pc, lr
   105d0:	e5bef008 	ldr	pc, [lr, #8]!
   105d4:	00010a2c 	.word	0x00010a2c

000105d8 <__aeabi_atexit@plt>:
   105d8:	e28fc600 	add	ip, pc, #0, 12
   105dc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   105e0:	e5bcfa2c 	ldr	pc, [ip, #2604]!	; 0xa2c

000105e4 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   105e4:	e28fc600 	add	ip, pc, #0, 12
   105e8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   105ec:	e5bcfa24 	ldr	pc, [ip, #2596]!	; 0xa24

000105f0 <abort@plt>:
   105f0:	e28fc600 	add	ip, pc, #0, 12
   105f4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   105f8:	e5bcfa1c 	ldr	pc, [ip, #2588]!	; 0xa1c

000105fc <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   105fc:	e28fc600 	add	ip, pc, #0, 12
   10600:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10604:	e5bcfa14 	ldr	pc, [ip, #2580]!	; 0xa14

00010608 <_ZNSolsEPFRSoS_E@plt>:
   10608:	e28fc600 	add	ip, pc, #0, 12
   1060c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10610:	e5bcfa0c 	ldr	pc, [ip, #2572]!	; 0xa0c

00010614 <_ZNSt8ios_base4InitC1Ev@plt>:
   10614:	e28fc600 	add	ip, pc, #0, 12
   10618:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1061c:	e5bcfa04 	ldr	pc, [ip, #2564]!	; 0xa04

00010620 <_ZNSolsEi@plt>:
   10620:	e28fc600 	add	ip, pc, #0, 12
   10624:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10628:	e5bcf9fc 	ldr	pc, [ip, #2556]!	; 0x9fc

0001062c <__libc_start_main@plt>:
   1062c:	e28fc600 	add	ip, pc, #0, 12
   10630:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10634:	e5bcf9f4 	ldr	pc, [ip, #2548]!	; 0x9f4

00010638 <__gmon_start__@plt>:
   10638:	e28fc600 	add	ip, pc, #0, 12
   1063c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10640:	e5bcf9ec 	ldr	pc, [ip, #2540]!	; 0x9ec

00010644 <_ZNSt8ios_base4InitD1Ev@plt>:
   10644:	e28fc600 	add	ip, pc, #0, 12
   10648:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1064c:	e5bcf9e4 	ldr	pc, [ip, #2532]!	; 0x9e4

Disassembly of section .text:

00010650 <_start>:
   10650:	e3a0b000 	mov	fp, #0
   10654:	e3a0e000 	mov	lr, #0
   10658:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1065c:	e1a0200d 	mov	r2, sp
   10660:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10664:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10668:	e59fc010 	ldr	ip, [pc, #16]	; 10680 <_start+0x30>
   1066c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10670:	e59f000c 	ldr	r0, [pc, #12]	; 10684 <_start+0x34>
   10674:	e59f300c 	ldr	r3, [pc, #12]	; 10688 <_start+0x38>
   10678:	ebffffeb 	bl	1062c <__libc_start_main@plt>
   1067c:	ebffffdb 	bl	105f0 <abort@plt>
   10680:	00010948 	.word	0x00010948
   10684:	000107ac 	.word	0x000107ac
   10688:	000108e4 	.word	0x000108e4

0001068c <call_weak_fn>:
   1068c:	e59f3014 	ldr	r3, [pc, #20]	; 106a8 <call_weak_fn+0x1c>
   10690:	e59f2014 	ldr	r2, [pc, #20]	; 106ac <call_weak_fn+0x20>
   10694:	e08f3003 	add	r3, pc, r3
   10698:	e7932002 	ldr	r2, [r3, r2]
   1069c:	e3520000 	cmp	r2, #0
   106a0:	012fff1e 	bxeq	lr
   106a4:	eaffffe3 	b	10638 <__gmon_start__@plt>
   106a8:	00010964 	.word	0x00010964
   106ac:	00000034 	.word	0x00000034

000106b0 <deregister_tm_clones>:
   106b0:	e59f0018 	ldr	r0, [pc, #24]	; 106d0 <deregister_tm_clones+0x20>
   106b4:	e59f3018 	ldr	r3, [pc, #24]	; 106d4 <deregister_tm_clones+0x24>
   106b8:	e1530000 	cmp	r3, r0
   106bc:	012fff1e 	bxeq	lr
   106c0:	e59f3010 	ldr	r3, [pc, #16]	; 106d8 <deregister_tm_clones+0x28>
   106c4:	e3530000 	cmp	r3, #0
   106c8:	012fff1e 	bxeq	lr
   106cc:	e12fff13 	bx	r3
   106d0:	00021040 	.word	0x00021040
   106d4:	00021040 	.word	0x00021040
   106d8:	00000000 	.word	0x00000000

000106dc <register_tm_clones>:
   106dc:	e59f0028 	ldr	r0, [pc, #40]	; 1070c <register_tm_clones+0x30>
   106e0:	e3a03002 	mov	r3, #2
   106e4:	e59f1024 	ldr	r1, [pc, #36]	; 10710 <register_tm_clones+0x34>
   106e8:	e0411000 	sub	r1, r1, r0
   106ec:	e1a01141 	asr	r1, r1, #2
   106f0:	e711f311 	sdiv	r1, r1, r3
   106f4:	e3510000 	cmp	r1, #0
   106f8:	012fff1e 	bxeq	lr
   106fc:	e59f3010 	ldr	r3, [pc, #16]	; 10714 <register_tm_clones+0x38>
   10700:	e3530000 	cmp	r3, #0
   10704:	012fff1e 	bxeq	lr
   10708:	e12fff13 	bx	r3
   1070c:	00021040 	.word	0x00021040
   10710:	00021040 	.word	0x00021040
   10714:	00000000 	.word	0x00000000

00010718 <__do_global_dtors_aux>:
   10718:	e92d4010 	push	{r4, lr}
   1071c:	e59f4018 	ldr	r4, [pc, #24]	; 1073c <__do_global_dtors_aux+0x24>
   10720:	e5d43000 	ldrb	r3, [r4]
   10724:	e3530000 	cmp	r3, #0
   10728:	18bd8010 	popne	{r4, pc}
   1072c:	ebffffdf 	bl	106b0 <deregister_tm_clones>
   10730:	e3a03001 	mov	r3, #1
   10734:	e5c43000 	strb	r3, [r4]
   10738:	e8bd8010 	pop	{r4, pc}
   1073c:	000210cc 	.word	0x000210cc

00010740 <frame_dummy>:
   10740:	eaffffe5 	b	106dc <register_tm_clones>

00010744 <_Z7add_onePi>:
   10744:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10748:	e28db000 	add	fp, sp, #0
   1074c:	e24dd00c 	sub	sp, sp, #12
   10750:	e50b0008 	str	r0, [fp, #-8]
   10754:	e51b3008 	ldr	r3, [fp, #-8]
   10758:	e5933000 	ldr	r3, [r3]
   1075c:	e2832001 	add	r2, r3, #1
   10760:	e51b3008 	ldr	r3, [fp, #-8]
   10764:	e5832000 	str	r2, [r3]
   10768:	e320f000 	nop	{0}
   1076c:	e28bd000 	add	sp, fp, #0
   10770:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10774:	e12fff1e 	bx	lr

00010778 <_Z7add_oneRi>:
   10778:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1077c:	e28db000 	add	fp, sp, #0
   10780:	e24dd00c 	sub	sp, sp, #12
   10784:	e50b0008 	str	r0, [fp, #-8]
   10788:	e51b3008 	ldr	r3, [fp, #-8]
   1078c:	e5933000 	ldr	r3, [r3]
   10790:	e2832001 	add	r2, r3, #1
   10794:	e51b3008 	ldr	r3, [fp, #-8]
   10798:	e5832000 	str	r2, [r3]
   1079c:	e320f000 	nop	{0}
   107a0:	e28bd000 	add	sp, fp, #0
   107a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   107a8:	e12fff1e 	bx	lr

000107ac <main>:
   107ac:	e92d4800 	push	{fp, lr}
   107b0:	e28db004 	add	fp, sp, #4
   107b4:	e24dd010 	sub	sp, sp, #16
   107b8:	e50b0010 	str	r0, [fp, #-16]
   107bc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   107c0:	e3a0300a 	mov	r3, #10
   107c4:	e50b3008 	str	r3, [fp, #-8]
   107c8:	e24b3008 	sub	r3, fp, #8
   107cc:	e1a00003 	mov	r0, r3
   107d0:	ebffffdb 	bl	10744 <_Z7add_onePi>
   107d4:	e300195c 	movw	r1, #2396	; 0x95c
   107d8:	e3401001 	movt	r1, #1
   107dc:	e3010040 	movw	r0, #4160	; 0x1040
   107e0:	e3400002 	movt	r0, #2
   107e4:	ebffff84 	bl	105fc <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   107e8:	e1a02000 	mov	r2, r0
   107ec:	e51b3008 	ldr	r3, [fp, #-8]
   107f0:	e1a01003 	mov	r1, r3
   107f4:	e1a00002 	mov	r0, r2
   107f8:	ebffff88 	bl	10620 <_ZNSolsEi@plt>
   107fc:	e1a03000 	mov	r3, r0
   10800:	e30015e4 	movw	r1, #1508	; 0x5e4
   10804:	e3401001 	movt	r1, #1
   10808:	e1a00003 	mov	r0, r3
   1080c:	ebffff7d 	bl	10608 <_ZNSolsEPFRSoS_E@plt>
   10810:	e24b3008 	sub	r3, fp, #8
   10814:	e1a00003 	mov	r0, r3
   10818:	ebffffd6 	bl	10778 <_Z7add_oneRi>
   1081c:	e300195c 	movw	r1, #2396	; 0x95c
   10820:	e3401001 	movt	r1, #1
   10824:	e3010040 	movw	r0, #4160	; 0x1040
   10828:	e3400002 	movt	r0, #2
   1082c:	ebffff72 	bl	105fc <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   10830:	e1a02000 	mov	r2, r0
   10834:	e51b3008 	ldr	r3, [fp, #-8]
   10838:	e1a01003 	mov	r1, r3
   1083c:	e1a00002 	mov	r0, r2
   10840:	ebffff76 	bl	10620 <_ZNSolsEi@plt>
   10844:	e1a03000 	mov	r3, r0
   10848:	e30015e4 	movw	r1, #1508	; 0x5e4
   1084c:	e3401001 	movt	r1, #1
   10850:	e1a00003 	mov	r0, r3
   10854:	ebffff6b 	bl	10608 <_ZNSolsEPFRSoS_E@plt>
   10858:	e3a03000 	mov	r3, #0
   1085c:	e1a00003 	mov	r0, r3
   10860:	e24bd004 	sub	sp, fp, #4
   10864:	e8bd8800 	pop	{fp, pc}

00010868 <_Z41__static_initialization_and_destruction_0ii>:
   10868:	e92d4800 	push	{fp, lr}
   1086c:	e28db004 	add	fp, sp, #4
   10870:	e24dd008 	sub	sp, sp, #8
   10874:	e50b0008 	str	r0, [fp, #-8]
   10878:	e50b100c 	str	r1, [fp, #-12]
   1087c:	e51b3008 	ldr	r3, [fp, #-8]
   10880:	e3530001 	cmp	r3, #1
   10884:	1a00000d 	bne	108c0 <_Z41__static_initialization_and_destruction_0ii+0x58>
   10888:	e51b300c 	ldr	r3, [fp, #-12]
   1088c:	e30f2fff 	movw	r2, #65535	; 0xffff
   10890:	e1530002 	cmp	r3, r2
   10894:	1a000009 	bne	108c0 <_Z41__static_initialization_and_destruction_0ii+0x58>
   10898:	e30100d0 	movw	r0, #4304	; 0x10d0
   1089c:	e3400002 	movt	r0, #2
   108a0:	ebffff5b 	bl	10614 <_ZNSt8ios_base4InitC1Ev@plt>
   108a4:	e301203c 	movw	r2, #4156	; 0x103c
   108a8:	e3402002 	movt	r2, #2
   108ac:	e3001644 	movw	r1, #1604	; 0x644
   108b0:	e3401001 	movt	r1, #1
   108b4:	e30100d0 	movw	r0, #4304	; 0x10d0
   108b8:	e3400002 	movt	r0, #2
   108bc:	ebffff45 	bl	105d8 <__aeabi_atexit@plt>
   108c0:	e320f000 	nop	{0}
   108c4:	e24bd004 	sub	sp, fp, #4
   108c8:	e8bd8800 	pop	{fp, pc}

000108cc <_GLOBAL__sub_I__Z7add_onePi>:
   108cc:	e92d4800 	push	{fp, lr}
   108d0:	e28db004 	add	fp, sp, #4
   108d4:	e30f1fff 	movw	r1, #65535	; 0xffff
   108d8:	e3a00001 	mov	r0, #1
   108dc:	ebffffe1 	bl	10868 <_Z41__static_initialization_and_destruction_0ii>
   108e0:	e8bd8800 	pop	{fp, pc}

000108e4 <__libc_csu_init>:
   108e4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   108e8:	e1a07000 	mov	r7, r0
   108ec:	e59f604c 	ldr	r6, [pc, #76]	; 10940 <__libc_csu_init+0x5c>
   108f0:	e1a08001 	mov	r8, r1
   108f4:	e59f5048 	ldr	r5, [pc, #72]	; 10944 <__libc_csu_init+0x60>
   108f8:	e1a09002 	mov	r9, r2
   108fc:	e08f6006 	add	r6, pc, r6
   10900:	ebffff2c 	bl	105b8 <_init>
   10904:	e08f5005 	add	r5, pc, r5
   10908:	e0466005 	sub	r6, r6, r5
   1090c:	e1b06146 	asrs	r6, r6, #2
   10910:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10914:	e2455004 	sub	r5, r5, #4
   10918:	e3a04000 	mov	r4, #0
   1091c:	e5b53004 	ldr	r3, [r5, #4]!
   10920:	e2844001 	add	r4, r4, #1
   10924:	e1a02009 	mov	r2, r9
   10928:	e1a01008 	mov	r1, r8
   1092c:	e1a00007 	mov	r0, r7
   10930:	e12fff33 	blx	r3
   10934:	e1560004 	cmp	r6, r4
   10938:	1afffff7 	bne	1091c <__libc_csu_init+0x38>
   1093c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10940:	000105f0 	.word	0x000105f0
   10944:	000105e0 	.word	0x000105e0

00010948 <__libc_csu_fini>:
   10948:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001094c <_fini>:
   1094c:	e92d4008 	push	{r3, lr}
   10950:	e8bd8008 	pop	{r3, pc}
