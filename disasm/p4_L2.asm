
/home/claude/paper/experiment/bin/p4_L2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	endbr64
    1004:	sub    $0x8,%rsp
    1008:	mov    0x2fd9(%rip),%rax        # 3fe8 <__printf_chk@plt+0x2f38>
    100f:	test   %rax,%rax
    1012:	je     1016 <__cxa_finalize@plt-0x5a>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	push   0x2f82(%rip)        # 3fa8 <__printf_chk@plt+0x2ef8>
    1026:	jmp    *0x2f84(%rip)        # 3fb0 <__printf_chk@plt+0x2f00>
    102c:	nopl   0x0(%rax)
    1030:	endbr64
    1034:	push   $0x0
    1039:	jmp    1020 <__cxa_finalize@plt-0x50>
    103e:	xchg   %ax,%ax
    1040:	endbr64
    1044:	push   $0x1
    1049:	jmp    1020 <__cxa_finalize@plt-0x50>
    104e:	xchg   %ax,%ax
    1050:	endbr64
    1054:	push   $0x2
    1059:	jmp    1020 <__cxa_finalize@plt-0x50>
    105e:	xchg   %ax,%ax
    1060:	endbr64
    1064:	push   $0x3
    1069:	jmp    1020 <__cxa_finalize@plt-0x50>
    106e:	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f7e(%rip)        # 3ff8 <__printf_chk@plt+0x2f48>
    107a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001080 <puts@plt>:
    1080:	endbr64
    1084:	jmp    *0x2f2e(%rip)        # 3fb8 <__printf_chk@plt+0x2f08>
    108a:	nopw   0x0(%rax,%rax,1)

0000000000001090 <strlen@plt>:
    1090:	endbr64
    1094:	jmp    *0x2f26(%rip)        # 3fc0 <__printf_chk@plt+0x2f10>
    109a:	nopw   0x0(%rax,%rax,1)

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	endbr64
    10a4:	jmp    *0x2f1e(%rip)        # 3fc8 <__printf_chk@plt+0x2f18>
    10aa:	nopw   0x0(%rax,%rax,1)

