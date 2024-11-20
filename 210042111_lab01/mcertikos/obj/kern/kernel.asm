
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <video_init>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 14             	sub    $0x14,%esp
  100007:	e8 b4 03 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 e8 6f 00 00    	add    $0x6fe8,%ebx
  100012:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  100019:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10001c:	0f b7 00             	movzwl (%eax),%eax
  10001f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100023:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100026:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  10002b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10002e:	0f b7 00             	movzwl (%eax),%eax
  100031:	66 3d 5a a5          	cmp    $0xa55a,%ax
  100035:	74 2c                	je     100063 <video_init+0x63>
  100037:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  10003e:	c7 83 0c 10 00 00 b4 	movl   $0x3b4,0x100c(%ebx)
  100045:	03 00 00 
  100048:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  10004e:	83 ec 08             	sub    $0x8,%esp
  100051:	50                   	push   %eax
  100052:	8d 83 0c d0 ff ff    	lea    -0x2ff4(%ebx),%eax
  100058:	50                   	push   %eax
  100059:	e8 08 17 00 00       	call   101766 <dprintf>
  10005e:	83 c4 10             	add    $0x10,%esp
  100061:	eb 2d                	jmp    100090 <video_init+0x90>
  100063:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100066:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10006a:	66 89 10             	mov    %dx,(%eax)
  10006d:	c7 83 0c 10 00 00 d4 	movl   $0x3d4,0x100c(%ebx)
  100074:	03 00 00 
  100077:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  10007d:	83 ec 08             	sub    $0x8,%esp
  100080:	50                   	push   %eax
  100081:	8d 83 0c d0 ff ff    	lea    -0x2ff4(%ebx),%eax
  100087:	50                   	push   %eax
  100088:	e8 d9 16 00 00       	call   101766 <dprintf>
  10008d:	83 c4 10             	add    $0x10,%esp
  100090:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  100096:	83 ec 08             	sub    $0x8,%esp
  100099:	6a 0e                	push   $0xe
  10009b:	50                   	push   %eax
  10009c:	e8 72 24 00 00       	call   102513 <outb>
  1000a1:	83 c4 10             	add    $0x10,%esp
  1000a4:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  1000aa:	83 c0 01             	add    $0x1,%eax
  1000ad:	83 ec 0c             	sub    $0xc,%esp
  1000b0:	50                   	push   %eax
  1000b1:	e8 0e 24 00 00       	call   1024c4 <inb>
  1000b6:	83 c4 10             	add    $0x10,%esp
  1000b9:	0f b6 c0             	movzbl %al,%eax
  1000bc:	c1 e0 08             	shl    $0x8,%eax
  1000bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000c2:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  1000c8:	83 ec 08             	sub    $0x8,%esp
  1000cb:	6a 0f                	push   $0xf
  1000cd:	50                   	push   %eax
  1000ce:	e8 40 24 00 00       	call   102513 <outb>
  1000d3:	83 c4 10             	add    $0x10,%esp
  1000d6:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  1000dc:	83 c0 01             	add    $0x1,%eax
  1000df:	83 ec 0c             	sub    $0xc,%esp
  1000e2:	50                   	push   %eax
  1000e3:	e8 dc 23 00 00       	call   1024c4 <inb>
  1000e8:	83 c4 10             	add    $0x10,%esp
  1000eb:	0f b6 c0             	movzbl %al,%eax
  1000ee:	09 45 ec             	or     %eax,-0x14(%ebp)
  1000f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000f4:	89 83 10 10 00 00    	mov    %eax,0x1010(%ebx)
  1000fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000fd:	66 89 83 14 10 00 00 	mov    %ax,0x1014(%ebx)
  100104:	c7 83 18 10 00 00 00 	movl   $0x0,0x1018(%ebx)
  10010b:	00 00 00 
  10010e:	90                   	nop
  10010f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100112:	c9                   	leave
  100113:	c3                   	ret

00100114 <video_putc>:
  100114:	55                   	push   %ebp
  100115:	89 e5                	mov    %esp,%ebp
  100117:	56                   	push   %esi
  100118:	53                   	push   %ebx
  100119:	83 ec 10             	sub    $0x10,%esp
  10011c:	e8 9f 02 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  100121:	81 c3 d3 6e 00 00    	add    $0x6ed3,%ebx
  100127:	8b 45 08             	mov    0x8(%ebp),%eax
  10012a:	3d ff 00 00 00       	cmp    $0xff,%eax
  10012f:	77 07                	ja     100138 <video_putc+0x24>
  100131:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  100138:	8b 45 08             	mov    0x8(%ebp),%eax
  10013b:	0f b6 c0             	movzbl %al,%eax
  10013e:	83 f8 0d             	cmp    $0xd,%eax
  100141:	0f 84 84 00 00 00    	je     1001cb <video_putc+0xb7>
  100147:	83 f8 0d             	cmp    $0xd,%eax
  10014a:	0f 8f f9 00 00 00    	jg     100249 <video_putc+0x135>
  100150:	83 f8 0a             	cmp    $0xa,%eax
  100153:	74 65                	je     1001ba <video_putc+0xa6>
  100155:	83 f8 0a             	cmp    $0xa,%eax
  100158:	0f 8f eb 00 00 00    	jg     100249 <video_putc+0x135>
  10015e:	83 f8 08             	cmp    $0x8,%eax
  100161:	74 0e                	je     100171 <video_putc+0x5d>
  100163:	83 f8 09             	cmp    $0x9,%eax
  100166:	0f 84 9a 00 00 00    	je     100206 <video_putc+0xf2>
  10016c:	e9 d8 00 00 00       	jmp    100249 <video_putc+0x135>
  100171:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  100178:	66 85 c0             	test   %ax,%ax
  10017b:	0f 84 ee 00 00 00    	je     10026f <video_putc+0x15b>
  100181:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  100188:	83 e8 01             	sub    $0x1,%eax
  10018b:	66 89 83 14 10 00 00 	mov    %ax,0x1014(%ebx)
  100192:	8b 45 08             	mov    0x8(%ebp),%eax
  100195:	b0 00                	mov    $0x0,%al
  100197:	83 c8 20             	or     $0x20,%eax
  10019a:	89 c1                	mov    %eax,%ecx
  10019c:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
  1001a2:	0f b7 93 14 10 00 00 	movzwl 0x1014(%ebx),%edx
  1001a9:	0f b7 d2             	movzwl %dx,%edx
  1001ac:	01 d2                	add    %edx,%edx
  1001ae:	01 d0                	add    %edx,%eax
  1001b0:	89 ca                	mov    %ecx,%edx
  1001b2:	66 89 10             	mov    %dx,(%eax)
  1001b5:	e9 b5 00 00 00       	jmp    10026f <video_putc+0x15b>
  1001ba:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  1001c1:	83 c0 50             	add    $0x50,%eax
  1001c4:	66 89 83 14 10 00 00 	mov    %ax,0x1014(%ebx)
  1001cb:	0f b7 b3 14 10 00 00 	movzwl 0x1014(%ebx),%esi
  1001d2:	0f b7 8b 14 10 00 00 	movzwl 0x1014(%ebx),%ecx
  1001d9:	0f b7 c1             	movzwl %cx,%eax
  1001dc:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  1001e2:	c1 e8 10             	shr    $0x10,%eax
  1001e5:	89 c2                	mov    %eax,%edx
  1001e7:	66 c1 ea 06          	shr    $0x6,%dx
  1001eb:	89 d0                	mov    %edx,%eax
  1001ed:	c1 e0 02             	shl    $0x2,%eax
  1001f0:	01 d0                	add    %edx,%eax
  1001f2:	c1 e0 04             	shl    $0x4,%eax
  1001f5:	29 c1                	sub    %eax,%ecx
  1001f7:	89 ca                	mov    %ecx,%edx
  1001f9:	89 f0                	mov    %esi,%eax
  1001fb:	29 d0                	sub    %edx,%eax
  1001fd:	66 89 83 14 10 00 00 	mov    %ax,0x1014(%ebx)
  100204:	eb 6a                	jmp    100270 <video_putc+0x15c>
  100206:	83 ec 0c             	sub    $0xc,%esp
  100209:	6a 20                	push   $0x20
  10020b:	e8 04 ff ff ff       	call   100114 <video_putc>
  100210:	83 c4 10             	add    $0x10,%esp
  100213:	83 ec 0c             	sub    $0xc,%esp
  100216:	6a 20                	push   $0x20
  100218:	e8 f7 fe ff ff       	call   100114 <video_putc>
  10021d:	83 c4 10             	add    $0x10,%esp
  100220:	83 ec 0c             	sub    $0xc,%esp
  100223:	6a 20                	push   $0x20
  100225:	e8 ea fe ff ff       	call   100114 <video_putc>
  10022a:	83 c4 10             	add    $0x10,%esp
  10022d:	83 ec 0c             	sub    $0xc,%esp
  100230:	6a 20                	push   $0x20
  100232:	e8 dd fe ff ff       	call   100114 <video_putc>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	83 ec 0c             	sub    $0xc,%esp
  10023d:	6a 20                	push   $0x20
  10023f:	e8 d0 fe ff ff       	call   100114 <video_putc>
  100244:	83 c4 10             	add    $0x10,%esp
  100247:	eb 27                	jmp    100270 <video_putc+0x15c>
  100249:	8b 8b 10 10 00 00    	mov    0x1010(%ebx),%ecx
  10024f:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  100256:	8d 50 01             	lea    0x1(%eax),%edx
  100259:	66 89 93 14 10 00 00 	mov    %dx,0x1014(%ebx)
  100260:	0f b7 c0             	movzwl %ax,%eax
  100263:	01 c0                	add    %eax,%eax
  100265:	01 c8                	add    %ecx,%eax
  100267:	8b 55 08             	mov    0x8(%ebp),%edx
  10026a:	66 89 10             	mov    %dx,(%eax)
  10026d:	eb 01                	jmp    100270 <video_putc+0x15c>
  10026f:	90                   	nop
  100270:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  100277:	66 3d cf 07          	cmp    $0x7cf,%ax
  10027b:	76 5d                	jbe    1002da <video_putc+0x1c6>
  10027d:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
  100283:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  100289:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
  10028f:	83 ec 04             	sub    $0x4,%esp
  100292:	68 00 0f 00 00       	push   $0xf00
  100297:	52                   	push   %edx
  100298:	50                   	push   %eax
  100299:	e8 81 0f 00 00       	call   10121f <memmove>
  10029e:	83 c4 10             	add    $0x10,%esp
  1002a1:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002a8:	eb 16                	jmp    1002c0 <video_putc+0x1ac>
  1002aa:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
  1002b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002b3:	01 d2                	add    %edx,%edx
  1002b5:	01 d0                	add    %edx,%eax
  1002b7:	66 c7 00 20 07       	movw   $0x720,(%eax)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  1002c7:	7e e1                	jle    1002aa <video_putc+0x196>
  1002c9:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  1002d0:	83 e8 50             	sub    $0x50,%eax
  1002d3:	66 89 83 14 10 00 00 	mov    %ax,0x1014(%ebx)
  1002da:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  1002e0:	83 ec 08             	sub    $0x8,%esp
  1002e3:	6a 0e                	push   $0xe
  1002e5:	50                   	push   %eax
  1002e6:	e8 28 22 00 00       	call   102513 <outb>
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  1002f5:	66 c1 e8 08          	shr    $0x8,%ax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	8b 93 0c 10 00 00    	mov    0x100c(%ebx),%edx
  100302:	83 c2 01             	add    $0x1,%edx
  100305:	83 ec 08             	sub    $0x8,%esp
  100308:	50                   	push   %eax
  100309:	52                   	push   %edx
  10030a:	e8 04 22 00 00       	call   102513 <outb>
  10030f:	83 c4 10             	add    $0x10,%esp
  100312:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
  100318:	83 ec 08             	sub    $0x8,%esp
  10031b:	6a 0f                	push   $0xf
  10031d:	50                   	push   %eax
  10031e:	e8 f0 21 00 00       	call   102513 <outb>
  100323:	83 c4 10             	add    $0x10,%esp
  100326:	0f b7 83 14 10 00 00 	movzwl 0x1014(%ebx),%eax
  10032d:	0f b6 c0             	movzbl %al,%eax
  100330:	8b 93 0c 10 00 00    	mov    0x100c(%ebx),%edx
  100336:	83 c2 01             	add    $0x1,%edx
  100339:	83 ec 08             	sub    $0x8,%esp
  10033c:	50                   	push   %eax
  10033d:	52                   	push   %edx
  10033e:	e8 d0 21 00 00       	call   102513 <outb>
  100343:	83 c4 10             	add    $0x10,%esp
  100346:	90                   	nop
  100347:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10034a:	5b                   	pop    %ebx
  10034b:	5e                   	pop    %esi
  10034c:	5d                   	pop    %ebp
  10034d:	c3                   	ret

0010034e <video_set_cursor>:
  10034e:	55                   	push   %ebp
  10034f:	89 e5                	mov    %esp,%ebp
  100351:	e8 66 00 00 00       	call   1003bc <__x86.get_pc_thunk.dx>
  100356:	81 c2 9e 6c 00 00    	add    $0x6c9e,%edx
  10035c:	8b 45 08             	mov    0x8(%ebp),%eax
  10035f:	89 c1                	mov    %eax,%ecx
  100361:	89 c8                	mov    %ecx,%eax
  100363:	c1 e0 02             	shl    $0x2,%eax
  100366:	01 c8                	add    %ecx,%eax
  100368:	c1 e0 04             	shl    $0x4,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100370:	01 c8                	add    %ecx,%eax
  100372:	66 89 82 14 10 00 00 	mov    %ax,0x1014(%edx)
  100379:	90                   	nop
  10037a:	5d                   	pop    %ebp
  10037b:	c3                   	ret

0010037c <video_clear_screen>:
  10037c:	55                   	push   %ebp
  10037d:	89 e5                	mov    %esp,%ebp
  10037f:	83 ec 10             	sub    $0x10,%esp
  100382:	e8 31 00 00 00       	call   1003b8 <__x86.get_pc_thunk.ax>
  100387:	05 6d 6c 00 00       	add    $0x6c6d,%eax
  10038c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100393:	eb 16                	jmp    1003ab <video_clear_screen+0x2f>
  100395:	8b 90 10 10 00 00    	mov    0x1010(%eax),%edx
  10039b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039e:	01 c9                	add    %ecx,%ecx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003a7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003ab:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1003b2:	7e e1                	jle    100395 <video_clear_screen+0x19>
  1003b4:	90                   	nop
  1003b5:	90                   	nop
  1003b6:	c9                   	leave
  1003b7:	c3                   	ret

001003b8 <__x86.get_pc_thunk.ax>:
  1003b8:	8b 04 24             	mov    (%esp),%eax
  1003bb:	c3                   	ret

001003bc <__x86.get_pc_thunk.dx>:
  1003bc:	8b 14 24             	mov    (%esp),%edx
  1003bf:	c3                   	ret

001003c0 <__x86.get_pc_thunk.bx>:
  1003c0:	8b 1c 24             	mov    (%esp),%ebx
  1003c3:	c3                   	ret

001003c4 <cons_init>:
  1003c4:	55                   	push   %ebp
  1003c5:	89 e5                	mov    %esp,%ebp
  1003c7:	53                   	push   %ebx
  1003c8:	83 ec 04             	sub    $0x4,%esp
  1003cb:	e8 f0 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1003d0:	81 c3 24 6c 00 00    	add    $0x6c24,%ebx
  1003d6:	83 ec 04             	sub    $0x4,%esp
  1003d9:	68 08 02 00 00       	push   $0x208
  1003de:	6a 00                	push   $0x0
  1003e0:	8d 83 2c 10 00 00    	lea    0x102c(%ebx),%eax
  1003e6:	50                   	push   %eax
  1003e7:	e8 b9 0d 00 00       	call   1011a5 <memset>
  1003ec:	83 c4 10             	add    $0x10,%esp
  1003ef:	e8 2f 04 00 00       	call   100823 <serial_init>
  1003f4:	e8 07 fc ff ff       	call   100000 <video_init>
  1003f9:	90                   	nop
  1003fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1003fd:	c9                   	leave
  1003fe:	c3                   	ret

001003ff <cons_intr>:
  1003ff:	55                   	push   %ebp
  100400:	89 e5                	mov    %esp,%ebp
  100402:	53                   	push   %ebx
  100403:	83 ec 14             	sub    $0x14,%esp
  100406:	e8 b5 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10040b:	81 c3 e9 6b 00 00    	add    $0x6be9,%ebx
  100411:	eb 39                	jmp    10044c <cons_intr+0x4d>
  100413:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100417:	74 32                	je     10044b <cons_intr+0x4c>
  100419:	8b 83 30 12 00 00    	mov    0x1230(%ebx),%eax
  10041f:	8d 50 01             	lea    0x1(%eax),%edx
  100422:	89 93 30 12 00 00    	mov    %edx,0x1230(%ebx)
  100428:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10042b:	88 94 03 2c 10 00 00 	mov    %dl,0x102c(%ebx,%eax,1)
  100432:	8b 83 30 12 00 00    	mov    0x1230(%ebx),%eax
  100438:	3d 00 02 00 00       	cmp    $0x200,%eax
  10043d:	75 0d                	jne    10044c <cons_intr+0x4d>
  10043f:	c7 83 30 12 00 00 00 	movl   $0x0,0x1230(%ebx)
  100446:	00 00 00 
  100449:	eb 01                	jmp    10044c <cons_intr+0x4d>
  10044b:	90                   	nop
  10044c:	8b 45 08             	mov    0x8(%ebp),%eax
  10044f:	ff d0                	call   *%eax
  100451:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100454:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  100458:	75 b9                	jne    100413 <cons_intr+0x14>
  10045a:	90                   	nop
  10045b:	90                   	nop
  10045c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10045f:	c9                   	leave
  100460:	c3                   	ret

00100461 <cons_getc>:
  100461:	55                   	push   %ebp
  100462:	89 e5                	mov    %esp,%ebp
  100464:	53                   	push   %ebx
  100465:	83 ec 14             	sub    $0x14,%esp
  100468:	e8 53 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10046d:	81 c3 87 6b 00 00    	add    $0x6b87,%ebx
  100473:	e8 81 02 00 00       	call   1006f9 <serial_intr>
  100478:	e8 59 06 00 00       	call   100ad6 <keyboard_intr>
  10047d:	8b 93 2c 12 00 00    	mov    0x122c(%ebx),%edx
  100483:	8b 83 30 12 00 00    	mov    0x1230(%ebx),%eax
  100489:	39 c2                	cmp    %eax,%edx
  10048b:	74 39                	je     1004c6 <cons_getc+0x65>
  10048d:	8b 83 2c 12 00 00    	mov    0x122c(%ebx),%eax
  100493:	8d 50 01             	lea    0x1(%eax),%edx
  100496:	89 93 2c 12 00 00    	mov    %edx,0x122c(%ebx)
  10049c:	0f b6 84 03 2c 10 00 	movzbl 0x102c(%ebx,%eax,1),%eax
  1004a3:	00 
  1004a4:	0f be c0             	movsbl %al,%eax
  1004a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004aa:	8b 83 2c 12 00 00    	mov    0x122c(%ebx),%eax
  1004b0:	3d 00 02 00 00       	cmp    $0x200,%eax
  1004b5:	75 0a                	jne    1004c1 <cons_getc+0x60>
  1004b7:	c7 83 2c 12 00 00 00 	movl   $0x0,0x122c(%ebx)
  1004be:	00 00 00 
  1004c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004c4:	eb 05                	jmp    1004cb <cons_getc+0x6a>
  1004c6:	b8 00 00 00 00       	mov    $0x0,%eax
  1004cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004ce:	c9                   	leave
  1004cf:	c3                   	ret

001004d0 <cons_putc>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 14             	sub    $0x14,%esp
  1004d7:	e8 e4 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1004dc:	81 c3 18 6b 00 00    	add    $0x6b18,%ebx
  1004e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004e5:	88 45 f4             	mov    %al,-0xc(%ebp)
  1004e8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004ec:	83 ec 0c             	sub    $0xc,%esp
  1004ef:	50                   	push   %eax
  1004f0:	e8 9d 02 00 00       	call   100792 <serial_putc>
  1004f5:	83 c4 10             	add    $0x10,%esp
  1004f8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004fc:	83 ec 0c             	sub    $0xc,%esp
  1004ff:	50                   	push   %eax
  100500:	e8 0f fc ff ff       	call   100114 <video_putc>
  100505:	83 c4 10             	add    $0x10,%esp
  100508:	90                   	nop
  100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10050c:	c9                   	leave
  10050d:	c3                   	ret

0010050e <getchar>:
  10050e:	55                   	push   %ebp
  10050f:	89 e5                	mov    %esp,%ebp
  100511:	83 ec 18             	sub    $0x18,%esp
  100514:	e8 9f fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100519:	05 db 6a 00 00       	add    $0x6adb,%eax
  10051e:	90                   	nop
  10051f:	e8 3d ff ff ff       	call   100461 <cons_getc>
  100524:	88 45 f7             	mov    %al,-0x9(%ebp)
  100527:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10052b:	74 f2                	je     10051f <getchar+0x11>
  10052d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100531:	c9                   	leave
  100532:	c3                   	ret

00100533 <putchar>:
  100533:	55                   	push   %ebp
  100534:	89 e5                	mov    %esp,%ebp
  100536:	83 ec 18             	sub    $0x18,%esp
  100539:	e8 7a fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10053e:	05 b6 6a 00 00       	add    $0x6ab6,%eax
  100543:	8b 45 08             	mov    0x8(%ebp),%eax
  100546:	88 45 f4             	mov    %al,-0xc(%ebp)
  100549:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10054d:	83 ec 0c             	sub    $0xc,%esp
  100550:	50                   	push   %eax
  100551:	e8 7a ff ff ff       	call   1004d0 <cons_putc>
  100556:	83 c4 10             	add    $0x10,%esp
  100559:	90                   	nop
  10055a:	c9                   	leave
  10055b:	c3                   	ret

0010055c <readline>:
  10055c:	55                   	push   %ebp
  10055d:	89 e5                	mov    %esp,%ebp
  10055f:	53                   	push   %ebx
  100560:	83 ec 14             	sub    $0x14,%esp
  100563:	e8 58 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100568:	81 c3 8c 6a 00 00    	add    $0x6a8c,%ebx
  10056e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100572:	74 15                	je     100589 <readline+0x2d>
  100574:	83 ec 08             	sub    $0x8,%esp
  100577:	ff 75 08             	push   0x8(%ebp)
  10057a:	8d 83 1a d0 ff ff    	lea    -0x2fe6(%ebx),%eax
  100580:	50                   	push   %eax
  100581:	e8 e0 11 00 00       	call   101766 <dprintf>
  100586:	83 c4 10             	add    $0x10,%esp
  100589:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100590:	e8 79 ff ff ff       	call   10050e <getchar>
  100595:	88 45 f3             	mov    %al,-0xd(%ebp)
  100598:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10059c:	79 21                	jns    1005bf <readline+0x63>
  10059e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005a2:	83 ec 08             	sub    $0x8,%esp
  1005a5:	50                   	push   %eax
  1005a6:	8d 83 1d d0 ff ff    	lea    -0x2fe3(%ebx),%eax
  1005ac:	50                   	push   %eax
  1005ad:	e8 b4 11 00 00       	call   101766 <dprintf>
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	e9 92 00 00 00       	jmp    100651 <readline+0xf5>
  1005bf:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  1005c3:	74 06                	je     1005cb <readline+0x6f>
  1005c5:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  1005c9:	75 19                	jne    1005e4 <readline+0x88>
  1005cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005cf:	7e 13                	jle    1005e4 <readline+0x88>
  1005d1:	83 ec 0c             	sub    $0xc,%esp
  1005d4:	6a 08                	push   $0x8
  1005d6:	e8 58 ff ff ff       	call   100533 <putchar>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1005e2:	eb 68                	jmp    10064c <readline+0xf0>
  1005e4:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  1005e8:	7e 2f                	jle    100619 <readline+0xbd>
  1005ea:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005f1:	7f 26                	jg     100619 <readline+0xbd>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 0c             	sub    $0xc,%esp
  1005fa:	50                   	push   %eax
  1005fb:	e8 33 ff ff ff       	call   100533 <putchar>
  100600:	83 c4 10             	add    $0x10,%esp
  100603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100606:	8d 50 01             	lea    0x1(%eax),%edx
  100609:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10060c:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100610:	88 94 03 4c 12 00 00 	mov    %dl,0x124c(%ebx,%eax,1)
  100617:	eb 33                	jmp    10064c <readline+0xf0>
  100619:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10061d:	74 0a                	je     100629 <readline+0xcd>
  10061f:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100623:	0f 85 67 ff ff ff    	jne    100590 <readline+0x34>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	6a 0a                	push   $0xa
  10062e:	e8 00 ff ff ff       	call   100533 <putchar>
  100633:	83 c4 10             	add    $0x10,%esp
  100636:	8d 93 4c 12 00 00    	lea    0x124c(%ebx),%edx
  10063c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10063f:	01 d0                	add    %edx,%eax
  100641:	c6 00 00             	movb   $0x0,(%eax)
  100644:	8d 83 4c 12 00 00    	lea    0x124c(%ebx),%eax
  10064a:	eb 05                	jmp    100651 <readline+0xf5>
  10064c:	e9 3f ff ff ff       	jmp    100590 <readline+0x34>
  100651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100654:	c9                   	leave
  100655:	c3                   	ret

00100656 <delay>:
  100656:	55                   	push   %ebp
  100657:	89 e5                	mov    %esp,%ebp
  100659:	53                   	push   %ebx
  10065a:	83 ec 04             	sub    $0x4,%esp
  10065d:	e8 5e fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100662:	81 c3 92 69 00 00    	add    $0x6992,%ebx
  100668:	83 ec 0c             	sub    $0xc,%esp
  10066b:	68 84 00 00 00       	push   $0x84
  100670:	e8 4f 1e 00 00       	call   1024c4 <inb>
  100675:	83 c4 10             	add    $0x10,%esp
  100678:	83 ec 0c             	sub    $0xc,%esp
  10067b:	68 84 00 00 00       	push   $0x84
  100680:	e8 3f 1e 00 00       	call   1024c4 <inb>
  100685:	83 c4 10             	add    $0x10,%esp
  100688:	83 ec 0c             	sub    $0xc,%esp
  10068b:	68 84 00 00 00       	push   $0x84
  100690:	e8 2f 1e 00 00       	call   1024c4 <inb>
  100695:	83 c4 10             	add    $0x10,%esp
  100698:	83 ec 0c             	sub    $0xc,%esp
  10069b:	68 84 00 00 00       	push   $0x84
  1006a0:	e8 1f 1e 00 00       	call   1024c4 <inb>
  1006a5:	83 c4 10             	add    $0x10,%esp
  1006a8:	90                   	nop
  1006a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006ac:	c9                   	leave
  1006ad:	c3                   	ret

001006ae <serial_proc_data>:
  1006ae:	55                   	push   %ebp
  1006af:	89 e5                	mov    %esp,%ebp
  1006b1:	53                   	push   %ebx
  1006b2:	83 ec 04             	sub    $0x4,%esp
  1006b5:	e8 06 fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1006ba:	81 c3 3a 69 00 00    	add    $0x693a,%ebx
  1006c0:	83 ec 0c             	sub    $0xc,%esp
  1006c3:	68 fd 03 00 00       	push   $0x3fd
  1006c8:	e8 f7 1d 00 00       	call   1024c4 <inb>
  1006cd:	83 c4 10             	add    $0x10,%esp
  1006d0:	0f b6 c0             	movzbl %al,%eax
  1006d3:	83 e0 01             	and    $0x1,%eax
  1006d6:	85 c0                	test   %eax,%eax
  1006d8:	75 07                	jne    1006e1 <serial_proc_data+0x33>
  1006da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006df:	eb 13                	jmp    1006f4 <serial_proc_data+0x46>
  1006e1:	83 ec 0c             	sub    $0xc,%esp
  1006e4:	68 f8 03 00 00       	push   $0x3f8
  1006e9:	e8 d6 1d 00 00       	call   1024c4 <inb>
  1006ee:	83 c4 10             	add    $0x10,%esp
  1006f1:	0f b6 c0             	movzbl %al,%eax
  1006f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006f7:	c9                   	leave
  1006f8:	c3                   	ret

001006f9 <serial_intr>:
  1006f9:	55                   	push   %ebp
  1006fa:	89 e5                	mov    %esp,%ebp
  1006fc:	53                   	push   %ebx
  1006fd:	83 ec 04             	sub    $0x4,%esp
  100700:	e8 b3 fc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100705:	05 ef 68 00 00       	add    $0x68ef,%eax
  10070a:	0f b6 90 4c 16 00 00 	movzbl 0x164c(%eax),%edx
  100711:	84 d2                	test   %dl,%dl
  100713:	74 14                	je     100729 <serial_intr+0x30>
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	8d 90 ba 96 ff ff    	lea    -0x6946(%eax),%edx
  10071e:	52                   	push   %edx
  10071f:	89 c3                	mov    %eax,%ebx
  100721:	e8 d9 fc ff ff       	call   1003ff <cons_intr>
  100726:	83 c4 10             	add    $0x10,%esp
  100729:	90                   	nop
  10072a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072d:	c9                   	leave
  10072e:	c3                   	ret

0010072f <serial_reformatnewline>:
  10072f:	55                   	push   %ebp
  100730:	89 e5                	mov    %esp,%ebp
  100732:	53                   	push   %ebx
  100733:	83 ec 14             	sub    $0x14,%esp
  100736:	e8 85 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10073b:	81 c3 b9 68 00 00    	add    $0x68b9,%ebx
  100741:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  100748:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  10074f:	8b 45 08             	mov    0x8(%ebp),%eax
  100752:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  100755:	75 31                	jne    100788 <serial_reformatnewline+0x59>
  100757:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10075a:	0f b6 c0             	movzbl %al,%eax
  10075d:	83 ec 08             	sub    $0x8,%esp
  100760:	50                   	push   %eax
  100761:	ff 75 0c             	push   0xc(%ebp)
  100764:	e8 aa 1d 00 00       	call   102513 <outb>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10076f:	0f b6 c0             	movzbl %al,%eax
  100772:	83 ec 08             	sub    $0x8,%esp
  100775:	50                   	push   %eax
  100776:	ff 75 0c             	push   0xc(%ebp)
  100779:	e8 95 1d 00 00       	call   102513 <outb>
  10077e:	83 c4 10             	add    $0x10,%esp
  100781:	b8 01 00 00 00       	mov    $0x1,%eax
  100786:	eb 05                	jmp    10078d <serial_reformatnewline+0x5e>
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
  10078d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100790:	c9                   	leave
  100791:	c3                   	ret

00100792 <serial_putc>:
  100792:	55                   	push   %ebp
  100793:	89 e5                	mov    %esp,%ebp
  100795:	53                   	push   %ebx
  100796:	83 ec 24             	sub    $0x24,%esp
  100799:	e8 22 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10079e:	81 c3 56 68 00 00    	add    $0x6856,%ebx
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007aa:	0f b6 83 4c 16 00 00 	movzbl 0x164c(%ebx),%eax
  1007b1:	84 c0                	test   %al,%al
  1007b3:	74 68                	je     10081d <serial_putc+0x8b>
  1007b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007bc:	eb 09                	jmp    1007c7 <serial_putc+0x35>
  1007be:	e8 93 fe ff ff       	call   100656 <delay>
  1007c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007c7:	83 ec 0c             	sub    $0xc,%esp
  1007ca:	68 fd 03 00 00       	push   $0x3fd
  1007cf:	e8 f0 1c 00 00       	call   1024c4 <inb>
  1007d4:	83 c4 10             	add    $0x10,%esp
  1007d7:	0f b6 c0             	movzbl %al,%eax
  1007da:	83 e0 20             	and    $0x20,%eax
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 09                	jne    1007ea <serial_putc+0x58>
  1007e1:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  1007e8:	7e d4                	jle    1007be <serial_putc+0x2c>
  1007ea:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  1007ee:	83 ec 08             	sub    $0x8,%esp
  1007f1:	68 f8 03 00 00       	push   $0x3f8
  1007f6:	50                   	push   %eax
  1007f7:	e8 33 ff ff ff       	call   10072f <serial_reformatnewline>
  1007fc:	83 c4 10             	add    $0x10,%esp
  1007ff:	85 c0                	test   %eax,%eax
  100801:	75 1b                	jne    10081e <serial_putc+0x8c>
  100803:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100807:	0f b6 c0             	movzbl %al,%eax
  10080a:	83 ec 08             	sub    $0x8,%esp
  10080d:	50                   	push   %eax
  10080e:	68 f8 03 00 00       	push   $0x3f8
  100813:	e8 fb 1c 00 00       	call   102513 <outb>
  100818:	83 c4 10             	add    $0x10,%esp
  10081b:	eb 01                	jmp    10081e <serial_putc+0x8c>
  10081d:	90                   	nop
  10081e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100821:	c9                   	leave
  100822:	c3                   	ret

