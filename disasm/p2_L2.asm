
/home/claude/paper/experiment/bin/p2_L2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	endbr64
    1004:	sub    $0x8,%rsp
    1008:	mov    0x2fd9(%rip),%rax        # 3fe8 <strtoul@plt+0x2f58>
    100f:	test   %rax,%rax
    1012:	je     1016 <__cxa_finalize@plt-0x4a>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	push   0x2f8a(%rip)        # 3fb0 <strtoul@plt+0x2f20>
    1026:	jmp    *0x2f8c(%rip)        # 3fb8 <strtoul@plt+0x2f28>
    102c:	nopl   0x0(%rax)
    1030:	endbr64
    1034:	push   $0x0
    1039:	jmp    1020 <__cxa_finalize@plt-0x40>
    103e:	xchg   %ax,%ax
    1040:	endbr64
    1044:	push   $0x1
    1049:	jmp    1020 <__cxa_finalize@plt-0x40>
    104e:	xchg   %ax,%ax
    1050:	endbr64
    1054:	push   $0x2
    1059:	jmp    1020 <__cxa_finalize@plt-0x40>
    105e:	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	endbr64
    1064:	jmp    *0x2f8e(%rip)        # 3ff8 <strtoul@plt+0x2f68>
    106a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <puts@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f46(%rip)        # 3fc0 <strtoul@plt+0x2f30>
    107a:	nopw   0x0(%rax,%rax,1)

0000000000001080 <__printf_chk@plt>:
    1080:	endbr64
    1084:	jmp    *0x2f3e(%rip)        # 3fc8 <strtoul@plt+0x2f38>
    108a:	nopw   0x0(%rax,%rax,1)

