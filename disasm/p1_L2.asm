
/home/claude/paper/experiment/bin/p1_L2:     file format elf64-x86-64


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
    10c4:	push   %r12
    10c6:	push   %rbp
    10c7:	mov    %rsi,%rbp
    10ca:	push   %rbx
    10cb:	sub    $0x30,%rsp
    10cf:	mov    %fs:0x28,%rax
    10d8:	mov    %rax,0x28(%rsp)
    10dd:	xor    %eax,%eax
    10df:	cmp    $0x1,%edi
    10e2:	jg     111d <__printf_chk@plt+0x6d>
    10e4:	mov    0x0(%rbp),%rdx
    10e8:	lea    0xf15(%rip),%rsi        # 2004 <__printf_chk@plt+0xf54>
    10ef:	mov    $0x2,%edi
    10f4:	xor    %eax,%eax
    10f6:	call   10b0 <__printf_chk@plt>
    10fb:	mov    $0x2,%eax
    1100:	mov    0x28(%rsp),%rdx
    1105:	sub    %fs:0x28,%rdx
    110e:	jne    11e1 <__printf_chk@plt+0x131>
    1114:	add    $0x30,%rsp
    1118:	pop    %rbx
    1119:	pop    %rbp
    111a:	pop    %r12
    111c:	ret
    111d:	mov    0x8(%rsi),%r12
    1121:	mov    %edi,%ebx
    1123:	mov    %r12,%rdi
    1126:	call   1090 <strlen@plt>
    112b:	xor    %ecx,%ecx
    112d:	xor    %edx,%edx
    112f:	lea    -0x1(%rax),%esi
    1132:	imul   %eax,%esi
    1135:	and    $0x1,%sil
    1139:	jne    115a <__printf_chk@plt+0xaa>
    113b:	cmp    %rax,%rdx
    113e:	jae    1162 <__printf_chk@plt+0xb2>
    1140:	movsbl (%r12,%rdx,1),%esi
    1145:	add    $0x1,%rdx
    1149:	xor    $0x5a,%esi
    114c:	add    %esi,%ecx
    114e:	lea    -0x1(%rdx),%esi
    1151:	imul   %edx,%esi
    1154:	and    $0x1,%sil
    1158:	je     113b <__printf_chk@plt+0x8b>
    115a:	xor    $0xffff,%ecx
    1160:	jmp    113b <__printf_chk@plt+0x8b>
    1162:	xor    %edx,%edx
    1164:	lea    -0x1(%rbx),%eax
    1167:	cmp    $0x3f7,%ecx
    116d:	sete   %dl
    1170:	imul   %ebx,%eax
    1173:	test   $0x1,%al
    1175:	jne    10e4 <__printf_chk@plt+0x34>
    117b:	movb   $0x41,(%rsp)
    117f:	xor    %eax,%eax
    1181:	mov    %rsp,%rdi
    1184:	lea    0xe95(%rip),%rsi        # 2020 <__printf_chk@plt+0xf70>
    118b:	test   %edx,%edx
    118d:	jne    11b4 <__printf_chk@plt+0x104>
    118f:	nop
    1190:	add    $0x1,%rax
    1194:	movzbl (%rsi,%rax,1),%edx
    1198:	mov    %edx,%ecx
    119a:	xor    $0x5a,%ecx
    119d:	mov    %cl,(%rdi,%rax,1)
    11a0:	cmp    $0x5a,%dl
    11a3:	jne    1190 <__printf_chk@plt+0xe0>
    11a5:	call   1080 <puts@plt>
    11aa:	mov    $0x1,%eax
    11af:	jmp    1100 <__printf_chk@plt+0x50>
    11b4:	lea    0xe75(%rip),%rsi        # 2030 <__printf_chk@plt+0xf80>
    11bb:	mov    %rsp,%rdi
    11be:	xchg   %ax,%ax
    11c0:	add    $0x1,%rax
    11c4:	movzbl (%rsi,%rax,1),%edx
    11c8:	mov    %edx,%ecx
    11ca:	xor    $0x5a,%ecx
    11cd:	mov    %cl,(%rdi,%rax,1)
    11d0:	cmp    $0x5a,%dl
    11d3:	jne    11c0 <__printf_chk@plt+0x110>
    11d5:	call   1080 <puts@plt>
    11da:	xor    %eax,%eax
    11dc:	jmp    1100 <__printf_chk@plt+0x50>
    11e1:	call   10a0 <__stack_chk_fail@plt>
    11e6:	cs nopw 0x0(%rax,%rax,1)
    11f0:	endbr64
    11f4:	xor    %ebp,%ebp
    11f6:	mov    %rdx,%r9
    11f9:	pop    %rsi
    11fa:	mov    %rsp,%rdx
    11fd:	and    $0xfffffffffffffff0,%rsp
    1201:	push   %rax
    1202:	push   %rsp
    1203:	xor    %r8d,%r8d
    1206:	xor    %ecx,%ecx
    1208:	lea    -0x14f(%rip),%rdi        # 10c0 <__printf_chk@plt+0x10>
    120f:	call   *0x2dc3(%rip)        # 3fd8 <__printf_chk@plt+0x2f28>
    1215:	hlt
    1216:	cs nopw 0x0(%rax,%rax,1)
    1220:	lea    0x2de9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f60>
    1227:	lea    0x2de2(%rip),%rax        # 4010 <__printf_chk@plt+0x2f60>
    122e:	cmp    %rdi,%rax
    1231:	je     1248 <__printf_chk@plt+0x198>
    1233:	mov    0x2da6(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f30>
    123a:	test   %rax,%rax
    123d:	je     1248 <__printf_chk@plt+0x198>
    123f:	jmp    *%rax
    1241:	nopl   0x0(%rax)
    1248:	ret
    1249:	nopl   0x0(%rax)
    1250:	lea    0x2db9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f60>
    1257:	lea    0x2db2(%rip),%rsi        # 4010 <__printf_chk@plt+0x2f60>
    125e:	sub    %rdi,%rsi
    1261:	mov    %rsi,%rax
    1264:	shr    $0x3f,%rsi
    1268:	sar    $0x3,%rax
    126c:	add    %rax,%rsi
    126f:	sar    $1,%rsi
    1272:	je     1288 <__printf_chk@plt+0x1d8>
    1274:	mov    0x2d75(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f40>
    127b:	test   %rax,%rax
    127e:	je     1288 <__printf_chk@plt+0x1d8>
    1280:	jmp    *%rax
    1282:	nopw   0x0(%rax,%rax,1)
    1288:	ret
    1289:	nopl   0x0(%rax)
    1290:	endbr64
    1294:	cmpb   $0x0,0x2d75(%rip)        # 4010 <__printf_chk@plt+0x2f60>
    129b:	jne    12c8 <__printf_chk@plt+0x218>
    129d:	push   %rbp
    129e:	cmpq   $0x0,0x2d52(%rip)        # 3ff8 <__printf_chk@plt+0x2f48>
    12a6:	mov    %rsp,%rbp
    12a9:	je     12b7 <__printf_chk@plt+0x207>
    12ab:	mov    0x2d56(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f58>
    12b2:	call   1070 <__cxa_finalize@plt>
    12b7:	call   1220 <__printf_chk@plt+0x170>
    12bc:	movb   $0x1,0x2d4d(%rip)        # 4010 <__printf_chk@plt+0x2f60>
    12c3:	pop    %rbp
    12c4:	ret
    12c5:	nopl   (%rax)
    12c8:	ret
    12c9:	nopl   0x0(%rax)
    12d0:	endbr64
    12d4:	jmp    1250 <__printf_chk@plt+0x1a0>

Disassembly of section .fini:

00000000000012dc <.fini>:
    12dc:	endbr64
    12e0:	sub    $0x8,%rsp
    12e4:	add    $0x8,%rsp
    12e8:	ret
