
/home/claude/paper/experiment/bin/p3_L1:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	endbr64
    1004:	sub    $0x8,%rsp
    1008:	mov    0x2fd9(%rip),%rax        # 3fe8 <__printf_chk@plt+0x2f78>
    100f:	test   %rax,%rax
    1012:	je     1016 <__cxa_finalize@plt-0x3a>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	push   0x2f92(%rip)        # 3fb8 <__printf_chk@plt+0x2f48>
    1026:	jmp    *0x2f94(%rip)        # 3fc0 <__printf_chk@plt+0x2f50>
    102c:	nopl   0x0(%rax)
    1030:	endbr64
    1034:	push   $0x0
    1039:	jmp    1020 <__cxa_finalize@plt-0x30>
    103e:	xchg   %ax,%ax
    1040:	endbr64
    1044:	push   $0x1
    1049:	jmp    1020 <__cxa_finalize@plt-0x30>
    104e:	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	endbr64
    1054:	jmp    *0x2f9e(%rip)        # 3ff8 <__printf_chk@plt+0x2f88>
    105a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <puts@plt>:
    1060:	endbr64
    1064:	jmp    *0x2f5e(%rip)        # 3fc8 <__printf_chk@plt+0x2f58>
    106a:	nopw   0x0(%rax,%rax,1)

0000000000001070 <__printf_chk@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f56(%rip)        # 3fd0 <__printf_chk@plt+0x2f60>
    107a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <.text>:
    1080:	endbr64
    1084:	sub    $0x8,%rsp
    1088:	cmp    $0x1,%edi
    108b:	jle    10f7 <__printf_chk@plt+0x87>
    108d:	mov    0x8(%rsi),%rax
    1091:	lea    0x1(%rax),%rcx
    1095:	movsbq (%rax),%rax
    1099:	test   %al,%al
    109b:	je     10d1 <__printf_chk@plt+0x61>
    109d:	mov    $0x1505,%edx
    10a2:	nopw   0x0(%rax,%rax,1)
    10a8:	mov    %rdx,%rsi
    10ab:	add    $0x1,%rcx
    10af:	shl    $0x5,%rsi
    10b3:	add    %rsi,%rdx
    10b6:	add    %rax,%rdx
    10b9:	movsbq -0x1(%rcx),%rax
    10be:	test   %al,%al
    10c0:	jne    10a8 <__printf_chk@plt+0x38>
    10c2:	movabs $0xd0ab1cbb4b96,%rax
    10cc:	cmp    %rax,%rdx
    10cf:	je     10e7 <__printf_chk@plt+0x77>
    10d1:	lea    0xf3d(%rip),%rdi        # 2015 <__printf_chk@plt+0xfa5>
    10d8:	call   1060 <puts@plt>
    10dd:	mov    $0x1,%eax
    10e2:	add    $0x8,%rsp
    10e6:	ret
    10e7:	lea    0xf29(%rip),%rdi        # 2017 <__printf_chk@plt+0xfa7>
    10ee:	call   1060 <puts@plt>
    10f3:	xor    %eax,%eax
    10f5:	jmp    10e2 <__printf_chk@plt+0x72>
    10f7:	mov    (%rsi),%rdx
    10fa:	mov    $0x2,%edi
    10ff:	xor    %eax,%eax
    1101:	lea    0xefc(%rip),%rsi        # 2004 <__printf_chk@plt+0xf94>
    1108:	call   1070 <__printf_chk@plt>
    110d:	mov    $0x2,%eax
    1112:	jmp    10e2 <__printf_chk@plt+0x72>
    1114:	cs nopw 0x0(%rax,%rax,1)
    111e:	xchg   %ax,%ax
    1120:	endbr64
    1124:	xor    %ebp,%ebp
    1126:	mov    %rdx,%r9
    1129:	pop    %rsi
    112a:	mov    %rsp,%rdx
    112d:	and    $0xfffffffffffffff0,%rsp
    1131:	push   %rax
    1132:	push   %rsp
    1133:	xor    %r8d,%r8d
    1136:	xor    %ecx,%ecx
    1138:	lea    -0xbf(%rip),%rdi        # 1080 <__printf_chk@plt+0x10>
    113f:	call   *0x2e93(%rip)        # 3fd8 <__printf_chk@plt+0x2f68>
    1145:	hlt
    1146:	cs nopw 0x0(%rax,%rax,1)
    1150:	lea    0x2eb9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2fa0>
    1157:	lea    0x2eb2(%rip),%rax        # 4010 <__printf_chk@plt+0x2fa0>
    115e:	cmp    %rdi,%rax
    1161:	je     1178 <__printf_chk@plt+0x108>
    1163:	mov    0x2e76(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f70>
    116a:	test   %rax,%rax
    116d:	je     1178 <__printf_chk@plt+0x108>
    116f:	jmp    *%rax
    1171:	nopl   0x0(%rax)
    1178:	ret
    1179:	nopl   0x0(%rax)
    1180:	lea    0x2e89(%rip),%rdi        # 4010 <__printf_chk@plt+0x2fa0>
    1187:	lea    0x2e82(%rip),%rsi        # 4010 <__printf_chk@plt+0x2fa0>
    118e:	sub    %rdi,%rsi
    1191:	mov    %rsi,%rax
    1194:	shr    $0x3f,%rsi
    1198:	sar    $0x3,%rax
    119c:	add    %rax,%rsi
    119f:	sar    $1,%rsi
    11a2:	je     11b8 <__printf_chk@plt+0x148>
    11a4:	mov    0x2e45(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f80>
    11ab:	test   %rax,%rax
    11ae:	je     11b8 <__printf_chk@plt+0x148>
    11b0:	jmp    *%rax
    11b2:	nopw   0x0(%rax,%rax,1)
    11b8:	ret
    11b9:	nopl   0x0(%rax)
    11c0:	endbr64
    11c4:	cmpb   $0x0,0x2e45(%rip)        # 4010 <__printf_chk@plt+0x2fa0>
    11cb:	jne    11f8 <__printf_chk@plt+0x188>
    11cd:	push   %rbp
    11ce:	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__printf_chk@plt+0x2f88>
    11d6:	mov    %rsp,%rbp
    11d9:	je     11e7 <__printf_chk@plt+0x177>
    11db:	mov    0x2e26(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f98>
    11e2:	call   1050 <__cxa_finalize@plt>
    11e7:	call   1150 <__printf_chk@plt+0xe0>
    11ec:	movb   $0x1,0x2e1d(%rip)        # 4010 <__printf_chk@plt+0x2fa0>
    11f3:	pop    %rbp
    11f4:	ret
    11f5:	nopl   (%rax)
    11f8:	ret
    11f9:	nopl   0x0(%rax)
    1200:	endbr64
    1204:	jmp    1180 <__printf_chk@plt+0x110>

Disassembly of section .fini:

000000000000120c <.fini>:
    120c:	endbr64
    1210:	sub    $0x8,%rsp
    1214:	add    $0x8,%rsp
    1218:	ret
