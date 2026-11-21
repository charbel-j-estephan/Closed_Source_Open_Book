
/home/claude/paper/experiment/bin/p1_L0:     file format elf64-x86-64


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
    10b8:	lea    0x128(%rip),%rdi        # 11e7 <main>
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

0000000000001189 <validate>:
    1189:	endbr64
    118d:	push   %rbp
    118e:	mov    %rsp,%rbp
    1191:	sub    $0x20,%rsp
    1195:	mov    %rdi,-0x18(%rbp)
    1199:	movl   $0x0,-0xc(%rbp)
    11a0:	movq   $0x0,-0x8(%rbp)
    11a8:	jmp    11c6 <validate+0x3d>
    11aa:	mov    -0x18(%rbp),%rdx
    11ae:	mov    -0x8(%rbp),%rax
    11b2:	add    %rdx,%rax
    11b5:	movzbl (%rax),%eax
    11b8:	xor    $0x5a,%eax
    11bb:	movsbl %al,%eax
    11be:	add    %eax,-0xc(%rbp)
    11c1:	addq   $0x1,-0x8(%rbp)
    11c6:	mov    -0x18(%rbp),%rax
    11ca:	mov    %rax,%rdi
    11cd:	call   1080 <strlen@plt>
    11d2:	cmp    %rax,-0x8(%rbp)
    11d6:	jb     11aa <validate+0x21>
    11d8:	cmpl   $0x3f7,-0xc(%rbp)
    11df:	sete   %al
    11e2:	movzbl %al,%eax
    11e5:	leave
    11e6:	ret

00000000000011e7 <main>:
    11e7:	endbr64
    11eb:	push   %rbp
    11ec:	mov    %rsp,%rbp
    11ef:	sub    $0x10,%rsp
    11f3:	mov    %edi,-0x4(%rbp)
    11f6:	mov    %rsi,-0x10(%rbp)
    11fa:	cmpl   $0x1,-0x4(%rbp)
    11fe:	jg     1225 <main+0x3e>
    1200:	mov    -0x10(%rbp),%rax
    1204:	mov    (%rax),%rax
    1207:	mov    %rax,%rsi
    120a:	lea    0xdf3(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1211:	mov    %rax,%rdi
    1214:	mov    $0x0,%eax
    1219:	call   1090 <printf@plt>
    121e:	mov    $0x2,%eax
    1223:	jmp    1266 <main+0x7f>
    1225:	mov    -0x10(%rbp),%rax
    1229:	add    $0x8,%rax
    122d:	mov    (%rax),%rax
    1230:	mov    %rax,%rdi
    1233:	call   1189 <validate>
    1238:	test   %eax,%eax
    123a:	je     1252 <main+0x6b>
    123c:	lea    0xdd7(%rip),%rax        # 201a <_IO_stdin_used+0x1a>
    1243:	mov    %rax,%rdi
    1246:	call   1070 <puts@plt>
    124b:	mov    $0x0,%eax
    1250:	jmp    1266 <main+0x7f>
    1252:	lea    0xdd0(%rip),%rax        # 2029 <_IO_stdin_used+0x29>
    1259:	mov    %rax,%rdi
    125c:	call   1070 <puts@plt>
    1261:	mov    $0x1,%eax
    1266:	leave
    1267:	ret

Disassembly of section .fini:

0000000000001268 <_fini>:
    1268:	endbr64
    126c:	sub    $0x8,%rsp
    1270:	add    $0x8,%rsp
    1274:	ret