00100823 <serial_init>:
  100823:	55                   	push   %ebp
  100824:	89 e5                	mov    %esp,%ebp
  100826:	53                   	push   %ebx
  100827:	83 ec 04             	sub    $0x4,%esp
  10082a:	e8 91 fb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10082f:	81 c3 c5 67 00 00    	add    $0x67c5,%ebx
  100835:	83 ec 08             	sub    $0x8,%esp
  100838:	6a 00                	push   $0x0
  10083a:	68 f9 03 00 00       	push   $0x3f9
  10083f:	e8 cf 1c 00 00       	call   102513 <outb>
  100844:	83 c4 10             	add    $0x10,%esp
  100847:	83 ec 08             	sub    $0x8,%esp
  10084a:	68 80 00 00 00       	push   $0x80
  10084f:	68 fb 03 00 00       	push   $0x3fb
  100854:	e8 ba 1c 00 00       	call   102513 <outb>
  100859:	83 c4 10             	add    $0x10,%esp
  10085c:	83 ec 08             	sub    $0x8,%esp
  10085f:	6a 01                	push   $0x1
  100861:	68 f8 03 00 00       	push   $0x3f8
  100866:	e8 a8 1c 00 00       	call   102513 <outb>
  10086b:	83 c4 10             	add    $0x10,%esp
  10086e:	83 ec 08             	sub    $0x8,%esp
  100871:	6a 00                	push   $0x0
  100873:	68 f9 03 00 00       	push   $0x3f9
  100878:	e8 96 1c 00 00       	call   102513 <outb>
  10087d:	83 c4 10             	add    $0x10,%esp
  100880:	83 ec 08             	sub    $0x8,%esp
  100883:	6a 03                	push   $0x3
  100885:	68 fb 03 00 00       	push   $0x3fb
  10088a:	e8 84 1c 00 00       	call   102513 <outb>
  10088f:	83 c4 10             	add    $0x10,%esp
  100892:	83 ec 08             	sub    $0x8,%esp
  100895:	68 c7 00 00 00       	push   $0xc7
  10089a:	68 fa 03 00 00       	push   $0x3fa
  10089f:	e8 6f 1c 00 00       	call   102513 <outb>
  1008a4:	83 c4 10             	add    $0x10,%esp
  1008a7:	83 ec 08             	sub    $0x8,%esp
  1008aa:	6a 0b                	push   $0xb
  1008ac:	68 fc 03 00 00       	push   $0x3fc
  1008b1:	e8 5d 1c 00 00       	call   102513 <outb>
  1008b6:	83 c4 10             	add    $0x10,%esp
  1008b9:	83 ec 0c             	sub    $0xc,%esp
  1008bc:	68 fd 03 00 00       	push   $0x3fd
  1008c1:	e8 fe 1b 00 00       	call   1024c4 <inb>
  1008c6:	83 c4 10             	add    $0x10,%esp
  1008c9:	3c ff                	cmp    $0xff,%al
  1008cb:	0f 95 c0             	setne  %al
  1008ce:	88 83 4c 16 00 00    	mov    %al,0x164c(%ebx)
  1008d4:	83 ec 0c             	sub    $0xc,%esp
  1008d7:	68 fa 03 00 00       	push   $0x3fa
  1008dc:	e8 e3 1b 00 00       	call   1024c4 <inb>
  1008e1:	83 c4 10             	add    $0x10,%esp
  1008e4:	83 ec 0c             	sub    $0xc,%esp
  1008e7:	68 f8 03 00 00       	push   $0x3f8
  1008ec:	e8 d3 1b 00 00       	call   1024c4 <inb>
  1008f1:	83 c4 10             	add    $0x10,%esp
  1008f4:	90                   	nop
  1008f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008f8:	c9                   	leave
  1008f9:	c3                   	ret

001008fa <serial_intenable>:
  1008fa:	55                   	push   %ebp
  1008fb:	89 e5                	mov    %esp,%ebp
  1008fd:	53                   	push   %ebx
  1008fe:	83 ec 04             	sub    $0x4,%esp
  100901:	e8 b2 fa ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100906:	05 ee 66 00 00       	add    $0x66ee,%eax
  10090b:	0f b6 90 4c 16 00 00 	movzbl 0x164c(%eax),%edx
  100912:	84 d2                	test   %dl,%dl
  100914:	74 19                	je     10092f <serial_intenable+0x35>
  100916:	83 ec 08             	sub    $0x8,%esp
  100919:	6a 01                	push   $0x1
  10091b:	68 f9 03 00 00       	push   $0x3f9
  100920:	89 c3                	mov    %eax,%ebx
  100922:	e8 ec 1b 00 00       	call   102513 <outb>
  100927:	83 c4 10             	add    $0x10,%esp
  10092a:	e8 ca fd ff ff       	call   1006f9 <serial_intr>
  10092f:	90                   	nop
  100930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100933:	c9                   	leave
  100934:	c3                   	ret

00100935 <kbd_proc_data>:
  100935:	55                   	push   %ebp
  100936:	89 e5                	mov    %esp,%ebp
  100938:	53                   	push   %ebx
  100939:	83 ec 14             	sub    $0x14,%esp
  10093c:	e8 7f fa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100941:	81 c3 b3 66 00 00    	add    $0x66b3,%ebx
  100947:	83 ec 0c             	sub    $0xc,%esp
  10094a:	6a 64                	push   $0x64
  10094c:	e8 73 1b 00 00       	call   1024c4 <inb>
  100951:	83 c4 10             	add    $0x10,%esp
  100954:	0f b6 c0             	movzbl %al,%eax
  100957:	83 e0 01             	and    $0x1,%eax
  10095a:	85 c0                	test   %eax,%eax
  10095c:	75 0a                	jne    100968 <kbd_proc_data+0x33>
  10095e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100963:	e9 69 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100968:	83 ec 0c             	sub    $0xc,%esp
  10096b:	6a 60                	push   $0x60
  10096d:	e8 52 1b 00 00       	call   1024c4 <inb>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	88 45 f3             	mov    %al,-0xd(%ebp)
  100978:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  10097c:	75 19                	jne    100997 <kbd_proc_data+0x62>
  10097e:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100984:	83 c8 40             	or     $0x40,%eax
  100987:	89 83 50 16 00 00    	mov    %eax,0x1650(%ebx)
  10098d:	b8 00 00 00 00       	mov    $0x0,%eax
  100992:	e9 3a 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100997:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10099b:	84 c0                	test   %al,%al
  10099d:	79 4b                	jns    1009ea <kbd_proc_data+0xb5>
  10099f:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  1009a5:	83 e0 40             	and    $0x40,%eax
  1009a8:	85 c0                	test   %eax,%eax
  1009aa:	75 09                	jne    1009b5 <kbd_proc_data+0x80>
  1009ac:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b0:	83 e0 7f             	and    $0x7f,%eax
  1009b3:	eb 04                	jmp    1009b9 <kbd_proc_data+0x84>
  1009b5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009bc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009c0:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  1009c7:	00 
  1009c8:	83 c8 40             	or     $0x40,%eax
  1009cb:	0f b6 c0             	movzbl %al,%eax
  1009ce:	f7 d0                	not    %eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  1009d8:	21 d0                	and    %edx,%eax
  1009da:	89 83 50 16 00 00    	mov    %eax,0x1650(%ebx)
  1009e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e5:	e9 e7 00 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  1009ea:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  1009f0:	83 e0 40             	and    $0x40,%eax
  1009f3:	85 c0                	test   %eax,%eax
  1009f5:	74 13                	je     100a0a <kbd_proc_data+0xd5>
  1009f7:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  1009fb:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a01:	83 e0 bf             	and    $0xffffffbf,%eax
  100a04:	89 83 50 16 00 00    	mov    %eax,0x1650(%ebx)
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a15:	00 
  100a16:	0f b6 d0             	movzbl %al,%edx
  100a19:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a1f:	09 d0                	or     %edx,%eax
  100a21:	89 83 50 16 00 00    	mov    %eax,0x1650(%ebx)
  100a27:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a2b:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a32:	00 
  100a33:	0f b6 d0             	movzbl %al,%edx
  100a36:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a3c:	31 d0                	xor    %edx,%eax
  100a3e:	89 83 50 16 00 00    	mov    %eax,0x1650(%ebx)
  100a44:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a4a:	83 e0 03             	and    $0x3,%eax
  100a4d:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100a54:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a58:	01 d0                	add    %edx,%eax
  100a5a:	0f b6 00             	movzbl (%eax),%eax
  100a5d:	0f b6 c0             	movzbl %al,%eax
  100a60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a63:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a69:	83 e0 08             	and    $0x8,%eax
  100a6c:	85 c0                	test   %eax,%eax
  100a6e:	74 22                	je     100a92 <kbd_proc_data+0x15d>
  100a70:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100a74:	7e 0c                	jle    100a82 <kbd_proc_data+0x14d>
  100a76:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100a7a:	7f 06                	jg     100a82 <kbd_proc_data+0x14d>
  100a7c:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100a80:	eb 10                	jmp    100a92 <kbd_proc_data+0x15d>
  100a82:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100a86:	7e 0a                	jle    100a92 <kbd_proc_data+0x15d>
  100a88:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100a8c:	7f 04                	jg     100a92 <kbd_proc_data+0x15d>
  100a8e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100a92:	8b 83 50 16 00 00    	mov    0x1650(%ebx),%eax
  100a98:	f7 d0                	not    %eax
  100a9a:	83 e0 06             	and    $0x6,%eax
  100a9d:	85 c0                	test   %eax,%eax
  100a9f:	75 2d                	jne    100ace <kbd_proc_data+0x199>
  100aa1:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100aa8:	75 24                	jne    100ace <kbd_proc_data+0x199>
  100aaa:	83 ec 0c             	sub    $0xc,%esp
  100aad:	8d 83 2d d0 ff ff    	lea    -0x2fd3(%ebx),%eax
  100ab3:	50                   	push   %eax
  100ab4:	e8 ad 0c 00 00       	call   101766 <dprintf>
  100ab9:	83 c4 10             	add    $0x10,%esp
  100abc:	83 ec 08             	sub    $0x8,%esp
  100abf:	6a 03                	push   $0x3
  100ac1:	68 92 00 00 00       	push   $0x92
  100ac6:	e8 48 1a 00 00       	call   102513 <outb>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ad1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ad4:	c9                   	leave
  100ad5:	c3                   	ret

00100ad6 <keyboard_intr>:
  100ad6:	55                   	push   %ebp
  100ad7:	89 e5                	mov    %esp,%ebp
  100ad9:	53                   	push   %ebx
  100ada:	83 ec 04             	sub    $0x4,%esp
  100add:	e8 d6 f8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100ae2:	05 12 65 00 00       	add    $0x6512,%eax
  100ae7:	83 ec 0c             	sub    $0xc,%esp
  100aea:	8d 90 41 99 ff ff    	lea    -0x66bf(%eax),%edx
  100af0:	52                   	push   %edx
  100af1:	89 c3                	mov    %eax,%ebx
  100af3:	e8 07 f9 ff ff       	call   1003ff <cons_intr>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	90                   	nop
  100afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100aff:	c9                   	leave
  100b00:	c3                   	ret

00100b01 <devinit>:
  100b01:	55                   	push   %ebp
  100b02:	89 e5                	mov    %esp,%ebp
  100b04:	53                   	push   %ebx
  100b05:	83 ec 04             	sub    $0x4,%esp
  100b08:	e8 b3 f8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100b0d:	81 c3 e7 64 00 00    	add    $0x64e7,%ebx
  100b13:	e8 46 11 00 00       	call   101c5e <seg_init>
  100b18:	e8 eb 17 00 00       	call   102308 <enable_sse>
  100b1d:	e8 a2 f8 ff ff       	call   1003c4 <cons_init>
  100b22:	83 ec 04             	sub    $0x4,%esp
  100b25:	8d 83 39 d0 ff ff    	lea    -0x2fc7(%ebx),%eax
  100b2b:	50                   	push   %eax
  100b2c:	6a 10                	push   $0x10
  100b2e:	8d 83 4c d0 ff ff    	lea    -0x2fb4(%ebx),%eax
  100b34:	50                   	push   %eax
  100b35:	e8 59 09 00 00       	call   101493 <debug_normal>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	ff 75 08             	push   0x8(%ebp)
  100b40:	8d 83 5f d0 ff ff    	lea    -0x2fa1(%ebx),%eax
  100b46:	50                   	push   %eax
  100b47:	6a 11                	push   $0x11
  100b49:	8d 83 4c d0 ff ff    	lea    -0x2fb4(%ebx),%eax
  100b4f:	50                   	push   %eax
  100b50:	e8 3e 09 00 00       	call   101493 <debug_normal>
  100b55:	83 c4 10             	add    $0x10,%esp
  100b58:	83 ec 0c             	sub    $0xc,%esp
  100b5b:	ff 75 08             	push   0x8(%ebp)
  100b5e:	e8 a2 03 00 00       	call   100f05 <pmmap_init>
  100b63:	83 c4 10             	add    $0x10,%esp
  100b66:	90                   	nop
  100b67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b6a:	c9                   	leave
  100b6b:	c3                   	ret

00100b6c <pmmap_alloc_slot>:
  100b6c:	55                   	push   %ebp
  100b6d:	89 e5                	mov    %esp,%ebp
  100b6f:	e8 48 f8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  100b74:	81 c2 80 64 00 00    	add    $0x6480,%edx
  100b7a:	8b 82 6c 20 00 00    	mov    0x206c(%edx),%eax
  100b80:	3d 80 00 00 00       	cmp    $0x80,%eax
  100b85:	0f 94 c0             	sete   %al
  100b88:	0f b6 c0             	movzbl %al,%eax
  100b8b:	85 c0                	test   %eax,%eax
  100b8d:	74 07                	je     100b96 <pmmap_alloc_slot+0x2a>
  100b8f:	b8 00 00 00 00       	mov    $0x0,%eax
  100b94:	eb 21                	jmp    100bb7 <pmmap_alloc_slot+0x4b>
  100b96:	8b 8a 6c 20 00 00    	mov    0x206c(%edx),%ecx
  100b9c:	8d 41 01             	lea    0x1(%ecx),%eax
  100b9f:	89 82 6c 20 00 00    	mov    %eax,0x206c(%edx)
  100ba5:	89 c8                	mov    %ecx,%eax
  100ba7:	c1 e0 02             	shl    $0x2,%eax
  100baa:	01 c8                	add    %ecx,%eax
  100bac:	c1 e0 02             	shl    $0x2,%eax
  100baf:	8d 92 6c 16 00 00    	lea    0x166c(%edx),%edx
  100bb5:	01 d0                	add    %edx,%eax
  100bb7:	5d                   	pop    %ebp
  100bb8:	c3                   	ret

00100bb9 <pmmap_insert>:
  100bb9:	55                   	push   %ebp
  100bba:	89 e5                	mov    %esp,%ebp
  100bbc:	53                   	push   %ebx
  100bbd:	83 ec 14             	sub    $0x14,%esp
  100bc0:	e8 fb f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100bc5:	81 c3 2f 64 00 00    	add    $0x642f,%ebx
  100bcb:	e8 9c ff ff ff       	call   100b6c <pmmap_alloc_slot>
  100bd0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100bd3:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100bd7:	75 1b                	jne    100bf4 <pmmap_insert+0x3b>
  100bd9:	83 ec 04             	sub    $0x4,%esp
  100bdc:	8d 83 78 d0 ff ff    	lea    -0x2f88(%ebx),%eax
  100be2:	50                   	push   %eax
  100be3:	6a 3b                	push   $0x3b
  100be5:	8d 83 95 d0 ff ff    	lea    -0x2f6b(%ebx),%eax
  100beb:	50                   	push   %eax
  100bec:	e8 5d 09 00 00       	call   10154e <debug_panic>
  100bf1:	83 c4 10             	add    $0x10,%esp
  100bf4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bf7:	8b 55 08             	mov    0x8(%ebp),%edx
  100bfa:	89 10                	mov    %edx,(%eax)
  100bfc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bff:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c02:	89 50 04             	mov    %edx,0x4(%eax)
  100c05:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c08:	8b 55 10             	mov    0x10(%ebp),%edx
  100c0b:	89 50 08             	mov    %edx,0x8(%eax)
  100c0e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c15:	8b 83 70 20 00 00    	mov    0x2070(%ebx),%eax
  100c1b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c1e:	eb 19                	jmp    100c39 <pmmap_insert+0x80>
  100c20:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c23:	8b 00                	mov    (%eax),%eax
  100c25:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c28:	72 17                	jb     100c41 <pmmap_insert+0x88>
  100c2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c30:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c33:	8b 40 0c             	mov    0xc(%eax),%eax
  100c36:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c39:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c3d:	75 e1                	jne    100c20 <pmmap_insert+0x67>
  100c3f:	eb 01                	jmp    100c42 <pmmap_insert+0x89>
  100c41:	90                   	nop
  100c42:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100c46:	75 17                	jne    100c5f <pmmap_insert+0xa6>
  100c48:	8b 93 70 20 00 00    	mov    0x2070(%ebx),%edx
  100c4e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c51:	89 50 0c             	mov    %edx,0xc(%eax)
  100c54:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c57:	89 83 70 20 00 00    	mov    %eax,0x2070(%ebx)
  100c5d:	eb 15                	jmp    100c74 <pmmap_insert+0xbb>
  100c5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c62:	8b 50 0c             	mov    0xc(%eax),%edx
  100c65:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c68:	89 50 0c             	mov    %edx,0xc(%eax)
  100c6b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c6e:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100c71:	89 50 0c             	mov    %edx,0xc(%eax)
  100c74:	90                   	nop
  100c75:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100c78:	c9                   	leave
  100c79:	c3                   	ret

00100c7a <pmmap_merge>:
  100c7a:	55                   	push   %ebp
  100c7b:	89 e5                	mov    %esp,%ebp
  100c7d:	53                   	push   %ebx
  100c7e:	83 ec 24             	sub    $0x24,%esp
  100c81:	e8 3a f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100c86:	81 c3 6e 63 00 00    	add    $0x636e,%ebx
  100c8c:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100c93:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100c9a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100ca1:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100ca8:	8b 83 70 20 00 00    	mov    0x2070(%ebx),%eax
  100cae:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cb1:	eb 73                	jmp    100d26 <pmmap_merge+0xac>
  100cb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cb6:	8b 40 0c             	mov    0xc(%eax),%eax
  100cb9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100cbc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100cc0:	74 6c                	je     100d2e <pmmap_merge+0xb4>
  100cc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cc5:	8b 00                	mov    (%eax),%eax
  100cc7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100cca:	8b 12                	mov    (%edx),%edx
  100ccc:	39 c2                	cmp    %eax,%edx
  100cce:	72 4d                	jb     100d1d <pmmap_merge+0xa3>
  100cd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cd3:	8b 50 04             	mov    0x4(%eax),%edx
  100cd6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cd9:	8b 00                	mov    (%eax),%eax
  100cdb:	39 c2                	cmp    %eax,%edx
  100cdd:	72 3e                	jb     100d1d <pmmap_merge+0xa3>
  100cdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ce2:	8b 50 08             	mov    0x8(%eax),%edx
  100ce5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ce8:	8b 40 08             	mov    0x8(%eax),%eax
  100ceb:	39 c2                	cmp    %eax,%edx
  100ced:	75 2e                	jne    100d1d <pmmap_merge+0xa3>
  100cef:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cf2:	8b 50 04             	mov    0x4(%eax),%edx
  100cf5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cf8:	8b 40 04             	mov    0x4(%eax),%eax
  100cfb:	83 ec 08             	sub    $0x8,%esp
  100cfe:	52                   	push   %edx
  100cff:	50                   	push   %eax
  100d00:	e8 c6 14 00 00       	call   1021cb <max>
  100d05:	83 c4 10             	add    $0x10,%esp
  100d08:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d0b:	89 42 04             	mov    %eax,0x4(%edx)
  100d0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d11:	8b 40 0c             	mov    0xc(%eax),%eax
  100d14:	8b 50 0c             	mov    0xc(%eax),%edx
  100d17:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1a:	89 50 0c             	mov    %edx,0xc(%eax)
  100d1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d20:	8b 40 0c             	mov    0xc(%eax),%eax
  100d23:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d26:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d2a:	75 87                	jne    100cb3 <pmmap_merge+0x39>
  100d2c:	eb 01                	jmp    100d2f <pmmap_merge+0xb5>
  100d2e:	90                   	nop
  100d2f:	8b 83 70 20 00 00    	mov    0x2070(%ebx),%eax
  100d35:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d38:	e9 cf 00 00 00       	jmp    100e0c <pmmap_merge+0x192>
  100d3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d40:	8b 40 08             	mov    0x8(%eax),%eax
  100d43:	83 f8 01             	cmp    $0x1,%eax
  100d46:	74 3d                	je     100d85 <pmmap_merge+0x10b>
  100d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d4b:	8b 40 08             	mov    0x8(%eax),%eax
  100d4e:	83 f8 02             	cmp    $0x2,%eax
  100d51:	74 2b                	je     100d7e <pmmap_merge+0x104>
  100d53:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d56:	8b 40 08             	mov    0x8(%eax),%eax
  100d59:	83 f8 03             	cmp    $0x3,%eax
  100d5c:	74 19                	je     100d77 <pmmap_merge+0xfd>
  100d5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d61:	8b 40 08             	mov    0x8(%eax),%eax
  100d64:	83 f8 04             	cmp    $0x4,%eax
  100d67:	75 07                	jne    100d70 <pmmap_merge+0xf6>
  100d69:	b8 03 00 00 00       	mov    $0x3,%eax
  100d6e:	eb 1a                	jmp    100d8a <pmmap_merge+0x110>
  100d70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100d75:	eb 13                	jmp    100d8a <pmmap_merge+0x110>
  100d77:	b8 02 00 00 00       	mov    $0x2,%eax
  100d7c:	eb 0c                	jmp    100d8a <pmmap_merge+0x110>
  100d7e:	b8 01 00 00 00       	mov    $0x1,%eax
  100d83:	eb 05                	jmp    100d8a <pmmap_merge+0x110>
  100d85:	b8 00 00 00 00       	mov    $0x0,%eax
  100d8a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d8d:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100d91:	75 1f                	jne    100db2 <pmmap_merge+0x138>
  100d93:	8d 83 a6 d0 ff ff    	lea    -0x2f5a(%ebx),%eax
  100d99:	50                   	push   %eax
  100d9a:	8d 83 b7 d0 ff ff    	lea    -0x2f49(%ebx),%eax
  100da0:	50                   	push   %eax
  100da1:	6a 6a                	push   $0x6a
  100da3:	8d 83 95 d0 ff ff    	lea    -0x2f6b(%ebx),%eax
  100da9:	50                   	push   %eax
  100daa:	e8 9f 07 00 00       	call   10154e <debug_panic>
  100daf:	83 c4 10             	add    $0x10,%esp
  100db2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100db5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100db9:	85 c0                	test   %eax,%eax
  100dbb:	74 1f                	je     100ddc <pmmap_merge+0x162>
  100dbd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dc0:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dc4:	8b 50 10             	mov    0x10(%eax),%edx
  100dc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dca:	89 50 10             	mov    %edx,0x10(%eax)
  100dcd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd0:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dd4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100dd7:	89 50 10             	mov    %edx,0x10(%eax)
  100dda:	eb 1d                	jmp    100df9 <pmmap_merge+0x17f>
  100ddc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100ddf:	8b 94 83 74 20 00 00 	mov    0x2074(%ebx,%eax,4),%edx
  100de6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100de9:	89 50 10             	mov    %edx,0x10(%eax)
  100dec:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100def:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100df2:	89 94 83 74 20 00 00 	mov    %edx,0x2074(%ebx,%eax,4)
  100df9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dfc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100dff:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e03:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e06:	8b 40 0c             	mov    0xc(%eax),%eax
  100e09:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e0c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e10:	0f 85 27 ff ff ff    	jne    100d3d <pmmap_merge+0xc3>
  100e16:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e19:	85 c0                	test   %eax,%eax
  100e1b:	74 0c                	je     100e29 <pmmap_merge+0x1af>
  100e1d:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e20:	8b 40 04             	mov    0x4(%eax),%eax
  100e23:	89 83 84 20 00 00    	mov    %eax,0x2084(%ebx)
  100e29:	90                   	nop
  100e2a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e2d:	c9                   	leave
  100e2e:	c3                   	ret

00100e2f <pmmap_dump>:
  100e2f:	55                   	push   %ebp
  100e30:	89 e5                	mov    %esp,%ebp
  100e32:	53                   	push   %ebx
  100e33:	83 ec 14             	sub    $0x14,%esp
  100e36:	e8 85 f5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100e3b:	81 c3 b9 61 00 00    	add    $0x61b9,%ebx
  100e41:	8b 83 70 20 00 00    	mov    0x2070(%ebx),%eax
  100e47:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e4a:	e9 a5 00 00 00       	jmp    100ef4 <pmmap_dump+0xc5>
  100e4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e52:	8b 40 08             	mov    0x8(%eax),%eax
  100e55:	83 f8 01             	cmp    $0x1,%eax
  100e58:	74 41                	je     100e9b <pmmap_dump+0x6c>
  100e5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e5d:	8b 40 08             	mov    0x8(%eax),%eax
  100e60:	83 f8 02             	cmp    $0x2,%eax
  100e63:	74 2e                	je     100e93 <pmmap_dump+0x64>
  100e65:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e68:	8b 40 08             	mov    0x8(%eax),%eax
  100e6b:	83 f8 03             	cmp    $0x3,%eax
  100e6e:	74 1b                	je     100e8b <pmmap_dump+0x5c>
  100e70:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e73:	8b 40 08             	mov    0x8(%eax),%eax
  100e76:	83 f8 04             	cmp    $0x4,%eax
  100e79:	75 08                	jne    100e83 <pmmap_dump+0x54>
  100e7b:	8d 83 d4 d0 ff ff    	lea    -0x2f2c(%ebx),%eax
  100e81:	eb 1e                	jmp    100ea1 <pmmap_dump+0x72>
  100e83:	8d 83 dd d0 ff ff    	lea    -0x2f23(%ebx),%eax
  100e89:	eb 16                	jmp    100ea1 <pmmap_dump+0x72>
  100e8b:	8d 83 e5 d0 ff ff    	lea    -0x2f1b(%ebx),%eax
  100e91:	eb 0e                	jmp    100ea1 <pmmap_dump+0x72>
  100e93:	8d 83 ef d0 ff ff    	lea    -0x2f11(%ebx),%eax
  100e99:	eb 06                	jmp    100ea1 <pmmap_dump+0x72>
  100e9b:	8d 83 f8 d0 ff ff    	lea    -0x2f08(%ebx),%eax
  100ea1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea4:	8b 0a                	mov    (%edx),%ecx
  100ea6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea9:	8b 52 04             	mov    0x4(%edx),%edx
  100eac:	39 d1                	cmp    %edx,%ecx
  100eae:	75 08                	jne    100eb8 <pmmap_dump+0x89>
  100eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb3:	8b 52 04             	mov    0x4(%edx),%edx
  100eb6:	eb 1c                	jmp    100ed4 <pmmap_dump+0xa5>
  100eb8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ebb:	8b 52 04             	mov    0x4(%edx),%edx
  100ebe:	83 fa ff             	cmp    $0xffffffff,%edx
  100ec1:	75 08                	jne    100ecb <pmmap_dump+0x9c>
  100ec3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec6:	8b 52 04             	mov    0x4(%edx),%edx
  100ec9:	eb 09                	jmp    100ed4 <pmmap_dump+0xa5>
  100ecb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ece:	8b 52 04             	mov    0x4(%edx),%edx
  100ed1:	83 ea 01             	sub    $0x1,%edx
  100ed4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100ed7:	8b 09                	mov    (%ecx),%ecx
  100ed9:	50                   	push   %eax
  100eda:	52                   	push   %edx
  100edb:	51                   	push   %ecx
  100edc:	8d 83 00 d1 ff ff    	lea    -0x2f00(%ebx),%eax
  100ee2:	50                   	push   %eax
  100ee3:	e8 7a 05 00 00       	call   101462 <debug_info>
  100ee8:	83 c4 10             	add    $0x10,%esp
  100eeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100eee:	8b 40 0c             	mov    0xc(%eax),%eax
  100ef1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100ef8:	0f 85 51 ff ff ff    	jne    100e4f <pmmap_dump+0x20>
  100efe:	90                   	nop
  100eff:	90                   	nop
  100f00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f03:	c9                   	leave
  100f04:	c3                   	ret

00100f05 <pmmap_init>:
  100f05:	55                   	push   %ebp
  100f06:	89 e5                	mov    %esp,%ebp
  100f08:	53                   	push   %ebx
  100f09:	83 ec 24             	sub    $0x24,%esp
  100f0c:	e8 af f4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100f11:	81 c3 e3 60 00 00    	add    $0x60e3,%ebx
  100f17:	83 ec 0c             	sub    $0xc,%esp
  100f1a:	8d 83 21 d1 ff ff    	lea    -0x2edf(%ebx),%eax
  100f20:	50                   	push   %eax
  100f21:	e8 3c 05 00 00       	call   101462 <debug_info>
  100f26:	83 c4 10             	add    $0x10,%esp
  100f29:	8b 45 08             	mov    0x8(%ebp),%eax
  100f2c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f2f:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f32:	8b 40 30             	mov    0x30(%eax),%eax
  100f35:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f38:	c7 83 70 20 00 00 00 	movl   $0x0,0x2070(%ebx)
  100f3f:	00 00 00 
  100f42:	c7 83 74 20 00 00 00 	movl   $0x0,0x2074(%ebx)
  100f49:	00 00 00 
  100f4c:	c7 83 78 20 00 00 00 	movl   $0x0,0x2078(%ebx)
  100f53:	00 00 00 
  100f56:	c7 83 7c 20 00 00 00 	movl   $0x0,0x207c(%ebx)
  100f5d:	00 00 00 
  100f60:	c7 83 80 20 00 00 00 	movl   $0x0,0x2080(%ebx)
  100f67:	00 00 00 
  100f6a:	eb 6c                	jmp    100fd8 <pmmap_init+0xd3>
  100f6c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f6f:	8b 40 08             	mov    0x8(%eax),%eax
  100f72:	85 c0                	test   %eax,%eax
  100f74:	75 58                	jne    100fce <pmmap_init+0xc9>
  100f76:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f79:	8b 40 04             	mov    0x4(%eax),%eax
  100f7c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f7f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f82:	8b 40 10             	mov    0x10(%eax),%eax
  100f85:	85 c0                	test   %eax,%eax
  100f87:	75 0f                	jne    100f98 <pmmap_init+0x93>
  100f89:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f8c:	8b 50 0c             	mov    0xc(%eax),%edx
  100f8f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f92:	f7 d0                	not    %eax
  100f94:	39 c2                	cmp    %eax,%edx
  100f96:	72 09                	jb     100fa1 <pmmap_init+0x9c>
  100f98:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100f9f:	eb 0e                	jmp    100faf <pmmap_init+0xaa>
  100fa1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa4:	8b 50 0c             	mov    0xc(%eax),%edx
  100fa7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100faa:	01 d0                	add    %edx,%eax
  100fac:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100faf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fb2:	8b 40 14             	mov    0x14(%eax),%eax
  100fb5:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100fb8:	83 ec 04             	sub    $0x4,%esp
  100fbb:	ff 75 e0             	push   -0x20(%ebp)
  100fbe:	ff 75 f0             	push   -0x10(%ebp)
  100fc1:	ff 75 e4             	push   -0x1c(%ebp)
  100fc4:	e8 f0 fb ff ff       	call   100bb9 <pmmap_insert>
  100fc9:	83 c4 10             	add    $0x10,%esp
  100fcc:	eb 01                	jmp    100fcf <pmmap_init+0xca>
  100fce:	90                   	nop
  100fcf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd2:	83 c0 18             	add    $0x18,%eax
  100fd5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100fd8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fdb:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fde:	8b 40 30             	mov    0x30(%eax),%eax
  100fe1:	29 c2                	sub    %eax,%edx
  100fe3:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fe6:	8b 40 2c             	mov    0x2c(%eax),%eax
  100fe9:	39 c2                	cmp    %eax,%edx
  100feb:	0f 82 7b ff ff ff    	jb     100f6c <pmmap_init+0x67>
  100ff1:	e8 84 fc ff ff       	call   100c7a <pmmap_merge>
  100ff6:	e8 34 fe ff ff       	call   100e2f <pmmap_dump>
  100ffb:	8b 83 70 20 00 00    	mov    0x2070(%ebx),%eax
  101001:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101004:	eb 18                	jmp    10101e <pmmap_init+0x119>
  101006:	8b 83 8c 20 00 00    	mov    0x208c(%ebx),%eax
  10100c:	83 c0 01             	add    $0x1,%eax
  10100f:	89 83 8c 20 00 00    	mov    %eax,0x208c(%ebx)
  101015:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101018:	8b 40 0c             	mov    0xc(%eax),%eax
  10101b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10101e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  101022:	75 e2                	jne    101006 <pmmap_init+0x101>
  101024:	8b 83 84 20 00 00    	mov    0x2084(%ebx),%eax
  10102a:	83 ec 08             	sub    $0x8,%esp
  10102d:	68 00 10 00 00       	push   $0x1000
  101032:	50                   	push   %eax
  101033:	e8 c7 11 00 00       	call   1021ff <rounddown>
  101038:	83 c4 10             	add    $0x10,%esp
  10103b:	c1 e8 0c             	shr    $0xc,%eax
  10103e:	89 83 88 20 00 00    	mov    %eax,0x2088(%ebx)
  101044:	90                   	nop
  101045:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101048:	c9                   	leave
  101049:	c3                   	ret

0010104a <get_size>:
  10104a:	55                   	push   %ebp
  10104b:	89 e5                	mov    %esp,%ebp
  10104d:	e8 66 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101052:	05 a2 5f 00 00       	add    $0x5fa2,%eax
  101057:	8b 80 8c 20 00 00    	mov    0x208c(%eax),%eax
  10105d:	5d                   	pop    %ebp
  10105e:	c3                   	ret

