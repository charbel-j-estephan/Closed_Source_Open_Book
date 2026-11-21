
/home/claude/paper/experiment/bin/p4_L0:     file format elf64-x86-64


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

0000000000001080 <strlen@plt>:
    1080:	endbr64
    1084:	jmp    *0x2f3e(%rip)        # 3fc8 <strlen@GLIBC_2.2.5>
    108a:	nopw   0x0(%rax,%rax,1)

0000000000001090 <printf@plt>:
    1090:	endbr64
    1094:	jmp    *0x2f36(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
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
    10b8:	lea    0x1b5(%rip),%rdi        # 1274 <main>
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

0000000000001189 <valid>:
    1189:	endbr64
    118d:	push   %rbp
    118e:	mov    %rsp,%rbp
    1191:	sub    $0x20,%rsp
    1195:	mov    %rdi,-0x18(%rbp)
    1199:	mov    -0x18(%rbp),%rax
    119d:	mov    %rax,%rdi
    11a0:	call   1080 <strlen@plt>
    11a5:	cmp    $0x8,%rax
    11a9:	je     11b5 <valid+0x2c>
    11ab:	mov    $0x0,%eax
    11b0:	jmp    1272 <valid+0xe9>
    11b5:	movl   $0x0,-0x10(%rbp)
    11bc:	jmp    11f4 <valid+0x6b>
    11be:	mov    -0x10(%rbp),%eax
    11c1:	movslq %eax,%rdx
    11c4:	mov    -0x18(%rbp),%rax
    11c8:	add    %rdx,%rax
    11cb:	movzbl (%rax),%eax
    11ce:	cmp    $0x2f,%al
    11d0:	jle    11e6 <valid+0x5d>
    11d2:	mov    -0x10(%rbp),%eax
    11d5:	movslq %eax,%rdx
    11d8:	mov    -0x18(%rbp),%rax
    11dc:	add    %rdx,%rax
    11df:	movzbl (%rax),%eax
    11e2:	cmp    $0x39,%al
    11e4:	jle    11f0 <valid+0x67>
    11e6:	mov    $0x0,%eax
    11eb:	jmp    1272 <valid+0xe9>
    11f0:	addl   $0x1,-0x10(%rbp)
    11f4:	cmpl   $0x7,-0x10(%rbp)
    11f8:	jle    11be <valid+0x35>
    11fa:	movl   $0x0,-0xc(%rbp)
    1201:	movl   $0x0,-0x8(%rbp)
    1208:	jmp    1227 <valid+0x9e>
    120a:	mov    -0x8(%rbp),%eax
    120d:	movslq %eax,%rdx
    1210:	mov    -0x18(%rbp),%rax
    1214:	add    %rdx,%rax
    1217:	movzbl (%rax),%eax
    121a:	movsbl %al,%eax
    121d:	sub    $0x30,%eax
    1220:	add    %eax,-0xc(%rbp)
    1223:	addl   $0x1,-0x8(%rbp)
    1227:	cmpl   $0x6,-0x8(%rbp)
    122b:	jle    120a <valid+0x81>
    122d:	mov    -0xc(%rbp),%edx
    1230:	movslq %edx,%rax
    1233:	imul   $0x66666667,%rax,%rax
    123a:	shr    $0x20,%rax
    123e:	mov    %eax,%ecx
    1240:	sar    $0x2,%ecx
    1243:	mov    %edx,%eax
    1245:	sar    $0x1f,%eax
    1248:	sub    %eax,%ecx
    124a:	mov    %ecx,%eax
    124c:	shl    $0x2,%eax
    124f:	add    %ecx,%eax
    1251:	add    %eax,%eax
    1253:	sub    %eax,%edx
    1255:	mov    %edx,-0x4(%rbp)
    1258:	mov    -0x18(%rbp),%rax
    125c:	add    $0x7,%rax
    1260:	movzbl (%rax),%eax
    1263:	movsbl %al,%eax
    1266:	sub    $0x30,%eax
    1269:	cmp    %eax,-0x4(%rbp)
    126c:	sete   %al
    126f:	movzbl %al,%eax
    1272:	leave
    1273:	ret

0000000000001274 <main>:
    1274:	endbr64
    1278:	push   %rbp
    1279:	mov    %rsp,%rbp
    127c:	sub    $0x10,%rsp
    1280:	mov    %edi,-0x4(%rbp)
    1283:	mov    %rsi,-0x10(%rbp)
    1287:	cmpl   $0x1,-0x4(%rbp)
    128b:	jg     12b2 <main+0x3e>
    128d:	mov    -0x10(%rbp),%rax
    1291:	mov    (%rax),%rax
    1294:	mov    %rax,%rsi
    1297:	lea    0xd66(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    129e:	mov    %rax,%rdi
    12a1:	mov    $0x0,%eax
    12a6:	call   1090 <printf@plt>
    12ab:	mov    $0x2,%eax
    12b0:	jmp    12f3 <main+0x7f>
    12b2:	mov    -0x10(%rbp),%rax
    12b6:	add    $0x8,%rax
    12ba:	mov    (%rax),%rax
    12bd:	mov    %rax,%rdi
    12c0:	call   1189 <valid>
    12c5:	test   %eax,%eax
    12c7:	je     12df <main+0x6b>
    12c9:	lea    0xd48(%rip),%rax        # 2018 <_IO_stdin_used+0x18>
    12d0:	mov    %rax,%rdi
    12d3:	call   1070 <puts@plt>
    12d8:	mov    $0x0,%eax
    12dd:	jmp    12f3 <main+0x7f>
    12df:	lea    0xd3c(%rip),%rax        # 2022 <_IO_stdin_used+0x22>
    12e6:	mov    %rax,%rdi
    12e9:	call   1070 <puts@plt>
    12ee:	mov    $0x1,%eax
    12f3:	leave
    12f4:	ret

Disassembly of section .fini:

00000000000012f8 <_fini>:
    12f8:	endbr64
    12fc:	sub    $0x8,%rsp
    1300:	add    $0x8,%rsp
    1304:	ret