00000000000010b0 <__printf_chk@plt>:
    10b0:	endbr64
    10b4:	jmp    *0x2f16(%rip)        # 3fd0 <__printf_chk@plt+0x2f20>
    10ba:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010c0 <.text>:
    10c0:	endbr64
    10c4:	push   %r15
    10c6:	push   %r14
    10c8:	push   %r13
    10ca:	mov    %rsi,%r13
    10cd:	push   %r12
    10cf:	push   %rbp
    10d0:	movslq %edi,%rbp
    10d3:	push   %rbx
    10d4:	sub    $0x48,%rsp
    10d8:	mov    %fs:0x28,%rax
    10e1:	mov    %rax,0x38(%rsp)
    10e6:	xor    %eax,%eax
    10e8:	cmp    $0x1,%ebp
    10eb:	jg     112c <__printf_chk@plt+0x7c>
    10ed:	mov    0x0(%r13),%rdx
    10f1:	lea    0xf0c(%rip),%rsi        # 2004 <__printf_chk@plt+0xf54>
    10f8:	mov    $0x2,%edi
    10fd:	xor    %eax,%eax
    10ff:	call   10b0 <__printf_chk@plt>
    1104:	mov    $0x2,%eax
    1109:	mov    0x38(%rsp),%rdx
    110e:	sub    %fs:0x28,%rdx
    1117:	jne    12f1 <__printf_chk@plt+0x241>
    111d:	add    $0x48,%rsp
    1121:	pop    %rbx
    1122:	pop    %rbp
    1123:	pop    %r12
    1125:	pop    %r13
    1127:	pop    %r14
    1129:	pop    %r15
    112b:	ret
    112c:	mov    0x8(%rsi),%rsi
    1130:	xor    %r14d,%r14d
    1133:	xor    %r15d,%r15d
    1136:	xor    %r12d,%r12d
    1139:	xor    %edx,%edx
    113b:	lea    0xed6(%rip),%rbx        # 2018 <__printf_chk@plt+0xf68>
    1142:	nopw   0x0(%rax,%rax,1)
    1148:	cmp    $0x9,%edx
    114b:	jg     1290 <__printf_chk@plt+0x1e0>
    1151:	ja     1148 <__printf_chk@plt+0x98>
    1153:	mov    %edx,%ecx
    1155:	movslq (%rbx,%rcx,4),%rcx
    1159:	add    %rbx,%rcx
    115c:	notrack jmp *%rcx
    115f:	xor    $0xdead,%r15d
    1166:	mov    $0x4,%edx
    116b:	jmp    1153 <__printf_chk@plt+0xa3>
    116d:	mov    %r15d,%eax
    1170:	movsbl 0x7(%rsi),%ecx
    1174:	mov    $0xa,%esi
    1179:	xor    %r14d,%r14d
    117c:	cltd
    117d:	idiv   %esi
    117f:	sub    $0x30,%ecx
    1182:	cmp    %edx,%ecx
    1184:	sete   %r14b
    1188:	lea    0x1(%rbp),%rax
    118c:	imul   %rbp,%rax
    1190:	and    $0x1,%eax
    1193:	jne    10ed <__printf_chk@plt+0x3d>
    1199:	movb   $0x53,0x10(%rsp)
    119e:	lea    0x10(%rsp),%rdi
    11a3:	lea    0xe96(%rip),%rsi        # 2040 <__printf_chk@plt+0xf90>
    11aa:	test   %r14d,%r14d
    11ad:	jne    12c1 <__printf_chk@plt+0x211>
    11b3:	nopl   0x0(%rax,%rax,1)
    11b8:	add    $0x1,%rax
    11bc:	movzbl (%rsi,%rax,1),%edx
    11c0:	mov    %edx,%ecx
    11c2:	xor    $0x5a,%ecx
    11c5:	mov    %cl,(%rdi,%rax,1)
    11c8:	cmp    $0x5a,%dl
    11cb:	jne    11b8 <__printf_chk@plt+0x108>
    11cd:	call   1080 <puts@plt>
    11d2:	mov    $0x1,%eax
    11d7:	jmp    1109 <__printf_chk@plt+0x59>
    11dc:	movslq %r12d,%rax
    11df:	add    $0x1,%r12d
    11e3:	movsbl (%rsi,%rax,1),%eax
    11e7:	lea    -0x30(%r15,%rax,1),%r15d
    11ec:	movslq %r15d,%rdx
    11ef:	lea    0x1(%rdx),%rax
    11f3:	imul   %rdx,%rax
    11f7:	and    $0x1,%eax
    11fa:	cmp    $0x1,%rax
    11fe:	sbb    %edx,%edx
    1200:	and    $0xfffffffb,%edx
    1203:	add    $0x9,%edx
    1206:	jmp    1148 <__printf_chk@plt+0x98>
    120b:	xor    %edx,%edx
    120d:	cmp    $0x6,%r12d
    1211:	setg   %dl
    1214:	add    $0x5,%edx
    1217:	jmp    1148 <__printf_chk@plt+0x98>
    121c:	movslq %r12d,%rax
    121f:	movzbl (%rsi,%rax,1),%eax
    1223:	sub    $0x30,%eax
    1226:	cmp    $0x9,%al
    1228:	jbe    129e <__printf_chk@plt+0x1ee>
    122a:	xor    %r14d,%r14d
    122d:	jmp    1188 <__printf_chk@plt+0xd8>
    1232:	mov    $0x3,%edx
    1237:	cmp    $0x7,%r12d
    123b:	jle    1153 <__printf_chk@plt+0xa3>
    1241:	xor    %r15d,%r15d
    1244:	xor    %r12d,%r12d
    1247:	mov    $0x4,%edx
    124c:	jmp    1153 <__printf_chk@plt+0xa3>
    1251:	mov    %rsi,%rdi
    1254:	mov    %rsi,0x8(%rsp)
    1259:	call   1090 <strlen@plt>
    125e:	mov    $0x64,%edx
    1263:	mov    0x8(%rsp),%rsi
    1268:	cmp    $0x8,%rax
    126c:	mov    $0x1,%eax
    1271:	cmove  %eax,%edx
    1274:	jmp    1148 <__printf_chk@plt+0x98>
    1279:	xor    %r12d,%r12d
    127c:	mov    $0x2,%edx
    1281:	jmp    1153 <__printf_chk@plt+0xa3>
    1286:	cs nopw 0x0(%rax,%rax,1)
    1290:	xor    %eax,%eax
    1292:	cmp    $0x64,%edx
    1295:	cmove  %eax,%r14d
    1299:	jmp    1188 <__printf_chk@plt+0xd8>
    129e:	add    $0x1,%r12d
    12a2:	movslq %r12d,%rdx
    12a5:	lea    0x1(%rdx),%rax
    12a9:	imul   %rdx,%rax
    12ad:	and    $0x1,%eax
    12b0:	cmp    $0x1,%rax
    12b4:	sbb    %edx,%edx
    12b6:	and    $0xfffffff9,%edx
    12b9:	add    $0x9,%edx
    12bc:	jmp    1148 <__printf_chk@plt+0x98>
    12c1:	lea    0xd88(%rip),%rsi        # 2050 <__printf_chk@plt+0xfa0>
    12c8:	lea    0x10(%rsp),%rdi
    12cd:	nopl   (%rax)
    12d0:	add    $0x1,%rax
    12d4:	movzbl (%rsi,%rax,1),%edx
    12d8:	mov    %edx,%ecx
    12da:	xor    $0x5a,%ecx
    12dd:	mov    %cl,(%rdi,%rax,1)
    12e0:	cmp    $0x5a,%dl
    12e3:	jne    12d0 <__printf_chk@plt+0x220>
    12e5:	call   1080 <puts@plt>
    12ea:	xor    %eax,%eax
    12ec:	jmp    1109 <__printf_chk@plt+0x59>
    12f1:	call   10a0 <__stack_chk_fail@plt>
    12f6:	cs nopw 0x0(%rax,%rax,1)
    1300:	endbr64
    1304:	xor    %ebp,%ebp
    1306:	mov    %rdx,%r9
    1309:	pop    %rsi
    130a:	mov    %rsp,%rdx
    130d:	and    $0xfffffffffffffff0,%rsp
    1311:	push   %rax
    1312:	push   %rsp
    1313:	xor    %r8d,%r8d
    1316:	xor    %ecx,%ecx
    1318:	lea    -0x25f(%rip),%rdi        # 10c0 <__printf_chk@plt+0x10>
    131f:	call   *0x2cb3(%rip)        # 3fd8 <__printf_chk@plt+0x2f28>
    1325:	hlt
    1326:	cs nopw 0x0(%rax,%rax,1)
    1330:	lea    0x2cd9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f60>
    1337:	lea    0x2cd2(%rip),%rax        # 4010 <__printf_chk@plt+0x2f60>
    133e:	cmp    %rdi,%rax
    1341:	je     1358 <__printf_chk@plt+0x2a8>
    1343:	mov    0x2c96(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f30>
    134a:	test   %rax,%rax
    134d:	je     1358 <__printf_chk@plt+0x2a8>
    134f:	jmp    *%rax
    1351:	nopl   0x0(%rax)
    1358:	ret
    1359:	nopl   0x0(%rax)
    1360:	lea    0x2ca9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f60>
    1367:	lea    0x2ca2(%rip),%rsi        # 4010 <__printf_chk@plt+0x2f60>
    136e:	sub    %rdi,%rsi
    1371:	mov    %rsi,%rax
    1374:	shr    $0x3f,%rsi
    1378:	sar    $0x3,%rax
    137c:	add    %rax,%rsi
    137f:	sar    $1,%rsi
    1382:	je     1398 <__printf_chk@plt+0x2e8>
    1384:	mov    0x2c65(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f40>
    138b:	test   %rax,%rax
    138e:	je     1398 <__printf_chk@plt+0x2e8>
    1390:	jmp    *%rax
    1392:	nopw   0x0(%rax,%rax,1)
    1398:	ret
    1399:	nopl   0x0(%rax)
    13a0:	endbr64
    13a4:	cmpb   $0x0,0x2c65(%rip)        # 4010 <__printf_chk@plt+0x2f60>
    13ab:	jne    13d8 <__printf_chk@plt+0x328>
    13ad:	push   %rbp
    13ae:	cmpq   $0x0,0x2c42(%rip)        # 3ff8 <__printf_chk@plt+0x2f48>
    13b6:	mov    %rsp,%rbp
    13b9:	je     13c7 <__printf_chk@plt+0x317>
    13bb:	mov    0x2c46(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f58>
    13c2:	call   1070 <__cxa_finalize@plt>
    13c7:	call   1330 <__printf_chk@plt+0x280>
    13cc:	movb   $0x1,0x2c3d(%rip)        # 4010 <__printf_chk@plt+0x2f60>
    13d3:	pop    %rbp
    13d4:	ret
    13d5:	nopl   (%rax)
    13d8:	ret
    13d9:	nopl   0x0(%rax)
    13e0:	endbr64
    13e4:	jmp    1360 <__printf_chk@plt+0x2b0>

Disassembly of section .fini:

00000000000013ec <.fini>:
    13ec:	endbr64
    13f0:	sub    $0x8,%rsp
    13f4:	add    $0x8,%rsp
    13f8:	ret