0010105f <get_mms>:
  10105f:	55                   	push   %ebp
  101060:	89 e5                	mov    %esp,%ebp
  101062:	83 ec 10             	sub    $0x10,%esp
  101065:	e8 4e f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10106a:	05 8a 5f 00 00       	add    $0x5f8a,%eax
  10106f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101076:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10107d:	8b 90 70 20 00 00    	mov    0x2070(%eax),%edx
  101083:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101086:	eb 15                	jmp    10109d <get_mms+0x3e>
  101088:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10108b:	3b 55 08             	cmp    0x8(%ebp),%edx
  10108e:	74 15                	je     1010a5 <get_mms+0x46>
  101090:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101094:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101097:	8b 52 0c             	mov    0xc(%edx),%edx
  10109a:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10109d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010a1:	75 e5                	jne    101088 <get_mms+0x29>
  1010a3:	eb 01                	jmp    1010a6 <get_mms+0x47>
  1010a5:	90                   	nop
  1010a6:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010aa:	74 0b                	je     1010b7 <get_mms+0x58>
  1010ac:	8b 80 8c 20 00 00    	mov    0x208c(%eax),%eax
  1010b2:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1010b5:	75 07                	jne    1010be <get_mms+0x5f>
  1010b7:	b8 00 00 00 00       	mov    $0x0,%eax
  1010bc:	eb 05                	jmp    1010c3 <get_mms+0x64>
  1010be:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c1:	8b 00                	mov    (%eax),%eax
  1010c3:	c9                   	leave
  1010c4:	c3                   	ret

001010c5 <get_mml>:
  1010c5:	55                   	push   %ebp
  1010c6:	89 e5                	mov    %esp,%ebp
  1010c8:	83 ec 10             	sub    $0x10,%esp
  1010cb:	e8 e8 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1010d0:	05 24 5f 00 00       	add    $0x5f24,%eax
  1010d5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010dc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010e3:	8b 90 70 20 00 00    	mov    0x2070(%eax),%edx
  1010e9:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010ec:	eb 15                	jmp    101103 <get_mml+0x3e>
  1010ee:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010f1:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010f4:	74 15                	je     10110b <get_mml+0x46>
  1010f6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010fa:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1010fd:	8b 52 0c             	mov    0xc(%edx),%edx
  101100:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101103:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101107:	75 e5                	jne    1010ee <get_mml+0x29>
  101109:	eb 01                	jmp    10110c <get_mml+0x47>
  10110b:	90                   	nop
  10110c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101110:	74 0b                	je     10111d <get_mml+0x58>
  101112:	8b 80 8c 20 00 00    	mov    0x208c(%eax),%eax
  101118:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10111b:	75 07                	jne    101124 <get_mml+0x5f>
  10111d:	ba 00 00 00 00       	mov    $0x0,%edx
  101122:	eb 0d                	jmp    101131 <get_mml+0x6c>
  101124:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101127:	8b 50 04             	mov    0x4(%eax),%edx
  10112a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10112d:	8b 00                	mov    (%eax),%eax
  10112f:	29 c2                	sub    %eax,%edx
  101131:	89 d0                	mov    %edx,%eax
  101133:	c9                   	leave
  101134:	c3                   	ret

00101135 <is_usable>:
  101135:	55                   	push   %ebp
  101136:	89 e5                	mov    %esp,%ebp
  101138:	83 ec 10             	sub    $0x10,%esp
  10113b:	e8 78 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101140:	05 b4 5e 00 00       	add    $0x5eb4,%eax
  101145:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10114c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101153:	8b 90 70 20 00 00    	mov    0x2070(%eax),%edx
  101159:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10115c:	eb 15                	jmp    101173 <is_usable+0x3e>
  10115e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101161:	3b 55 08             	cmp    0x8(%ebp),%edx
  101164:	74 15                	je     10117b <is_usable+0x46>
  101166:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10116a:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10116d:	8b 52 0c             	mov    0xc(%edx),%edx
  101170:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101173:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101177:	75 e5                	jne    10115e <is_usable+0x29>
  101179:	eb 01                	jmp    10117c <is_usable+0x47>
  10117b:	90                   	nop
  10117c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101180:	74 0b                	je     10118d <is_usable+0x58>
  101182:	8b 80 8c 20 00 00    	mov    0x208c(%eax),%eax
  101188:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10118b:	75 07                	jne    101194 <is_usable+0x5f>
  10118d:	b8 00 00 00 00       	mov    $0x0,%eax
  101192:	eb 0f                	jmp    1011a3 <is_usable+0x6e>
  101194:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101197:	8b 40 08             	mov    0x8(%eax),%eax
  10119a:	83 f8 01             	cmp    $0x1,%eax
  10119d:	0f 94 c0             	sete   %al
  1011a0:	0f b6 c0             	movzbl %al,%eax
  1011a3:	c9                   	leave
  1011a4:	c3                   	ret

001011a5 <memset>:
  1011a5:	55                   	push   %ebp
  1011a6:	89 e5                	mov    %esp,%ebp
  1011a8:	57                   	push   %edi
  1011a9:	e8 0a f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1011ae:	05 46 5e 00 00       	add    $0x5e46,%eax
  1011b3:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1011b7:	75 05                	jne    1011be <memset+0x19>
  1011b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1011bc:	eb 5c                	jmp    10121a <memset+0x75>
  1011be:	8b 45 08             	mov    0x8(%ebp),%eax
  1011c1:	83 e0 03             	and    $0x3,%eax
  1011c4:	85 c0                	test   %eax,%eax
  1011c6:	75 41                	jne    101209 <memset+0x64>
  1011c8:	8b 45 10             	mov    0x10(%ebp),%eax
  1011cb:	83 e0 03             	and    $0x3,%eax
  1011ce:	85 c0                	test   %eax,%eax
  1011d0:	75 37                	jne    101209 <memset+0x64>
  1011d2:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  1011d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011dc:	c1 e0 18             	shl    $0x18,%eax
  1011df:	89 c2                	mov    %eax,%edx
  1011e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011e4:	c1 e0 10             	shl    $0x10,%eax
  1011e7:	09 c2                	or     %eax,%edx
  1011e9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011ec:	c1 e0 08             	shl    $0x8,%eax
  1011ef:	09 d0                	or     %edx,%eax
  1011f1:	09 45 0c             	or     %eax,0xc(%ebp)
  1011f4:	8b 45 10             	mov    0x10(%ebp),%eax
  1011f7:	c1 e8 02             	shr    $0x2,%eax
  1011fa:	89 c1                	mov    %eax,%ecx
  1011fc:	8b 55 08             	mov    0x8(%ebp),%edx
  1011ff:	8b 45 0c             	mov    0xc(%ebp),%eax
  101202:	89 d7                	mov    %edx,%edi
  101204:	fc                   	cld
  101205:	f3 ab                	rep stos %eax,%es:(%edi)
  101207:	eb 0e                	jmp    101217 <memset+0x72>
  101209:	8b 55 08             	mov    0x8(%ebp),%edx
  10120c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10120f:	8b 4d 10             	mov    0x10(%ebp),%ecx
  101212:	89 d7                	mov    %edx,%edi
  101214:	fc                   	cld
  101215:	f3 aa                	rep stos %al,%es:(%edi)
  101217:	8b 45 08             	mov    0x8(%ebp),%eax
  10121a:	8b 7d fc             	mov    -0x4(%ebp),%edi
  10121d:	c9                   	leave
  10121e:	c3                   	ret

0010121f <memmove>:
  10121f:	55                   	push   %ebp
  101220:	89 e5                	mov    %esp,%ebp
  101222:	57                   	push   %edi
  101223:	56                   	push   %esi
  101224:	53                   	push   %ebx
  101225:	83 ec 10             	sub    $0x10,%esp
  101228:	e8 8b f1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10122d:	05 c7 5d 00 00       	add    $0x5dc7,%eax
  101232:	8b 45 0c             	mov    0xc(%ebp),%eax
  101235:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101238:	8b 45 08             	mov    0x8(%ebp),%eax
  10123b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10123e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101241:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  101244:	73 6d                	jae    1012b3 <memmove+0x94>
  101246:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101249:	8b 45 10             	mov    0x10(%ebp),%eax
  10124c:	01 d0                	add    %edx,%eax
  10124e:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  101251:	73 60                	jae    1012b3 <memmove+0x94>
  101253:	8b 45 10             	mov    0x10(%ebp),%eax
  101256:	01 45 f0             	add    %eax,-0x10(%ebp)
  101259:	8b 45 10             	mov    0x10(%ebp),%eax
  10125c:	01 45 ec             	add    %eax,-0x14(%ebp)
  10125f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101262:	83 e0 03             	and    $0x3,%eax
  101265:	85 c0                	test   %eax,%eax
  101267:	75 2f                	jne    101298 <memmove+0x79>
  101269:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10126c:	83 e0 03             	and    $0x3,%eax
  10126f:	85 c0                	test   %eax,%eax
  101271:	75 25                	jne    101298 <memmove+0x79>
  101273:	8b 45 10             	mov    0x10(%ebp),%eax
  101276:	83 e0 03             	and    $0x3,%eax
  101279:	85 c0                	test   %eax,%eax
  10127b:	75 1b                	jne    101298 <memmove+0x79>
  10127d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101280:	83 e8 04             	sub    $0x4,%eax
  101283:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101286:	83 ea 04             	sub    $0x4,%edx
  101289:	8b 4d 10             	mov    0x10(%ebp),%ecx
  10128c:	c1 e9 02             	shr    $0x2,%ecx
  10128f:	89 c7                	mov    %eax,%edi
  101291:	89 d6                	mov    %edx,%esi
  101293:	fd                   	std
  101294:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  101296:	eb 18                	jmp    1012b0 <memmove+0x91>
  101298:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10129b:	8d 50 ff             	lea    -0x1(%eax),%edx
  10129e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1012a1:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1012a4:	8b 45 10             	mov    0x10(%ebp),%eax
  1012a7:	89 d7                	mov    %edx,%edi
  1012a9:	89 de                	mov    %ebx,%esi
  1012ab:	89 c1                	mov    %eax,%ecx
  1012ad:	fd                   	std
  1012ae:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1012b0:	fc                   	cld
  1012b1:	eb 45                	jmp    1012f8 <memmove+0xd9>
  1012b3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1012b6:	83 e0 03             	and    $0x3,%eax
  1012b9:	85 c0                	test   %eax,%eax
  1012bb:	75 2b                	jne    1012e8 <memmove+0xc9>
  1012bd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012c0:	83 e0 03             	and    $0x3,%eax
  1012c3:	85 c0                	test   %eax,%eax
  1012c5:	75 21                	jne    1012e8 <memmove+0xc9>
  1012c7:	8b 45 10             	mov    0x10(%ebp),%eax
  1012ca:	83 e0 03             	and    $0x3,%eax
  1012cd:	85 c0                	test   %eax,%eax
  1012cf:	75 17                	jne    1012e8 <memmove+0xc9>
  1012d1:	8b 45 10             	mov    0x10(%ebp),%eax
  1012d4:	c1 e8 02             	shr    $0x2,%eax
  1012d7:	89 c1                	mov    %eax,%ecx
  1012d9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012dc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1012df:	89 c7                	mov    %eax,%edi
  1012e1:	89 d6                	mov    %edx,%esi
  1012e3:	fc                   	cld
  1012e4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1012e6:	eb 10                	jmp    1012f8 <memmove+0xd9>
  1012e8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1012ee:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1012f1:	89 c7                	mov    %eax,%edi
  1012f3:	89 d6                	mov    %edx,%esi
  1012f5:	fc                   	cld
  1012f6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1012f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1012fb:	83 c4 10             	add    $0x10,%esp
  1012fe:	5b                   	pop    %ebx
  1012ff:	5e                   	pop    %esi
  101300:	5f                   	pop    %edi
  101301:	5d                   	pop    %ebp
  101302:	c3                   	ret

00101303 <memcpy>:
  101303:	55                   	push   %ebp
  101304:	89 e5                	mov    %esp,%ebp
  101306:	e8 ad f0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10130b:	05 e9 5c 00 00       	add    $0x5ce9,%eax
  101310:	ff 75 10             	push   0x10(%ebp)
  101313:	ff 75 0c             	push   0xc(%ebp)
  101316:	ff 75 08             	push   0x8(%ebp)
  101319:	e8 01 ff ff ff       	call   10121f <memmove>
  10131e:	83 c4 0c             	add    $0xc,%esp
  101321:	c9                   	leave
  101322:	c3                   	ret

00101323 <strncmp>:
  101323:	55                   	push   %ebp
  101324:	89 e5                	mov    %esp,%ebp
  101326:	e8 8d f0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10132b:	05 c9 5c 00 00       	add    $0x5cc9,%eax
  101330:	eb 0c                	jmp    10133e <strncmp+0x1b>
  101332:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  101336:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  10133a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  10133e:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  101342:	74 1a                	je     10135e <strncmp+0x3b>
  101344:	8b 45 08             	mov    0x8(%ebp),%eax
  101347:	0f b6 00             	movzbl (%eax),%eax
  10134a:	84 c0                	test   %al,%al
  10134c:	74 10                	je     10135e <strncmp+0x3b>
  10134e:	8b 45 08             	mov    0x8(%ebp),%eax
  101351:	0f b6 10             	movzbl (%eax),%edx
  101354:	8b 45 0c             	mov    0xc(%ebp),%eax
  101357:	0f b6 00             	movzbl (%eax),%eax
  10135a:	38 c2                	cmp    %al,%dl
  10135c:	74 d4                	je     101332 <strncmp+0xf>
  10135e:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  101362:	75 07                	jne    10136b <strncmp+0x48>
  101364:	ba 00 00 00 00       	mov    $0x0,%edx
  101369:	eb 14                	jmp    10137f <strncmp+0x5c>
  10136b:	8b 45 08             	mov    0x8(%ebp),%eax
  10136e:	0f b6 00             	movzbl (%eax),%eax
  101371:	0f b6 d0             	movzbl %al,%edx
  101374:	8b 45 0c             	mov    0xc(%ebp),%eax
  101377:	0f b6 00             	movzbl (%eax),%eax
  10137a:	0f b6 c0             	movzbl %al,%eax
  10137d:	29 c2                	sub    %eax,%edx
  10137f:	89 d0                	mov    %edx,%eax
  101381:	5d                   	pop    %ebp
  101382:	c3                   	ret

00101383 <strnlen>:
  101383:	55                   	push   %ebp
  101384:	89 e5                	mov    %esp,%ebp
  101386:	83 ec 10             	sub    $0x10,%esp
  101389:	e8 2a f0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10138e:	05 66 5c 00 00       	add    $0x5c66,%eax
  101393:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10139a:	eb 0c                	jmp    1013a8 <strnlen+0x25>
  10139c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1013a0:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1013a4:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1013a8:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1013ac:	74 0a                	je     1013b8 <strnlen+0x35>
  1013ae:	8b 45 08             	mov    0x8(%ebp),%eax
  1013b1:	0f b6 00             	movzbl (%eax),%eax
  1013b4:	84 c0                	test   %al,%al
  1013b6:	75 e4                	jne    10139c <strnlen+0x19>
  1013b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1013bb:	c9                   	leave
  1013bc:	c3                   	ret

001013bd <strcmp>:
  1013bd:	55                   	push   %ebp
  1013be:	89 e5                	mov    %esp,%ebp
  1013c0:	e8 f3 ef ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1013c5:	05 2f 5c 00 00       	add    $0x5c2f,%eax
  1013ca:	eb 08                	jmp    1013d4 <strcmp+0x17>
  1013cc:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1013d0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  1013d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1013d7:	0f b6 00             	movzbl (%eax),%eax
  1013da:	84 c0                	test   %al,%al
  1013dc:	74 10                	je     1013ee <strcmp+0x31>
  1013de:	8b 45 08             	mov    0x8(%ebp),%eax
  1013e1:	0f b6 10             	movzbl (%eax),%edx
  1013e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1013e7:	0f b6 00             	movzbl (%eax),%eax
  1013ea:	38 c2                	cmp    %al,%dl
  1013ec:	74 de                	je     1013cc <strcmp+0xf>
  1013ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1013f1:	0f b6 00             	movzbl (%eax),%eax
  1013f4:	0f b6 d0             	movzbl %al,%edx
  1013f7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1013fa:	0f b6 00             	movzbl (%eax),%eax
  1013fd:	0f b6 c0             	movzbl %al,%eax
  101400:	29 c2                	sub    %eax,%edx
  101402:	89 d0                	mov    %edx,%eax
  101404:	5d                   	pop    %ebp
  101405:	c3                   	ret

00101406 <strchr>:
  101406:	55                   	push   %ebp
  101407:	89 e5                	mov    %esp,%ebp
  101409:	83 ec 04             	sub    $0x4,%esp
  10140c:	e8 a7 ef ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101411:	05 e3 5b 00 00       	add    $0x5be3,%eax
  101416:	8b 45 0c             	mov    0xc(%ebp),%eax
  101419:	88 45 fc             	mov    %al,-0x4(%ebp)
  10141c:	eb 14                	jmp    101432 <strchr+0x2c>
  10141e:	8b 45 08             	mov    0x8(%ebp),%eax
  101421:	0f b6 00             	movzbl (%eax),%eax
  101424:	38 45 fc             	cmp    %al,-0x4(%ebp)
  101427:	75 05                	jne    10142e <strchr+0x28>
  101429:	8b 45 08             	mov    0x8(%ebp),%eax
  10142c:	eb 13                	jmp    101441 <strchr+0x3b>
  10142e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  101432:	8b 45 08             	mov    0x8(%ebp),%eax
  101435:	0f b6 00             	movzbl (%eax),%eax
  101438:	84 c0                	test   %al,%al
  10143a:	75 e2                	jne    10141e <strchr+0x18>
  10143c:	b8 00 00 00 00       	mov    $0x0,%eax
  101441:	c9                   	leave
  101442:	c3                   	ret

00101443 <memzero>:
  101443:	55                   	push   %ebp
  101444:	89 e5                	mov    %esp,%ebp
  101446:	e8 6d ef ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10144b:	05 a9 5b 00 00       	add    $0x5ba9,%eax
  101450:	ff 75 0c             	push   0xc(%ebp)
  101453:	6a 00                	push   $0x0
  101455:	ff 75 08             	push   0x8(%ebp)
  101458:	e8 48 fd ff ff       	call   1011a5 <memset>
  10145d:	83 c4 0c             	add    $0xc,%esp
  101460:	c9                   	leave
  101461:	c3                   	ret

00101462 <debug_info>:
  101462:	55                   	push   %ebp
  101463:	89 e5                	mov    %esp,%ebp
  101465:	53                   	push   %ebx
  101466:	83 ec 14             	sub    $0x14,%esp
  101469:	e8 4a ef ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10146e:	05 86 5b 00 00       	add    $0x5b86,%eax
  101473:	8d 55 0c             	lea    0xc(%ebp),%edx
  101476:	89 55 f4             	mov    %edx,-0xc(%ebp)
  101479:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10147c:	83 ec 08             	sub    $0x8,%esp
  10147f:	52                   	push   %edx
  101480:	ff 75 08             	push   0x8(%ebp)
  101483:	89 c3                	mov    %eax,%ebx
  101485:	e8 68 02 00 00       	call   1016f2 <vdprintf>
  10148a:	83 c4 10             	add    $0x10,%esp
  10148d:	90                   	nop
  10148e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101491:	c9                   	leave
  101492:	c3                   	ret

00101493 <debug_normal>:
  101493:	55                   	push   %ebp
  101494:	89 e5                	mov    %esp,%ebp
  101496:	53                   	push   %ebx
  101497:	83 ec 14             	sub    $0x14,%esp
  10149a:	e8 21 ef ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10149f:	81 c3 55 5b 00 00    	add    $0x5b55,%ebx
  1014a5:	83 ec 04             	sub    $0x4,%esp
  1014a8:	ff 75 0c             	push   0xc(%ebp)
  1014ab:	ff 75 08             	push   0x8(%ebp)
  1014ae:	8d 83 23 d1 ff ff    	lea    -0x2edd(%ebx),%eax
  1014b4:	50                   	push   %eax
  1014b5:	e8 ac 02 00 00       	call   101766 <dprintf>
  1014ba:	83 c4 10             	add    $0x10,%esp
  1014bd:	8d 45 14             	lea    0x14(%ebp),%eax
  1014c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1014c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1014c6:	83 ec 08             	sub    $0x8,%esp
  1014c9:	50                   	push   %eax
  1014ca:	ff 75 10             	push   0x10(%ebp)
  1014cd:	e8 20 02 00 00       	call   1016f2 <vdprintf>
  1014d2:	83 c4 10             	add    $0x10,%esp
  1014d5:	90                   	nop
  1014d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1014d9:	c9                   	leave
  1014da:	c3                   	ret

001014db <debug_trace>:
  1014db:	55                   	push   %ebp
  1014dc:	89 e5                	mov    %esp,%ebp
  1014de:	83 ec 10             	sub    $0x10,%esp
  1014e1:	e8 d2 ee ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1014e6:	05 0e 5b 00 00       	add    $0x5b0e,%eax
  1014eb:	8b 45 08             	mov    0x8(%ebp),%eax
  1014ee:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1014f1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1014f8:	eb 23                	jmp    10151d <debug_trace+0x42>
  1014fa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1014fd:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101504:	8b 45 0c             	mov    0xc(%ebp),%eax
  101507:	01 c2                	add    %eax,%edx
  101509:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10150c:	8b 40 04             	mov    0x4(%eax),%eax
  10150f:	89 02                	mov    %eax,(%edx)
  101511:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101514:	8b 00                	mov    (%eax),%eax
  101516:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101519:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10151d:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  101521:	7f 21                	jg     101544 <debug_trace+0x69>
  101523:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101527:	75 d1                	jne    1014fa <debug_trace+0x1f>
  101529:	eb 19                	jmp    101544 <debug_trace+0x69>
  10152b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10152e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101535:	8b 45 0c             	mov    0xc(%ebp),%eax
  101538:	01 d0                	add    %edx,%eax
  10153a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101540:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101544:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  101548:	7e e1                	jle    10152b <debug_trace+0x50>
  10154a:	90                   	nop
  10154b:	90                   	nop
  10154c:	c9                   	leave
  10154d:	c3                   	ret

0010154e <debug_panic>:
  10154e:	55                   	push   %ebp
  10154f:	89 e5                	mov    %esp,%ebp
  101551:	53                   	push   %ebx
  101552:	83 ec 44             	sub    $0x44,%esp
  101555:	e8 66 ee ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10155a:	81 c3 9a 5a 00 00    	add    $0x5a9a,%ebx
  101560:	83 ec 04             	sub    $0x4,%esp
  101563:	ff 75 0c             	push   0xc(%ebp)
  101566:	ff 75 08             	push   0x8(%ebp)
  101569:	8d 83 2f d1 ff ff    	lea    -0x2ed1(%ebx),%eax
  10156f:	50                   	push   %eax
  101570:	e8 f1 01 00 00       	call   101766 <dprintf>
  101575:	83 c4 10             	add    $0x10,%esp
  101578:	8d 45 14             	lea    0x14(%ebp),%eax
  10157b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  10157e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  101581:	83 ec 08             	sub    $0x8,%esp
  101584:	50                   	push   %eax
  101585:	ff 75 10             	push   0x10(%ebp)
  101588:	e8 65 01 00 00       	call   1016f2 <vdprintf>
  10158d:	83 c4 10             	add    $0x10,%esp
  101590:	89 e8                	mov    %ebp,%eax
  101592:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101595:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101598:	83 ec 08             	sub    $0x8,%esp
  10159b:	8d 55 c8             	lea    -0x38(%ebp),%edx
  10159e:	52                   	push   %edx
  10159f:	50                   	push   %eax
  1015a0:	e8 36 ff ff ff       	call   1014db <debug_trace>
  1015a5:	83 c4 10             	add    $0x10,%esp
  1015a8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1015af:	eb 1e                	jmp    1015cf <debug_panic+0x81>
  1015b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1015b4:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  1015b8:	83 ec 08             	sub    $0x8,%esp
  1015bb:	50                   	push   %eax
  1015bc:	8d 83 3b d1 ff ff    	lea    -0x2ec5(%ebx),%eax
  1015c2:	50                   	push   %eax
  1015c3:	e8 9e 01 00 00       	call   101766 <dprintf>
  1015c8:	83 c4 10             	add    $0x10,%esp
  1015cb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1015cf:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  1015d3:	7f 0b                	jg     1015e0 <debug_panic+0x92>
  1015d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1015d8:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  1015dc:	85 c0                	test   %eax,%eax
  1015de:	75 d1                	jne    1015b1 <debug_panic+0x63>
  1015e0:	83 ec 0c             	sub    $0xc,%esp
  1015e3:	8d 83 49 d1 ff ff    	lea    -0x2eb7(%ebx),%eax
  1015e9:	50                   	push   %eax
  1015ea:	e8 77 01 00 00       	call   101766 <dprintf>
  1015ef:	83 c4 10             	add    $0x10,%esp
  1015f2:	e8 e0 0c 00 00       	call   1022d7 <halt>
  1015f7:	90                   	nop
  1015f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1015fb:	c9                   	leave
  1015fc:	c3                   	ret

001015fd <debug_warn>:
  1015fd:	55                   	push   %ebp
  1015fe:	89 e5                	mov    %esp,%ebp
  101600:	53                   	push   %ebx
  101601:	83 ec 14             	sub    $0x14,%esp
  101604:	e8 b7 ed ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  101609:	81 c3 eb 59 00 00    	add    $0x59eb,%ebx
  10160f:	83 ec 04             	sub    $0x4,%esp
  101612:	ff 75 0c             	push   0xc(%ebp)
  101615:	ff 75 08             	push   0x8(%ebp)
  101618:	8d 83 5b d1 ff ff    	lea    -0x2ea5(%ebx),%eax
  10161e:	50                   	push   %eax
  10161f:	e8 42 01 00 00       	call   101766 <dprintf>
  101624:	83 c4 10             	add    $0x10,%esp
  101627:	8d 45 14             	lea    0x14(%ebp),%eax
  10162a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10162d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101630:	83 ec 08             	sub    $0x8,%esp
  101633:	50                   	push   %eax
  101634:	ff 75 10             	push   0x10(%ebp)
  101637:	e8 b6 00 00 00       	call   1016f2 <vdprintf>
  10163c:	83 c4 10             	add    $0x10,%esp
  10163f:	90                   	nop
  101640:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101643:	c9                   	leave
  101644:	c3                   	ret

00101645 <cputs>:
  101645:	55                   	push   %ebp
  101646:	89 e5                	mov    %esp,%ebp
  101648:	53                   	push   %ebx
  101649:	83 ec 04             	sub    $0x4,%esp
  10164c:	e8 6f ed ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  101651:	81 c3 a3 59 00 00    	add    $0x59a3,%ebx
  101657:	eb 19                	jmp    101672 <cputs+0x2d>
  101659:	8b 45 08             	mov    0x8(%ebp),%eax
  10165c:	0f b6 00             	movzbl (%eax),%eax
  10165f:	0f be c0             	movsbl %al,%eax
  101662:	83 ec 0c             	sub    $0xc,%esp
  101665:	50                   	push   %eax
  101666:	e8 65 ee ff ff       	call   1004d0 <cons_putc>
  10166b:	83 c4 10             	add    $0x10,%esp
  10166e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  101672:	8b 45 08             	mov    0x8(%ebp),%eax
  101675:	0f b6 00             	movzbl (%eax),%eax
  101678:	84 c0                	test   %al,%al
  10167a:	75 dd                	jne    101659 <cputs+0x14>
  10167c:	90                   	nop
  10167d:	90                   	nop
  10167e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101681:	c9                   	leave
  101682:	c3                   	ret

00101683 <putch>:
  101683:	55                   	push   %ebp
  101684:	89 e5                	mov    %esp,%ebp
  101686:	83 ec 08             	sub    $0x8,%esp
  101689:	e8 2a ed ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10168e:	05 66 59 00 00       	add    $0x5966,%eax
  101693:	8b 45 0c             	mov    0xc(%ebp),%eax
  101696:	8b 00                	mov    (%eax),%eax
  101698:	8d 48 01             	lea    0x1(%eax),%ecx
  10169b:	8b 55 0c             	mov    0xc(%ebp),%edx
  10169e:	89 0a                	mov    %ecx,(%edx)
  1016a0:	8b 55 08             	mov    0x8(%ebp),%edx
  1016a3:	89 d1                	mov    %edx,%ecx
  1016a5:	8b 55 0c             	mov    0xc(%ebp),%edx
  1016a8:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  1016ac:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016af:	8b 00                	mov    (%eax),%eax
  1016b1:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  1016b6:	75 28                	jne    1016e0 <putch+0x5d>
  1016b8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016bb:	8b 00                	mov    (%eax),%eax
  1016bd:	8b 55 0c             	mov    0xc(%ebp),%edx
  1016c0:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  1016c5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016c8:	83 c0 08             	add    $0x8,%eax
  1016cb:	83 ec 0c             	sub    $0xc,%esp
  1016ce:	50                   	push   %eax
  1016cf:	e8 71 ff ff ff       	call   101645 <cputs>
  1016d4:	83 c4 10             	add    $0x10,%esp
  1016d7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1016e0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016e3:	8b 40 04             	mov    0x4(%eax),%eax
  1016e6:	8d 50 01             	lea    0x1(%eax),%edx
  1016e9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1016ec:	89 50 04             	mov    %edx,0x4(%eax)
  1016ef:	90                   	nop
  1016f0:	c9                   	leave
  1016f1:	c3                   	ret

001016f2 <vdprintf>:
  1016f2:	55                   	push   %ebp
  1016f3:	89 e5                	mov    %esp,%ebp
  1016f5:	53                   	push   %ebx
  1016f6:	81 ec 14 02 00 00    	sub    $0x214,%esp
  1016fc:	e8 b7 ec ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101701:	05 f3 58 00 00       	add    $0x58f3,%eax
  101706:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  10170d:	00 00 00 
  101710:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  101717:	00 00 00 
  10171a:	ff 75 0c             	push   0xc(%ebp)
  10171d:	ff 75 08             	push   0x8(%ebp)
  101720:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  101726:	52                   	push   %edx
  101727:	8d 90 8f a6 ff ff    	lea    -0x5971(%eax),%edx
  10172d:	52                   	push   %edx
  10172e:	89 c3                	mov    %eax,%ebx
  101730:	e8 d6 01 00 00       	call   10190b <vprintfmt>
  101735:	83 c4 10             	add    $0x10,%esp
  101738:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  10173e:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  101745:	00 
  101746:	83 ec 0c             	sub    $0xc,%esp
  101749:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10174f:	83 c0 08             	add    $0x8,%eax
  101752:	50                   	push   %eax
  101753:	e8 ed fe ff ff       	call   101645 <cputs>
  101758:	83 c4 10             	add    $0x10,%esp
  10175b:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  101761:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101764:	c9                   	leave
  101765:	c3                   	ret

00101766 <dprintf>:
  101766:	55                   	push   %ebp
  101767:	89 e5                	mov    %esp,%ebp
  101769:	83 ec 18             	sub    $0x18,%esp
  10176c:	e8 47 ec ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101771:	05 83 58 00 00       	add    $0x5883,%eax
  101776:	8d 45 0c             	lea    0xc(%ebp),%eax
  101779:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10177c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10177f:	83 ec 08             	sub    $0x8,%esp
  101782:	50                   	push   %eax
  101783:	ff 75 08             	push   0x8(%ebp)
  101786:	e8 67 ff ff ff       	call   1016f2 <vdprintf>
  10178b:	83 c4 10             	add    $0x10,%esp
  10178e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101791:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101794:	c9                   	leave
  101795:	c3                   	ret

