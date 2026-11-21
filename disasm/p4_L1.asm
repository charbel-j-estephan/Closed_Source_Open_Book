
/home/claude/paper/experiment/bin/p4_L1:     file format elf64-x86-64


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

0000000000001080 <strlen@plt>:
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
    10a4:	push   %rbx
    10a5:	cmp    $0x1,%edi
    10a8:	jle    1136 <__printf_chk@plt+0xa6>
    10ae:	mov    0x8(%rsi),%rbx
    10b2:	mov    %rbx,%rdi
    10b5:	call   1080 <strlen@plt>
    10ba:	cmp    $0x8,%rax
    10be:	jne    1123 <__printf_chk@plt+0x93>
    10c0:	mov    %rbx,%rcx
    10c3:	lea    0x8(%rbx),%rsi
    10c7:	mov    %rbx,%rax
    10ca:	nopw   0x0(%rax,%rax,1)
    10d0:	movzbl (%rax),%edi
    10d3:	lea    -0x30(%rdi),%edx
    10d6:	cmp    $0x9,%dl
    10d9:	ja     1123 <__printf_chk@plt+0x93>
    10db:	add    $0x1,%rax
    10df:	cmp    %rsi,%rax
    10e2:	jne    10d0 <__printf_chk@plt+0x40>
    10e4:	lea    0x7(%rbx),%rsi
    10e8:	xor    %eax,%eax
    10ea:	nopw   0x0(%rax,%rax,1)
    10f0:	movsbl (%rcx),%edx
    10f3:	add    $0x1,%rcx
    10f7:	lea    -0x30(%rax,%rdx,1),%eax
    10fb:	cmp    %rcx,%rsi
    10fe:	jne    10f0 <__printf_chk@plt+0x60>
    1100:	mov    $0xa,%ecx
    1105:	cltd
    1106:	idiv   %ecx
    1108:	movsbl 0x7(%rbx),%eax
    110c:	sub    $0x30,%eax
    110f:	cmp    %eax,%edx
    1111:	jne    1123 <__printf_chk@plt+0x93>
    1113:	lea    0xefe(%rip),%rdi        # 2018 <__printf_chk@plt+0xf88>
    111a:	call   1070 <puts@plt>
    111f:	xor    %eax,%eax
    1121:	pop    %rbx
    1122:	ret
    1123:	lea    0xef8(%rip),%rdi        # 2022 <__printf_chk@plt+0xf92>
    112a:	call   1070 <puts@plt>
    112f:	mov    $0x1,%eax
    1134:	pop    %rbx
    1135:	ret
    1136:	mov    (%rsi),%rdx
    1139:	mov    $0x2,%edi
    113e:	xor    %eax,%eax
    1140:	lea    0xebd(%rip),%rsi        # 2004 <__printf_chk@plt+0xf74>
    1147:	call   1090 <__printf_chk@plt>
    114c:	mov    $0x2,%eax
    1151:	pop    %rbx
    1152:	ret
    1153:	cs nopw 0x0(%rax,%rax,1)
    115d:	nopl   (%rax)
    1160:	endbr64
    1164:	xor    %ebp,%ebp
    1166:	mov    %rdx,%r9
    1169:	pop    %rsi
    116a:	mov    %rsp,%rdx
    116d:	and    $0xfffffffffffffff0,%rsp
    1171:	push   %rax
    1172:	push   %rsp
    1173:	xor    %r8d,%r8d
    1176:	xor    %ecx,%ecx
    1178:	lea    -0xdf(%rip),%rdi        # 10a0 <__printf_chk@plt+0x10>
    117f:	call   *0x2e53(%rip)        # 3fd8 <__printf_chk@plt+0x2f48>
    1185:	hlt
    1186:	cs nopw 0x0(%rax,%rax,1)
    1190:	lea    0x2e79(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    1197:	lea    0x2e72(%rip),%rax        # 4010 <__printf_chk@plt+0x2f80>
    119e:	cmp    %rdi,%rax
    11a1:	je     11b8 <__printf_chk@plt+0x128>
    11a3:	mov    0x2e36(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f50>
    11aa:	test   %rax,%rax
    11ad:	je     11b8 <__printf_chk@plt+0x128>
    11af:	jmp    *%rax
    11b1:	nopl   0x0(%rax)
    11b8:	ret
    11b9:	nopl   0x0(%rax)
    11c0:	lea    0x2e49(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    11c7:	lea    0x2e42(%rip),%rsi        # 4010 <__printf_chk@plt+0x2f80>
    11ce:	sub    %rdi,%rsi
    11d1:	mov    %rsi,%rax
    11d4:	shr    $0x3f,%rsi
    11d8:	sar    $0x3,%rax
    11dc:	add    %rax,%rsi
    11df:	sar    $1,%rsi
    11e2:	je     11f8 <__printf_chk@plt+0x168>
    11e4:	mov    0x2e05(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f60>
    11eb:	test   %rax,%rax
    11ee:	je     11f8 <__printf_chk@plt+0x168>
    11f0:	jmp    *%rax
    11f2:	nopw   0x0(%rax,%rax,1)
    11f8:	ret
    11f9:	nopl   0x0(%rax)
    1200:	endbr64
    1204:	cmpb   $0x0,0x2e05(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    120b:	jne    1238 <__printf_chk@plt+0x1a8>
    120d:	push   %rbp
    120e:	cmpq   $0x0,0x2de2(%rip)        # 3ff8 <__printf_chk@plt+0x2f68>
    1216:	mov    %rsp,%rbp
    1219:	je     1227 <__printf_chk@plt+0x197>
    121b:	mov    0x2de6(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f78>
    1222:	call   1060 <__cxa_finalize@plt>
    1227:	call   1190 <__printf_chk@plt+0x100>
    122c:	movb   $0x1,0x2ddd(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    1233:	pop    %rbp
    1234:	ret
    1235:	nopl   (%rax)
    1238:	ret
    1239:	nopl   0x0(%rax)
    1240:	endbr64
    1244:	jmp    11c0 <__printf_chk@plt+0x130>

Disassembly of section .fini:

000000000000124c <.fini>:
    124c:	endbr64
    1250:	sub    $0x8,%rsp
    1254:	add    $0x8,%rsp
    1258:	ret
