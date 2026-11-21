
/home/claude/paper/experiment/bin/p3_L0:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	endbr64
    1004:	sub    $0x8,%rsp
    1008:	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	test   %rax,%rax
    1012:	je     1016 <_init+0x16>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	jmp    *0x2f94(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	nopl   0x0(%rax)
    1030:	endbr64
    1034:	push   $0x0
    1039:	jmp    1020 <_init+0x20>
    103e:	xchg   %ax,%ax
    1040:	endbr64
    1044:	push   $0x1
    1049:	jmp    1020 <_init+0x20>
    104e:	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	endbr64
    1054:	jmp    *0x2f9e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <puts@plt>:
    1060:	endbr64
    1064:	jmp    *0x2f5e(%rip)        # 3fc8 <puts@GLIBC_2.2.5>
    106a:	nopw   0x0(%rax,%rax,1)

0000000000001070 <printf@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f56(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    107a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	endbr64
    1084:	xor    %ebp,%ebp
    1086:	mov    %rdx,%r9
    1089:	pop    %rsi
    108a:	mov    %rsp,%rdx
    108d:	and    $0xfffffffffffffff0,%rsp
    1091:	push   %rax
    1092:	push   %rsp
    1093:	xor    %r8d,%r8d
    1096:	xor    %ecx,%ecx
    1098:	lea    0x11f(%rip),%rdi        # 11be <main>
    109f:	call   *0x2f33(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	hlt
    10a6:	cs nopw 0x0(%rax,%rax,1)

00000000000010b0 <deregister_tm_clones>:
    10b0:	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	cmp    %rdi,%rax
    10c1:	je     10d8 <deregister_tm_clones+0x28>
    10c3:	mov    0x2f16(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	test   %rax,%rax
    10cd:	je     10d8 <deregister_tm_clones+0x28>
    10cf:	jmp    *%rax
    10d1:	nopl   0x0(%rax)
    10d8:	ret
    10d9:	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	sub    %rdi,%rsi
    10f1:	mov    %rsi,%rax
    10f4:	shr    $0x3f,%rsi
    10f8:	sar    $0x3,%rax
    10fc:	add    %rax,%rsi
    10ff:	sar    $1,%rsi
    1102:	je     1118 <register_tm_clones+0x38>
    1104:	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	test   %rax,%rax
    110e:	je     1118 <register_tm_clones+0x38>
    1110:	jmp    *%rax
    1112:	nopw   0x0(%rax,%rax,1)
    1118:	ret
    1119:	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	endbr64
    1124:	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	push   %rbp
    112e:	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1136:	mov    %rsp,%rbp
    1139:	je     1147 <__do_global_dtors_aux+0x27>
    113b:	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	call   1050 <__cxa_finalize@plt>
    1147:	call   10b0 <deregister_tm_clones>
    114c:	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	pop    %rbp
    1154:	ret
    1155:	nopl   (%rax)
    1158:	ret
    1159:	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	endbr64
    1164:	jmp    10e0 <register_tm_clones>

0000000000001169 <djb2>:
    1169:	endbr64
    116d:	push   %rbp
    116e:	mov    %rsp,%rbp
    1171:	mov    %rdi,-0x18(%rbp)
    1175:	movq   $0x1505,-0x8(%rbp)
    117d:	jmp    119d <djb2+0x34>
    117f:	mov    -0x8(%rbp),%rax
    1183:	shl    $0x5,%rax
    1187:	mov    %rax,%rdx
    118a:	mov    -0x8(%rbp),%rax
    118e:	add    %rax,%rdx
    1191:	mov    -0xc(%rbp),%eax
    1194:	cltq
    1196:	add    %rdx,%rax
    1199:	mov    %rax,-0x8(%rbp)
    119d:	mov    -0x18(%rbp),%rax
    11a1:	lea    0x1(%rax),%rdx
    11a5:	mov    %rdx,-0x18(%rbp)
    11a9:	movzbl (%rax),%eax
    11ac:	movsbl %al,%eax
    11af:	mov    %eax,-0xc(%rbp)
    11b2:	cmpl   $0x0,-0xc(%rbp)
    11b6:	jne    117f <djb2+0x16>
    11b8:	mov    -0x8(%rbp),%rax
    11bc:	pop    %rbp
    11bd:	ret

00000000000011be <main>:
    11be:	endbr64
    11c2:	push   %rbp
    11c3:	mov    %rsp,%rbp
    11c6:	sub    $0x10,%rsp
    11ca:	mov    %edi,-0x4(%rbp)
    11cd:	mov    %rsi,-0x10(%rbp)
    11d1:	cmpl   $0x1,-0x4(%rbp)
    11d5:	jg     11fc <main+0x3e>
    11d7:	mov    -0x10(%rbp),%rax
    11db:	mov    (%rax),%rax
    11de:	mov    %rax,%rsi
    11e1:	lea    0xe1c(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11e8:	mov    %rax,%rdi
    11eb:	mov    $0x0,%eax
    11f0:	call   1070 <printf@plt>
    11f5:	mov    $0x2,%eax
    11fa:	jmp    1248 <main+0x8a>
    11fc:	mov    -0x10(%rbp),%rax
    1200:	add    $0x8,%rax
    1204:	mov    (%rax),%rax
    1207:	mov    %rax,%rdi
    120a:	call   1169 <djb2>
    120f:	movabs $0xd0ab1cbb4b96,%rdx
    1219:	cmp    %rdx,%rax
    121c:	jne    1234 <main+0x76>
    121e:	lea    0xdf0(%rip),%rax        # 2015 <_IO_stdin_used+0x15>
    1225:	mov    %rax,%rdi
    1228:	call   1060 <puts@plt>
    122d:	mov    $0x0,%eax
    1232:	jmp    1248 <main+0x8a>
    1234:	lea    0xde4(%rip),%rax        # 201f <_IO_stdin_used+0x1f>
    123b:	mov    %rax,%rdi
    123e:	call   1060 <puts@plt>
    1243:	mov    $0x1,%eax
    1248:	leave
    1249:	ret

Disassembly of section .fini:

000000000000124c <_fini>:
    124c:	endbr64
    1250:	sub    $0x8,%rsp
    1254:	add    $0x8,%rsp
    1258:	ret