00101796 <printnum>:
  101796:	55                   	push   %ebp
  101797:	89 e5                	mov    %esp,%ebp
  101799:	57                   	push   %edi
  10179a:	56                   	push   %esi
  10179b:	53                   	push   %ebx
  10179c:	83 ec 1c             	sub    $0x1c,%esp
  10179f:	e8 b2 04 00 00       	call   101c56 <__x86.get_pc_thunk.si>
  1017a4:	81 c6 50 58 00 00    	add    $0x5850,%esi
  1017aa:	8b 45 10             	mov    0x10(%ebp),%eax
  1017ad:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1017b0:	8b 45 14             	mov    0x14(%ebp),%eax
  1017b3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1017b6:	8b 45 18             	mov    0x18(%ebp),%eax
  1017b9:	ba 00 00 00 00       	mov    $0x0,%edx
  1017be:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1017c1:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  1017c4:	19 d1                	sbb    %edx,%ecx
  1017c6:	72 4d                	jb     101815 <printnum+0x7f>
  1017c8:	8b 45 1c             	mov    0x1c(%ebp),%eax
  1017cb:	8d 78 ff             	lea    -0x1(%eax),%edi
  1017ce:	8b 45 18             	mov    0x18(%ebp),%eax
  1017d1:	ba 00 00 00 00       	mov    $0x0,%edx
  1017d6:	52                   	push   %edx
  1017d7:	50                   	push   %eax
  1017d8:	ff 75 e4             	push   -0x1c(%ebp)
  1017db:	ff 75 e0             	push   -0x20(%ebp)
  1017de:	89 f3                	mov    %esi,%ebx
  1017e0:	e8 7b 1e 00 00       	call   103660 <__udivdi3>
  1017e5:	83 c4 10             	add    $0x10,%esp
  1017e8:	83 ec 04             	sub    $0x4,%esp
  1017eb:	ff 75 20             	push   0x20(%ebp)
  1017ee:	57                   	push   %edi
  1017ef:	ff 75 18             	push   0x18(%ebp)
  1017f2:	52                   	push   %edx
  1017f3:	50                   	push   %eax
  1017f4:	ff 75 0c             	push   0xc(%ebp)
  1017f7:	ff 75 08             	push   0x8(%ebp)
  1017fa:	e8 97 ff ff ff       	call   101796 <printnum>
  1017ff:	83 c4 20             	add    $0x20,%esp
  101802:	eb 1b                	jmp    10181f <printnum+0x89>
  101804:	83 ec 08             	sub    $0x8,%esp
  101807:	ff 75 0c             	push   0xc(%ebp)
  10180a:	ff 75 20             	push   0x20(%ebp)
  10180d:	8b 45 08             	mov    0x8(%ebp),%eax
  101810:	ff d0                	call   *%eax
  101812:	83 c4 10             	add    $0x10,%esp
  101815:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  101819:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  10181d:	7f e5                	jg     101804 <printnum+0x6e>
  10181f:	8b 4d 18             	mov    0x18(%ebp),%ecx
  101822:	bb 00 00 00 00       	mov    $0x0,%ebx
  101827:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10182a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10182d:	53                   	push   %ebx
  10182e:	51                   	push   %ecx
  10182f:	52                   	push   %edx
  101830:	50                   	push   %eax
  101831:	89 f3                	mov    %esi,%ebx
  101833:	e8 48 1f 00 00       	call   103780 <__umoddi3>
  101838:	83 c4 10             	add    $0x10,%esp
  10183b:	8d 8e 68 d1 ff ff    	lea    -0x2e98(%esi),%ecx
  101841:	01 c8                	add    %ecx,%eax
  101843:	0f b6 00             	movzbl (%eax),%eax
  101846:	0f be c0             	movsbl %al,%eax
  101849:	83 ec 08             	sub    $0x8,%esp
  10184c:	ff 75 0c             	push   0xc(%ebp)
  10184f:	50                   	push   %eax
  101850:	8b 45 08             	mov    0x8(%ebp),%eax
  101853:	ff d0                	call   *%eax
  101855:	83 c4 10             	add    $0x10,%esp
  101858:	90                   	nop
  101859:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10185c:	5b                   	pop    %ebx
  10185d:	5e                   	pop    %esi
  10185e:	5f                   	pop    %edi
  10185f:	5d                   	pop    %ebp
  101860:	c3                   	ret

00101861 <getuint>:
  101861:	55                   	push   %ebp
  101862:	89 e5                	mov    %esp,%ebp
  101864:	e8 4f eb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101869:	05 8b 57 00 00       	add    $0x578b,%eax
  10186e:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  101872:	7e 14                	jle    101888 <getuint+0x27>
  101874:	8b 45 08             	mov    0x8(%ebp),%eax
  101877:	8b 00                	mov    (%eax),%eax
  101879:	8d 48 08             	lea    0x8(%eax),%ecx
  10187c:	8b 55 08             	mov    0x8(%ebp),%edx
  10187f:	89 0a                	mov    %ecx,(%edx)
  101881:	8b 50 04             	mov    0x4(%eax),%edx
  101884:	8b 00                	mov    (%eax),%eax
  101886:	eb 30                	jmp    1018b8 <getuint+0x57>
  101888:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10188c:	74 16                	je     1018a4 <getuint+0x43>
  10188e:	8b 45 08             	mov    0x8(%ebp),%eax
  101891:	8b 00                	mov    (%eax),%eax
  101893:	8d 48 04             	lea    0x4(%eax),%ecx
  101896:	8b 55 08             	mov    0x8(%ebp),%edx
  101899:	89 0a                	mov    %ecx,(%edx)
  10189b:	8b 00                	mov    (%eax),%eax
  10189d:	ba 00 00 00 00       	mov    $0x0,%edx
  1018a2:	eb 14                	jmp    1018b8 <getuint+0x57>
  1018a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1018a7:	8b 00                	mov    (%eax),%eax
  1018a9:	8d 48 04             	lea    0x4(%eax),%ecx
  1018ac:	8b 55 08             	mov    0x8(%ebp),%edx
  1018af:	89 0a                	mov    %ecx,(%edx)
  1018b1:	8b 00                	mov    (%eax),%eax
  1018b3:	ba 00 00 00 00       	mov    $0x0,%edx
  1018b8:	5d                   	pop    %ebp
  1018b9:	c3                   	ret

001018ba <getint>:
  1018ba:	55                   	push   %ebp
  1018bb:	89 e5                	mov    %esp,%ebp
  1018bd:	e8 f6 ea ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1018c2:	05 32 57 00 00       	add    $0x5732,%eax
  1018c7:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  1018cb:	7e 14                	jle    1018e1 <getint+0x27>
  1018cd:	8b 45 08             	mov    0x8(%ebp),%eax
  1018d0:	8b 00                	mov    (%eax),%eax
  1018d2:	8d 48 08             	lea    0x8(%eax),%ecx
  1018d5:	8b 55 08             	mov    0x8(%ebp),%edx
  1018d8:	89 0a                	mov    %ecx,(%edx)
  1018da:	8b 50 04             	mov    0x4(%eax),%edx
  1018dd:	8b 00                	mov    (%eax),%eax
  1018df:	eb 28                	jmp    101909 <getint+0x4f>
  1018e1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1018e5:	74 12                	je     1018f9 <getint+0x3f>
  1018e7:	8b 45 08             	mov    0x8(%ebp),%eax
  1018ea:	8b 00                	mov    (%eax),%eax
  1018ec:	8d 48 04             	lea    0x4(%eax),%ecx
  1018ef:	8b 55 08             	mov    0x8(%ebp),%edx
  1018f2:	89 0a                	mov    %ecx,(%edx)
  1018f4:	8b 00                	mov    (%eax),%eax
  1018f6:	99                   	cltd
  1018f7:	eb 10                	jmp    101909 <getint+0x4f>
  1018f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1018fc:	8b 00                	mov    (%eax),%eax
  1018fe:	8d 48 04             	lea    0x4(%eax),%ecx
  101901:	8b 55 08             	mov    0x8(%ebp),%edx
  101904:	89 0a                	mov    %ecx,(%edx)
  101906:	8b 00                	mov    (%eax),%eax
  101908:	99                   	cltd
  101909:	5d                   	pop    %ebp
  10190a:	c3                   	ret

0010190b <vprintfmt>:
  10190b:	55                   	push   %ebp
  10190c:	89 e5                	mov    %esp,%ebp
  10190e:	57                   	push   %edi
  10190f:	56                   	push   %esi
  101910:	53                   	push   %ebx
  101911:	83 ec 2c             	sub    $0x2c,%esp
  101914:	e8 41 03 00 00       	call   101c5a <__x86.get_pc_thunk.di>
  101919:	81 c7 db 56 00 00    	add    $0x56db,%edi
  10191f:	eb 17                	jmp    101938 <vprintfmt+0x2d>
  101921:	85 db                	test   %ebx,%ebx
  101923:	0f 84 24 03 00 00    	je     101c4d <.L21+0x2d>
  101929:	83 ec 08             	sub    $0x8,%esp
  10192c:	ff 75 0c             	push   0xc(%ebp)
  10192f:	53                   	push   %ebx
  101930:	8b 45 08             	mov    0x8(%ebp),%eax
  101933:	ff d0                	call   *%eax
  101935:	83 c4 10             	add    $0x10,%esp
  101938:	8b 45 10             	mov    0x10(%ebp),%eax
  10193b:	8d 50 01             	lea    0x1(%eax),%edx
  10193e:	89 55 10             	mov    %edx,0x10(%ebp)
  101941:	0f b6 00             	movzbl (%eax),%eax
  101944:	0f b6 d8             	movzbl %al,%ebx
  101947:	83 fb 25             	cmp    $0x25,%ebx
  10194a:	75 d5                	jne    101921 <vprintfmt+0x16>
  10194c:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  101950:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  101957:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10195e:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  101965:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  10196c:	eb 04                	jmp    101972 <vprintfmt+0x67>
  10196e:	90                   	nop
  10196f:	eb 01                	jmp    101972 <vprintfmt+0x67>
  101971:	90                   	nop
  101972:	8b 45 10             	mov    0x10(%ebp),%eax
  101975:	8d 50 01             	lea    0x1(%eax),%edx
  101978:	89 55 10             	mov    %edx,0x10(%ebp)
  10197b:	0f b6 00             	movzbl (%eax),%eax
  10197e:	0f b6 d8             	movzbl %al,%ebx
  101981:	8d 43 dd             	lea    -0x23(%ebx),%eax
  101984:	83 f8 55             	cmp    $0x55,%eax
  101987:	0f 87 93 02 00 00    	ja     101c20 <.L21>
  10198d:	c1 e0 02             	shl    $0x2,%eax
  101990:	8b 84 38 80 d1 ff ff 	mov    -0x2e80(%eax,%edi,1),%eax
  101997:	01 f8                	add    %edi,%eax
  101999:	ff e0                	jmp    *%eax

0010199b <.L33>:
  10199b:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  10199f:	eb d1                	jmp    101972 <vprintfmt+0x67>

001019a1 <.L31>:
  1019a1:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  1019a5:	eb cb                	jmp    101972 <vprintfmt+0x67>

001019a7 <.L30>:
  1019a7:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  1019ae:	8b 55 d0             	mov    -0x30(%ebp),%edx
  1019b1:	89 d0                	mov    %edx,%eax
  1019b3:	c1 e0 02             	shl    $0x2,%eax
  1019b6:	01 d0                	add    %edx,%eax
  1019b8:	01 c0                	add    %eax,%eax
  1019ba:	01 d8                	add    %ebx,%eax
  1019bc:	83 e8 30             	sub    $0x30,%eax
  1019bf:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1019c2:	8b 45 10             	mov    0x10(%ebp),%eax
  1019c5:	0f b6 00             	movzbl (%eax),%eax
  1019c8:	0f be d8             	movsbl %al,%ebx
  1019cb:	83 fb 2f             	cmp    $0x2f,%ebx
  1019ce:	7e 3d                	jle    101a0d <.L36+0xc>
  1019d0:	83 fb 39             	cmp    $0x39,%ebx
  1019d3:	7f 38                	jg     101a0d <.L36+0xc>
  1019d5:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  1019d9:	eb d3                	jmp    1019ae <.L30+0x7>

001019db <.L34>:
  1019db:	8b 45 14             	mov    0x14(%ebp),%eax
  1019de:	8d 50 04             	lea    0x4(%eax),%edx
  1019e1:	89 55 14             	mov    %edx,0x14(%ebp)
  1019e4:	8b 00                	mov    (%eax),%eax
  1019e6:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1019e9:	eb 23                	jmp    101a0e <.L36+0xd>

001019eb <.L32>:
  1019eb:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1019ef:	0f 89 79 ff ff ff    	jns    10196e <vprintfmt+0x63>
  1019f5:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1019fc:	e9 6d ff ff ff       	jmp    10196e <vprintfmt+0x63>

00101a01 <.L36>:
  101a01:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  101a08:	e9 65 ff ff ff       	jmp    101972 <vprintfmt+0x67>
  101a0d:	90                   	nop
  101a0e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  101a12:	0f 89 59 ff ff ff    	jns    101971 <vprintfmt+0x66>
  101a18:	8b 45 d0             	mov    -0x30(%ebp),%eax
  101a1b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  101a1e:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  101a25:	e9 47 ff ff ff       	jmp    101971 <vprintfmt+0x66>

00101a2a <.L27>:
  101a2a:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  101a2e:	e9 3f ff ff ff       	jmp    101972 <vprintfmt+0x67>

00101a33 <.L29>:
  101a33:	8b 45 14             	mov    0x14(%ebp),%eax
  101a36:	8d 50 04             	lea    0x4(%eax),%edx
  101a39:	89 55 14             	mov    %edx,0x14(%ebp)
  101a3c:	8b 00                	mov    (%eax),%eax
  101a3e:	83 ec 08             	sub    $0x8,%esp
  101a41:	ff 75 0c             	push   0xc(%ebp)
  101a44:	50                   	push   %eax
  101a45:	8b 45 08             	mov    0x8(%ebp),%eax
  101a48:	ff d0                	call   *%eax
  101a4a:	83 c4 10             	add    $0x10,%esp
  101a4d:	e9 f6 01 00 00       	jmp    101c48 <.L21+0x28>

00101a52 <.L25>:
  101a52:	8b 45 14             	mov    0x14(%ebp),%eax
  101a55:	8d 50 04             	lea    0x4(%eax),%edx
  101a58:	89 55 14             	mov    %edx,0x14(%ebp)
  101a5b:	8b 30                	mov    (%eax),%esi
  101a5d:	85 f6                	test   %esi,%esi
  101a5f:	75 06                	jne    101a67 <.L25+0x15>
  101a61:	8d b7 79 d1 ff ff    	lea    -0x2e87(%edi),%esi
  101a67:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  101a6b:	7e 71                	jle    101ade <.L25+0x8c>
  101a6d:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  101a71:	74 6b                	je     101ade <.L25+0x8c>
  101a73:	8b 45 d0             	mov    -0x30(%ebp),%eax
  101a76:	83 ec 08             	sub    $0x8,%esp
  101a79:	50                   	push   %eax
  101a7a:	56                   	push   %esi
  101a7b:	89 fb                	mov    %edi,%ebx
  101a7d:	e8 01 f9 ff ff       	call   101383 <strnlen>
  101a82:	83 c4 10             	add    $0x10,%esp
  101a85:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  101a88:	eb 17                	jmp    101aa1 <.L25+0x4f>
  101a8a:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  101a8e:	83 ec 08             	sub    $0x8,%esp
  101a91:	ff 75 0c             	push   0xc(%ebp)
  101a94:	50                   	push   %eax
  101a95:	8b 45 08             	mov    0x8(%ebp),%eax
  101a98:	ff d0                	call   *%eax
  101a9a:	83 c4 10             	add    $0x10,%esp
  101a9d:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  101aa1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  101aa5:	7f e3                	jg     101a8a <.L25+0x38>
  101aa7:	eb 35                	jmp    101ade <.L25+0x8c>
  101aa9:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  101aad:	74 1c                	je     101acb <.L25+0x79>
  101aaf:	83 fb 1f             	cmp    $0x1f,%ebx
  101ab2:	7e 05                	jle    101ab9 <.L25+0x67>
  101ab4:	83 fb 7e             	cmp    $0x7e,%ebx
  101ab7:	7e 12                	jle    101acb <.L25+0x79>
  101ab9:	83 ec 08             	sub    $0x8,%esp
  101abc:	ff 75 0c             	push   0xc(%ebp)
  101abf:	6a 3f                	push   $0x3f
  101ac1:	8b 45 08             	mov    0x8(%ebp),%eax
  101ac4:	ff d0                	call   *%eax
  101ac6:	83 c4 10             	add    $0x10,%esp
  101ac9:	eb 0f                	jmp    101ada <.L25+0x88>
  101acb:	83 ec 08             	sub    $0x8,%esp
  101ace:	ff 75 0c             	push   0xc(%ebp)
  101ad1:	53                   	push   %ebx
  101ad2:	8b 45 08             	mov    0x8(%ebp),%eax
  101ad5:	ff d0                	call   *%eax
  101ad7:	83 c4 10             	add    $0x10,%esp
  101ada:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  101ade:	89 f0                	mov    %esi,%eax
  101ae0:	8d 70 01             	lea    0x1(%eax),%esi
  101ae3:	0f b6 00             	movzbl (%eax),%eax
  101ae6:	0f be d8             	movsbl %al,%ebx
  101ae9:	85 db                	test   %ebx,%ebx
  101aeb:	74 26                	je     101b13 <.L25+0xc1>
  101aed:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  101af1:	78 b6                	js     101aa9 <.L25+0x57>
  101af3:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  101af7:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  101afb:	79 ac                	jns    101aa9 <.L25+0x57>
  101afd:	eb 14                	jmp    101b13 <.L25+0xc1>
  101aff:	83 ec 08             	sub    $0x8,%esp
  101b02:	ff 75 0c             	push   0xc(%ebp)
  101b05:	6a 20                	push   $0x20
  101b07:	8b 45 08             	mov    0x8(%ebp),%eax
  101b0a:	ff d0                	call   *%eax
  101b0c:	83 c4 10             	add    $0x10,%esp
  101b0f:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  101b13:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  101b17:	7f e6                	jg     101aff <.L25+0xad>
  101b19:	e9 2a 01 00 00       	jmp    101c48 <.L21+0x28>

00101b1e <.L28>:
  101b1e:	83 ec 08             	sub    $0x8,%esp
  101b21:	ff 75 d8             	push   -0x28(%ebp)
  101b24:	8d 45 14             	lea    0x14(%ebp),%eax
  101b27:	50                   	push   %eax
  101b28:	e8 8d fd ff ff       	call   1018ba <getint>
  101b2d:	83 c4 10             	add    $0x10,%esp
  101b30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101b33:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101b36:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101b39:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  101b3c:	85 d2                	test   %edx,%edx
  101b3e:	79 23                	jns    101b63 <.L28+0x45>
  101b40:	83 ec 08             	sub    $0x8,%esp
  101b43:	ff 75 0c             	push   0xc(%ebp)
  101b46:	6a 2d                	push   $0x2d
  101b48:	8b 45 08             	mov    0x8(%ebp),%eax
  101b4b:	ff d0                	call   *%eax
  101b4d:	83 c4 10             	add    $0x10,%esp
  101b50:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101b53:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  101b56:	f7 d8                	neg    %eax
  101b58:	83 d2 00             	adc    $0x0,%edx
  101b5b:	f7 da                	neg    %edx
  101b5d:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101b60:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101b63:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  101b6a:	eb 7e                	jmp    101bea <.L22+0x1f>

00101b6c <.L24>:
  101b6c:	83 ec 08             	sub    $0x8,%esp
  101b6f:	ff 75 d8             	push   -0x28(%ebp)
  101b72:	8d 45 14             	lea    0x14(%ebp),%eax
  101b75:	50                   	push   %eax
  101b76:	e8 e6 fc ff ff       	call   101861 <getuint>
  101b7b:	83 c4 10             	add    $0x10,%esp
  101b7e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101b81:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101b84:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  101b8b:	eb 5d                	jmp    101bea <.L22+0x1f>

00101b8d <.L26>:
  101b8d:	83 ec 08             	sub    $0x8,%esp
  101b90:	ff 75 0c             	push   0xc(%ebp)
  101b93:	6a 30                	push   $0x30
  101b95:	8b 45 08             	mov    0x8(%ebp),%eax
  101b98:	ff d0                	call   *%eax
  101b9a:	83 c4 10             	add    $0x10,%esp
  101b9d:	83 ec 08             	sub    $0x8,%esp
  101ba0:	ff 75 0c             	push   0xc(%ebp)
  101ba3:	6a 78                	push   $0x78
  101ba5:	8b 45 08             	mov    0x8(%ebp),%eax
  101ba8:	ff d0                	call   *%eax
  101baa:	83 c4 10             	add    $0x10,%esp
  101bad:	8b 45 14             	mov    0x14(%ebp),%eax
  101bb0:	8d 50 04             	lea    0x4(%eax),%edx
  101bb3:	89 55 14             	mov    %edx,0x14(%ebp)
  101bb6:	8b 00                	mov    (%eax),%eax
  101bb8:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101bbb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  101bc2:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  101bc9:	eb 1f                	jmp    101bea <.L22+0x1f>

00101bcb <.L22>:
  101bcb:	83 ec 08             	sub    $0x8,%esp
  101bce:	ff 75 d8             	push   -0x28(%ebp)
  101bd1:	8d 45 14             	lea    0x14(%ebp),%eax
  101bd4:	50                   	push   %eax
  101bd5:	e8 87 fc ff ff       	call   101861 <getuint>
  101bda:	83 c4 10             	add    $0x10,%esp
  101bdd:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101be0:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101be3:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  101bea:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  101bee:	8b 45 dc             	mov    -0x24(%ebp),%eax
  101bf1:	83 ec 04             	sub    $0x4,%esp
  101bf4:	52                   	push   %edx
  101bf5:	ff 75 d4             	push   -0x2c(%ebp)
  101bf8:	50                   	push   %eax
  101bf9:	ff 75 e4             	push   -0x1c(%ebp)
  101bfc:	ff 75 e0             	push   -0x20(%ebp)
  101bff:	ff 75 0c             	push   0xc(%ebp)
  101c02:	ff 75 08             	push   0x8(%ebp)
  101c05:	e8 8c fb ff ff       	call   101796 <printnum>
  101c0a:	83 c4 20             	add    $0x20,%esp
  101c0d:	eb 39                	jmp    101c48 <.L21+0x28>

00101c0f <.L35>:
  101c0f:	83 ec 08             	sub    $0x8,%esp
  101c12:	ff 75 0c             	push   0xc(%ebp)
  101c15:	53                   	push   %ebx
  101c16:	8b 45 08             	mov    0x8(%ebp),%eax
  101c19:	ff d0                	call   *%eax
  101c1b:	83 c4 10             	add    $0x10,%esp
  101c1e:	eb 28                	jmp    101c48 <.L21+0x28>

00101c20 <.L21>:
  101c20:	83 ec 08             	sub    $0x8,%esp
  101c23:	ff 75 0c             	push   0xc(%ebp)
  101c26:	6a 25                	push   $0x25
  101c28:	8b 45 08             	mov    0x8(%ebp),%eax
  101c2b:	ff d0                	call   *%eax
  101c2d:	83 c4 10             	add    $0x10,%esp
  101c30:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  101c34:	eb 04                	jmp    101c3a <.L21+0x1a>
  101c36:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  101c3a:	8b 45 10             	mov    0x10(%ebp),%eax
  101c3d:	83 e8 01             	sub    $0x1,%eax
  101c40:	0f b6 00             	movzbl (%eax),%eax
  101c43:	3c 25                	cmp    $0x25,%al
  101c45:	75 ef                	jne    101c36 <.L21+0x16>
  101c47:	90                   	nop
  101c48:	e9 eb fc ff ff       	jmp    101938 <vprintfmt+0x2d>
  101c4d:	90                   	nop
  101c4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  101c51:	5b                   	pop    %ebx
  101c52:	5e                   	pop    %esi
  101c53:	5f                   	pop    %edi
  101c54:	5d                   	pop    %ebp
  101c55:	c3                   	ret

00101c56 <__x86.get_pc_thunk.si>:
  101c56:	8b 34 24             	mov    (%esp),%esi
  101c59:	c3                   	ret

00101c5a <__x86.get_pc_thunk.di>:
  101c5a:	8b 3c 24             	mov    (%esp),%edi
  101c5d:	c3                   	ret

00101c5e <seg_init>:
  101c5e:	55                   	push   %ebp
  101c5f:	89 e5                	mov    %esp,%ebp
  101c61:	53                   	push   %ebx
  101c62:	83 ec 14             	sub    $0x14,%esp
  101c65:	e8 56 e7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  101c6a:	81 c3 8a 53 00 00    	add    $0x538a,%ebx
  101c70:	8d 83 0c 30 00 00    	lea    0x300c(%ebx),%eax
  101c76:	c7 c2 2c 75 10 00    	mov    $0x10752c,%edx
  101c7c:	29 d0                	sub    %edx,%eax
  101c7e:	83 ec 08             	sub    $0x8,%esp
  101c81:	50                   	push   %eax
  101c82:	c7 c0 2c 75 10 00    	mov    $0x10752c,%eax
  101c88:	50                   	push   %eax
  101c89:	e8 b5 f7 ff ff       	call   101443 <memzero>
  101c8e:	83 c4 10             	add    $0x10,%esp
  101c91:	c7 c0 44 ec 94 00    	mov    $0x94ec44,%eax
  101c97:	89 c2                	mov    %eax,%edx
  101c99:	8d 83 0c 30 00 00    	lea    0x300c(%ebx),%eax
  101c9f:	29 c2                	sub    %eax,%edx
  101ca1:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  101ca7:	89 c2                	mov    %eax,%edx
  101ca9:	8d 83 0c 40 00 00    	lea    0x400c(%ebx),%eax
  101caf:	83 ec 08             	sub    $0x8,%esp
  101cb2:	52                   	push   %edx
  101cb3:	50                   	push   %eax
  101cb4:	e8 8a f7 ff ff       	call   101443 <memzero>
  101cb9:	83 c4 10             	add    $0x10,%esp
  101cbc:	c7 83 0c 40 04 00 00 	movl   $0x0,0x4400c(%ebx)
  101cc3:	00 00 00 
  101cc6:	c7 83 10 40 04 00 00 	movl   $0x0,0x44010(%ebx)
  101ccd:	00 00 00 
  101cd0:	66 c7 83 14 40 04 00 	movw   $0xffff,0x44014(%ebx)
  101cd7:	ff ff 
  101cd9:	66 c7 83 16 40 04 00 	movw   $0x0,0x44016(%ebx)
  101ce0:	00 00 
  101ce2:	c6 83 18 40 04 00 00 	movb   $0x0,0x44018(%ebx)
  101ce9:	0f b6 83 19 40 04 00 	movzbl 0x44019(%ebx),%eax
  101cf0:	83 e0 f0             	and    $0xfffffff0,%eax
  101cf3:	83 c8 0a             	or     $0xa,%eax
  101cf6:	88 83 19 40 04 00    	mov    %al,0x44019(%ebx)
  101cfc:	0f b6 83 19 40 04 00 	movzbl 0x44019(%ebx),%eax
  101d03:	83 c8 10             	or     $0x10,%eax
  101d06:	88 83 19 40 04 00    	mov    %al,0x44019(%ebx)
  101d0c:	0f b6 83 19 40 04 00 	movzbl 0x44019(%ebx),%eax
  101d13:	83 e0 9f             	and    $0xffffff9f,%eax
  101d16:	88 83 19 40 04 00    	mov    %al,0x44019(%ebx)
  101d1c:	0f b6 83 19 40 04 00 	movzbl 0x44019(%ebx),%eax
  101d23:	83 c8 80             	or     $0xffffff80,%eax
  101d26:	88 83 19 40 04 00    	mov    %al,0x44019(%ebx)
  101d2c:	0f b6 83 1a 40 04 00 	movzbl 0x4401a(%ebx),%eax
  101d33:	83 c8 0f             	or     $0xf,%eax
  101d36:	88 83 1a 40 04 00    	mov    %al,0x4401a(%ebx)
  101d3c:	0f b6 83 1a 40 04 00 	movzbl 0x4401a(%ebx),%eax
  101d43:	83 e0 ef             	and    $0xffffffef,%eax
  101d46:	88 83 1a 40 04 00    	mov    %al,0x4401a(%ebx)
  101d4c:	0f b6 83 1a 40 04 00 	movzbl 0x4401a(%ebx),%eax
  101d53:	83 e0 df             	and    $0xffffffdf,%eax
  101d56:	88 83 1a 40 04 00    	mov    %al,0x4401a(%ebx)
  101d5c:	0f b6 83 1a 40 04 00 	movzbl 0x4401a(%ebx),%eax
  101d63:	83 c8 40             	or     $0x40,%eax
  101d66:	88 83 1a 40 04 00    	mov    %al,0x4401a(%ebx)
  101d6c:	0f b6 83 1a 40 04 00 	movzbl 0x4401a(%ebx),%eax
  101d73:	83 c8 80             	or     $0xffffff80,%eax
  101d76:	88 83 1a 40 04 00    	mov    %al,0x4401a(%ebx)
  101d7c:	c6 83 1b 40 04 00 00 	movb   $0x0,0x4401b(%ebx)
  101d83:	66 c7 83 1c 40 04 00 	movw   $0xffff,0x4401c(%ebx)
  101d8a:	ff ff 
  101d8c:	66 c7 83 1e 40 04 00 	movw   $0x0,0x4401e(%ebx)
  101d93:	00 00 
  101d95:	c6 83 20 40 04 00 00 	movb   $0x0,0x44020(%ebx)
  101d9c:	0f b6 83 21 40 04 00 	movzbl 0x44021(%ebx),%eax
  101da3:	83 e0 f0             	and    $0xfffffff0,%eax
  101da6:	83 c8 02             	or     $0x2,%eax
  101da9:	88 83 21 40 04 00    	mov    %al,0x44021(%ebx)
  101daf:	0f b6 83 21 40 04 00 	movzbl 0x44021(%ebx),%eax
  101db6:	83 c8 10             	or     $0x10,%eax
  101db9:	88 83 21 40 04 00    	mov    %al,0x44021(%ebx)
  101dbf:	0f b6 83 21 40 04 00 	movzbl 0x44021(%ebx),%eax
  101dc6:	83 e0 9f             	and    $0xffffff9f,%eax
  101dc9:	88 83 21 40 04 00    	mov    %al,0x44021(%ebx)
  101dcf:	0f b6 83 21 40 04 00 	movzbl 0x44021(%ebx),%eax
  101dd6:	83 c8 80             	or     $0xffffff80,%eax
  101dd9:	88 83 21 40 04 00    	mov    %al,0x44021(%ebx)
  101ddf:	0f b6 83 22 40 04 00 	movzbl 0x44022(%ebx),%eax
  101de6:	83 c8 0f             	or     $0xf,%eax
  101de9:	88 83 22 40 04 00    	mov    %al,0x44022(%ebx)
  101def:	0f b6 83 22 40 04 00 	movzbl 0x44022(%ebx),%eax
  101df6:	83 e0 ef             	and    $0xffffffef,%eax
  101df9:	88 83 22 40 04 00    	mov    %al,0x44022(%ebx)
  101dff:	0f b6 83 22 40 04 00 	movzbl 0x44022(%ebx),%eax
  101e06:	83 e0 df             	and    $0xffffffdf,%eax
  101e09:	88 83 22 40 04 00    	mov    %al,0x44022(%ebx)
  101e0f:	0f b6 83 22 40 04 00 	movzbl 0x44022(%ebx),%eax
  101e16:	83 c8 40             	or     $0x40,%eax
  101e19:	88 83 22 40 04 00    	mov    %al,0x44022(%ebx)
  101e1f:	0f b6 83 22 40 04 00 	movzbl 0x44022(%ebx),%eax
  101e26:	83 c8 80             	or     $0xffffff80,%eax
  101e29:	88 83 22 40 04 00    	mov    %al,0x44022(%ebx)
  101e2f:	c6 83 23 40 04 00 00 	movb   $0x0,0x44023(%ebx)
  101e36:	66 c7 83 24 40 04 00 	movw   $0xffff,0x44024(%ebx)
  101e3d:	ff ff 
  101e3f:	66 c7 83 26 40 04 00 	movw   $0x0,0x44026(%ebx)
  101e46:	00 00 
  101e48:	c6 83 28 40 04 00 00 	movb   $0x0,0x44028(%ebx)
  101e4f:	0f b6 83 29 40 04 00 	movzbl 0x44029(%ebx),%eax
  101e56:	83 e0 f0             	and    $0xfffffff0,%eax
  101e59:	83 c8 0a             	or     $0xa,%eax
  101e5c:	88 83 29 40 04 00    	mov    %al,0x44029(%ebx)
  101e62:	0f b6 83 29 40 04 00 	movzbl 0x44029(%ebx),%eax
  101e69:	83 c8 10             	or     $0x10,%eax
  101e6c:	88 83 29 40 04 00    	mov    %al,0x44029(%ebx)
  101e72:	0f b6 83 29 40 04 00 	movzbl 0x44029(%ebx),%eax
  101e79:	83 c8 60             	or     $0x60,%eax
  101e7c:	88 83 29 40 04 00    	mov    %al,0x44029(%ebx)
  101e82:	0f b6 83 29 40 04 00 	movzbl 0x44029(%ebx),%eax
  101e89:	83 c8 80             	or     $0xffffff80,%eax
  101e8c:	88 83 29 40 04 00    	mov    %al,0x44029(%ebx)
  101e92:	0f b6 83 2a 40 04 00 	movzbl 0x4402a(%ebx),%eax
  101e99:	83 c8 0f             	or     $0xf,%eax
  101e9c:	88 83 2a 40 04 00    	mov    %al,0x4402a(%ebx)
  101ea2:	0f b6 83 2a 40 04 00 	movzbl 0x4402a(%ebx),%eax
  101ea9:	83 e0 ef             	and    $0xffffffef,%eax
  101eac:	88 83 2a 40 04 00    	mov    %al,0x4402a(%ebx)
  101eb2:	0f b6 83 2a 40 04 00 	movzbl 0x4402a(%ebx),%eax
  101eb9:	83 e0 df             	and    $0xffffffdf,%eax
  101ebc:	88 83 2a 40 04 00    	mov    %al,0x4402a(%ebx)
  101ec2:	0f b6 83 2a 40 04 00 	movzbl 0x4402a(%ebx),%eax
  101ec9:	83 c8 40             	or     $0x40,%eax
  101ecc:	88 83 2a 40 04 00    	mov    %al,0x4402a(%ebx)
  101ed2:	0f b6 83 2a 40 04 00 	movzbl 0x4402a(%ebx),%eax
  101ed9:	83 c8 80             	or     $0xffffff80,%eax
  101edc:	88 83 2a 40 04 00    	mov    %al,0x4402a(%ebx)
  101ee2:	c6 83 2b 40 04 00 00 	movb   $0x0,0x4402b(%ebx)
  101ee9:	66 c7 83 2c 40 04 00 	movw   $0xffff,0x4402c(%ebx)
  101ef0:	ff ff 
  101ef2:	66 c7 83 2e 40 04 00 	movw   $0x0,0x4402e(%ebx)
  101ef9:	00 00 
  101efb:	c6 83 30 40 04 00 00 	movb   $0x0,0x44030(%ebx)
  101f02:	0f b6 83 31 40 04 00 	movzbl 0x44031(%ebx),%eax
  101f09:	83 e0 f0             	and    $0xfffffff0,%eax
  101f0c:	83 c8 02             	or     $0x2,%eax
  101f0f:	88 83 31 40 04 00    	mov    %al,0x44031(%ebx)
  101f15:	0f b6 83 31 40 04 00 	movzbl 0x44031(%ebx),%eax
  101f1c:	83 c8 10             	or     $0x10,%eax
  101f1f:	88 83 31 40 04 00    	mov    %al,0x44031(%ebx)
  101f25:	0f b6 83 31 40 04 00 	movzbl 0x44031(%ebx),%eax
  101f2c:	83 c8 60             	or     $0x60,%eax
  101f2f:	88 83 31 40 04 00    	mov    %al,0x44031(%ebx)
  101f35:	0f b6 83 31 40 04 00 	movzbl 0x44031(%ebx),%eax
  101f3c:	83 c8 80             	or     $0xffffff80,%eax
  101f3f:	88 83 31 40 04 00    	mov    %al,0x44031(%ebx)
  101f45:	0f b6 83 32 40 04 00 	movzbl 0x44032(%ebx),%eax
  101f4c:	83 c8 0f             	or     $0xf,%eax
  101f4f:	88 83 32 40 04 00    	mov    %al,0x44032(%ebx)
  101f55:	0f b6 83 32 40 04 00 	movzbl 0x44032(%ebx),%eax
  101f5c:	83 e0 ef             	and    $0xffffffef,%eax
  101f5f:	88 83 32 40 04 00    	mov    %al,0x44032(%ebx)
  101f65:	0f b6 83 32 40 04 00 	movzbl 0x44032(%ebx),%eax
  101f6c:	83 e0 df             	and    $0xffffffdf,%eax
  101f6f:	88 83 32 40 04 00    	mov    %al,0x44032(%ebx)
  101f75:	0f b6 83 32 40 04 00 	movzbl 0x44032(%ebx),%eax
  101f7c:	83 c8 40             	or     $0x40,%eax
  101f7f:	88 83 32 40 04 00    	mov    %al,0x44032(%ebx)
  101f85:	0f b6 83 32 40 04 00 	movzbl 0x44032(%ebx),%eax
  101f8c:	83 c8 80             	or     $0xffffff80,%eax
  101f8f:	88 83 32 40 04 00    	mov    %al,0x44032(%ebx)
  101f95:	c6 83 33 40 04 00 00 	movb   $0x0,0x44033(%ebx)
  101f9c:	8d 83 0c 30 00 00    	lea    0x300c(%ebx),%eax
  101fa2:	05 00 10 00 00       	add    $0x1000,%eax
  101fa7:	89 83 50 7b 04 00    	mov    %eax,0x47b50(%ebx)
  101fad:	66 c7 83 54 7b 04 00 	movw   $0x10,0x47b54(%ebx)
  101fb4:	10 00 
  101fb6:	66 c7 83 34 40 04 00 	movw   $0xeb,0x44034(%ebx)
  101fbd:	eb 00 
  101fbf:	8d 83 4c 7b 04 00    	lea    0x47b4c(%ebx),%eax
  101fc5:	66 89 83 36 40 04 00 	mov    %ax,0x44036(%ebx)
  101fcc:	8d 83 4c 7b 04 00    	lea    0x47b4c(%ebx),%eax
  101fd2:	c1 e8 10             	shr    $0x10,%eax
  101fd5:	88 83 38 40 04 00    	mov    %al,0x44038(%ebx)
  101fdb:	0f b6 83 39 40 04 00 	movzbl 0x44039(%ebx),%eax
  101fe2:	83 e0 f0             	and    $0xfffffff0,%eax
  101fe5:	83 c8 09             	or     $0x9,%eax
  101fe8:	88 83 39 40 04 00    	mov    %al,0x44039(%ebx)
  101fee:	0f b6 83 39 40 04 00 	movzbl 0x44039(%ebx),%eax
  101ff5:	83 c8 10             	or     $0x10,%eax
  101ff8:	88 83 39 40 04 00    	mov    %al,0x44039(%ebx)
  101ffe:	0f b6 83 39 40 04 00 	movzbl 0x44039(%ebx),%eax
  102005:	83 e0 9f             	and    $0xffffff9f,%eax
  102008:	88 83 39 40 04 00    	mov    %al,0x44039(%ebx)
  10200e:	0f b6 83 39 40 04 00 	movzbl 0x44039(%ebx),%eax
  102015:	83 c8 80             	or     $0xffffff80,%eax
  102018:	88 83 39 40 04 00    	mov    %al,0x44039(%ebx)
  10201e:	0f b6 83 3a 40 04 00 	movzbl 0x4403a(%ebx),%eax
  102025:	83 e0 f0             	and    $0xfffffff0,%eax
  102028:	88 83 3a 40 04 00    	mov    %al,0x4403a(%ebx)
  10202e:	0f b6 83 3a 40 04 00 	movzbl 0x4403a(%ebx),%eax
  102035:	83 e0 ef             	and    $0xffffffef,%eax
  102038:	88 83 3a 40 04 00    	mov    %al,0x4403a(%ebx)
  10203e:	0f b6 83 3a 40 04 00 	movzbl 0x4403a(%ebx),%eax
  102045:	83 e0 df             	and    $0xffffffdf,%eax
  102048:	88 83 3a 40 04 00    	mov    %al,0x4403a(%ebx)
  10204e:	0f b6 83 3a 40 04 00 	movzbl 0x4403a(%ebx),%eax
  102055:	83 c8 40             	or     $0x40,%eax
  102058:	88 83 3a 40 04 00    	mov    %al,0x4403a(%ebx)
  10205e:	0f b6 83 3a 40 04 00 	movzbl 0x4403a(%ebx),%eax
  102065:	83 e0 7f             	and    $0x7f,%eax
  102068:	88 83 3a 40 04 00    	mov    %al,0x4403a(%ebx)
  10206e:	8d 83 4c 7b 04 00    	lea    0x47b4c(%ebx),%eax
  102074:	c1 e8 18             	shr    $0x18,%eax
  102077:	88 83 3b 40 04 00    	mov    %al,0x4403b(%ebx)
  10207d:	0f b6 83 39 40 04 00 	movzbl 0x44039(%ebx),%eax
  102084:	83 e0 ef             	and    $0xffffffef,%eax
  102087:	88 83 39 40 04 00    	mov    %al,0x44039(%ebx)
  10208d:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  102093:	8d 83 0c 40 04 00    	lea    0x4400c(%ebx),%eax
  102099:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10209c:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1020a0:	b8 10 00 00 00       	mov    $0x10,%eax
  1020a5:	8e e8                	mov    %eax,%gs
  1020a7:	b8 10 00 00 00       	mov    $0x10,%eax
  1020ac:	8e e0                	mov    %eax,%fs
  1020ae:	b8 10 00 00 00       	mov    $0x10,%eax
  1020b3:	8e c0                	mov    %eax,%es
  1020b5:	b8 10 00 00 00       	mov    $0x10,%eax
  1020ba:	8e d8                	mov    %eax,%ds
  1020bc:	b8 10 00 00 00       	mov    $0x10,%eax
  1020c1:	8e d0                	mov    %eax,%ss
  1020c3:	ea ca 20 10 00 08 00 	ljmp   $0x8,$0x1020ca
  1020ca:	83 ec 0c             	sub    $0xc,%esp
  1020cd:	6a 00                	push   $0x0
  1020cf:	e8 70 01 00 00       	call   102244 <lldt>
  1020d4:	83 c4 10             	add    $0x10,%esp
  1020d7:	83 ec 0c             	sub    $0xc,%esp
  1020da:	6a 28                	push   $0x28
  1020dc:	e8 2f 03 00 00       	call   102410 <ltr>
  1020e1:	83 c4 10             	add    $0x10,%esp
  1020e4:	83 ec 08             	sub    $0x8,%esp
  1020e7:	68 00 3b 00 00       	push   $0x3b00
  1020ec:	8d 83 4c 40 04 00    	lea    0x4404c(%ebx),%eax
  1020f2:	50                   	push   %eax
  1020f3:	e8 4b f3 ff ff       	call   101443 <memzero>
  1020f8:	83 c4 10             	add    $0x10,%esp
  1020fb:	83 ec 08             	sub    $0x8,%esp
  1020fe:	68 00 00 04 00       	push   $0x40000
  102103:	8d 83 0c 40 00 00    	lea    0x400c(%ebx),%eax
  102109:	50                   	push   %eax
  10210a:	e8 34 f3 ff ff       	call   101443 <memzero>
  10210f:	83 c4 10             	add    $0x10,%esp
  102112:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102119:	e9 9d 00 00 00       	jmp    1021bb <seg_init+0x55d>
  10211e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102121:	c1 e0 0c             	shl    $0xc,%eax
  102124:	89 c2                	mov    %eax,%edx
  102126:	8d 83 0c 40 00 00    	lea    0x400c(%ebx),%eax
  10212c:	01 d0                	add    %edx,%eax
  10212e:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  102134:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102137:	8d 83 50 40 04 00    	lea    0x44050(%ebx),%eax
  10213d:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  102143:	01 c8                	add    %ecx,%eax
  102145:	89 10                	mov    %edx,(%eax)
  102147:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10214a:	8d 83 54 40 04 00    	lea    0x44054(%ebx),%eax
  102150:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  102156:	01 d0                	add    %edx,%eax
  102158:	66 c7 00 10 00       	movw   $0x10,(%eax)
  10215d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102160:	8d 83 52 40 04 00    	lea    0x44052(%ebx),%eax
  102166:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  10216c:	01 d0                	add    %edx,%eax
  10216e:	83 c0 60             	add    $0x60,%eax
  102171:	66 c7 00 68 00       	movw   $0x68,(%eax)
  102176:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102179:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  10217f:	8d 50 60             	lea    0x60(%eax),%edx
  102182:	8d 83 4c 40 04 00    	lea    0x4404c(%ebx),%eax
  102188:	01 d0                	add    %edx,%eax
  10218a:	83 c0 08             	add    $0x8,%eax
  10218d:	83 ec 08             	sub    $0x8,%esp
  102190:	68 80 00 00 00       	push   $0x80
  102195:	50                   	push   %eax
  102196:	e8 a8 f2 ff ff       	call   101443 <memzero>
  10219b:	83 c4 10             	add    $0x10,%esp
  10219e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1021a1:	8d 83 54 40 04 00    	lea    0x44054(%ebx),%eax
  1021a7:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1021ad:	01 d0                	add    %edx,%eax
  1021af:	05 e0 00 00 00       	add    $0xe0,%eax
  1021b4:	c6 00 ff             	movb   $0xff,(%eax)
  1021b7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1021bb:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  1021bf:	0f 86 59 ff ff ff    	jbe    10211e <seg_init+0x4c0>
  1021c5:	90                   	nop
  1021c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1021c9:	c9                   	leave
  1021ca:	c3                   	ret

