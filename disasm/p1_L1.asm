
/home/claude/paper/experiment/bin/p1_L1:     file format elf64-x86-64


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
    10a8:	jle    1104 <__printf_chk@plt+0x74>
    10aa:	mov    0x8(%rsi),%rbx
    10ae:	mov    %rbx,%rdi
    10b1:	call   1080 <strlen@plt>
    10b6:	test   %rax,%rax
    10b9:	je     10e1 <__printf_chk@plt+0x51>
    10bb:	mov    %rbx,%rdx
    10be:	add    %rbx,%rax
    10c1:	xor    %esi,%esi
    10c3:	nopl   0x0(%rax,%rax,1)
    10c8:	movsbl (%rdx),%ecx
    10cb:	add    $0x1,%rdx
    10cf:	xor    $0x5a,%ecx
    10d2:	add    %ecx,%esi
    10d4:	cmp    %rax,%rdx
    10d7:	jne    10c8 <__printf_chk@plt+0x38>
    10d9:	cmp    $0x3f7,%esi
    10df:	je     10f4 <__printf_chk@plt+0x64>
    10e1:	lea    0xf41(%rip),%rdi        # 2029 <__printf_chk@plt+0xf99>
    10e8:	call   1070 <puts@plt>
    10ed:	mov    $0x1,%eax
    10f2:	pop    %rbx
    10f3:	ret
    10f4:	lea    0xf1f(%rip),%rdi        # 201a <__printf_chk@plt+0xf8a>
    10fb:	call   1070 <puts@plt>
    1100:	xor    %eax,%eax
    1102:	pop    %rbx
    1103:	ret
    1104:	mov    (%rsi),%rdx
    1107:	mov    $0x2,%edi
    110c:	xor    %eax,%eax
    110e:	lea    0xeef(%rip),%rsi        # 2004 <__printf_chk@plt+0xf74>
    1115:	call   1090 <__printf_chk@plt>
    111a:	mov    $0x2,%eax
    111f:	pop    %rbx
    1120:	ret
    1121:	cs nopw 0x0(%rax,%rax,1)
    112b:	nopl   0x0(%rax,%rax,1)
    1130:	endbr64
    1134:	xor    %ebp,%ebp
    1136:	mov    %rdx,%r9
    1139:	pop    %rsi
    113a:	mov    %rsp,%rdx
    113d:	and    $0xfffffffffffffff0,%rsp
    1141:	push   %rax
    1142:	push   %rsp
    1143:	xor    %r8d,%r8d
    1146:	xor    %ecx,%ecx
    1148:	lea    -0xaf(%rip),%rdi        # 10a0 <__printf_chk@plt+0x10>
    114f:	call   *0x2e83(%rip)        # 3fd8 <__printf_chk@plt+0x2f48>
    1155:	hlt
    1156:	cs nopw 0x0(%rax,%rax,1)
    1160:	lea    0x2ea9(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    1167:	lea    0x2ea2(%rip),%rax        # 4010 <__printf_chk@plt+0x2f80>
    116e:	cmp    %rdi,%rax
    1171:	je     1188 <__printf_chk@plt+0xf8>
    1173:	mov    0x2e66(%rip),%rax        # 3fe0 <__printf_chk@plt+0x2f50>
    117a:	test   %rax,%rax
    117d:	je     1188 <__printf_chk@plt+0xf8>
    117f:	jmp    *%rax
    1181:	nopl   0x0(%rax)
    1188:	ret
    1189:	nopl   0x0(%rax)
    1190:	lea    0x2e79(%rip),%rdi        # 4010 <__printf_chk@plt+0x2f80>
    1197:	lea    0x2e72(%rip),%rsi        # 4010 <__printf_chk@plt+0x2f80>
    119e:	sub    %rdi,%rsi
    11a1:	mov    %rsi,%rax
    11a4:	shr    $0x3f,%rsi
    11a8:	sar    $0x3,%rax
    11ac:	add    %rax,%rsi
    11af:	sar    $1,%rsi
    11b2:	je     11c8 <__printf_chk@plt+0x138>
    11b4:	mov    0x2e35(%rip),%rax        # 3ff0 <__printf_chk@plt+0x2f60>
    11bb:	test   %rax,%rax
    11be:	je     11c8 <__printf_chk@plt+0x138>
    11c0:	jmp    *%rax
    11c2:	nopw   0x0(%rax,%rax,1)
    11c8:	ret
    11c9:	nopl   0x0(%rax)
    11d0:	endbr64
    11d4:	cmpb   $0x0,0x2e35(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    11db:	jne    1208 <__printf_chk@plt+0x178>
    11dd:	push   %rbp
    11de:	cmpq   $0x0,0x2e12(%rip)        # 3ff8 <__printf_chk@plt+0x2f68>
    11e6:	mov    %rsp,%rbp
    11e9:	je     11f7 <__printf_chk@plt+0x167>
    11eb:	mov    0x2e16(%rip),%rdi        # 4008 <__printf_chk@plt+0x2f78>
    11f2:	call   1060 <__cxa_finalize@plt>
    11f7:	call   1160 <__printf_chk@plt+0xd0>
    11fc:	movb   $0x1,0x2e0d(%rip)        # 4010 <__printf_chk@plt+0x2f80>
    1203:	pop    %rbp
    1204:	ret
    1205:	nopl   (%rax)
    1208:	ret
    1209:	nopl   0x0(%rax)
    1210:	endbr64
    1214:	jmp    1190 <__printf_chk@plt+0x100>

Disassembly of section .fini:

000000000000121c <.fini>:
    121c:	endbr64
    1220:	sub    $0x8,%rsp
    1224:	add    $0x8,%rsp
    1228:	ret
