
/home/claude/paper/experiment/bin/p2_L1:     file format elf64-x86-64


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
    10a4:	sub    $0x8,%rsp
    10a8:	cmp    $0x1,%edi
    10ab:	jle    110a <strtoul@plt+0x7a>
    10ad:	mov    0x8(%rsi),%rdi
    10b1:	mov    $0xa,%edx
    10b6:	xor    %esi,%esi
    10b8:	call   1090 <strtoul@plt>
    10bd:	test   %rax,%rax
    10c0:	je     1127 <strtoul@plt+0x97>
    10c2:	xor    %edx,%edx
    10c4:	cmp    $0x1,%rax
    10c8:	jne    10dd <strtoul@plt+0x4d>
    10ca:	jmp    10f0 <strtoul@plt+0x60>
    10cc:	nopl   0x0(%rax)
    10d0:	shr    $1,%rax
    10d3:	add    $0x1,%rdx
    10d7:	cmp    $0x1,%rax
    10db:	je     10f0 <strtoul@plt+0x60>
    10dd:	test   $0x1,%al
    10df:	je     10d0 <strtoul@plt+0x40>
    10e1:	lea    0x1(%rax,%rax,2),%rax
    10e6:	add    $0x1,%rdx
    10ea:	cmp    $0x1,%rax
    10ee:	jne    10dd <strtoul@plt+0x4d>
    10f0:	lea    0xf24(%rip),%rsi        # 201b <strtoul@plt+0xf8b>
    10f7:	mov    $0x2,%edi
    10fc:	xor    %eax,%eax
    10fe:	call   1080 <__printf_chk@plt>
    1103:	xor    %eax,%eax
    1105:	add    $0x8,%rsp
    1109:	ret
    110a:	mov    (%rsi),%rdx
    110d:	mov    $0x2,%edi
    1112:	xor    %eax,%eax
    1114:	lea    0xee9(%rip),%rsi        # 2004 <strtoul@plt+0xf74>
    111b:	call   1080 <__printf_chk@plt>
    1120:	mov    $0x2,%eax
    1125:	jmp    1105 <strtoul@plt+0x75>
    1127:	lea    0xee5(%rip),%rdi        # 2013 <strtoul@plt+0xf83>
    112e:	call   1070 <puts@plt>
    1133:	jmp    1120 <strtoul@plt+0x90>
    1135:	cs nopw 0x0(%rax,%rax,1)
    113f:	nop
    1140:	endbr64
    1144:	xor    %ebp,%ebp
    1146:	mov    %rdx,%r9
    1149:	pop    %rsi
    114a:	mov    %rsp,%rdx
    114d:	and    $0xfffffffffffffff0,%rsp
    1151:	push   %rax
    1152:	push   %rsp
    1153:	xor    %r8d,%r8d
    1156:	xor    %ecx,%ecx
    1158:	lea    -0xbf(%rip),%rdi        # 10a0 <strtoul@plt+0x10>
    115f:	call   *0x2e73(%rip)        # 3fd8 <strtoul@plt+0x2f48>
    1165:	hlt
    1166:	cs nopw 0x0(%rax,%rax,1)
    1170:	lea    0x2e99(%rip),%rdi        # 4010 <strtoul@plt+0x2f80>
    1177:	lea    0x2e92(%rip),%rax        # 4010 <strtoul@plt+0x2f80>
    117e:	cmp    %rdi,%rax
    1181:	je     1198 <strtoul@plt+0x108>
    1183:	mov    0x2e56(%rip),%rax        # 3fe0 <strtoul@plt+0x2f50>
    118a:	test   %rax,%rax
    118d:	je     1198 <strtoul@plt+0x108>
    118f:	jmp    *%rax
    1191:	nopl   0x0(%rax)
    1198:	ret
    1199:	nopl   0x0(%rax)
    11a0:	lea    0x2e69(%rip),%rdi        # 4010 <strtoul@plt+0x2f80>
    11a7:	lea    0x2e62(%rip),%rsi        # 4010 <strtoul@plt+0x2f80>
    11ae:	sub    %rdi,%rsi
    11b1:	mov    %rsi,%rax
    11b4:	shr    $0x3f,%rsi
    11b8:	sar    $0x3,%rax
    11bc:	add    %rax,%rsi
    11bf:	sar    $1,%rsi
    11c2:	je     11d8 <strtoul@plt+0x148>
    11c4:	mov    0x2e25(%rip),%rax        # 3ff0 <strtoul@plt+0x2f60>
    11cb:	test   %rax,%rax
    11ce:	je     11d8 <strtoul@plt+0x148>
    11d0:	jmp    *%rax
    11d2:	nopw   0x0(%rax,%rax,1)
    11d8:	ret
    11d9:	nopl   0x0(%rax)
    11e0:	endbr64
    11e4:	cmpb   $0x0,0x2e25(%rip)        # 4010 <strtoul@plt+0x2f80>
    11eb:	jne    1218 <strtoul@plt+0x188>
    11ed:	push   %rbp
    11ee:	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <strtoul@plt+0x2f68>
    11f6:	mov    %rsp,%rbp
    11f9:	je     1207 <strtoul@plt+0x177>
    11fb:	mov    0x2e06(%rip),%rdi        # 4008 <strtoul@plt+0x2f78>
    1202:	call   1060 <__cxa_finalize@plt>
    1207:	call   1170 <strtoul@plt+0xe0>
    120c:	movb   $0x1,0x2dfd(%rip)        # 4010 <strtoul@plt+0x2f80>
    1213:	pop    %rbp
    1214:	ret
    1215:	nopl   (%rax)
    1218:	ret
    1219:	nopl   0x0(%rax)
    1220:	endbr64
    1224:	jmp    11a0 <strtoul@plt+0x110>

Disassembly of section .fini:

000000000000122c <.fini>:
    122c:	endbr64
    1230:	sub    $0x8,%rsp
    1234:	add    $0x8,%rsp
    1238:	ret