001021cb <max>:
  1021cb:	55                   	push   %ebp
  1021cc:	89 e5                	mov    %esp,%ebp
  1021ce:	e8 e5 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1021d3:	05 21 4e 00 00       	add    $0x4e21,%eax
  1021d8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1021db:	8b 45 08             	mov    0x8(%ebp),%eax
  1021de:	39 c2                	cmp    %eax,%edx
  1021e0:	0f 43 c2             	cmovae %edx,%eax
  1021e3:	5d                   	pop    %ebp
  1021e4:	c3                   	ret

001021e5 <min>:
  1021e5:	55                   	push   %ebp
  1021e6:	89 e5                	mov    %esp,%ebp
  1021e8:	e8 cb e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1021ed:	05 07 4e 00 00       	add    $0x4e07,%eax
  1021f2:	8b 55 0c             	mov    0xc(%ebp),%edx
  1021f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1021f8:	39 c2                	cmp    %eax,%edx
  1021fa:	0f 46 c2             	cmovbe %edx,%eax
  1021fd:	5d                   	pop    %ebp
  1021fe:	c3                   	ret

001021ff <rounddown>:
  1021ff:	55                   	push   %ebp
  102200:	89 e5                	mov    %esp,%ebp
  102202:	e8 b1 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102207:	05 ed 4d 00 00       	add    $0x4ded,%eax
  10220c:	8b 45 08             	mov    0x8(%ebp),%eax
  10220f:	ba 00 00 00 00       	mov    $0x0,%edx
  102214:	f7 75 0c             	divl   0xc(%ebp)
  102217:	8b 45 08             	mov    0x8(%ebp),%eax
  10221a:	29 d0                	sub    %edx,%eax
  10221c:	5d                   	pop    %ebp
  10221d:	c3                   	ret

0010221e <roundup>:
  10221e:	55                   	push   %ebp
  10221f:	89 e5                	mov    %esp,%ebp
  102221:	e8 92 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102226:	05 ce 4d 00 00       	add    $0x4dce,%eax
  10222b:	8b 55 08             	mov    0x8(%ebp),%edx
  10222e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102231:	01 d0                	add    %edx,%eax
  102233:	83 e8 01             	sub    $0x1,%eax
  102236:	ff 75 0c             	push   0xc(%ebp)
  102239:	50                   	push   %eax
  10223a:	e8 c0 ff ff ff       	call   1021ff <rounddown>
  10223f:	83 c4 08             	add    $0x8,%esp
  102242:	c9                   	leave
  102243:	c3                   	ret

00102244 <lldt>:
  102244:	55                   	push   %ebp
  102245:	89 e5                	mov    %esp,%ebp
  102247:	83 ec 04             	sub    $0x4,%esp
  10224a:	e8 69 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10224f:	05 a5 4d 00 00       	add    $0x4da5,%eax
  102254:	8b 45 08             	mov    0x8(%ebp),%eax
  102257:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10225b:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  10225f:	0f 00 d0             	lldt   %eax
  102262:	90                   	nop
  102263:	c9                   	leave
  102264:	c3                   	ret

00102265 <cli>:
  102265:	55                   	push   %ebp
  102266:	89 e5                	mov    %esp,%ebp
  102268:	e8 4b e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10226d:	05 87 4d 00 00       	add    $0x4d87,%eax
  102272:	fa                   	cli
  102273:	90                   	nop
  102274:	5d                   	pop    %ebp
  102275:	c3                   	ret

00102276 <sti>:
  102276:	55                   	push   %ebp
  102277:	89 e5                	mov    %esp,%ebp
  102279:	e8 3a e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10227e:	05 76 4d 00 00       	add    $0x4d76,%eax
  102283:	fb                   	sti
  102284:	90                   	nop
  102285:	90                   	nop
  102286:	5d                   	pop    %ebp
  102287:	c3                   	ret

00102288 <rdmsr>:
  102288:	55                   	push   %ebp
  102289:	89 e5                	mov    %esp,%ebp
  10228b:	83 ec 10             	sub    $0x10,%esp
  10228e:	e8 25 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102293:	05 61 4d 00 00       	add    $0x4d61,%eax
  102298:	8b 45 08             	mov    0x8(%ebp),%eax
  10229b:	89 c1                	mov    %eax,%ecx
  10229d:	0f 32                	rdmsr
  10229f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1022a2:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1022a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1022a8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1022ab:	c9                   	leave
  1022ac:	c3                   	ret

001022ad <wrmsr>:
  1022ad:	55                   	push   %ebp
  1022ae:	89 e5                	mov    %esp,%ebp
  1022b0:	83 ec 08             	sub    $0x8,%esp
  1022b3:	e8 00 e1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1022b8:	05 3c 4d 00 00       	add    $0x4d3c,%eax
  1022bd:	8b 45 0c             	mov    0xc(%ebp),%eax
  1022c0:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1022c3:	8b 45 10             	mov    0x10(%ebp),%eax
  1022c6:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1022c9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1022cc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1022cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1022d2:	0f 30                	wrmsr
  1022d4:	90                   	nop
  1022d5:	c9                   	leave
  1022d6:	c3                   	ret

001022d7 <halt>:
  1022d7:	55                   	push   %ebp
  1022d8:	89 e5                	mov    %esp,%ebp
  1022da:	e8 d9 e0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1022df:	05 15 4d 00 00       	add    $0x4d15,%eax
  1022e4:	f4                   	hlt
  1022e5:	90                   	nop
  1022e6:	5d                   	pop    %ebp
  1022e7:	c3                   	ret

001022e8 <rdtsc>:
  1022e8:	55                   	push   %ebp
  1022e9:	89 e5                	mov    %esp,%ebp
  1022eb:	83 ec 10             	sub    $0x10,%esp
  1022ee:	e8 c5 e0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1022f3:	05 01 4d 00 00       	add    $0x4d01,%eax
  1022f8:	0f 31                	rdtsc
  1022fa:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1022fd:	89 55 fc             	mov    %edx,-0x4(%ebp)
  102300:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102303:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102306:	c9                   	leave
  102307:	c3                   	ret

00102308 <enable_sse>:
  102308:	55                   	push   %ebp
  102309:	89 e5                	mov    %esp,%ebp
  10230b:	83 ec 20             	sub    $0x20,%esp
  10230e:	e8 a5 e0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102313:	05 e1 4c 00 00       	add    $0x4ce1,%eax
  102318:	0f 20 e0             	mov    %cr4,%eax
  10231b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10231e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102321:	80 cc 06             	or     $0x6,%ah
  102324:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102327:	0f ae f0             	mfence
  10232a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10232d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102330:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102333:	0f 22 e0             	mov    %eax,%cr4
  102336:	90                   	nop
  102337:	0f 20 c0             	mov    %cr0,%eax
  10233a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10233d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102340:	83 c8 02             	or     $0x2,%eax
  102343:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102346:	0f ae f0             	mfence
  102349:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  10234d:	90                   	nop
  10234e:	c9                   	leave
  10234f:	c3                   	ret

00102350 <cpuid>:
  102350:	55                   	push   %ebp
  102351:	89 e5                	mov    %esp,%ebp
  102353:	53                   	push   %ebx
  102354:	83 ec 10             	sub    $0x10,%esp
  102357:	e8 5c e0 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10235c:	05 98 4c 00 00       	add    $0x4c98,%eax
  102361:	8b 45 08             	mov    0x8(%ebp),%eax
  102364:	0f a2                	cpuid
  102366:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102369:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  10236c:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  10236f:	89 55 ec             	mov    %edx,-0x14(%ebp)
  102372:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102376:	74 08                	je     102380 <cpuid+0x30>
  102378:	8b 45 0c             	mov    0xc(%ebp),%eax
  10237b:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10237e:	89 10                	mov    %edx,(%eax)
  102380:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102384:	74 08                	je     10238e <cpuid+0x3e>
  102386:	8b 45 10             	mov    0x10(%ebp),%eax
  102389:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10238c:	89 10                	mov    %edx,(%eax)
  10238e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  102392:	74 08                	je     10239c <cpuid+0x4c>
  102394:	8b 45 14             	mov    0x14(%ebp),%eax
  102397:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10239a:	89 10                	mov    %edx,(%eax)
  10239c:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1023a0:	74 08                	je     1023aa <cpuid+0x5a>
  1023a2:	8b 45 18             	mov    0x18(%ebp),%eax
  1023a5:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1023a8:	89 10                	mov    %edx,(%eax)
  1023aa:	90                   	nop
  1023ab:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1023ae:	c9                   	leave
  1023af:	c3                   	ret

001023b0 <rcr3>:
  1023b0:	55                   	push   %ebp
  1023b1:	89 e5                	mov    %esp,%ebp
  1023b3:	83 ec 10             	sub    $0x10,%esp
  1023b6:	e8 fd df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1023bb:	05 39 4c 00 00       	add    $0x4c39,%eax
  1023c0:	0f 20 d8             	mov    %cr3,%eax
  1023c3:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1023c6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1023c9:	c9                   	leave
  1023ca:	c3                   	ret

001023cb <outl>:
  1023cb:	55                   	push   %ebp
  1023cc:	89 e5                	mov    %esp,%ebp
  1023ce:	e8 e5 df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1023d3:	05 21 4c 00 00       	add    $0x4c21,%eax
  1023d8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1023db:	8b 55 08             	mov    0x8(%ebp),%edx
  1023de:	ef                   	out    %eax,(%dx)
  1023df:	90                   	nop
  1023e0:	5d                   	pop    %ebp
  1023e1:	c3                   	ret

001023e2 <inl>:
  1023e2:	55                   	push   %ebp
  1023e3:	89 e5                	mov    %esp,%ebp
  1023e5:	83 ec 10             	sub    $0x10,%esp
  1023e8:	e8 cb df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1023ed:	05 07 4c 00 00       	add    $0x4c07,%eax
  1023f2:	8b 45 08             	mov    0x8(%ebp),%eax
  1023f5:	89 c2                	mov    %eax,%edx
  1023f7:	ed                   	in     (%dx),%eax
  1023f8:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1023fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1023fe:	c9                   	leave
  1023ff:	c3                   	ret

00102400 <smp_wmb>:
  102400:	55                   	push   %ebp
  102401:	89 e5                	mov    %esp,%ebp
  102403:	e8 b0 df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102408:	05 ec 4b 00 00       	add    $0x4bec,%eax
  10240d:	90                   	nop
  10240e:	5d                   	pop    %ebp
  10240f:	c3                   	ret

00102410 <ltr>:
  102410:	55                   	push   %ebp
  102411:	89 e5                	mov    %esp,%ebp
  102413:	83 ec 04             	sub    $0x4,%esp
  102416:	e8 9d df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10241b:	05 d9 4b 00 00       	add    $0x4bd9,%eax
  102420:	8b 45 08             	mov    0x8(%ebp),%eax
  102423:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102427:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  10242b:	0f 00 d8             	ltr    %eax
  10242e:	90                   	nop
  10242f:	c9                   	leave
  102430:	c3                   	ret

00102431 <lcr0>:
  102431:	55                   	push   %ebp
  102432:	89 e5                	mov    %esp,%ebp
  102434:	e8 7f df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102439:	05 bb 4b 00 00       	add    $0x4bbb,%eax
  10243e:	8b 45 08             	mov    0x8(%ebp),%eax
  102441:	0f 22 c0             	mov    %eax,%cr0
  102444:	90                   	nop
  102445:	5d                   	pop    %ebp
  102446:	c3                   	ret

00102447 <rcr0>:
  102447:	55                   	push   %ebp
  102448:	89 e5                	mov    %esp,%ebp
  10244a:	83 ec 10             	sub    $0x10,%esp
  10244d:	e8 66 df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102452:	05 a2 4b 00 00       	add    $0x4ba2,%eax
  102457:	0f 20 c0             	mov    %cr0,%eax
  10245a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10245d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102460:	c9                   	leave
  102461:	c3                   	ret

00102462 <rcr2>:
  102462:	55                   	push   %ebp
  102463:	89 e5                	mov    %esp,%ebp
  102465:	83 ec 10             	sub    $0x10,%esp
  102468:	e8 4b df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10246d:	05 87 4b 00 00       	add    $0x4b87,%eax
  102472:	0f 20 d0             	mov    %cr2,%eax
  102475:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102478:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10247b:	c9                   	leave
  10247c:	c3                   	ret

0010247d <lcr3>:
  10247d:	55                   	push   %ebp
  10247e:	89 e5                	mov    %esp,%ebp
  102480:	e8 33 df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102485:	05 6f 4b 00 00       	add    $0x4b6f,%eax
  10248a:	8b 45 08             	mov    0x8(%ebp),%eax
  10248d:	0f 22 d8             	mov    %eax,%cr3
  102490:	90                   	nop
  102491:	5d                   	pop    %ebp
  102492:	c3                   	ret

00102493 <lcr4>:
  102493:	55                   	push   %ebp
  102494:	89 e5                	mov    %esp,%ebp
  102496:	e8 1d df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10249b:	05 59 4b 00 00       	add    $0x4b59,%eax
  1024a0:	8b 45 08             	mov    0x8(%ebp),%eax
  1024a3:	0f 22 e0             	mov    %eax,%cr4
  1024a6:	90                   	nop
  1024a7:	5d                   	pop    %ebp
  1024a8:	c3                   	ret

001024a9 <rcr4>:
  1024a9:	55                   	push   %ebp
  1024aa:	89 e5                	mov    %esp,%ebp
  1024ac:	83 ec 10             	sub    $0x10,%esp
  1024af:	e8 04 df ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1024b4:	05 40 4b 00 00       	add    $0x4b40,%eax
  1024b9:	0f 20 e0             	mov    %cr4,%eax
  1024bc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1024bf:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1024c2:	c9                   	leave
  1024c3:	c3                   	ret

001024c4 <inb>:
  1024c4:	55                   	push   %ebp
  1024c5:	89 e5                	mov    %esp,%ebp
  1024c7:	83 ec 10             	sub    $0x10,%esp
  1024ca:	e8 e9 de ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1024cf:	05 25 4b 00 00       	add    $0x4b25,%eax
  1024d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1024d7:	89 c2                	mov    %eax,%edx
  1024d9:	ec                   	in     (%dx),%al
  1024da:	88 45 ff             	mov    %al,-0x1(%ebp)
  1024dd:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  1024e1:	c9                   	leave
  1024e2:	c3                   	ret

001024e3 <insl>:
  1024e3:	55                   	push   %ebp
  1024e4:	89 e5                	mov    %esp,%ebp
  1024e6:	57                   	push   %edi
  1024e7:	53                   	push   %ebx
  1024e8:	e8 cb de ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1024ed:	05 07 4b 00 00       	add    $0x4b07,%eax
  1024f2:	8b 55 08             	mov    0x8(%ebp),%edx
  1024f5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  1024f8:	8b 45 10             	mov    0x10(%ebp),%eax
  1024fb:	89 cb                	mov    %ecx,%ebx
  1024fd:	89 df                	mov    %ebx,%edi
  1024ff:	89 c1                	mov    %eax,%ecx
  102501:	fc                   	cld
  102502:	f2 6d                	repnz insl (%dx),%es:(%edi)
  102504:	89 c8                	mov    %ecx,%eax
  102506:	89 fb                	mov    %edi,%ebx
  102508:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  10250b:	89 45 10             	mov    %eax,0x10(%ebp)
  10250e:	90                   	nop
  10250f:	5b                   	pop    %ebx
  102510:	5f                   	pop    %edi
  102511:	5d                   	pop    %ebp
  102512:	c3                   	ret

00102513 <outb>:
  102513:	55                   	push   %ebp
  102514:	89 e5                	mov    %esp,%ebp
  102516:	83 ec 04             	sub    $0x4,%esp
  102519:	e8 9a de ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10251e:	05 d6 4a 00 00       	add    $0x4ad6,%eax
  102523:	8b 45 0c             	mov    0xc(%ebp),%eax
  102526:	88 45 fc             	mov    %al,-0x4(%ebp)
  102529:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  10252d:	8b 55 08             	mov    0x8(%ebp),%edx
  102530:	ee                   	out    %al,(%dx)
  102531:	90                   	nop
  102532:	c9                   	leave
  102533:	c3                   	ret

00102534 <outsw>:
  102534:	55                   	push   %ebp
  102535:	89 e5                	mov    %esp,%ebp
  102537:	56                   	push   %esi
  102538:	53                   	push   %ebx
  102539:	e8 7a de ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10253e:	05 b6 4a 00 00       	add    $0x4ab6,%eax
  102543:	8b 55 08             	mov    0x8(%ebp),%edx
  102546:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  102549:	8b 45 10             	mov    0x10(%ebp),%eax
  10254c:	89 cb                	mov    %ecx,%ebx
  10254e:	89 de                	mov    %ebx,%esi
  102550:	89 c1                	mov    %eax,%ecx
  102552:	fc                   	cld
  102553:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  102556:	89 c8                	mov    %ecx,%eax
  102558:	89 f3                	mov    %esi,%ebx
  10255a:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  10255d:	89 45 10             	mov    %eax,0x10(%ebp)
  102560:	90                   	nop
  102561:	5b                   	pop    %ebx
  102562:	5e                   	pop    %esi
  102563:	5d                   	pop    %ebp
  102564:	c3                   	ret

00102565 <mon_help>:
  102565:	55                   	push   %ebp
  102566:	89 e5                	mov    %esp,%ebp
  102568:	56                   	push   %esi
  102569:	53                   	push   %ebx
  10256a:	83 ec 10             	sub    $0x10,%esp
  10256d:	e8 4e de ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102572:	81 c3 82 4a 00 00    	add    $0x4a82,%ebx
  102578:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10257f:	eb 44                	jmp    1025c5 <mon_help+0x60>
  102581:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102584:	8d 8b 20 05 00 00    	lea    0x520(%ebx),%ecx
  10258a:	89 d0                	mov    %edx,%eax
  10258c:	01 c0                	add    %eax,%eax
  10258e:	01 d0                	add    %edx,%eax
  102590:	c1 e0 02             	shl    $0x2,%eax
  102593:	01 c8                	add    %ecx,%eax
  102595:	8b 08                	mov    (%eax),%ecx
  102597:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10259a:	8d b3 1c 05 00 00    	lea    0x51c(%ebx),%esi
  1025a0:	89 d0                	mov    %edx,%eax
  1025a2:	01 c0                	add    %eax,%eax
  1025a4:	01 d0                	add    %edx,%eax
  1025a6:	c1 e0 02             	shl    $0x2,%eax
  1025a9:	01 f0                	add    %esi,%eax
  1025ab:	8b 00                	mov    (%eax),%eax
  1025ad:	83 ec 04             	sub    $0x4,%esp
  1025b0:	51                   	push   %ecx
  1025b1:	50                   	push   %eax
  1025b2:	8d 83 29 d3 ff ff    	lea    -0x2cd7(%ebx),%eax
  1025b8:	50                   	push   %eax
  1025b9:	e8 a8 f1 ff ff       	call   101766 <dprintf>
  1025be:	83 c4 10             	add    $0x10,%esp
  1025c1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1025c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1025c8:	83 f8 01             	cmp    $0x1,%eax
  1025cb:	76 b4                	jbe    102581 <mon_help+0x1c>
  1025cd:	b8 00 00 00 00       	mov    $0x0,%eax
  1025d2:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1025d5:	5b                   	pop    %ebx
  1025d6:	5e                   	pop    %esi
  1025d7:	5d                   	pop    %ebp
  1025d8:	c3                   	ret

001025d9 <mon_kerninfo>:
  1025d9:	55                   	push   %ebp
  1025da:	89 e5                	mov    %esp,%ebp
  1025dc:	53                   	push   %ebx
  1025dd:	83 ec 14             	sub    $0x14,%esp
  1025e0:	e8 db dd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1025e5:	81 c3 0f 4a 00 00    	add    $0x4a0f,%ebx
  1025eb:	83 ec 0c             	sub    $0xc,%esp
  1025ee:	8d 83 32 d3 ff ff    	lea    -0x2cce(%ebx),%eax
  1025f4:	50                   	push   %eax
  1025f5:	e8 6c f1 ff ff       	call   101766 <dprintf>
  1025fa:	83 c4 10             	add    $0x10,%esp
  1025fd:	83 ec 08             	sub    $0x8,%esp
  102600:	c7 c0 4c 2a 10 00    	mov    $0x102a4c,%eax
  102606:	50                   	push   %eax
  102607:	8d 83 4b d3 ff ff    	lea    -0x2cb5(%ebx),%eax
  10260d:	50                   	push   %eax
  10260e:	e8 53 f1 ff ff       	call   101766 <dprintf>
  102613:	83 c4 10             	add    $0x10,%esp
  102616:	83 ec 08             	sub    $0x8,%esp
  102619:	c7 c0 bf 38 10 00    	mov    $0x1038bf,%eax
  10261f:	50                   	push   %eax
  102620:	8d 83 5a d3 ff ff    	lea    -0x2ca6(%ebx),%eax
  102626:	50                   	push   %eax
  102627:	e8 3a f1 ff ff       	call   101766 <dprintf>
  10262c:	83 c4 10             	add    $0x10,%esp
  10262f:	83 ec 08             	sub    $0x8,%esp
  102632:	c7 c0 2c 75 10 00    	mov    $0x10752c,%eax
  102638:	50                   	push   %eax
  102639:	8d 83 69 d3 ff ff    	lea    -0x2c97(%ebx),%eax
  10263f:	50                   	push   %eax
  102640:	e8 21 f1 ff ff       	call   101766 <dprintf>
  102645:	83 c4 10             	add    $0x10,%esp
  102648:	83 ec 08             	sub    $0x8,%esp
  10264b:	c7 c0 44 ec 94 00    	mov    $0x94ec44,%eax
  102651:	50                   	push   %eax
  102652:	8d 83 78 d3 ff ff    	lea    -0x2c88(%ebx),%eax
  102658:	50                   	push   %eax
  102659:	e8 08 f1 ff ff       	call   101766 <dprintf>
  10265e:	83 c4 10             	add    $0x10,%esp
  102661:	c7 c0 44 ec 94 00    	mov    $0x94ec44,%eax
  102667:	89 c1                	mov    %eax,%ecx
  102669:	c7 c0 4c 2a 10 00    	mov    $0x102a4c,%eax
  10266f:	89 c2                	mov    %eax,%edx
  102671:	89 c8                	mov    %ecx,%eax
  102673:	29 d0                	sub    %edx,%eax
  102675:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102678:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  10267f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102682:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102685:	01 d0                	add    %edx,%eax
  102687:	83 e8 01             	sub    $0x1,%eax
  10268a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10268d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102690:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102693:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102696:	99                   	cltd
  102697:	f7 7d e8             	idivl  -0x18(%ebp)
  10269a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10269d:	29 d0                	sub    %edx,%eax
  10269f:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  1026a5:	85 c0                	test   %eax,%eax
  1026a7:	0f 48 c2             	cmovs  %edx,%eax
  1026aa:	c1 f8 0a             	sar    $0xa,%eax
  1026ad:	83 ec 08             	sub    $0x8,%esp
  1026b0:	50                   	push   %eax
  1026b1:	8d 83 88 d3 ff ff    	lea    -0x2c78(%ebx),%eax
  1026b7:	50                   	push   %eax
  1026b8:	e8 a9 f0 ff ff       	call   101766 <dprintf>
  1026bd:	83 c4 10             	add    $0x10,%esp
  1026c0:	b8 00 00 00 00       	mov    $0x0,%eax
  1026c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1026c8:	c9                   	leave
  1026c9:	c3                   	ret

