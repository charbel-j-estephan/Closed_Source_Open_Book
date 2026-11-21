
/home/claude/paper/experiment/bin/p2_L0:     file format elf64-x86-64


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
    1020:	push   0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	jmp    *0x2f8c(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	nopl   0x0(%rax)
    1030:	endbr64
    1034:	push   $0x0
    1039:	jmp    1020 <_init+0x20>
    103e:	xchg   %ax,%ax
    1040:	endbr64
    1044:	push   $0x1
    1049:	jmp    1020 <_init+0x20>
    104e:	xchg   %ax,%ax
    1050:	endbr64
    1054:	push   $0x2
    1059:	jmp    1020 <_init+0x20>
    105e:	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	endbr64
    1064:	jmp    *0x2f8e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <puts@plt>:
    1070:	endbr64
    1074:	jmp    *0x2f46(%rip)        # 3fc0 <puts@GLIBC_2.2.5>
    107a:	nopw   0x0(%rax,%rax,1)

0000000000001080 <printf@plt>:
    1080:	endbr64
    1084:	jmp    *0x2f3e(%rip)        # 3fc8 <printf@GLIBC_2.2.5>
    108a:	nopw   0x0(%rax,%rax,1)

0000000000001090 <strtoul@plt>:
    1090:	endbr64
    1094:	jmp    *0x2f36(%rip)        # 3fd0 <strtoul@GLIBC_2.2.5>
    109a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	endbr64
    10a4:	xor    %ebp,%ebp
    10a6:	mov    %rdx,%r9
    10a9:	pop    %rsi
    10aa:	mov    %rsp,%rdx
    10ad:	and    $0xfffffffffffffff0,%rsp
    10b1:	push   %rax
    10b2:	push   %rsp
    10b3:	xor    %r8d,%r8d
    10b6:	xor    %ecx,%ecx
    10b8:	lea    0x120(%rip),%rdi        # 11df <main>
    10bf:	call   *0x2f13(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10c5:	hlt
    10c6:	cs nopw 0x0(%rax,%rax,1)

00000000000010d0 <deregister_tm_clones>:
    10d0:	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	cmp    %rdi,%rax
    10e1:	je     10f8 <deregister_tm_clones+0x28>
    10e3:	mov    0x2ef6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ea:	test   %rax,%rax
    10ed:	je     10f8 <deregister_tm_clones+0x28>
    10ef:	jmp    *%rax
    10f1:	nopl   0x0(%rax)
    10f8:	ret
    10f9:	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	sub    %rdi,%rsi
    1111:	mov    %rsi,%rax
    1114:	shr    $0x3f,%rsi
    1118:	sar    $0x3,%rax
    111c:	add    %rax,%rsi
    111f:	sar    $1,%rsi
    1122:	je     1138 <register_tm_clones+0x38>
    1124:	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    112b:	test   %rax,%rax
    112e:	je     1138 <register_tm_clones+0x38>
    1130:	jmp    *%rax
    1132:	nopw   0x0(%rax,%rax,1)
    1138:	ret
    1139:	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	endbr64
    1144:	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	push   %rbp
    114e:	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1156:	mov    %rsp,%rbp
    1159:	je     1167 <__do_global_dtors_aux+0x27>
    115b:	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	call   1060 <__cxa_finalize@plt>
    1167:	call   10d0 <deregister_tm_clones>
    116c:	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	pop    %rbp
    1174:	ret
    1175:	nopl   (%rax)
    1178:	ret
    1179:	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	endbr64
    1184:	jmp    1100 <register_tm_clones>

0000000000001189 <collatz_steps>:
    1189:	endbr64
    118d:	push   %rbp
    118e:	mov    %rsp,%rbp
    1191:	mov    %rdi,-0x18(%rbp)
    1195:	movq   $0x0,-0x8(%rbp)
    119d:	jmp    11d2 <collatz_steps+0x49>
    119f:	mov    -0x18(%rbp),%rax
    11a3:	and    $0x1,%eax
    11a6:	test   %rax,%rax
    11a9:	jne    11b8 <collatz_steps+0x2f>
    11ab:	mov    -0x18(%rbp),%rax
    11af:	shr    $1,%rax
    11b2:	mov    %rax,-0x18(%rbp)
    11b6:	jmp    11cd <collatz_steps+0x44>
    11b8:	mov    -0x18(%rbp),%rdx
    11bc:	mov    %rdx,%rax
    11bf:	add    %rax,%rax
    11c2:	add    %rdx,%rax
    11c5:	add    $0x1,%rax
    11c9:	mov    %rax,-0x18(%rbp)
    11cd:	addq   $0x1,-0x8(%rbp)
    11d2:	cmpq   $0x1,-0x18(%rbp)
    11d7:	jne    119f <collatz_steps+0x16>
    11d9:	mov    -0x8(%rbp),%rax
    11dd:	pop    %rbp
    11de:	ret

00000000000011df <main>:
    11df:	endbr64
    11e3:	push   %rbp
    11e4:	mov    %rsp,%rbp
    11e7:	sub    $0x20,%rsp
    11eb:	mov    %edi,-0x14(%rbp)
    11ee:	mov    %rsi,-0x20(%rbp)
    11f2:	cmpl   $0x1,-0x14(%rbp)
    11f6:	jg     121d <main+0x3e>
    11f8:	mov    -0x20(%rbp),%rax
    11fc:	mov    (%rax),%rax
    11ff:	mov    %rax,%rsi
    1202:	lea    0xdfb(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1209:	mov    %rax,%rdi
    120c:	mov    $0x0,%eax
    1211:	call   1080 <printf@plt>
    1216:	mov    $0x2,%eax
    121b:	jmp    1283 <main+0xa4>
    121d:	mov    -0x20(%rbp),%rax
    1221:	add    $0x8,%rax
    1225:	mov    (%rax),%rax
    1228:	mov    $0xa,%edx
    122d:	mov    $0x0,%esi
    1232:	mov    %rax,%rdi
    1235:	call   1090 <strtoul@plt>
    123a:	mov    %rax,-0x8(%rbp)
    123e:	cmpq   $0x0,-0x8(%rbp)
    1243:	jne    125b <main+0x7c>
    1245:	lea    0xdc7(%rip),%rax        # 2013 <_IO_stdin_used+0x13>
    124c:	mov    %rax,%rdi
    124f:	call   1070 <puts@plt>
    1254:	mov    $0x2,%eax
    1259:	jmp    1283 <main+0xa4>
    125b:	mov    -0x8(%rbp),%rax
    125f:	mov    %rax,%rdi
    1262:	call   1189 <collatz_steps>
    1267:	mov    %rax,%rsi
    126a:	lea    0xdaa(%rip),%rax        # 201b <_IO_stdin_used+0x1b>
    1271:	mov    %rax,%rdi
    1274:	mov    $0x0,%eax
    1279:	call   1080 <printf@plt>
    127e:	mov    $0x0,%eax
    1283:	leave
    1284:	ret

Disassembly of section .fini:

0000000000001288 <_fini>:
    1288:	endbr64
    128c:	sub    $0x8,%rsp
    1290:	add    $0x8,%rsp
    1294:	ret