0000000000001090 <strtoul@plt>:
    1090:	endbr64
    1094:	jmp    *0x2f36(%rip)        # 3fd0 <strtoul@plt+0x2f40>
    109a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <.text>:
    10a0:	endbr64
    10a4:	push   %rbx
    10a5:	movslq %edi,%rbx
    10a8:	cmp    $0x1,%ebx
    10ab:	jle    1177 <strtoul@plt+0xe7>
    10b1:	mov    0x8(%rsi),%rdi
    10b5:	mov    $0xa,%edx
    10ba:	xor    %esi,%esi
    10bc:	call   1090 <strtoul@plt>
    10c1:	lea    0x1(%rbx),%rdx
    10c5:	imul   %rbx,%rdx
    10c9:	and    $0x1,%edx
    10cc:	jne    10dc <strtoul@plt+0x4c>
    10ce:	xor    %ecx,%ecx
    10d0:	lea    0xf49(%rip),%rdi        # 2020 <strtoul@plt+0xf90>
    10d7:	test   %rax,%rax
    10da:	jne    10f8 <strtoul@plt+0x68>
    10dc:	lea    0xf35(%rip),%rdi        # 2018 <strtoul@plt+0xf88>
    10e3:	call   1070 <puts@plt>
    10e8:	mov    $0x2,%eax
    10ed:	pop    %rbx
    10ee:	ret
    10ef:	add    $0x1,%rdx
    10f3:	xor    %ecx,%ecx
    10f5:	nopl   (%rax)
    10f8:	mov    %ecx,%r8d
    10fb:	cmp    $0x9,%ecx
    10fe:	ja     10fb <strtoul@plt+0x6b>
    1100:	movslq (%rdi,%r8,4),%rsi
    1104:	add    %rdi,%rsi
    1107:	notrack jmp *%rsi
    110a:	add    $0xdead,%rdx
    1111:	mov    $0x4,%ecx
    1116:	jmp    10f8 <strtoul@plt+0x68>
    1118:	lea    0xef4(%rip),%rsi        # 2013 <strtoul@plt+0xf83>
    111f:	mov    $0x2,%edi
    1124:	xor    %eax,%eax
    1126:	call   1080 <__printf_chk@plt>
    112b:	xor    %eax,%eax
    112d:	pop    %rbx
    112e:	ret
    112f:	lea    (%rax,%rax,2),%rax
    1133:	mov    $0x4,%ecx
    1138:	add    $0x1,%rax
    113c:	jmp    10f8 <strtoul@plt+0x68>
    113e:	shr    $1,%rax
    1141:	lea    0x1(%rax),%rcx
    1145:	imul   %rax,%rcx
    1149:	and    $0x1,%ecx
    114c:	cmp    $0x1,%rcx
    1150:	sbb    %ecx,%ecx
    1152:	and    $0xfffffffb,%ecx
    1155:	add    $0x9,%ecx
    1158:	jmp    10f8 <strtoul@plt+0x68>
    115a:	mov    %rax,%rcx
    115d:	and    $0x1,%ecx
    1160:	add    $0x2,%ecx
    1163:	jmp    10f8 <strtoul@plt+0x68>
    1165:	xor    %ecx,%ecx
    1167:	cmp    $0x1,%rax
    116b:	sete   %cl
    116e:	lea    0x1(,%rcx,4),%ecx
    1175:	jmp    10f8 <strtoul@plt+0x68>
    1177:	mov    (%rsi),%rdx
    117a:	mov    $0x2,%edi
    117f:	xor    %eax,%eax
    1181:	lea    0xe7c(%rip),%rsi        # 2004 <strtoul@plt+0xf74>
    1188:	call   1080 <__printf_chk@plt>
    118d:	jmp    10e8 <strtoul@plt+0x58>
    1192:	cs nopw 0x0(%rax,%rax,1)
    119c:	nopl   0x0(%rax)
    11a0:	endbr64
    11a4:	xor    %ebp,%ebp
    11a6:	mov    %rdx,%r9
    11a9:	pop    %rsi
    11aa:	mov    %rsp,%rdx
    11ad:	and    $0xfffffffffffffff0,%rsp
    11b1:	push   %rax
    11b2:	push   %rsp
    11b3:	xor    %r8d,%r8d
    11b6:	xor    %ecx,%ecx
    11b8:	lea    -0x11f(%rip),%rdi        # 10a0 <strtoul@plt+0x10>
    11bf:	call   *0x2e13(%rip)        # 3fd8 <strtoul@plt+0x2f48>
    11c5:	hlt
    11c6:	cs nopw 0x0(%rax,%rax,1)
    11d0:	lea    0x2e39(%rip),%rdi        # 4010 <strtoul@plt+0x2f80>
    11d7:	lea    0x2e32(%rip),%rax        # 4010 <strtoul@plt+0x2f80>
    11de:	cmp    %rdi,%rax
    11e1:	je     11f8 <strtoul@plt+0x168>
    11e3:	mov    0x2df6(%rip),%rax        # 3fe0 <strtoul@plt+0x2f50>
    11ea:	test   %rax,%rax
    11ed:	je     11f8 <strtoul@plt+0x168>
    11ef:	jmp    *%rax
    11f1:	nopl   0x0(%rax)
    11f8:	ret
    11f9:	nopl   0x0(%rax)
    1200:	lea    0x2e09(%rip),%rdi        # 4010 <strtoul@plt+0x2f80>
    1207:	lea    0x2e02(%rip),%rsi        # 4010 <strtoul@plt+0x2f80>
    120e:	sub    %rdi,%rsi
    1211:	mov    %rsi,%rax
    1214:	shr    $0x3f,%rsi
    1218:	sar    $0x3,%rax
    121c:	add    %rax,%rsi
    121f:	sar    $1,%rsi
    1222:	je     1238 <strtoul@plt+0x1a8>
    1224:	mov    0x2dc5(%rip),%rax        # 3ff0 <strtoul@plt+0x2f60>
    122b:	test   %rax,%rax
    122e:	je     1238 <strtoul@plt+0x1a8>
    1230:	jmp    *%rax
    1232:	nopw   0x0(%rax,%rax,1)
    1238:	ret
    1239:	nopl   0x0(%rax)
    1240:	endbr64
    1244:	cmpb   $0x0,0x2dc5(%rip)        # 4010 <strtoul@plt+0x2f80>
    124b:	jne    1278 <strtoul@plt+0x1e8>
    124d:	push   %rbp
    124e:	cmpq   $0x0,0x2da2(%rip)        # 3ff8 <strtoul@plt+0x2f68>
    1256:	mov    %rsp,%rbp
    1259:	je     1267 <strtoul@plt+0x1d7>
    125b:	mov    0x2da6(%rip),%rdi        # 4008 <strtoul@plt+0x2f78>
    1262:	call   1060 <__cxa_finalize@plt>
    1267:	call   11d0 <strtoul@plt+0x140>
    126c:	movb   $0x1,0x2d9d(%rip)        # 4010 <strtoul@plt+0x2f80>
    1273:	pop    %rbp
    1274:	ret
    1275:	nopl   (%rax)
    1278:	ret
    1279:	nopl   0x0(%rax)
    1280:	endbr64
    1284:	jmp    1200 <strtoul@plt+0x170>

Disassembly of section .fini:

000000000000128c <.fini>:
    128c:	endbr64
    1290:	sub    $0x8,%rsp
    1294:	add    $0x8,%rsp
    1298:	ret