001026ca <mon_backtrace>:
  1026ca:	55                   	push   %ebp
  1026cb:	89 e5                	mov    %esp,%ebp
  1026cd:	e8 e6 dc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1026d2:	05 22 49 00 00       	add    $0x4922,%eax
  1026d7:	b8 00 00 00 00       	mov    $0x0,%eax
  1026dc:	5d                   	pop    %ebp
  1026dd:	c3                   	ret

001026de <runcmd>:
  1026de:	55                   	push   %ebp
  1026df:	89 e5                	mov    %esp,%ebp
  1026e1:	53                   	push   %ebx
  1026e2:	83 ec 54             	sub    $0x54,%esp
  1026e5:	e8 d6 dc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1026ea:	81 c3 0a 49 00 00    	add    $0x490a,%ebx
  1026f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1026f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1026fa:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  102701:	00 
  102702:	eb 0c                	jmp    102710 <runcmd+0x32>
  102704:	8b 45 08             	mov    0x8(%ebp),%eax
  102707:	8d 50 01             	lea    0x1(%eax),%edx
  10270a:	89 55 08             	mov    %edx,0x8(%ebp)
  10270d:	c6 00 00             	movb   $0x0,(%eax)
  102710:	8b 45 08             	mov    0x8(%ebp),%eax
  102713:	0f b6 00             	movzbl (%eax),%eax
  102716:	84 c0                	test   %al,%al
  102718:	74 20                	je     10273a <runcmd+0x5c>
  10271a:	8b 45 08             	mov    0x8(%ebp),%eax
  10271d:	0f b6 00             	movzbl (%eax),%eax
  102720:	0f be c0             	movsbl %al,%eax
  102723:	83 ec 08             	sub    $0x8,%esp
  102726:	50                   	push   %eax
  102727:	8d 83 b2 d3 ff ff    	lea    -0x2c4e(%ebx),%eax
  10272d:	50                   	push   %eax
  10272e:	e8 d3 ec ff ff       	call   101406 <strchr>
  102733:	83 c4 10             	add    $0x10,%esp
  102736:	85 c0                	test   %eax,%eax
  102738:	75 ca                	jne    102704 <runcmd+0x26>
  10273a:	8b 45 08             	mov    0x8(%ebp),%eax
  10273d:	0f b6 00             	movzbl (%eax),%eax
  102740:	84 c0                	test   %al,%al
  102742:	74 69                	je     1027ad <runcmd+0xcf>
  102744:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  102748:	75 1e                	jne    102768 <runcmd+0x8a>
  10274a:	83 ec 08             	sub    $0x8,%esp
  10274d:	6a 10                	push   $0x10
  10274f:	8d 83 b7 d3 ff ff    	lea    -0x2c49(%ebx),%eax
  102755:	50                   	push   %eax
  102756:	e8 0b f0 ff ff       	call   101766 <dprintf>
  10275b:	83 c4 10             	add    $0x10,%esp
  10275e:	b8 00 00 00 00       	mov    $0x0,%eax
  102763:	e9 e5 00 00 00       	jmp    10284d <runcmd+0x16f>
  102768:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10276b:	8d 50 01             	lea    0x1(%eax),%edx
  10276e:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102771:	8b 55 08             	mov    0x8(%ebp),%edx
  102774:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  102778:	eb 04                	jmp    10277e <runcmd+0xa0>
  10277a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  10277e:	8b 45 08             	mov    0x8(%ebp),%eax
  102781:	0f b6 00             	movzbl (%eax),%eax
  102784:	84 c0                	test   %al,%al
  102786:	74 88                	je     102710 <runcmd+0x32>
  102788:	8b 45 08             	mov    0x8(%ebp),%eax
  10278b:	0f b6 00             	movzbl (%eax),%eax
  10278e:	0f be c0             	movsbl %al,%eax
  102791:	83 ec 08             	sub    $0x8,%esp
  102794:	50                   	push   %eax
  102795:	8d 83 b2 d3 ff ff    	lea    -0x2c4e(%ebx),%eax
  10279b:	50                   	push   %eax
  10279c:	e8 65 ec ff ff       	call   101406 <strchr>
  1027a1:	83 c4 10             	add    $0x10,%esp
  1027a4:	85 c0                	test   %eax,%eax
  1027a6:	74 d2                	je     10277a <runcmd+0x9c>
  1027a8:	e9 63 ff ff ff       	jmp    102710 <runcmd+0x32>
  1027ad:	90                   	nop
  1027ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1027b1:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  1027b8:	00 
  1027b9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1027bd:	75 0a                	jne    1027c9 <runcmd+0xeb>
  1027bf:	b8 00 00 00 00       	mov    $0x0,%eax
  1027c4:	e9 84 00 00 00       	jmp    10284d <runcmd+0x16f>
  1027c9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1027d0:	eb 58                	jmp    10282a <runcmd+0x14c>
  1027d2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1027d5:	8d 8b 1c 05 00 00    	lea    0x51c(%ebx),%ecx
  1027db:	89 d0                	mov    %edx,%eax
  1027dd:	01 c0                	add    %eax,%eax
  1027df:	01 d0                	add    %edx,%eax
  1027e1:	c1 e0 02             	shl    $0x2,%eax
  1027e4:	01 c8                	add    %ecx,%eax
  1027e6:	8b 10                	mov    (%eax),%edx
  1027e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
  1027eb:	83 ec 08             	sub    $0x8,%esp
  1027ee:	52                   	push   %edx
  1027ef:	50                   	push   %eax
  1027f0:	e8 c8 eb ff ff       	call   1013bd <strcmp>
  1027f5:	83 c4 10             	add    $0x10,%esp
  1027f8:	85 c0                	test   %eax,%eax
  1027fa:	75 2a                	jne    102826 <runcmd+0x148>
  1027fc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1027ff:	8d 8b 24 05 00 00    	lea    0x524(%ebx),%ecx
  102805:	89 d0                	mov    %edx,%eax
  102807:	01 c0                	add    %eax,%eax
  102809:	01 d0                	add    %edx,%eax
  10280b:	c1 e0 02             	shl    $0x2,%eax
  10280e:	01 c8                	add    %ecx,%eax
  102810:	8b 00                	mov    (%eax),%eax
  102812:	83 ec 04             	sub    $0x4,%esp
  102815:	ff 75 0c             	push   0xc(%ebp)
  102818:	8d 55 b0             	lea    -0x50(%ebp),%edx
  10281b:	52                   	push   %edx
  10281c:	ff 75 f4             	push   -0xc(%ebp)
  10281f:	ff d0                	call   *%eax
  102821:	83 c4 10             	add    $0x10,%esp
  102824:	eb 27                	jmp    10284d <runcmd+0x16f>
  102826:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10282a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10282d:	83 f8 01             	cmp    $0x1,%eax
  102830:	76 a0                	jbe    1027d2 <runcmd+0xf4>
  102832:	8b 45 b0             	mov    -0x50(%ebp),%eax
  102835:	83 ec 08             	sub    $0x8,%esp
  102838:	50                   	push   %eax
  102839:	8d 83 d4 d3 ff ff    	lea    -0x2c2c(%ebx),%eax
  10283f:	50                   	push   %eax
  102840:	e8 21 ef ff ff       	call   101766 <dprintf>
  102845:	83 c4 10             	add    $0x10,%esp
  102848:	b8 00 00 00 00       	mov    $0x0,%eax
  10284d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102850:	c9                   	leave
  102851:	c3                   	ret

00102852 <monitor>:
  102852:	55                   	push   %ebp
  102853:	89 e5                	mov    %esp,%ebp
  102855:	53                   	push   %ebx
  102856:	83 ec 14             	sub    $0x14,%esp
  102859:	e8 62 db ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10285e:	81 c3 96 47 00 00    	add    $0x4796,%ebx
  102864:	83 ec 0c             	sub    $0xc,%esp
  102867:	8d 83 ec d3 ff ff    	lea    -0x2c14(%ebx),%eax
  10286d:	50                   	push   %eax
  10286e:	e8 f3 ee ff ff       	call   101766 <dprintf>
  102873:	83 c4 10             	add    $0x10,%esp
  102876:	83 ec 0c             	sub    $0xc,%esp
  102879:	8d 83 18 d4 ff ff    	lea    -0x2be8(%ebx),%eax
  10287f:	50                   	push   %eax
  102880:	e8 e1 ee ff ff       	call   101766 <dprintf>
  102885:	83 c4 10             	add    $0x10,%esp
  102888:	83 ec 0c             	sub    $0xc,%esp
  10288b:	8d 83 ec d3 ff ff    	lea    -0x2c14(%ebx),%eax
  102891:	50                   	push   %eax
  102892:	e8 cf ee ff ff       	call   101766 <dprintf>
  102897:	83 c4 10             	add    $0x10,%esp
  10289a:	83 ec 0c             	sub    $0xc,%esp
  10289d:	8d 83 44 d4 ff ff    	lea    -0x2bbc(%ebx),%eax
  1028a3:	50                   	push   %eax
  1028a4:	e8 bd ee ff ff       	call   101766 <dprintf>
  1028a9:	83 c4 10             	add    $0x10,%esp
  1028ac:	83 ec 0c             	sub    $0xc,%esp
  1028af:	8d 83 69 d4 ff ff    	lea    -0x2b97(%ebx),%eax
  1028b5:	50                   	push   %eax
  1028b6:	e8 a1 dc ff ff       	call   10055c <readline>
  1028bb:	83 c4 10             	add    $0x10,%esp
  1028be:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1028c1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1028c5:	74 e5                	je     1028ac <monitor+0x5a>
  1028c7:	83 ec 08             	sub    $0x8,%esp
  1028ca:	ff 75 08             	push   0x8(%ebp)
  1028cd:	ff 75 f4             	push   -0xc(%ebp)
  1028d0:	e8 09 fe ff ff       	call   1026de <runcmd>
  1028d5:	83 c4 10             	add    $0x10,%esp
  1028d8:	85 c0                	test   %eax,%eax
  1028da:	78 02                	js     1028de <monitor+0x8c>
  1028dc:	eb ce                	jmp    1028ac <monitor+0x5a>
  1028de:	90                   	nop
  1028df:	90                   	nop
  1028e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1028e3:	c9                   	leave
  1028e4:	c3                   	ret
  1028e5:	66 90                	xchg   %ax,%ax
  1028e7:	66 90                	xchg   %ax,%ax
  1028e9:	66 90                	xchg   %ax,%ax
  1028eb:	66 90                	xchg   %ax,%ax
  1028ed:	66 90                	xchg   %ax,%ax
  1028ef:	90                   	nop

001028f0 <kern_init>:

    monitor(NULL);
}

void kern_init(uintptr_t mbi_addr)
{
  1028f0:	56                   	push   %esi
  1028f1:	53                   	push   %ebx
  1028f2:	e8 c9 da ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1028f7:	81 c3 fd 46 00 00    	add    $0x46fd,%ebx
  1028fd:	83 ec 10             	sub    $0x10,%esp
    pmem_init(mbi_addr);
  102900:	ff 74 24 1c          	push   0x1c(%esp)
  102904:	e8 37 07 00 00       	call   103040 <pmem_init>

    KERN_DEBUG("Kernel initialized.\n");
  102909:	8d b3 82 d4 ff ff    	lea    -0x2b7e(%ebx),%esi
  10290f:	83 c4 0c             	add    $0xc,%esp
  102912:	8d 83 6d d4 ff ff    	lea    -0x2b93(%ebx),%eax
  102918:	50                   	push   %eax
  102919:	6a 31                	push   $0x31
  10291b:	56                   	push   %esi
  10291c:	e8 72 eb ff ff       	call   101493 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  102921:	83 c4 0c             	add    $0xc,%esp
  102924:	8d 83 93 d4 ff ff    	lea    -0x2b6d(%ebx),%eax
  10292a:	50                   	push   %eax
  10292b:	6a 11                	push   $0x11
  10292d:	56                   	push   %esi
  10292e:	e8 60 eb ff ff       	call   101493 <debug_normal>
    dprintf("Testing the MATIntro layer...\n");
  102933:	8d 83 fc d5 ff ff    	lea    -0x2a04(%ebx),%eax
  102939:	89 04 24             	mov    %eax,(%esp)
  10293c:	e8 25 ee ff ff       	call   101766 <dprintf>
    if (test_MATIntro() == 0)
  102941:	e8 ca 06 00 00       	call   103010 <test_MATIntro>
  102946:	83 c4 10             	add    $0x10,%esp
  102949:	84 c0                	test   %al,%al
  10294b:	0f 85 a7 00 00 00    	jne    1029f8 <kern_init+0x108>
        dprintf("All tests passed.\n");
  102951:	83 ec 0c             	sub    $0xc,%esp
  102954:	8d 83 a5 d4 ff ff    	lea    -0x2b5b(%ebx),%eax
  10295a:	50                   	push   %eax
  10295b:	e8 06 ee ff ff       	call   101766 <dprintf>
  102960:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  102963:	83 ec 0c             	sub    $0xc,%esp
  102966:	8d b3 a3 d4 ff ff    	lea    -0x2b5d(%ebx),%esi
  10296c:	56                   	push   %esi
  10296d:	e8 f4 ed ff ff       	call   101766 <dprintf>
    dprintf("Testing the MATInit layer...\n");
  102972:	8d 83 c6 d4 ff ff    	lea    -0x2b3a(%ebx),%eax
  102978:	89 04 24             	mov    %eax,(%esp)
  10297b:	e8 e6 ed ff ff       	call   101766 <dprintf>
    if (test_MATInit() == 0)
  102980:	e8 ab 09 00 00       	call   103330 <test_MATInit>
  102985:	83 c4 10             	add    $0x10,%esp
  102988:	84 c0                	test   %al,%al
  10298a:	0f 85 98 00 00 00    	jne    102a28 <kern_init+0x138>
        dprintf("All tests passed.\n");
  102990:	83 ec 0c             	sub    $0xc,%esp
  102993:	8d 83 a5 d4 ff ff    	lea    -0x2b5b(%ebx),%eax
  102999:	50                   	push   %eax
  10299a:	e8 c7 ed ff ff       	call   101766 <dprintf>
  10299f:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  1029a2:	83 ec 0c             	sub    $0xc,%esp
  1029a5:	56                   	push   %esi
  1029a6:	e8 bb ed ff ff       	call   101766 <dprintf>
    dprintf("Testing the MATOp layer...\n");
  1029ab:	8d 83 e4 d4 ff ff    	lea    -0x2b1c(%ebx),%eax
  1029b1:	89 04 24             	mov    %eax,(%esp)
  1029b4:	e8 ad ed ff ff       	call   101766 <dprintf>
    if (test_MATOp() == 0)
  1029b9:	e8 82 0c 00 00       	call   103640 <test_MATOp>
  1029be:	83 c4 10             	add    $0x10,%esp
  1029c1:	84 c0                	test   %al,%al
  1029c3:	75 4b                	jne    102a10 <kern_init+0x120>
        dprintf("All tests passed.\n");
  1029c5:	83 ec 0c             	sub    $0xc,%esp
  1029c8:	8d 83 a5 d4 ff ff    	lea    -0x2b5b(%ebx),%eax
  1029ce:	50                   	push   %eax
  1029cf:	e8 92 ed ff ff       	call   101766 <dprintf>
  1029d4:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  1029d7:	83 ec 0c             	sub    $0xc,%esp
  1029da:	56                   	push   %esi
  1029db:	e8 86 ed ff ff       	call   101766 <dprintf>
    monitor(NULL);
  1029e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1029e7:	e8 66 fe ff ff       	call   102852 <monitor>

    kern_main();
}
  1029ec:	83 c4 14             	add    $0x14,%esp
  1029ef:	5b                   	pop    %ebx
  1029f0:	5e                   	pop    %esi
  1029f1:	c3                   	ret
  1029f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("Test failed.\n");
  1029f8:	83 ec 0c             	sub    $0xc,%esp
  1029fb:	8d 83 b8 d4 ff ff    	lea    -0x2b48(%ebx),%eax
  102a01:	50                   	push   %eax
  102a02:	e8 5f ed ff ff       	call   101766 <dprintf>
  102a07:	83 c4 10             	add    $0x10,%esp
  102a0a:	e9 54 ff ff ff       	jmp    102963 <kern_init+0x73>
  102a0f:	90                   	nop
        dprintf("Test failed.\n");
  102a10:	83 ec 0c             	sub    $0xc,%esp
  102a13:	8d 83 b8 d4 ff ff    	lea    -0x2b48(%ebx),%eax
  102a19:	50                   	push   %eax
  102a1a:	e8 47 ed ff ff       	call   101766 <dprintf>
  102a1f:	83 c4 10             	add    $0x10,%esp
  102a22:	eb b3                	jmp    1029d7 <kern_init+0xe7>
  102a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  102a28:	83 ec 0c             	sub    $0xc,%esp
  102a2b:	8d 83 b8 d4 ff ff    	lea    -0x2b48(%ebx),%eax
  102a31:	50                   	push   %eax
  102a32:	e8 2f ed ff ff       	call   101766 <dprintf>
  102a37:	83 c4 10             	add    $0x10,%esp
  102a3a:	e9 63 ff ff ff       	jmp    1029a2 <kern_init+0xb2>
  102a3f:	90                   	nop
  102a40:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  102a46:	00 00                	add    %al,(%eax)
  102a48:	fb                   	sti
  102a49:	4f                   	dec    %edi
  102a4a:	52                   	push   %edx
  102a4b:	e4                   	.byte 0xe4

00102a4c <start>:
  102a4c:	fa                   	cli
  102a4d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  102a52:	75 27                	jne    102a7b <spin>
  102a54:	89 1d 7c 2a 10 00    	mov    %ebx,0x102a7c
  102a5a:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  102a61:	34 12 
  102a63:	6a 02                	push   $0x2
  102a65:	9d                   	popf
  102a66:	bd 00 00 00 00       	mov    $0x0,%ebp
  102a6b:	bc 00 b0 10 00       	mov    $0x10b000,%esp
  102a70:	ff 35 7c 2a 10 00    	push   0x102a7c
  102a76:	e8 75 fe ff ff       	call   1028f0 <kern_init>

00102a7b <spin>:
  102a7b:	f4                   	hlt

00102a7c <multiboot_ptr>:
  102a7c:	00 00                	add    %al,(%eax)
	...

00102a80 <get_nps>:

//The getter function for NUM_PAGES.
static unsigned int NUM_PAGES = 0;

unsigned int get_nps() {
    return NUM_PAGES;
  102a80:	e8 33 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a85:	05 6f 45 00 00       	add    $0x456f,%eax
  102a8a:	8b 80 4c 7c 84 00    	mov    0x847c4c(%eax),%eax
}
  102a90:	c3                   	ret
  102a91:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  102a98:	00 
  102a99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00102aa0 <set_nps>:

void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
  102aa0:	e8 13 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102aa5:	05 4f 45 00 00       	add    $0x454f,%eax
  102aaa:	8b 54 24 04          	mov    0x4(%esp),%edx
  102aae:	89 90 4c 7c 84 00    	mov    %edx,0x847c4c(%eax)
}
  102ab4:	c3                   	ret
  102ab5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  102abc:	00 
  102abd:	8d 76 00             	lea    0x0(%esi),%esi

00102ac0 <at_is_norm>:
 * then returns 1, otherwise returns 0.
 */
unsigned int
at_is_norm(unsigned int page_index)
{
  if(AT[page_index].perm > 1){
  102ac0:	e8 f3 d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ac5:	05 2f 45 00 00       	add    $0x452f,%eax
  102aca:	8b 54 24 04          	mov    0x4(%esp),%edx
  102ace:	83 bc d0 4c 7c 04 00 	cmpl   $0x1,0x47c4c(%eax,%edx,8)
  102ad5:	01 
  102ad6:	0f 97 c0             	seta   %al
  102ad9:	0f b6 c0             	movzbl %al,%eax
  }
  else{
    return 0;
  }
  
}
  102adc:	c3                   	ret
  102add:	8d 76 00             	lea    0x0(%esi),%esi

00102ae0 <at_set_perm>:
 * It also marks the page as unallocated.
 */
void
at_set_perm(unsigned int page_index, unsigned int norm_val)
{
  AT[page_index].perm = norm_val;
  102ae0:	e8 d3 d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ae5:	05 0f 45 00 00       	add    $0x450f,%eax
{
  102aea:	8b 54 24 04          	mov    0x4(%esp),%edx
  AT[page_index].perm = norm_val;
  102aee:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  AT[page_index].allocated = 0;
  102af2:	c7 84 d0 50 7c 04 00 	movl   $0x0,0x47c50(%eax,%edx,8)
  102af9:	00 00 00 00 
  AT[page_index].perm = norm_val;
  102afd:	89 8c d0 4c 7c 04 00 	mov    %ecx,0x47c4c(%eax,%edx,8)
}
  102b04:	c3                   	ret
  102b05:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  102b0c:	00 
  102b0d:	8d 76 00             	lea    0x0(%esi),%esi

00102b10 <at_is_allocated>:
 * Returns 0 if the page is not allocated. O.w., returns 1.
 */
unsigned int
at_is_allocated(unsigned int page_index)
{
  if(AT[page_index].allocated > 0){
  102b10:	e8 a3 d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102b15:	05 df 44 00 00       	add    $0x44df,%eax
  102b1a:	8b 54 24 04          	mov    0x4(%esp),%edx
  102b1e:	8b 84 d0 50 7c 04 00 	mov    0x47c50(%eax,%edx,8),%eax
  102b25:	85 c0                	test   %eax,%eax
  102b27:	0f 95 c0             	setne  %al
  102b2a:	0f b6 c0             	movzbl %al,%eax
  }
  else{
    return 0;
  }
  
}
  102b2d:	c3                   	ret
  102b2e:	66 90                	xchg   %ax,%ax

00102b30 <at_set_allocated>:
 * Set the flag of the page with given index to the given value.
 */
void
at_set_allocated(unsigned int page_index, unsigned int allocated)
{
  AT[page_index].allocated = allocated;
  102b30:	e8 83 d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102b35:	05 bf 44 00 00       	add    $0x44bf,%eax
  102b3a:	8b 54 24 04          	mov    0x4(%esp),%edx
  102b3e:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  102b42:	89 8c d0 50 7c 04 00 	mov    %ecx,0x47c50(%eax,%edx,8)
}
  102b49:	c3                   	ret
  102b4a:	66 90                	xchg   %ax,%ax
  102b4c:	66 90                	xchg   %ax,%ax
  102b4e:	66 90                	xchg   %ax,%ax

00102b50 <MATIntro_test1>:
#include <lib/debug.h>
#include "export.h"

int MATIntro_test1()
{
  102b50:	55                   	push   %ebp
  102b51:	57                   	push   %edi
  102b52:	56                   	push   %esi
    int rn10[] = {1, 3, 5, 6, 78, 3576, 32, 8, 0, 100};
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++)
  102b53:	31 f6                	xor    %esi,%esi
{
  102b55:	53                   	push   %ebx
  102b56:	e8 65 d8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102b5b:	81 c3 99 44 00 00    	add    $0x4499,%ebx
  102b61:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = {1, 3, 5, 6, 78, 3576, 32, 8, 0, 100};
  102b64:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  102b6b:	00 
  102b6c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  102b70:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  102b77:	00 
  102b78:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  102b7f:	00 
  102b80:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  102b87:	00 
  102b88:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  102b8f:	00 
  102b90:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  102b97:	00 
  102b98:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  102b9f:	00 
  102ba0:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  102ba7:	00 
  102ba8:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  102baf:	00 
  102bb0:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  102bb7:	00 
    int nps = get_nps();
  102bb8:	e8 c3 fe ff ff       	call   102a80 <get_nps>
  102bbd:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++)
  102bc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    {
        set_nps(rn10[i]);
  102bc8:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  102bcb:	83 ec 0c             	sub    $0xc,%esp
  102bce:	55                   	push   %ebp
  102bcf:	e8 cc fe ff ff       	call   102aa0 <set_nps>
        if (get_nps() != rn10[i])
  102bd4:	e8 a7 fe ff ff       	call   102a80 <get_nps>
  102bd9:	83 c4 10             	add    $0x10,%esp
  102bdc:	39 c5                	cmp    %eax,%ebp
  102bde:	75 30                	jne    102c10 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++)
  102be0:	83 c6 01             	add    $0x1,%esi
  102be3:	83 fe 0a             	cmp    $0xa,%esi
  102be6:	75 e0                	jne    102bc8 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  102be8:	83 ec 0c             	sub    $0xc,%esp
  102beb:	ff 74 24 18          	push   0x18(%esp)
  102bef:	e8 ac fe ff ff       	call   102aa0 <set_nps>
    dprintf("test 1 passed.\n");
  102bf4:	8d 83 00 d5 ff ff    	lea    -0x2b00(%ebx),%eax
  102bfa:	89 04 24             	mov    %eax,(%esp)
  102bfd:	e8 64 eb ff ff       	call   101766 <dprintf>
    return 0;
  102c02:	83 c4 10             	add    $0x10,%esp
  102c05:	31 c0                	xor    %eax,%eax
}
  102c07:	83 c4 4c             	add    $0x4c,%esp
  102c0a:	5b                   	pop    %ebx
  102c0b:	5e                   	pop    %esi
  102c0c:	5f                   	pop    %edi
  102c0d:	5d                   	pop    %ebp
  102c0e:	c3                   	ret
  102c0f:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  102c10:	e8 6b fe ff ff       	call   102a80 <get_nps>
  102c15:	55                   	push   %ebp
  102c16:	50                   	push   %eax
  102c17:	8d 83 1c d6 ff ff    	lea    -0x29e4(%ebx),%eax
  102c1d:	56                   	push   %esi
  102c1e:	50                   	push   %eax
  102c1f:	e8 42 eb ff ff       	call   101766 <dprintf>
            set_nps(nps);
  102c24:	58                   	pop    %eax
  102c25:	ff 74 24 18          	push   0x18(%esp)
  102c29:	e8 72 fe ff ff       	call   102aa0 <set_nps>
            return 1;
  102c2e:	83 c4 10             	add    $0x10,%esp
  102c31:	b8 01 00 00 00       	mov    $0x1,%eax
}
  102c36:	83 c4 4c             	add    $0x4c,%esp
  102c39:	5b                   	pop    %ebx
  102c3a:	5e                   	pop    %esi
  102c3b:	5f                   	pop    %edi
  102c3c:	5d                   	pop    %ebp
  102c3d:	c3                   	ret
  102c3e:	66 90                	xchg   %ax,%ax

00102c40 <MATIntro_test2>:

int MATIntro_test2()
{
  102c40:	56                   	push   %esi
  102c41:	53                   	push   %ebx
  102c42:	e8 79 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c47:	81 c3 ad 43 00 00    	add    $0x43ad,%ebx
  102c4d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 0);
  102c50:	6a 00                	push   $0x0
  102c52:	6a 00                	push   $0x0
  102c54:	e8 87 fe ff ff       	call   102ae0 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0)
  102c59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102c60:	e8 5b fe ff ff       	call   102ac0 <at_is_norm>
  102c65:	83 c4 10             	add    $0x10,%esp
  102c68:	85 c0                	test   %eax,%eax
  102c6a:	75 11                	jne    102c7d <MATIntro_test2+0x3d>
  102c6c:	83 ec 0c             	sub    $0xc,%esp
  102c6f:	6a 00                	push   $0x0
  102c71:	e8 9a fe ff ff       	call   102b10 <at_is_allocated>
  102c76:	83 c4 10             	add    $0x10,%esp
  102c79:	85 c0                	test   %eax,%eax
  102c7b:	74 43                	je     102cc0 <MATIntro_test2+0x80>
    {
        dprintf("test 2.1 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  102c7d:	83 ec 0c             	sub    $0xc,%esp
  102c80:	6a 00                	push   $0x0
  102c82:	e8 89 fe ff ff       	call   102b10 <at_is_allocated>
  102c87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102c8e:	89 c6                	mov    %eax,%esi
  102c90:	e8 2b fe ff ff       	call   102ac0 <at_is_norm>
  102c95:	83 c4 0c             	add    $0xc,%esp
  102c98:	56                   	push   %esi
  102c99:	50                   	push   %eax
  102c9a:	8d 83 44 d6 ff ff    	lea    -0x29bc(%ebx),%eax
        return 1;
    }
    at_set_perm(0, 1);
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0)
    {
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  102ca0:	50                   	push   %eax
  102ca1:	e8 c0 ea ff ff       	call   101766 <dprintf>
        at_set_perm(0, 0);
  102ca6:	58                   	pop    %eax
  102ca7:	5a                   	pop    %edx
  102ca8:	6a 00                	push   $0x0
  102caa:	6a 00                	push   $0x0
  102cac:	e8 2f fe ff ff       	call   102ae0 <at_set_perm>
        return 1;
  102cb1:	83 c4 10             	add    $0x10,%esp
        return 1;
  102cb4:	b8 01 00 00 00       	mov    $0x1,%eax
        return 1;
    }
    at_set_perm(0, 0);
    dprintf("test 2 passed.\n");
    return 0;
}
  102cb9:	83 c4 04             	add    $0x4,%esp
  102cbc:	5b                   	pop    %ebx
  102cbd:	5e                   	pop    %esi
  102cbe:	c3                   	ret
  102cbf:	90                   	nop
    at_set_perm(0, 1);
  102cc0:	83 ec 08             	sub    $0x8,%esp
  102cc3:	6a 01                	push   $0x1
  102cc5:	6a 00                	push   $0x0
  102cc7:	e8 14 fe ff ff       	call   102ae0 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0)
  102ccc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102cd3:	e8 e8 fd ff ff       	call   102ac0 <at_is_norm>
  102cd8:	83 c4 10             	add    $0x10,%esp
  102cdb:	85 c0                	test   %eax,%eax
  102cdd:	75 11                	jne    102cf0 <MATIntro_test2+0xb0>
  102cdf:	83 ec 0c             	sub    $0xc,%esp
  102ce2:	6a 00                	push   $0x0
  102ce4:	e8 27 fe ff ff       	call   102b10 <at_is_allocated>
  102ce9:	83 c4 10             	add    $0x10,%esp
  102cec:	85 c0                	test   %eax,%eax
  102cee:	74 28                	je     102d18 <MATIntro_test2+0xd8>
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  102cf0:	83 ec 0c             	sub    $0xc,%esp
  102cf3:	6a 00                	push   $0x0
  102cf5:	e8 16 fe ff ff       	call   102b10 <at_is_allocated>
  102cfa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102d01:	89 c6                	mov    %eax,%esi
  102d03:	e8 b8 fd ff ff       	call   102ac0 <at_is_norm>
  102d08:	83 c4 0c             	add    $0xc,%esp
  102d0b:	56                   	push   %esi
  102d0c:	50                   	push   %eax
  102d0d:	8d 83 6c d6 ff ff    	lea    -0x2994(%ebx),%eax
  102d13:	eb 8b                	jmp    102ca0 <MATIntro_test2+0x60>
  102d15:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 2);
  102d18:	83 ec 08             	sub    $0x8,%esp
  102d1b:	6a 02                	push   $0x2
  102d1d:	6a 00                	push   $0x0
  102d1f:	e8 bc fd ff ff       	call   102ae0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0)
  102d24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102d2b:	e8 90 fd ff ff       	call   102ac0 <at_is_norm>
  102d30:	83 c4 10             	add    $0x10,%esp
  102d33:	83 f8 01             	cmp    $0x1,%eax
  102d36:	75 11                	jne    102d49 <MATIntro_test2+0x109>
  102d38:	83 ec 0c             	sub    $0xc,%esp
  102d3b:	6a 00                	push   $0x0
  102d3d:	e8 ce fd ff ff       	call   102b10 <at_is_allocated>
  102d42:	83 c4 10             	add    $0x10,%esp
  102d45:	85 c0                	test   %eax,%eax
  102d47:	74 2f                	je     102d78 <MATIntro_test2+0x138>
        dprintf("test 2.3 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  102d49:	83 ec 0c             	sub    $0xc,%esp
  102d4c:	6a 00                	push   $0x0
  102d4e:	e8 bd fd ff ff       	call   102b10 <at_is_allocated>
  102d53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102d5a:	89 c6                	mov    %eax,%esi
  102d5c:	e8 5f fd ff ff       	call   102ac0 <at_is_norm>
  102d61:	83 c4 0c             	add    $0xc,%esp
  102d64:	56                   	push   %esi
  102d65:	50                   	push   %eax
  102d66:	8d 83 94 d6 ff ff    	lea    -0x296c(%ebx),%eax
  102d6c:	e9 2f ff ff ff       	jmp    102ca0 <MATIntro_test2+0x60>
  102d71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_perm(0, 100);
  102d78:	83 ec 08             	sub    $0x8,%esp
  102d7b:	6a 64                	push   $0x64
  102d7d:	6a 00                	push   $0x0
  102d7f:	e8 5c fd ff ff       	call   102ae0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0)
  102d84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102d8b:	e8 30 fd ff ff       	call   102ac0 <at_is_norm>
  102d90:	83 c4 10             	add    $0x10,%esp
  102d93:	83 f8 01             	cmp    $0x1,%eax
  102d96:	75 38                	jne    102dd0 <MATIntro_test2+0x190>
  102d98:	83 ec 0c             	sub    $0xc,%esp
  102d9b:	6a 00                	push   $0x0
  102d9d:	e8 6e fd ff ff       	call   102b10 <at_is_allocated>
  102da2:	83 c4 10             	add    $0x10,%esp
  102da5:	85 c0                	test   %eax,%eax
  102da7:	75 27                	jne    102dd0 <MATIntro_test2+0x190>
    at_set_perm(0, 0);
  102da9:	83 ec 08             	sub    $0x8,%esp
  102dac:	6a 00                	push   $0x0
  102dae:	6a 00                	push   $0x0
  102db0:	e8 2b fd ff ff       	call   102ae0 <at_set_perm>
    dprintf("test 2 passed.\n");
  102db5:	8d 83 10 d5 ff ff    	lea    -0x2af0(%ebx),%eax
  102dbb:	89 04 24             	mov    %eax,(%esp)
  102dbe:	e8 a3 e9 ff ff       	call   101766 <dprintf>
    return 0;
  102dc3:	83 c4 10             	add    $0x10,%esp
  102dc6:	31 c0                	xor    %eax,%eax
  102dc8:	e9 ec fe ff ff       	jmp    102cb9 <MATIntro_test2+0x79>
  102dcd:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 2.4 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  102dd0:	83 ec 0c             	sub    $0xc,%esp
  102dd3:	6a 00                	push   $0x0
  102dd5:	e8 36 fd ff ff       	call   102b10 <at_is_allocated>
  102dda:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  102de1:	89 c6                	mov    %eax,%esi
  102de3:	e8 d8 fc ff ff       	call   102ac0 <at_is_norm>
  102de8:	83 c4 0c             	add    $0xc,%esp
  102deb:	56                   	push   %esi
  102dec:	50                   	push   %eax
  102ded:	8d 83 bc d6 ff ff    	lea    -0x2944(%ebx),%eax
  102df3:	e9 a8 fe ff ff       	jmp    102ca0 <MATIntro_test2+0x60>
  102df8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  102dff:	00 

