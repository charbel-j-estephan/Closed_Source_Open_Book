
/home/claude/paper/experiment/bin/p3_L2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	endbr64
    1004:	sub    $0x8,%rsp
    1008:	mov    0x2fd9(%rip),%rax        # 3fe8 <__printf_chk@plt+0x2f58>
    100f:	test   %rax,%rax
    1012:	je     1016 <__cxa_finalize@plt-0x4a>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	push   0x2f8a(%rip)        # 3fb0 <__printf_chk@plt+0x2f20>
    1026:	jmp    *0x2f8c(%rip)        # 3fb8 <__printf_chk@plt+0x2f28>
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
    1064:	jmp    *0x2f8e(%rip)        # 3ff8 <__printf_chk@plt+0x2f68>
    106a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <puts@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f46(%rip)        # 3fc0 <__printf_chk@plt+0x2f30>
    107a:	nopw   0x0(%rax,%rax,1)

0000000000001080 <__stack_chk_fail@plt>:
    1080:	endbr64
    1084:	jmp    *0x2f3e(%rip)        # 3fc8 <__printf_chk@plt+0x2f38>
    108a:	nopw   0x0(%rax,%rax,1)

0000000000001090 <__printf_chk@plt>:
    1090:	endbr64
    1094:	jmp    *0x2f36(%rip)        # 3fd0 <__printf_chk@plt+0x2f40>
    109a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <.text>:
    10a0:	endbr64
    10a4:	sub    $0x38,%rsp
    10a8:	mov    %rsi,%rcx
    10ab:	mov    %fs:0x28,%rax
    10b4:	mov    %rax,0x28(%rsp)
    10b9:	xor    %eax,%eax
    10bb:	cmp    $0x1,%edi
    10be:	jg     10f4 <__printf_chk@plt+0x64>
    10c0:	mov    (%rcx),%rdx
    10c3:	lea    0xf3a(%rip),%rsi        # 2004 <__printf_chk@plt+0xf74>
    10ca:	mov    $0x2,%edi
    10cf:	xor    %eax,%eax
    10d1:	call   1090 <__printf_chk@plt>
    10d6:	mov    $0x2,%eax
    10db:	mov    0x28(%rsp),%rdx
    10e0:	sub    %fs:0x28,%rdx
    10e9:	jne    11d1 <__printf_chk@plt+0x141>
    10ef:	add    $0x38,%rsp
    10f3:	ret
    10f4:	mov    0x8(%rsi),%rsi
    10f8:	mov    $0x1505,%edx
    10fd:	mov    %rsi,%rax
    1100:	add    $0x1,%rsi
    1104:	movsbq (%rax),%r8
    1108:	test   %r8d,%r8d
    110b:	je     1120 <__printf_chk@plt+0x90>
    110d:	mov    $0x1,%eax
    1112:	cmp    $0x2,%eax
    1115:	jle    1178 <__printf_chk@plt+0xe8>
    1117:	xor    $0xdead,%rdx
    111e:	jmp    10fd <__printf_chk@plt+0x6d>
    1120:	movslq %edi,%rdi
    1123:	lea    0x1(%rdi),%rax
    1127:	imul   %rdi,%rax
    112b:	and    $0x1,%eax
    112e:	jne    10c0 <__printf_chk@plt+0x30>
    1130:	movabs $0xd0ab1cbb4b96,%rcx
    113a:	cmp    %rcx,%rdx
    113d:	je     1198 <__printf_chk@plt+0x108>
    113f:	movb   $0x49,(%rsp)
    1143:	mov    %rsp,%rdi
    1146:	lea    0xecb(%rip),%rsi        # 2018 <__printf_chk@plt+0xf88>
    114d:	nopl   (%rax)
    1150:	add    $0x1,%rax
    1154:	movzbl (%rsi,%rax,1),%edx
    1158:	mov    %edx,%ecx
    115a:	xor    $0x5a,%ecx
    115d:	mov    %cl,(%rdi,%rax,1)
    1160:	cmp    $0x5a,%dl
    1163:	jne    1150 <__printf_chk@plt+0xc0>
    1165:	call   1070 <puts@plt>
    116a:	mov    $0x1,%eax
    116f:	jmp    10db <__printf_chk@plt+0x4b>
    1174:	nopl   0x0(%rax)
    1178:	test   %eax,%eax
    117a:	je     10fd <__printf_chk@plt+0x6d>
    117c:	imul   $0x21,%rdx,%rdx
    1180:	add    %r8,%rdx
    1183:	lea    0x1(%rdx),%rax
    1187:	imul   %rdx,%rax
    118b:	and    $0x1,%eax
    118e:	neg    %eax
    1190:	and    $0x9,%eax
    1193:	jmp    1112 <__printf_chk@plt+0x82>
    1198:	movb   $0x56,(%rsp)
    119c:	lea    0xe85(%rip),%rsi        # 2028 <__printf_chk@plt+0xf98>
    11a3:	mov    %rsp,%rdi
    11a6:	cs nopw 0x0(%rax,%rax,1)
    11b0:	add    $0x1,%rax
    11b4:	movzbl (%rsi,%rax,1),%edx
    11b8:	mov    %edx,%ecx
    11ba:	xor    $0x5a,%ecx
    11bd:	mov    %cl,(%rdi,%rax,1)
    11c0:	cmp    $0x5a,%dl
    11c3:	jne    11b0 <__printf_chk@plt+0x120>
    11c5:	call   1070 <puts@plt>
    11ca:	xor    %eax,%eax
    11cc:	jmp    10db <__printf_chk@plt+0x4b>
    11d1:	call   1080 <__stack_chk_fail@plt>
    11d6:	cs nopw 0x0(%rax,%rax,1)
    11e0:	endbr64
    11e4:	xor    %ebp,%ebp
    11e6:	mov    %rdx,%r9
    11e9:	pop    %rsi
    11ea:	mov    %rsp,%rdx
    11ed:	and    $0xfffffffffffffff0,%rsp
    11f1:	push   %rax
    11f2:	push   %rsp
    11f3:	xor    %r8d,%r8d
    11f6:	xor    %ecx,%ecx
    11f8:	lea    -0x15f(%rip),%rdi        # 10a0 <__printf_chk@plt+0x10>
    11ff:	call   *0x2dd3(%rip)        # 3fd8 <__printf_chk@plt+0x2f48>
    1205:	hlt
    1206:	cs nopw 0x0(%rax,%rax,1)
    1210:	lea    0x2df9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    1217:	lea    0x2df2(%rip),%rax        # 4010 <__printf_chk@plt+0x2f80>
    121e:	cmp    %rdi,%rax
    1221:	je     1238 <__printf_chk@plt+0x1a8>
    1223:	mov    0x2db6(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f50>
    122a:	test   %rax,%rax
    122d:	je     1238 <__printf_chk@plt+0x1a8>
    122f:	jmp    *%rax
    1231:	nopl   0x0(%rax)
    1238:	ret
    1239:	nopl   0x0(%rax)
    1240:	lea    0x2dc9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    1247:	lea    0x2dc2(%rip),%rsi        # 4010 <__printf_chk@plt+0x2f80>
    124e:	sub    %rdi,%rsi
    1251:	mov    %rsi,%rax
    1254:	shr    $0x3f,%rsi
    1258:	sar    $0x3,%rax
    125c:	add    %rax,%rsi
    125f:	sar    $1,%rsi
    1262:	je     1278 <__printf_chk@plt+0x1e8>
    1264:	mov    0x2d85(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f60>
    126b:	test   %rax,%rax
    126e:	je     1278 <__printf_chk@plt+0x1e8>
    1270:	jmp    *%rax
    1272:	nopw   0x0(%rax,%rax,1)
    1278:	ret
    1279:	nopl   0x0(%rax)
    1280:	endbr64
    1284:	cmpb   $0x0,0x2d85(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    128b:	jne    12b8 <__printf_chk@plt+0x228>
    128d:	push   %rbp
    128e:	cmpq   $0x0,0x2d62(%rip)        # 3ff8 <__printf_chk@plt+0x2f68>
    1296:	mov    %rsp,%rbp
    1299:	je     12a7 <__printf_chk@plt+0x217>
    129b:	mov    0x2d66(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f78>
    12a2:	call   1060 <__cxa_finalize@plt>
    12a7:	call   1210 <__printf_chk@plt+0x180>
    12ac:	movb   $0x1,0x2d5d(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    12b3:	pop    %rbp
    12b4:	ret
    12b5:	nopl   (%rax)
    12b8:	ret
    12b9:	nopl   0x0(%rax)
    12c0:	endbr64
    12c4:	jmp    1240 <__printf_chk@plt+0x1b0>

Disassembly of section .fini:

00000000000012cc <.fini>:
    12cc:	endbr64
    12d0:	sub    $0x8,%rsp
    12d4:	add    $0x8,%rsp
    12d8:	ret