00102e00 <MATIntro_test3>:

int MATIntro_test3()
{
  102e00:	53                   	push   %ebx
  102e01:	e8 ba d5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102e06:	81 c3 ee 41 00 00    	add    $0x41ee,%ebx
  102e0c:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  102e0f:	6a 00                	push   $0x0
  102e11:	6a 01                	push   $0x1
  102e13:	e8 18 fd ff ff       	call   102b30 <at_set_allocated>
    if (at_is_allocated(1) != 0)
  102e18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  102e1f:	e8 ec fc ff ff       	call   102b10 <at_is_allocated>
  102e24:	83 c4 10             	add    $0x10,%esp
  102e27:	85 c0                	test   %eax,%eax
  102e29:	0f 85 89 00 00 00    	jne    102eb8 <MATIntro_test3+0xb8>
    {
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        at_set_allocated(1, 0);
        return 1;
    }
    at_set_allocated(1, 1);
  102e2f:	83 ec 08             	sub    $0x8,%esp
  102e32:	6a 01                	push   $0x1
  102e34:	6a 01                	push   $0x1
  102e36:	e8 f5 fc ff ff       	call   102b30 <at_set_allocated>
    if (at_is_allocated(1) != 1)
  102e3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  102e42:	e8 c9 fc ff ff       	call   102b10 <at_is_allocated>
  102e47:	83 c4 10             	add    $0x10,%esp
  102e4a:	83 f8 01             	cmp    $0x1,%eax
  102e4d:	74 31                	je     102e80 <MATIntro_test3+0x80>
    {
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  102e4f:	83 ec 0c             	sub    $0xc,%esp
  102e52:	6a 01                	push   $0x1
  102e54:	e8 b7 fc ff ff       	call   102b10 <at_is_allocated>
  102e59:	59                   	pop    %ecx
  102e5a:	5a                   	pop    %edx
  102e5b:	50                   	push   %eax
  102e5c:	8d 83 3c d5 ff ff    	lea    -0x2ac4(%ebx),%eax
  102e62:	50                   	push   %eax
  102e63:	e8 fe e8 ff ff       	call   101766 <dprintf>
        at_set_allocated(1, 0);
  102e68:	58                   	pop    %eax
  102e69:	5a                   	pop    %edx
  102e6a:	6a 00                	push   $0x0
  102e6c:	6a 01                	push   $0x1
  102e6e:	e8 bd fc ff ff       	call   102b30 <at_set_allocated>
        return 1;
  102e73:	83 c4 10             	add    $0x10,%esp
        return 1;
  102e76:	b8 01 00 00 00       	mov    $0x1,%eax
        return 1;
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  102e7b:	83 c4 08             	add    $0x8,%esp
  102e7e:	5b                   	pop    %ebx
  102e7f:	c3                   	ret
    at_set_allocated(1, 100);
  102e80:	83 ec 08             	sub    $0x8,%esp
  102e83:	6a 64                	push   $0x64
  102e85:	6a 01                	push   $0x1
  102e87:	e8 a4 fc ff ff       	call   102b30 <at_set_allocated>
    if (at_is_allocated(1) != 1)
  102e8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  102e93:	e8 78 fc ff ff       	call   102b10 <at_is_allocated>
  102e98:	83 c4 10             	add    $0x10,%esp
  102e9b:	83 f8 01             	cmp    $0x1,%eax
  102e9e:	74 30                	je     102ed0 <MATIntro_test3+0xd0>
        dprintf("test 3.3 failed: (%d != 1)\n", at_is_allocated(1));
  102ea0:	83 ec 0c             	sub    $0xc,%esp
  102ea3:	6a 01                	push   $0x1
  102ea5:	e8 66 fc ff ff       	call   102b10 <at_is_allocated>
  102eaa:	5a                   	pop    %edx
  102eab:	59                   	pop    %ecx
  102eac:	50                   	push   %eax
  102ead:	8d 83 58 d5 ff ff    	lea    -0x2aa8(%ebx),%eax
  102eb3:	eb ad                	jmp    102e62 <MATIntro_test3+0x62>
  102eb5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  102eb8:	83 ec 0c             	sub    $0xc,%esp
  102ebb:	6a 01                	push   $0x1
  102ebd:	e8 4e fc ff ff       	call   102b10 <at_is_allocated>
  102ec2:	59                   	pop    %ecx
  102ec3:	5a                   	pop    %edx
  102ec4:	50                   	push   %eax
  102ec5:	8d 83 20 d5 ff ff    	lea    -0x2ae0(%ebx),%eax
  102ecb:	eb 95                	jmp    102e62 <MATIntro_test3+0x62>
  102ecd:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_allocated(1, 0);
  102ed0:	83 ec 08             	sub    $0x8,%esp
  102ed3:	6a 00                	push   $0x0
  102ed5:	6a 01                	push   $0x1
  102ed7:	e8 54 fc ff ff       	call   102b30 <at_set_allocated>
    dprintf("test 3 passed.\n");
  102edc:	8d 83 74 d5 ff ff    	lea    -0x2a8c(%ebx),%eax
  102ee2:	89 04 24             	mov    %eax,(%esp)
  102ee5:	e8 7c e8 ff ff       	call   101766 <dprintf>
    return 0;
  102eea:	83 c4 10             	add    $0x10,%esp
  102eed:	31 c0                	xor    %eax,%eax
}
  102eef:	83 c4 08             	add    $0x8,%esp
  102ef2:	5b                   	pop    %ebx
  102ef3:	c3                   	ret
  102ef4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  102efb:	00 
  102efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00102f00 <MATIntro_test_own>:
 * Be extra careful to make sure that if you overwrite some of the kernel data, they are set back to
 * the original value. O.w., it may make the future test scripts to fail even if you implement all
 * the functions correctly.
 */
int MATIntro_test_own()
{
  102f00:	53                   	push   %ebx
  102f01:	e8 ba d4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102f06:	81 c3 ee 40 00 00    	add    $0x40ee,%ebx
  102f0c:	83 ec 10             	sub    $0x10,%esp
  
   
    at_set_perm(5, 2);      //perm to normal
  102f0f:	6a 02                	push   $0x2
  102f11:	6a 05                	push   $0x5
  102f13:	e8 c8 fb ff ff       	call   102ae0 <at_set_perm>
    at_set_allocated(5, 1); // alloc the page
  102f18:	59                   	pop    %ecx
  102f19:	58                   	pop    %eax
  102f1a:	6a 01                	push   $0x1
  102f1c:	6a 05                	push   $0x5
  102f1e:	e8 0d fc ff ff       	call   102b30 <at_set_allocated>

    if (at_is_norm(5) != 1)
  102f23:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  102f2a:	e8 91 fb ff ff       	call   102ac0 <at_is_norm>
  102f2f:	83 c4 10             	add    $0x10,%esp
  102f32:	83 f8 01             	cmp    $0x1,%eax
  102f35:	74 21                	je     102f58 <MATIntro_test_own+0x58>
    {
        dprintf("test own 2.1 failed: Expected normal permission for page 5\n");
  102f37:	83 ec 0c             	sub    $0xc,%esp
  102f3a:	8d 83 e4 d6 ff ff    	lea    -0x291c(%ebx),%eax
  102f40:	50                   	push   %eax
  102f41:	e8 20 e8 ff ff       	call   101766 <dprintf>
        return 1;
  102f46:	83 c4 10             	add    $0x10,%esp
    }


    dprintf("own test passed.\n");
    return 0;
}
  102f49:	83 c4 08             	add    $0x8,%esp
        return 1;
  102f4c:	b8 01 00 00 00       	mov    $0x1,%eax
}
  102f51:	5b                   	pop    %ebx
  102f52:	c3                   	ret
  102f53:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if (at_is_allocated(5) != 1)
  102f58:	83 ec 0c             	sub    $0xc,%esp
  102f5b:	6a 05                	push   $0x5
  102f5d:	e8 ae fb ff ff       	call   102b10 <at_is_allocated>
  102f62:	83 c4 10             	add    $0x10,%esp
  102f65:	83 f8 01             	cmp    $0x1,%eax
  102f68:	74 16                	je     102f80 <MATIntro_test_own+0x80>
        dprintf("test own 2.2 failed: Expected allocated status for page 5\n");
  102f6a:	83 ec 0c             	sub    $0xc,%esp
  102f6d:	8d 83 20 d7 ff ff    	lea    -0x28e0(%ebx),%eax
  102f73:	50                   	push   %eax
  102f74:	e8 ed e7 ff ff       	call   101766 <dprintf>
        return 1;
  102f79:	83 c4 10             	add    $0x10,%esp
  102f7c:	eb cb                	jmp    102f49 <MATIntro_test_own+0x49>
  102f7e:	66 90                	xchg   %ax,%ax
    at_set_perm(5, 0);      // reset perm 
  102f80:	83 ec 08             	sub    $0x8,%esp
  102f83:	6a 00                	push   $0x0
  102f85:	6a 05                	push   $0x5
  102f87:	e8 54 fb ff ff       	call   102ae0 <at_set_perm>
    at_set_allocated(5, 0); // unalloc
  102f8c:	58                   	pop    %eax
  102f8d:	5a                   	pop    %edx
  102f8e:	6a 00                	push   $0x0
  102f90:	6a 05                	push   $0x5
  102f92:	e8 99 fb ff ff       	call   102b30 <at_set_allocated>
    if (at_is_norm(5) != 0)
  102f97:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  102f9e:	e8 1d fb ff ff       	call   102ac0 <at_is_norm>
  102fa3:	83 c4 10             	add    $0x10,%esp
  102fa6:	85 c0                	test   %eax,%eax
  102fa8:	75 2e                	jne    102fd8 <MATIntro_test_own+0xd8>
    if (at_is_allocated(5) != 0)
  102faa:	83 ec 0c             	sub    $0xc,%esp
  102fad:	6a 05                	push   $0x5
  102faf:	e8 5c fb ff ff       	call   102b10 <at_is_allocated>
  102fb4:	83 c4 10             	add    $0x10,%esp
  102fb7:	85 c0                	test   %eax,%eax
  102fb9:	75 35                	jne    102ff0 <MATIntro_test_own+0xf0>
    dprintf("own test passed.\n");
  102fbb:	83 ec 0c             	sub    $0xc,%esp
  102fbe:	8d 83 84 d5 ff ff    	lea    -0x2a7c(%ebx),%eax
  102fc4:	50                   	push   %eax
  102fc5:	e8 9c e7 ff ff       	call   101766 <dprintf>
    return 0;
  102fca:	83 c4 10             	add    $0x10,%esp
  102fcd:	31 c0                	xor    %eax,%eax
}
  102fcf:	83 c4 08             	add    $0x8,%esp
  102fd2:	5b                   	pop    %ebx
  102fd3:	c3                   	ret
  102fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test own 3.1 failed: Expected non-normal permission for page 5\n");
  102fd8:	83 ec 0c             	sub    $0xc,%esp
  102fdb:	8d 83 5c d7 ff ff    	lea    -0x28a4(%ebx),%eax
  102fe1:	50                   	push   %eax
  102fe2:	e8 7f e7 ff ff       	call   101766 <dprintf>
        return 1;
  102fe7:	83 c4 10             	add    $0x10,%esp
  102fea:	e9 5a ff ff ff       	jmp    102f49 <MATIntro_test_own+0x49>
  102fef:	90                   	nop
        dprintf("test own 3.2 failed: Expected unallocated status for page 5\n");
  102ff0:	83 ec 0c             	sub    $0xc,%esp
  102ff3:	8d 83 9c d7 ff ff    	lea    -0x2864(%ebx),%eax
  102ff9:	50                   	push   %eax
  102ffa:	e8 67 e7 ff ff       	call   101766 <dprintf>
        return 1;
  102fff:	83 c4 10             	add    $0x10,%esp
  103002:	e9 42 ff ff ff       	jmp    102f49 <MATIntro_test_own+0x49>
  103007:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10300e:	00 
  10300f:	90                   	nop

00103010 <test_MATIntro>:

int test_MATIntro()
{
  103010:	53                   	push   %ebx
  103011:	83 ec 08             	sub    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_own();
  103014:	e8 37 fb ff ff       	call   102b50 <MATIntro_test1>
  103019:	89 c3                	mov    %eax,%ebx
  10301b:	e8 20 fc ff ff       	call   102c40 <MATIntro_test2>
  103020:	01 c3                	add    %eax,%ebx
  103022:	e8 d9 fd ff ff       	call   102e00 <MATIntro_test3>
  103027:	01 c3                	add    %eax,%ebx
  103029:	e8 d2 fe ff ff       	call   102f00 <MATIntro_test_own>
  10302e:	83 c4 08             	add    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_own();
  103031:	01 d8                	add    %ebx,%eax
  103033:	5b                   	pop    %ebx
  103034:	c3                   	ret
  103035:	66 90                	xchg   %ax,%ax
  103037:	66 90                	xchg   %ax,%ax
  103039:	66 90                	xchg   %ax,%ax
  10303b:	66 90                	xchg   %ax,%ax
  10303d:	66 90                	xchg   %ax,%ax
  10303f:	90                   	nop

00103040 <pmem_init>:
 *    based on the information available in the physical memory map table.
 *    Review import.h in the current directory for the list of available
 *    getter and setter functions.
 */
void pmem_init(unsigned int mbi_addr)
{
  103040:	55                   	push   %ebp
  103041:	57                   	push   %edi
  103042:	56                   	push   %esi
  103043:	31 f6                	xor    %esi,%esi
  103045:	53                   	push   %ebx
  103046:	e8 75 d3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10304b:	81 c3 a9 3f 00 00    	add    $0x3fa9,%ebx
  103051:	83 ec 28             	sub    $0x28,%esp

    // TODO: Define your local variables here.

    // Calls the lower layer initialization primitive.
    // The parameter mbi_addr should not be used in the further code.
    devinit(mbi_addr);
  103054:	ff 74 24 3c          	push   0x3c(%esp)
  103058:	e8 a4 da ff ff       	call   100b01 <devinit>
     * store it into the local variable nps.
     * Hint: Think of it as the highest address in the ranges of the memory map table,
     *       divided by the page size.
     */
    // TODO
  table_nrow = get_size();
  10305d:	e8 e8 df ff ff       	call   10104a <get_size>
  103062:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  if(table_nrow == 0){
  103066:	83 c4 10             	add    $0x10,%esp
  103069:	85 c0                	test   %eax,%eax
  10306b:	0f 85 26 01 00 00    	jne    103197 <pmem_init+0x157>
    length = get_mml(table_nrow - 1);
    highest_addr = start_addr + length - 1;
    nps = start_addr / PAGESIZE + length / PAGESIZE + (start_addr % PAGESIZE + length % PAGESIZE) / PAGESIZE;
  }
  
    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  103071:	83 ec 0c             	sub    $0xc,%esp
     *    not aligned by pages, so it may be possible that for some pages, only some of
     *    the addresses are in a usable range. Currently, we do not utilize partial pages,
     *    so in that case, you should consider those pages as unavailable.
     */
    // TODO
    for(i = 0; i < VM_USERLO_PI; i++){
  103074:	31 ff                	xor    %edi,%edi
    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  103076:	56                   	push   %esi
  103077:	e8 24 fa ff ff       	call   102aa0 <set_nps>
  10307c:	83 c4 10             	add    $0x10,%esp
  10307f:	90                   	nop
    at_set_perm(i, 1);
  103080:	83 ec 08             	sub    $0x8,%esp
  103083:	6a 01                	push   $0x1
  103085:	57                   	push   %edi
    for(i = 0; i < VM_USERLO_PI; i++){
  103086:	83 c7 01             	add    $0x1,%edi
    at_set_perm(i, 1);
  103089:	e8 52 fa ff ff       	call   102ae0 <at_set_perm>
    for(i = 0; i < VM_USERLO_PI; i++){
  10308e:	83 c4 10             	add    $0x10,%esp
  103091:	81 ff 00 00 04 00    	cmp    $0x40000,%edi
  103097:	75 e7                	jne    103080 <pmem_init+0x40>
  }


  
  for(i = VM_USERHI_PI; i < nps; i++){
  103099:	81 fe 00 00 0f 00    	cmp    $0xf0000,%esi
  10309f:	76 27                	jbe    1030c8 <pmem_init+0x88>
  1030a1:	bd 00 00 0f 00       	mov    $0xf0000,%ebp
  1030a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1030ad:	00 
  1030ae:	66 90                	xchg   %ax,%ax
    at_set_perm(i, 1);
  1030b0:	83 ec 08             	sub    $0x8,%esp
  1030b3:	6a 01                	push   $0x1
  1030b5:	55                   	push   %ebp
  for(i = VM_USERHI_PI; i < nps; i++){
  1030b6:	83 c5 01             	add    $0x1,%ebp
    at_set_perm(i, 1);
  1030b9:	e8 22 fa ff ff       	call   102ae0 <at_set_perm>
  for(i = VM_USERHI_PI; i < nps; i++){
  1030be:	83 c4 10             	add    $0x10,%esp
  1030c1:	39 ee                	cmp    %ebp,%esi
  1030c3:	75 eb                	jne    1030b0 <pmem_init+0x70>
  1030c5:	8d 76 00             	lea    0x0(%esi),%esi
  }


  //set all default permission to 0
  for(i = VM_USERLO_PI; i < VM_USERHI_PI; i++){
    at_set_perm(i, 0);
  1030c8:	83 ec 08             	sub    $0x8,%esp
  1030cb:	6a 00                	push   $0x0
  1030cd:	57                   	push   %edi
  for(i = VM_USERLO_PI; i < VM_USERHI_PI; i++){
  1030ce:	83 c7 01             	add    $0x1,%edi
    at_set_perm(i, 0);
  1030d1:	e8 0a fa ff ff       	call   102ae0 <at_set_perm>
  for(i = VM_USERLO_PI; i < VM_USERHI_PI; i++){
  1030d6:	83 c4 10             	add    $0x10,%esp
  1030d9:	81 ff 00 00 0f 00    	cmp    $0xf0000,%edi
  1030df:	75 e7                	jne    1030c8 <pmem_init+0x88>
  }
  for(i = 0; i < table_nrow; i++){
  1030e1:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1030e5:	85 c0                	test   %eax,%eax
  1030e7:	0f 84 a2 00 00 00    	je     10318f <pmem_init+0x14f>
  1030ed:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1030f4:	00 
  1030f5:	8d 76 00             	lea    0x0(%esi),%esi
    start_addr = get_mms(i);
  1030f8:	83 ec 0c             	sub    $0xc,%esp
  1030fb:	8b 74 24 10          	mov    0x10(%esp),%esi
  1030ff:	56                   	push   %esi
  103100:	e8 5a df ff ff       	call   10105f <get_mms>
    length = get_mml(i);
  103105:	89 34 24             	mov    %esi,(%esp)
    start_addr = get_mms(i);
  103108:	89 c5                	mov    %eax,%ebp
    length = get_mml(i);
  10310a:	e8 b6 df ff ff       	call   1010c5 <get_mml>
    perm = is_usable(i);
  10310f:	89 34 24             	mov    %esi,(%esp)
        perm = 2;
    } else {
        perm = 0;
    }
    
    page_idx = start_addr / PAGESIZE;
  103112:	89 ef                	mov    %ebp,%edi
    length = get_mml(i);
  103114:	89 44 24 18          	mov    %eax,0x18(%esp)
    perm = is_usable(i);
  103118:	e8 18 e0 ff ff       	call   101135 <is_usable>
     if (perm == 1) {
  10311d:	83 c4 10             	add    $0x10,%esp
    
    //align to the beginning of a page
    if(page_idx * PAGESIZE < start_addr){
  103120:	89 e9                	mov    %ebp,%ecx
     if (perm == 1) {
  103122:	83 f8 01             	cmp    $0x1,%eax
  103125:	0f 94 c0             	sete   %al
    if(page_idx * PAGESIZE < start_addr){
  103128:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
    page_idx = start_addr / PAGESIZE;
  10312e:	c1 ef 0c             	shr    $0xc,%edi
     if (perm == 1) {
  103131:	0f b6 c0             	movzbl %al,%eax
      page_idx++;
  103134:	39 e9                	cmp    %ebp,%ecx
  103136:	83 d7 00             	adc    $0x0,%edi
     if (perm == 1) {
  103139:	8d 34 00             	lea    (%eax,%eax,1),%esi
    
    
    //the whole page resides in this row
    
    
    while((page_idx + 1) * PAGESIZE <= start_addr + length){
  10313c:	8b 44 24 08          	mov    0x8(%esp),%eax
  103140:	8d 57 01             	lea    0x1(%edi),%edx
  103143:	01 c5                	add    %eax,%ebp
  103145:	c1 e2 0c             	shl    $0xc,%edx
  103148:	39 d5                	cmp    %edx,%ebp
  10314a:	73 06                	jae    103152 <pmem_init+0x112>
  10314c:	eb 2e                	jmp    10317c <pmem_init+0x13c>
  10314e:	66 90                	xchg   %ax,%ax
  103150:	89 c7                	mov    %eax,%edi
      //the kernel reserved area
      if(page_idx < VM_USERLO_PI){
  103152:	81 ff ff ff 03 00    	cmp    $0x3ffff,%edi
  103158:	76 15                	jbe    10316f <pmem_init+0x12f>
        page_idx++;
        continue;
      }
      if(page_idx >= VM_USERHI_PI){
  10315a:	81 ff ff ff 0e 00    	cmp    $0xeffff,%edi
  103160:	77 1a                	ja     10317c <pmem_init+0x13c>
        break;
      }
      at_set_perm(page_idx, perm);
  103162:	83 ec 08             	sub    $0x8,%esp
  103165:	56                   	push   %esi
  103166:	57                   	push   %edi
  103167:	e8 74 f9 ff ff       	call   102ae0 <at_set_perm>
  10316c:	83 c4 10             	add    $0x10,%esp
    while((page_idx + 1) * PAGESIZE <= start_addr + length){
  10316f:	8d 47 01             	lea    0x1(%edi),%eax
  103172:	83 c7 02             	add    $0x2,%edi
  103175:	c1 e7 0c             	shl    $0xc,%edi
  103178:	39 fd                	cmp    %edi,%ebp
  10317a:	73 d4                	jae    103150 <pmem_init+0x110>
  for(i = 0; i < table_nrow; i++){
  10317c:	83 44 24 04 01       	addl   $0x1,0x4(%esp)
  103181:	8b 44 24 04          	mov    0x4(%esp),%eax
  103185:	39 44 24 0c          	cmp    %eax,0xc(%esp)
  103189:	0f 85 69 ff ff ff    	jne    1030f8 <pmem_init+0xb8>
      page_idx++;
    }
  }
}
  10318f:	83 c4 1c             	add    $0x1c,%esp
  103192:	5b                   	pop    %ebx
  103193:	5e                   	pop    %esi
  103194:	5f                   	pop    %edi
  103195:	5d                   	pop    %ebp
  103196:	c3                   	ret
    start_addr = get_mms(table_nrow - 1);
  103197:	83 ec 0c             	sub    $0xc,%esp
  10319a:	8d 70 ff             	lea    -0x1(%eax),%esi
  10319d:	56                   	push   %esi
  10319e:	e8 bc de ff ff       	call   10105f <get_mms>
    length = get_mml(table_nrow - 1);
  1031a3:	89 34 24             	mov    %esi,(%esp)
    start_addr = get_mms(table_nrow - 1);
  1031a6:	89 c7                	mov    %eax,%edi
    length = get_mml(table_nrow - 1);
  1031a8:	e8 18 df ff ff       	call   1010c5 <get_mml>
    nps = start_addr / PAGESIZE + length / PAGESIZE + (start_addr % PAGESIZE + length % PAGESIZE) / PAGESIZE;
  1031ad:	89 fe                	mov    %edi,%esi
  1031af:	c1 ef 0c             	shr    $0xc,%edi
  1031b2:	83 c4 10             	add    $0x10,%esp
  1031b5:	89 c2                	mov    %eax,%edx
  1031b7:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
  1031bd:	c1 e8 0c             	shr    $0xc,%eax
  1031c0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  1031c6:	01 f8                	add    %edi,%eax
  1031c8:	01 d6                	add    %edx,%esi
  1031ca:	c1 ee 0c             	shr    $0xc,%esi
  1031cd:	01 c6                	add    %eax,%esi
  1031cf:	e9 9d fe ff ff       	jmp    103071 <pmem_init+0x31>
  1031d4:	66 90                	xchg   %ax,%ax
  1031d6:	66 90                	xchg   %ax,%ax
  1031d8:	66 90                	xchg   %ax,%ax
  1031da:	66 90                	xchg   %ax,%ax
  1031dc:	66 90                	xchg   %ax,%ax
  1031de:	66 90                	xchg   %ax,%ax

001031e0 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  1031e0:	57                   	push   %edi
  1031e1:	56                   	push   %esi
  1031e2:	31 f6                	xor    %esi,%esi
  1031e4:	53                   	push   %ebx
  1031e5:	e8 d6 d1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1031ea:	81 c3 0a 3e 00 00    	add    $0x3e0a,%ebx
    int i;
    int nps = get_nps();
  1031f0:	e8 8b f8 ff ff       	call   102a80 <get_nps>
  1031f5:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  1031f7:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  1031fc:	7f 11                	jg     10320f <MATInit_test1+0x2f>
  1031fe:	e9 ad 00 00 00       	jmp    1032b0 <MATInit_test1+0xd0>
  103203:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  103208:	83 c6 01             	add    $0x1,%esi
  10320b:	39 f7                	cmp    %esi,%edi
  10320d:	74 51                	je     103260 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  10320f:	83 ec 0c             	sub    $0xc,%esp
  103212:	56                   	push   %esi
  103213:	e8 f8 f8 ff ff       	call   102b10 <at_is_allocated>
  103218:	83 c4 10             	add    $0x10,%esp
  10321b:	85 c0                	test   %eax,%eax
  10321d:	75 61                	jne    103280 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i)
  10321f:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  103225:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10322a:	76 dc                	jbe    103208 <MATInit_test1+0x28>
            && at_is_norm(i) != 0) {
  10322c:	83 ec 0c             	sub    $0xc,%esp
  10322f:	56                   	push   %esi
  103230:	e8 8b f8 ff ff       	call   102ac0 <at_is_norm>
  103235:	83 c4 10             	add    $0x10,%esp
  103238:	85 c0                	test   %eax,%eax
  10323a:	74 cc                	je     103208 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  10323c:	83 ec 0c             	sub    $0xc,%esp
  10323f:	56                   	push   %esi
  103240:	e8 7b f8 ff ff       	call   102ac0 <at_is_norm>
  103245:	83 c4 0c             	add    $0xc,%esp
  103248:	50                   	push   %eax
  103249:	8d 83 24 d8 ff ff    	lea    -0x27dc(%ebx),%eax
  10324f:	56                   	push   %esi
  103250:	50                   	push   %eax
  103251:	e8 10 e5 ff ff       	call   101766 <dprintf>
            return 1;
  103256:	83 c4 10             	add    $0x10,%esp
  103259:	eb 42                	jmp    10329d <MATInit_test1+0xbd>
  10325b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  103260:	83 ec 0c             	sub    $0xc,%esp
  103263:	8d 83 00 d5 ff ff    	lea    -0x2b00(%ebx),%eax
  103269:	50                   	push   %eax
  10326a:	e8 f7 e4 ff ff       	call   101766 <dprintf>
    return 0;
  10326f:	83 c4 10             	add    $0x10,%esp
  103272:	31 c0                	xor    %eax,%eax
}
  103274:	5b                   	pop    %ebx
  103275:	5e                   	pop    %esi
  103276:	5f                   	pop    %edi
  103277:	c3                   	ret
  103278:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10327f:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  103280:	83 ec 0c             	sub    $0xc,%esp
  103283:	56                   	push   %esi
  103284:	e8 87 f8 ff ff       	call   102b10 <at_is_allocated>
  103289:	83 c4 0c             	add    $0xc,%esp
  10328c:	50                   	push   %eax
  10328d:	8d 83 fc d7 ff ff    	lea    -0x2804(%ebx),%eax
  103293:	56                   	push   %esi
  103294:	50                   	push   %eax
  103295:	e8 cc e4 ff ff       	call   101766 <dprintf>
            return 1;
  10329a:	83 c4 10             	add    $0x10,%esp
}
  10329d:	5b                   	pop    %ebx
        return 1;
  10329e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1032a3:	5e                   	pop    %esi
  1032a4:	5f                   	pop    %edi
  1032a5:	c3                   	ret
  1032a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1032ad:	00 
  1032ae:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  1032b0:	83 ec 08             	sub    $0x8,%esp
  1032b3:	50                   	push   %eax
  1032b4:	8d 83 dc d7 ff ff    	lea    -0x2824(%ebx),%eax
  1032ba:	50                   	push   %eax
  1032bb:	e8 a6 e4 ff ff       	call   101766 <dprintf>
        return 1;
  1032c0:	83 c4 10             	add    $0x10,%esp
  1032c3:	eb d8                	jmp    10329d <MATInit_test1+0xbd>
  1032c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1032cc:	00 
  1032cd:	8d 76 00             	lea    0x0(%esi),%esi

001032d0 <MATInit_test_own>:
 * the functions correctly.
 */


int MATInit_test_own()
{
  1032d0:	53                   	push   %ebx
  1032d1:	e8 ea d0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1032d6:	81 c3 1e 3d 00 00    	add    $0x3d1e,%ebx
  1032dc:	83 ec 08             	sub    $0x8,%esp
    int i;
    int nps = get_nps();  // Get the number of pages
  1032df:	e8 9c f7 ff ff       	call   102a80 <get_nps>

  
    if (nps <= 1000) {
  1032e4:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  1032e9:	7e 1d                	jle    103308 <MATInit_test_own+0x38>
        dprintf("Test failed: Total number of pages is too small: %d\n", nps);
        return 1;  // Fail
    }


    dprintf("Own test passed.\n");
  1032eb:	83 ec 0c             	sub    $0xc,%esp
  1032ee:	8d 83 96 d5 ff ff    	lea    -0x2a6a(%ebx),%eax
  1032f4:	50                   	push   %eax
  1032f5:	e8 6c e4 ff ff       	call   101766 <dprintf>
    return 0;  // Success
  1032fa:	83 c4 10             	add    $0x10,%esp
  1032fd:	31 c0                	xor    %eax,%eax
}
  1032ff:	83 c4 08             	add    $0x8,%esp
  103302:	5b                   	pop    %ebx
  103303:	c3                   	ret
  103304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed: Total number of pages is too small: %d\n", nps);
  103308:	83 ec 08             	sub    $0x8,%esp
  10330b:	50                   	push   %eax
  10330c:	8d 83 4c d8 ff ff    	lea    -0x27b4(%ebx),%eax
  103312:	50                   	push   %eax
  103313:	e8 4e e4 ff ff       	call   101766 <dprintf>
        return 1;  // Fail
  103318:	83 c4 10             	add    $0x10,%esp
  10331b:	b8 01 00 00 00       	mov    $0x1,%eax
}
  103320:	83 c4 08             	add    $0x8,%esp
  103323:	5b                   	pop    %ebx
  103324:	c3                   	ret
  103325:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10332c:	00 
  10332d:	8d 76 00             	lea    0x0(%esi),%esi

00103330 <test_MATInit>:



int test_MATInit()
{
  103330:	56                   	push   %esi
  103331:	53                   	push   %ebx
  103332:	e8 89 d0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103337:	81 c3 bd 3c 00 00    	add    $0x3cbd,%ebx
  10333d:	83 ec 04             	sub    $0x4,%esp
    return MATInit_test1() + MATInit_test_own();
  103340:	e8 9b fe ff ff       	call   1031e0 <MATInit_test1>
  103345:	89 c6                	mov    %eax,%esi
    int nps = get_nps();  // Get the number of pages
  103347:	e8 34 f7 ff ff       	call   102a80 <get_nps>
    if (nps <= 1000) {
  10334c:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  103351:	7e 1d                	jle    103370 <test_MATInit+0x40>
    dprintf("Own test passed.\n");
  103353:	83 ec 0c             	sub    $0xc,%esp
  103356:	8d 83 96 d5 ff ff    	lea    -0x2a6a(%ebx),%eax
  10335c:	50                   	push   %eax
  10335d:	e8 04 e4 ff ff       	call   101766 <dprintf>
    return 0;  // Success
  103362:	83 c4 10             	add    $0x10,%esp
  103365:	89 f0                	mov    %esi,%eax
  103367:	83 c4 04             	add    $0x4,%esp
  10336a:	5b                   	pop    %ebx
  10336b:	5e                   	pop    %esi
  10336c:	c3                   	ret
  10336d:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Test failed: Total number of pages is too small: %d\n", nps);
  103370:	83 ec 08             	sub    $0x8,%esp
    return MATInit_test1() + MATInit_test_own();
  103373:	83 c6 01             	add    $0x1,%esi
        dprintf("Test failed: Total number of pages is too small: %d\n", nps);
  103376:	50                   	push   %eax
  103377:	8d 83 4c d8 ff ff    	lea    -0x27b4(%ebx),%eax
  10337d:	50                   	push   %eax
  10337e:	e8 e3 e3 ff ff       	call   101766 <dprintf>
        return 1;  // Fail
  103383:	83 c4 10             	add    $0x10,%esp
  103386:	89 f0                	mov    %esi,%eax
  103388:	83 c4 04             	add    $0x4,%esp
  10338b:	5b                   	pop    %ebx
  10338c:	5e                   	pop    %esi
  10338d:	c3                   	ret
  10338e:	66 90                	xchg   %ax,%ax

00103390 <palloc>:
 *    return 0.
 * 2. Optimize the code using memoization so that you do not have to
 *    scan the allocation table from scratch every time.
 */
unsigned int palloc()
{
  103390:	56                   	push   %esi
  103391:	53                   	push   %ebx
  103392:	e8 29 d0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103397:	81 c3 5d 3c 00 00    	add    $0x3c5d,%ebx
  10339d:	83 ec 04             	sub    $0x4,%esp
    // TODO

    if (get_nps() == 0)
  1033a0:	e8 db f6 ff ff       	call   102a80 <get_nps>
  1033a5:	85 c0                	test   %eax,%eax
  1033a7:	74 77                	je     103420 <palloc+0x90>
    {
        return 0;
    }

    unsigned int begin = next;
  1033a9:	8b b3 34 05 00 00    	mov    0x534(%ebx),%esi
  1033af:	89 f0                	mov    %esi,%eax
  1033b1:	eb 28                	jmp    1033db <palloc+0x4b>
  1033b3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        {
            at_set_allocated(next, 1);
            return next;
        }

        next++;
  1033b8:	8b 93 34 05 00 00    	mov    0x534(%ebx),%edx

        if (next == VM_USERHI_PI)
  1033be:	b9 00 00 04 00       	mov    $0x40000,%ecx
        next++;
  1033c3:	8d 42 01             	lea    0x1(%edx),%eax
        if (next == VM_USERHI_PI)
  1033c6:	81 fa ff ff 0e 00    	cmp    $0xeffff,%edx
  1033cc:	0f 45 c8             	cmovne %eax,%ecx
        next++;
  1033cf:	89 8b 34 05 00 00    	mov    %ecx,0x534(%ebx)
        if (next == VM_USERHI_PI)
  1033d5:	89 c8                	mov    %ecx,%eax
        {
            next = VM_USERLO_PI;
        }
    } while (next != begin);
  1033d7:	39 ce                	cmp    %ecx,%esi
  1033d9:	74 45                	je     103420 <palloc+0x90>
        if (at_is_norm(next) && at_is_allocated(next) == 0)
  1033db:	83 ec 0c             	sub    $0xc,%esp
  1033de:	50                   	push   %eax
  1033df:	e8 dc f6 ff ff       	call   102ac0 <at_is_norm>
  1033e4:	83 c4 10             	add    $0x10,%esp
  1033e7:	85 c0                	test   %eax,%eax
  1033e9:	74 cd                	je     1033b8 <palloc+0x28>
  1033eb:	83 ec 0c             	sub    $0xc,%esp
  1033ee:	ff b3 34 05 00 00    	push   0x534(%ebx)
  1033f4:	e8 17 f7 ff ff       	call   102b10 <at_is_allocated>
  1033f9:	83 c4 10             	add    $0x10,%esp
  1033fc:	85 c0                	test   %eax,%eax
  1033fe:	75 b8                	jne    1033b8 <palloc+0x28>
            at_set_allocated(next, 1);
  103400:	83 ec 08             	sub    $0x8,%esp
  103403:	6a 01                	push   $0x1
  103405:	ff b3 34 05 00 00    	push   0x534(%ebx)
  10340b:	e8 20 f7 ff ff       	call   102b30 <at_set_allocated>
            return next;
  103410:	83 c4 10             	add    $0x10,%esp
  103413:	8b 83 34 05 00 00    	mov    0x534(%ebx),%eax

    return 0;
}
  103419:	83 c4 04             	add    $0x4,%esp
  10341c:	5b                   	pop    %ebx
  10341d:	5e                   	pop    %esi
  10341e:	c3                   	ret
  10341f:	90                   	nop
  103420:	83 c4 04             	add    $0x4,%esp
        return 0;
  103423:	31 c0                	xor    %eax,%eax
}
  103425:	5b                   	pop    %ebx
  103426:	5e                   	pop    %esi
  103427:	c3                   	ret
  103428:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10342f:	00 

00103430 <pfree>:
 * in the allocation table.
 *
 * Hint: Simple.
 */
void pfree(unsigned int pfree_index)
{
  103430:	53                   	push   %ebx
  103431:	e8 8a cf ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103436:	81 c3 be 3b 00 00    	add    $0x3bbe,%ebx
  10343c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    at_set_allocated(pfree_index, 0);
  10343f:	6a 00                	push   $0x0
  103441:	ff 74 24 1c          	push   0x1c(%esp)
  103445:	e8 e6 f6 ff ff       	call   102b30 <at_set_allocated>
}
  10344a:	83 c4 18             	add    $0x18,%esp
  10344d:	5b                   	pop    %ebx
  10344e:	c3                   	ret
  10344f:	90                   	nop

00103450 <MATOp_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATOp_test1()
{
  103450:	56                   	push   %esi
  103451:	53                   	push   %ebx
  103452:	e8 69 cf ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103457:	81 c3 9d 3b 00 00    	add    $0x3b9d,%ebx
  10345d:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  103460:	e8 2b ff ff ff       	call   103390 <palloc>
  103465:	89 c6                	mov    %eax,%esi
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
  103467:	2d 00 00 04 00       	sub    $0x40000,%eax
  10346c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  103471:	0f 87 91 00 00 00    	ja     103508 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  103477:	83 ec 0c             	sub    $0xc,%esp
  10347a:	56                   	push   %esi
  10347b:	e8 40 f6 ff ff       	call   102ac0 <at_is_norm>
  103480:	83 c4 10             	add    $0x10,%esp
  103483:	83 f8 01             	cmp    $0x1,%eax
  103486:	74 38                	je     1034c0 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  103488:	83 ec 0c             	sub    $0xc,%esp
  10348b:	56                   	push   %esi
  10348c:	e8 2f f6 ff ff       	call   102ac0 <at_is_norm>
  103491:	5a                   	pop    %edx
  103492:	59                   	pop    %ecx
  103493:	50                   	push   %eax
  103494:	8d 83 a8 d5 ff ff    	lea    -0x2a58(%ebx),%eax
  10349a:	50                   	push   %eax
  10349b:	e8 c6 e2 ff ff       	call   101766 <dprintf>
        pfree(page_index);
  1034a0:	89 34 24             	mov    %esi,(%esp)
  1034a3:	e8 88 ff ff ff       	call   103430 <pfree>
        return 1;
  1034a8:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  1034ab:	83 c4 04             	add    $0x4,%esp
        return 1;
  1034ae:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1034b3:	5b                   	pop    %ebx
  1034b4:	5e                   	pop    %esi
  1034b5:	c3                   	ret
  1034b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1034bd:	00 
  1034be:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  1034c0:	83 ec 0c             	sub    $0xc,%esp
  1034c3:	56                   	push   %esi
  1034c4:	e8 47 f6 ff ff       	call   102b10 <at_is_allocated>
  1034c9:	83 c4 10             	add    $0x10,%esp
  1034cc:	83 f8 01             	cmp    $0x1,%eax
  1034cf:	75 47                	jne    103518 <MATOp_test1+0xc8>
    pfree(page_index);
  1034d1:	83 ec 0c             	sub    $0xc,%esp
  1034d4:	56                   	push   %esi
  1034d5:	e8 56 ff ff ff       	call   103430 <pfree>
    if (at_is_allocated(page_index) != 0) {
  1034da:	89 34 24             	mov    %esi,(%esp)
  1034dd:	e8 2e f6 ff ff       	call   102b10 <at_is_allocated>
  1034e2:	83 c4 10             	add    $0x10,%esp
  1034e5:	85 c0                	test   %eax,%eax
  1034e7:	75 47                	jne    103530 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  1034e9:	83 ec 0c             	sub    $0xc,%esp
  1034ec:	8d 83 00 d5 ff ff    	lea    -0x2b00(%ebx),%eax
  1034f2:	50                   	push   %eax
  1034f3:	e8 6e e2 ff ff       	call   101766 <dprintf>
    return 0;
  1034f8:	83 c4 10             	add    $0x10,%esp
  1034fb:	31 c0                	xor    %eax,%eax
}
  1034fd:	83 c4 04             	add    $0x4,%esp
  103500:	5b                   	pop    %ebx
  103501:	5e                   	pop    %esi
  103502:	c3                   	ret
  103503:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  103508:	83 ec 04             	sub    $0x4,%esp
  10350b:	8d 83 84 d8 ff ff    	lea    -0x277c(%ebx),%eax
  103511:	56                   	push   %esi
  103512:	56                   	push   %esi
  103513:	eb 85                	jmp    10349a <MATOp_test1+0x4a>
  103515:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  103518:	83 ec 0c             	sub    $0xc,%esp
  10351b:	56                   	push   %esi
  10351c:	e8 ef f5 ff ff       	call   102b10 <at_is_allocated>
  103521:	5a                   	pop    %edx
  103522:	59                   	pop    %ecx
  103523:	50                   	push   %eax
  103524:	8d 83 c4 d5 ff ff    	lea    -0x2a3c(%ebx),%eax
  10352a:	e9 6b ff ff ff       	jmp    10349a <MATOp_test1+0x4a>
  10352f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  103530:	83 ec 0c             	sub    $0xc,%esp
  103533:	56                   	push   %esi
  103534:	e8 d7 f5 ff ff       	call   102b10 <at_is_allocated>
  103539:	5a                   	pop    %edx
  10353a:	59                   	pop    %ecx
  10353b:	50                   	push   %eax
  10353c:	8d 83 e0 d5 ff ff    	lea    -0x2a20(%ebx),%eax
  103542:	50                   	push   %eax
  103543:	e8 1e e2 ff ff       	call   101766 <dprintf>
        return 1;
  103548:	83 c4 10             	add    $0x10,%esp
  10354b:	e9 5b ff ff ff       	jmp    1034ab <MATOp_test1+0x5b>

00103550 <MATOp_test_own>:
 * the functions correctly.
 */

 
int MATOp_test_own()
{
  103550:	57                   	push   %edi
    int i;
    int nps = get_nps();  // Get the number of physical pages
  103551:	bf 0a 00 00 00       	mov    $0xa,%edi
{
  103556:	56                   	push   %esi
  103557:	53                   	push   %ebx
  103558:	e8 63 ce ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10355d:	81 c3 97 3a 00 00    	add    $0x3a97,%ebx
    int nps = get_nps();  // Get the number of physical pages
  103563:	e8 18 f5 ff ff       	call   102a80 <get_nps>



  
    for (i = 0; i < 10; i++) {
  103568:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10356f:	00 
        unsigned int page_index = palloc();  // Allocate a page
  103570:	e8 1b fe ff ff       	call   103390 <palloc>
  103575:	89 c6                	mov    %eax,%esi
        if (page_index == 0) {
  103577:	85 c0                	test   %eax,%eax
  103579:	74 65                	je     1035e0 <MATOp_test_own+0x90>
            dprintf("Test failed: palloc returned 0, no pages available\n");
            return 2;  // Fail
        }
        if (at_is_allocated(page_index) != 1) {
  10357b:	83 ec 0c             	sub    $0xc,%esp
  10357e:	50                   	push   %eax
  10357f:	e8 8c f5 ff ff       	call   102b10 <at_is_allocated>
  103584:	83 c4 10             	add    $0x10,%esp
  103587:	83 f8 01             	cmp    $0x1,%eax
  10358a:	0f 85 90 00 00 00    	jne    103620 <MATOp_test_own+0xd0>
    for (i = 0; i < 10; i++) {
  103590:	83 ef 01             	sub    $0x1,%edi
  103593:	75 db                	jne    103570 <MATOp_test_own+0x20>
            dprintf("Test failed at page %d: Page should be allocated but is not\n", page_index);
            return 2;  // Fail
        }
    }

    for (i = 0; i < 10; i++) {
  103595:	31 f6                	xor    %esi,%esi
  103597:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10359e:	00 
  10359f:	90                   	nop
        unsigned int page_index = i;  // Assume the first 10 pages were allocated in Test 2
        pfree(page_index);  // Free the page
  1035a0:	83 ec 0c             	sub    $0xc,%esp
  1035a3:	56                   	push   %esi
  1035a4:	e8 87 fe ff ff       	call   103430 <pfree>
        if (at_is_allocated(page_index) != 0) {
  1035a9:	89 34 24             	mov    %esi,(%esp)
  1035ac:	e8 5f f5 ff ff       	call   102b10 <at_is_allocated>
  1035b1:	83 c4 10             	add    $0x10,%esp
  1035b4:	85 c0                	test   %eax,%eax
  1035b6:	75 48                	jne    103600 <MATOp_test_own+0xb0>
    for (i = 0; i < 10; i++) {
  1035b8:	83 c6 01             	add    $0x1,%esi
  1035bb:	83 fe 0a             	cmp    $0xa,%esi
  1035be:	75 e0                	jne    1035a0 <MATOp_test_own+0x50>
        }
    }

    

    dprintf("Own test passed.\n");
  1035c0:	83 ec 0c             	sub    $0xc,%esp
  1035c3:	8d 83 96 d5 ff ff    	lea    -0x2a6a(%ebx),%eax
  1035c9:	50                   	push   %eax
  1035ca:	e8 97 e1 ff ff       	call   101766 <dprintf>
    return 0;  // Success
  1035cf:	83 c4 10             	add    $0x10,%esp
  1035d2:	31 c0                	xor    %eax,%eax
}
  1035d4:	5b                   	pop    %ebx
  1035d5:	5e                   	pop    %esi
  1035d6:	5f                   	pop    %edi
  1035d7:	c3                   	ret
  1035d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1035df:	00 
            dprintf("Test failed: palloc returned 0, no pages available\n");
  1035e0:	83 ec 0c             	sub    $0xc,%esp
  1035e3:	8d 83 c0 d8 ff ff    	lea    -0x2740(%ebx),%eax
  1035e9:	50                   	push   %eax
  1035ea:	e8 77 e1 ff ff       	call   101766 <dprintf>
            return 2;  // Fail
  1035ef:	83 c4 10             	add    $0x10,%esp
}
  1035f2:	5b                   	pop    %ebx
            return 2;  // Fail
  1035f3:	b8 02 00 00 00       	mov    $0x2,%eax
}
  1035f8:	5e                   	pop    %esi
  1035f9:	5f                   	pop    %edi
  1035fa:	c3                   	ret
  1035fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
            dprintf("Test ailed at page %d: Page should be unallocated but is still allocated\n", page_index);
  103600:	83 ec 08             	sub    $0x8,%esp
  103603:	8d 83 34 d9 ff ff    	lea    -0x26cc(%ebx),%eax
  103609:	56                   	push   %esi
  10360a:	50                   	push   %eax
  10360b:	e8 56 e1 ff ff       	call   101766 <dprintf>
            return 3;  // Fail
  103610:	83 c4 10             	add    $0x10,%esp
  103613:	b8 03 00 00 00       	mov    $0x3,%eax
}
  103618:	5b                   	pop    %ebx
  103619:	5e                   	pop    %esi
  10361a:	5f                   	pop    %edi
  10361b:	c3                   	ret
  10361c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            dprintf("Test failed at page %d: Page should be allocated but is not\n", page_index);
  103620:	83 ec 08             	sub    $0x8,%esp
  103623:	8d 83 f4 d8 ff ff    	lea    -0x270c(%ebx),%eax
  103629:	56                   	push   %esi
  10362a:	50                   	push   %eax
  10362b:	e8 36 e1 ff ff       	call   101766 <dprintf>
            return 2;  // Fail
  103630:	83 c4 10             	add    $0x10,%esp
  103633:	eb bd                	jmp    1035f2 <MATOp_test_own+0xa2>
  103635:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10363c:	00 
  10363d:	8d 76 00             	lea    0x0(%esi),%esi

00103640 <test_MATOp>:

int test_MATOp()
{
  103640:	53                   	push   %ebx
  103641:	83 ec 08             	sub    $0x8,%esp
    return MATOp_test1() + MATOp_test_own();
  103644:	e8 07 fe ff ff       	call   103450 <MATOp_test1>
  103649:	89 c3                	mov    %eax,%ebx
  10364b:	e8 00 ff ff ff       	call   103550 <MATOp_test_own>
}
  103650:	83 c4 08             	add    $0x8,%esp
    return MATOp_test1() + MATOp_test_own();
  103653:	01 d8                	add    %ebx,%eax
}
  103655:	5b                   	pop    %ebx
  103656:	c3                   	ret
  103657:	66 90                	xchg   %ax,%ax
  103659:	66 90                	xchg   %ax,%ax
  10365b:	66 90                	xchg   %ax,%ax
  10365d:	66 90                	xchg   %ax,%ax
  10365f:	90                   	nop

00103660 <__udivdi3>:
  103660:	f3 0f 1e fb          	endbr32
  103664:	55                   	push   %ebp
  103665:	57                   	push   %edi
  103666:	56                   	push   %esi
  103667:	53                   	push   %ebx
  103668:	83 ec 1c             	sub    $0x1c,%esp
  10366b:	8b 44 24 3c          	mov    0x3c(%esp),%eax
  10366f:	8b 6c 24 30          	mov    0x30(%esp),%ebp
  103673:	8b 74 24 34          	mov    0x34(%esp),%esi
  103677:	8b 5c 24 38          	mov    0x38(%esp),%ebx
  10367b:	85 c0                	test   %eax,%eax
  10367d:	75 19                	jne    103698 <__udivdi3+0x38>
  10367f:	39 de                	cmp    %ebx,%esi
  103681:	73 4d                	jae    1036d0 <__udivdi3+0x70>
  103683:	31 ff                	xor    %edi,%edi
  103685:	89 e8                	mov    %ebp,%eax
  103687:	89 f2                	mov    %esi,%edx
  103689:	f7 f3                	div    %ebx
  10368b:	89 fa                	mov    %edi,%edx
  10368d:	83 c4 1c             	add    $0x1c,%esp
  103690:	5b                   	pop    %ebx
  103691:	5e                   	pop    %esi
  103692:	5f                   	pop    %edi
  103693:	5d                   	pop    %ebp
  103694:	c3                   	ret
  103695:	8d 76 00             	lea    0x0(%esi),%esi
  103698:	39 c6                	cmp    %eax,%esi
  10369a:	73 14                	jae    1036b0 <__udivdi3+0x50>
  10369c:	31 ff                	xor    %edi,%edi
  10369e:	31 c0                	xor    %eax,%eax
  1036a0:	89 fa                	mov    %edi,%edx
  1036a2:	83 c4 1c             	add    $0x1c,%esp
  1036a5:	5b                   	pop    %ebx
  1036a6:	5e                   	pop    %esi
  1036a7:	5f                   	pop    %edi
  1036a8:	5d                   	pop    %ebp
  1036a9:	c3                   	ret
  1036aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1036b0:	0f bd f8             	bsr    %eax,%edi
  1036b3:	83 f7 1f             	xor    $0x1f,%edi
  1036b6:	75 48                	jne    103700 <__udivdi3+0xa0>
  1036b8:	39 f0                	cmp    %esi,%eax
  1036ba:	72 06                	jb     1036c2 <__udivdi3+0x62>
  1036bc:	31 c0                	xor    %eax,%eax
  1036be:	39 dd                	cmp    %ebx,%ebp
  1036c0:	72 de                	jb     1036a0 <__udivdi3+0x40>
  1036c2:	b8 01 00 00 00       	mov    $0x1,%eax
  1036c7:	eb d7                	jmp    1036a0 <__udivdi3+0x40>
  1036c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1036d0:	89 d9                	mov    %ebx,%ecx
  1036d2:	85 db                	test   %ebx,%ebx
  1036d4:	75 0b                	jne    1036e1 <__udivdi3+0x81>
  1036d6:	b8 01 00 00 00       	mov    $0x1,%eax
  1036db:	31 d2                	xor    %edx,%edx
  1036dd:	f7 f3                	div    %ebx
  1036df:	89 c1                	mov    %eax,%ecx
  1036e1:	31 d2                	xor    %edx,%edx
  1036e3:	89 f0                	mov    %esi,%eax
  1036e5:	f7 f1                	div    %ecx
  1036e7:	89 c6                	mov    %eax,%esi
  1036e9:	89 e8                	mov    %ebp,%eax
  1036eb:	89 f7                	mov    %esi,%edi
  1036ed:	f7 f1                	div    %ecx
  1036ef:	89 fa                	mov    %edi,%edx
  1036f1:	83 c4 1c             	add    $0x1c,%esp
  1036f4:	5b                   	pop    %ebx
  1036f5:	5e                   	pop    %esi
  1036f6:	5f                   	pop    %edi
  1036f7:	5d                   	pop    %ebp
  1036f8:	c3                   	ret
  1036f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  103700:	89 f9                	mov    %edi,%ecx
  103702:	ba 20 00 00 00       	mov    $0x20,%edx
  103707:	29 fa                	sub    %edi,%edx
  103709:	d3 e0                	shl    %cl,%eax
  10370b:	89 44 24 08          	mov    %eax,0x8(%esp)
  10370f:	89 d1                	mov    %edx,%ecx
  103711:	89 d8                	mov    %ebx,%eax
  103713:	d3 e8                	shr    %cl,%eax
  103715:	89 c1                	mov    %eax,%ecx
  103717:	8b 44 24 08          	mov    0x8(%esp),%eax
  10371b:	09 c1                	or     %eax,%ecx
  10371d:	89 f0                	mov    %esi,%eax
  10371f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  103723:	89 f9                	mov    %edi,%ecx
  103725:	d3 e3                	shl    %cl,%ebx
  103727:	89 d1                	mov    %edx,%ecx
  103729:	d3 e8                	shr    %cl,%eax
  10372b:	89 f9                	mov    %edi,%ecx
  10372d:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
  103731:	89 eb                	mov    %ebp,%ebx
  103733:	d3 e6                	shl    %cl,%esi
  103735:	89 d1                	mov    %edx,%ecx
  103737:	d3 eb                	shr    %cl,%ebx
  103739:	09 f3                	or     %esi,%ebx
  10373b:	89 c6                	mov    %eax,%esi
  10373d:	89 f2                	mov    %esi,%edx
  10373f:	89 d8                	mov    %ebx,%eax
  103741:	f7 74 24 08          	divl   0x8(%esp)
  103745:	89 d6                	mov    %edx,%esi
  103747:	89 c3                	mov    %eax,%ebx
  103749:	f7 64 24 0c          	mull   0xc(%esp)
  10374d:	39 d6                	cmp    %edx,%esi
  10374f:	72 1f                	jb     103770 <__udivdi3+0x110>
  103751:	89 f9                	mov    %edi,%ecx
  103753:	d3 e5                	shl    %cl,%ebp
  103755:	39 c5                	cmp    %eax,%ebp
  103757:	73 04                	jae    10375d <__udivdi3+0xfd>
  103759:	39 d6                	cmp    %edx,%esi
  10375b:	74 13                	je     103770 <__udivdi3+0x110>
  10375d:	89 d8                	mov    %ebx,%eax
  10375f:	31 ff                	xor    %edi,%edi
  103761:	e9 3a ff ff ff       	jmp    1036a0 <__udivdi3+0x40>
  103766:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10376d:	00 
  10376e:	66 90                	xchg   %ax,%ax
  103770:	8d 43 ff             	lea    -0x1(%ebx),%eax
  103773:	31 ff                	xor    %edi,%edi
  103775:	e9 26 ff ff ff       	jmp    1036a0 <__udivdi3+0x40>
  10377a:	66 90                	xchg   %ax,%ax
  10377c:	66 90                	xchg   %ax,%ax
  10377e:	66 90                	xchg   %ax,%ax

00103780 <__umoddi3>:
  103780:	f3 0f 1e fb          	endbr32
  103784:	55                   	push   %ebp
  103785:	57                   	push   %edi
  103786:	56                   	push   %esi
  103787:	53                   	push   %ebx
  103788:	83 ec 1c             	sub    $0x1c,%esp
  10378b:	8b 5c 24 34          	mov    0x34(%esp),%ebx
  10378f:	8b 44 24 3c          	mov    0x3c(%esp),%eax
  103793:	8b 74 24 30          	mov    0x30(%esp),%esi
  103797:	8b 7c 24 38          	mov    0x38(%esp),%edi
  10379b:	89 da                	mov    %ebx,%edx
  10379d:	85 c0                	test   %eax,%eax
  10379f:	75 17                	jne    1037b8 <__umoddi3+0x38>
  1037a1:	39 fb                	cmp    %edi,%ebx
  1037a3:	73 53                	jae    1037f8 <__umoddi3+0x78>
  1037a5:	89 f0                	mov    %esi,%eax
  1037a7:	f7 f7                	div    %edi
  1037a9:	89 d0                	mov    %edx,%eax
  1037ab:	31 d2                	xor    %edx,%edx
  1037ad:	83 c4 1c             	add    $0x1c,%esp
  1037b0:	5b                   	pop    %ebx
  1037b1:	5e                   	pop    %esi
  1037b2:	5f                   	pop    %edi
  1037b3:	5d                   	pop    %ebp
  1037b4:	c3                   	ret
  1037b5:	8d 76 00             	lea    0x0(%esi),%esi
  1037b8:	89 f1                	mov    %esi,%ecx
  1037ba:	39 c3                	cmp    %eax,%ebx
  1037bc:	73 12                	jae    1037d0 <__umoddi3+0x50>
  1037be:	89 f0                	mov    %esi,%eax
  1037c0:	83 c4 1c             	add    $0x1c,%esp
  1037c3:	5b                   	pop    %ebx
  1037c4:	5e                   	pop    %esi
  1037c5:	5f                   	pop    %edi
  1037c6:	5d                   	pop    %ebp
  1037c7:	c3                   	ret
  1037c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1037cf:	00 
  1037d0:	0f bd e8             	bsr    %eax,%ebp
  1037d3:	83 f5 1f             	xor    $0x1f,%ebp
  1037d6:	75 48                	jne    103820 <__umoddi3+0xa0>
  1037d8:	39 d8                	cmp    %ebx,%eax
  1037da:	0f 82 d0 00 00 00    	jb     1038b0 <__umoddi3+0x130>
  1037e0:	39 fe                	cmp    %edi,%esi
  1037e2:	0f 83 c8 00 00 00    	jae    1038b0 <__umoddi3+0x130>
  1037e8:	89 c8                	mov    %ecx,%eax
  1037ea:	83 c4 1c             	add    $0x1c,%esp
  1037ed:	5b                   	pop    %ebx
  1037ee:	5e                   	pop    %esi
  1037ef:	5f                   	pop    %edi
  1037f0:	5d                   	pop    %ebp
  1037f1:	c3                   	ret
  1037f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1037f8:	89 f9                	mov    %edi,%ecx
  1037fa:	85 ff                	test   %edi,%edi
  1037fc:	75 0b                	jne    103809 <__umoddi3+0x89>
  1037fe:	b8 01 00 00 00       	mov    $0x1,%eax
  103803:	31 d2                	xor    %edx,%edx
  103805:	f7 f7                	div    %edi
  103807:	89 c1                	mov    %eax,%ecx
  103809:	89 d8                	mov    %ebx,%eax
  10380b:	31 d2                	xor    %edx,%edx
  10380d:	f7 f1                	div    %ecx
  10380f:	89 f0                	mov    %esi,%eax
  103811:	f7 f1                	div    %ecx
  103813:	89 d0                	mov    %edx,%eax
  103815:	31 d2                	xor    %edx,%edx
  103817:	eb 94                	jmp    1037ad <__umoddi3+0x2d>
  103819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  103820:	89 e9                	mov    %ebp,%ecx
  103822:	ba 20 00 00 00       	mov    $0x20,%edx
  103827:	29 ea                	sub    %ebp,%edx
  103829:	d3 e0                	shl    %cl,%eax
  10382b:	89 44 24 08          	mov    %eax,0x8(%esp)
  10382f:	89 d1                	mov    %edx,%ecx
  103831:	89 f8                	mov    %edi,%eax
  103833:	d3 e8                	shr    %cl,%eax
  103835:	89 54 24 04          	mov    %edx,0x4(%esp)
  103839:	8b 54 24 04          	mov    0x4(%esp),%edx
  10383d:	89 c1                	mov    %eax,%ecx
  10383f:	8b 44 24 08          	mov    0x8(%esp),%eax
  103843:	09 c1                	or     %eax,%ecx
  103845:	89 d8                	mov    %ebx,%eax
  103847:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  10384b:	89 e9                	mov    %ebp,%ecx
  10384d:	d3 e7                	shl    %cl,%edi
  10384f:	89 d1                	mov    %edx,%ecx
  103851:	d3 e8                	shr    %cl,%eax
  103853:	89 e9                	mov    %ebp,%ecx
  103855:	89 7c 24 0c          	mov    %edi,0xc(%esp)
  103859:	d3 e3                	shl    %cl,%ebx
  10385b:	89 c7                	mov    %eax,%edi
  10385d:	89 d1                	mov    %edx,%ecx
  10385f:	89 f0                	mov    %esi,%eax
  103861:	d3 e8                	shr    %cl,%eax
  103863:	89 fa                	mov    %edi,%edx
  103865:	89 e9                	mov    %ebp,%ecx
  103867:	09 d8                	or     %ebx,%eax
  103869:	d3 e6                	shl    %cl,%esi
  10386b:	f7 74 24 08          	divl   0x8(%esp)
  10386f:	89 d3                	mov    %edx,%ebx
  103871:	f7 64 24 0c          	mull   0xc(%esp)
  103875:	89 c7                	mov    %eax,%edi
  103877:	89 d1                	mov    %edx,%ecx
  103879:	39 d3                	cmp    %edx,%ebx
  10387b:	72 06                	jb     103883 <__umoddi3+0x103>
  10387d:	75 10                	jne    10388f <__umoddi3+0x10f>
  10387f:	39 c6                	cmp    %eax,%esi
  103881:	73 0c                	jae    10388f <__umoddi3+0x10f>
  103883:	2b 44 24 0c          	sub    0xc(%esp),%eax
  103887:	1b 54 24 08          	sbb    0x8(%esp),%edx
  10388b:	89 d1                	mov    %edx,%ecx
  10388d:	89 c7                	mov    %eax,%edi
  10388f:	89 f2                	mov    %esi,%edx
  103891:	29 fa                	sub    %edi,%edx
  103893:	19 cb                	sbb    %ecx,%ebx
  103895:	0f b6 4c 24 04       	movzbl 0x4(%esp),%ecx
  10389a:	89 d8                	mov    %ebx,%eax
  10389c:	d3 e0                	shl    %cl,%eax
  10389e:	89 e9                	mov    %ebp,%ecx
  1038a0:	d3 ea                	shr    %cl,%edx
  1038a2:	d3 eb                	shr    %cl,%ebx
  1038a4:	09 d0                	or     %edx,%eax
  1038a6:	89 da                	mov    %ebx,%edx
  1038a8:	83 c4 1c             	add    $0x1c,%esp
  1038ab:	5b                   	pop    %ebx
  1038ac:	5e                   	pop    %esi
  1038ad:	5f                   	pop    %edi
  1038ae:	5d                   	pop    %ebp
  1038af:	c3                   	ret
  1038b0:	89 da                	mov    %ebx,%edx
  1038b2:	89 f1                	mov    %esi,%ecx
  1038b4:	29 f9                	sub    %edi,%ecx
  1038b6:	19 c2                	sbb    %eax,%edx
  1038b8:	89 c8                	mov    %ecx,%eax
  1038ba:	e9 2b ff ff ff       	jmp    1037ea <__umoddi3+0x6a>
