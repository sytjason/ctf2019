
./election:     file format elf64-x86-64


Disassembly of section .init:

00000000000008f0 <_init>:
 8f0:	48 83 ec 08          	sub    $0x8,%rsp
 8f4:	48 8b 05 ed 16 20 00 	mov    0x2016ed(%rip),%rax        # 201fe8 <__gmon_start__>
 8fb:	48 85 c0             	test   %rax,%rax
 8fe:	74 02                	je     902 <_init+0x12>
 900:	ff d0                	callq  *%rax
 902:	48 83 c4 08          	add    $0x8,%rsp
 906:	c3                   	retq   

Disassembly of section .plt:

0000000000000910 <.plt>:
 910:	ff 35 5a 16 20 00    	pushq  0x20165a(%rip)        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x8>
 916:	ff 25 5c 16 20 00    	jmpq   *0x20165c(%rip)        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x10>
 91c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000920 <_exit@plt>:
 920:	ff 25 5a 16 20 00    	jmpq   *0x20165a(%rip)        # 201f80 <_exit@GLIBC_2.2.5>
 926:	68 00 00 00 00       	pushq  $0x0
 92b:	e9 e0 ff ff ff       	jmpq   910 <.plt>

0000000000000930 <__read_chk@plt>:
 930:	ff 25 52 16 20 00    	jmpq   *0x201652(%rip)        # 201f88 <__read_chk@GLIBC_2.4>
 936:	68 01 00 00 00       	pushq  $0x1
 93b:	e9 d0 ff ff ff       	jmpq   910 <.plt>

0000000000000940 <puts@plt>:
 940:	ff 25 4a 16 20 00    	jmpq   *0x20164a(%rip)        # 201f90 <puts@GLIBC_2.2.5>
 946:	68 02 00 00 00       	pushq  $0x2
 94b:	e9 c0 ff ff ff       	jmpq   910 <.plt>

0000000000000950 <__stack_chk_fail@plt>:
 950:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 201f98 <__stack_chk_fail@GLIBC_2.4>
 956:	68 03 00 00 00       	pushq  $0x3
 95b:	e9 b0 ff ff ff       	jmpq   910 <.plt>

0000000000000960 <printf@plt>:
 960:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 201fa0 <printf@GLIBC_2.2.5>
 966:	68 04 00 00 00       	pushq  $0x4
 96b:	e9 a0 ff ff ff       	jmpq   910 <.plt>

0000000000000970 <alarm@plt>:
 970:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 201fa8 <alarm@GLIBC_2.2.5>
 976:	68 05 00 00 00       	pushq  $0x5
 97b:	e9 90 ff ff ff       	jmpq   910 <.plt>

0000000000000980 <read@plt>:
 980:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 201fb0 <read@GLIBC_2.2.5>
 986:	68 06 00 00 00       	pushq  $0x6
 98b:	e9 80 ff ff ff       	jmpq   910 <.plt>

0000000000000990 <memcmp@plt>:
 990:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 201fb8 <memcmp@GLIBC_2.2.5>
 996:	68 07 00 00 00       	pushq  $0x7
 99b:	e9 70 ff ff ff       	jmpq   910 <.plt>

00000000000009a0 <signal@plt>:
 9a0:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 201fc0 <signal@GLIBC_2.2.5>
 9a6:	68 08 00 00 00       	pushq  $0x8
 9ab:	e9 60 ff ff ff       	jmpq   910 <.plt>

00000000000009b0 <setvbuf@plt>:
 9b0:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 201fc8 <setvbuf@GLIBC_2.2.5>
 9b6:	68 09 00 00 00       	pushq  $0x9
 9bb:	e9 50 ff ff ff       	jmpq   910 <.plt>

00000000000009c0 <atoi@plt>:
 9c0:	ff 25 0a 16 20 00    	jmpq   *0x20160a(%rip)        # 201fd0 <atoi@GLIBC_2.2.5>
 9c6:	68 0a 00 00 00       	pushq  $0xa
 9cb:	e9 40 ff ff ff       	jmpq   910 <.plt>

Disassembly of section .plt.got:

00000000000009d0 <__cxa_finalize@plt>:
 9d0:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000009e0 <_start>:
     9e0:	31 ed                	xor    %ebp,%ebp
     9e2:	49 89 d1             	mov    %rdx,%r9
     9e5:	5e                   	pop    %rsi
     9e6:	48 89 e2             	mov    %rsp,%rdx
     9e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     9ed:	50                   	push   %rax
     9ee:	54                   	push   %rsp
     9ef:	4c 8d 05 ba 07 00 00 	lea    0x7ba(%rip),%r8        # 11b0 <__libc_csu_fini>
     9f6:	48 8d 0d 43 07 00 00 	lea    0x743(%rip),%rcx        # 1140 <__libc_csu_init>
     9fd:	48 8d 3d f7 05 00 00 	lea    0x5f7(%rip),%rdi        # ffb <main>
     a04:	ff 15 d6 15 20 00    	callq  *0x2015d6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     a0a:	f4                   	hlt    
     a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a10 <deregister_tm_clones>:
     a10:	48 8d 3d 59 16 20 00 	lea    0x201659(%rip),%rdi        # 202070 <__TMC_END__>
     a17:	55                   	push   %rbp
     a18:	48 8d 05 51 16 20 00 	lea    0x201651(%rip),%rax        # 202070 <__TMC_END__>
     a1f:	48 39 f8             	cmp    %rdi,%rax
     a22:	48 89 e5             	mov    %rsp,%rbp
     a25:	74 19                	je     a40 <deregister_tm_clones+0x30>
     a27:	48 8b 05 aa 15 20 00 	mov    0x2015aa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     a2e:	48 85 c0             	test   %rax,%rax
     a31:	74 0d                	je     a40 <deregister_tm_clones+0x30>
     a33:	5d                   	pop    %rbp
     a34:	ff e0                	jmpq   *%rax
     a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a3d:	00 00 00 
     a40:	5d                   	pop    %rbp
     a41:	c3                   	retq   
     a42:	0f 1f 40 00          	nopl   0x0(%rax)
     a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a4d:	00 00 00 

0000000000000a50 <register_tm_clones>:
     a50:	48 8d 3d 19 16 20 00 	lea    0x201619(%rip),%rdi        # 202070 <__TMC_END__>
     a57:	48 8d 35 12 16 20 00 	lea    0x201612(%rip),%rsi        # 202070 <__TMC_END__>
     a5e:	55                   	push   %rbp
     a5f:	48 29 fe             	sub    %rdi,%rsi
     a62:	48 89 e5             	mov    %rsp,%rbp
     a65:	48 c1 fe 03          	sar    $0x3,%rsi
     a69:	48 89 f0             	mov    %rsi,%rax
     a6c:	48 c1 e8 3f          	shr    $0x3f,%rax
     a70:	48 01 c6             	add    %rax,%rsi
     a73:	48 d1 fe             	sar    %rsi
     a76:	74 18                	je     a90 <register_tm_clones+0x40>
     a78:	48 8b 05 71 15 20 00 	mov    0x201571(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     a7f:	48 85 c0             	test   %rax,%rax
     a82:	74 0c                	je     a90 <register_tm_clones+0x40>
     a84:	5d                   	pop    %rbp
     a85:	ff e0                	jmpq   *%rax
     a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     a8e:	00 00 
     a90:	5d                   	pop    %rbp
     a91:	c3                   	retq   
     a92:	0f 1f 40 00          	nopl   0x0(%rax)
     a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a9d:	00 00 00 

0000000000000aa0 <__do_global_dtors_aux>:
     aa0:	80 3d 01 16 20 00 00 	cmpb   $0x0,0x201601(%rip)        # 2020a8 <completed.7697>
     aa7:	75 2f                	jne    ad8 <__do_global_dtors_aux+0x38>
     aa9:	48 83 3d 47 15 20 00 	cmpq   $0x0,0x201547(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     ab0:	00 
     ab1:	55                   	push   %rbp
     ab2:	48 89 e5             	mov    %rsp,%rbp
     ab5:	74 0c                	je     ac3 <__do_global_dtors_aux+0x23>
     ab7:	48 8b 3d 4a 15 20 00 	mov    0x20154a(%rip),%rdi        # 202008 <__dso_handle>
     abe:	e8 0d ff ff ff       	callq  9d0 <__cxa_finalize@plt>
     ac3:	e8 48 ff ff ff       	callq  a10 <deregister_tm_clones>
     ac8:	c6 05 d9 15 20 00 01 	movb   $0x1,0x2015d9(%rip)        # 2020a8 <completed.7697>
     acf:	5d                   	pop    %rbp
     ad0:	c3                   	retq   
     ad1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     ad8:	f3 c3                	repz retq 
     ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ae0 <frame_dummy>:
     ae0:	55                   	push   %rbp
     ae1:	48 89 e5             	mov    %rsp,%rbp
     ae4:	5d                   	pop    %rbp
     ae5:	e9 66 ff ff ff       	jmpq   a50 <register_tm_clones>

0000000000000aea <handler>:
     aea:	55                   	push   %rbp
     aeb:	48 89 e5             	mov    %rsp,%rbp
     aee:	48 83 ec 20          	sub    $0x20,%rsp
     af2:	89 7d ec             	mov    %edi,-0x14(%rbp)
     af5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
     afc:	eb 28                	jmp    b26 <handler+0x3c>
     afe:	8b 45 f8             	mov    -0x8(%rbp),%eax
     b01:	48 98                	cltq   
     b03:	48 c1 e0 04          	shl    $0x4,%rax
     b07:	48 89 c2             	mov    %rax,%rdx
     b0a:	48 8d 05 b7 15 20 00 	lea    0x2015b7(%rip),%rax        # 2020c8 <candidates+0x8>
     b11:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     b15:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
     b19:	38 45 f7             	cmp    %al,-0x9(%rbp)
     b1c:	0f 43 c2             	cmovae %edx,%eax
     b1f:	88 45 f7             	mov    %al,-0x9(%rbp)
     b22:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
     b26:	83 7d f8 09          	cmpl   $0x9,-0x8(%rbp)
     b2a:	7e d2                	jle    afe <handler+0x14>
     b2c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     b33:	eb 4d                	jmp    b82 <handler+0x98>
     b35:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b38:	48 98                	cltq   
     b3a:	48 c1 e0 04          	shl    $0x4,%rax
     b3e:	48 89 c2             	mov    %rax,%rdx
     b41:	48 8d 05 80 15 20 00 	lea    0x201580(%rip),%rax        # 2020c8 <candidates+0x8>
     b48:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     b4c:	38 45 f7             	cmp    %al,-0x9(%rbp)
     b4f:	75 2d                	jne    b7e <handler+0x94>
     b51:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b54:	48 98                	cltq   
     b56:	48 c1 e0 04          	shl    $0x4,%rax
     b5a:	48 89 c2             	mov    %rax,%rdx
     b5d:	48 8d 05 5c 15 20 00 	lea    0x20155c(%rip),%rax        # 2020c0 <candidates>
     b64:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     b68:	48 89 c6             	mov    %rax,%rsi
     b6b:	48 8d 3d ae 06 00 00 	lea    0x6ae(%rip),%rdi        # 1220 <_IO_stdin_used+0x60>
     b72:	b8 00 00 00 00       	mov    $0x0,%eax
     b77:	e8 e4 fd ff ff       	callq  960 <printf@plt>
     b7c:	eb 0a                	jmp    b88 <handler+0x9e>
     b7e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     b82:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
     b86:	7e ad                	jle    b35 <handler+0x4b>
     b88:	bf 01 00 00 00       	mov    $0x1,%edi
     b8d:	e8 8e fd ff ff       	callq  920 <_exit@plt>

0000000000000b92 <read_int>:
     b92:	55                   	push   %rbp
     b93:	48 89 e5             	mov    %rsp,%rbp
     b96:	48 83 ec 20          	sub    $0x20,%rsp
     b9a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     ba1:	00 00 
     ba3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     ba7:	31 c0                	xor    %eax,%eax
     ba9:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     bad:	b9 10 00 00 00       	mov    $0x10,%ecx
     bb2:	ba 0f 00 00 00       	mov    $0xf,%edx
     bb7:	48 89 c6             	mov    %rax,%rsi
     bba:	bf 00 00 00 00       	mov    $0x0,%edi
     bbf:	b8 00 00 00 00       	mov    $0x0,%eax
     bc4:	e8 67 fd ff ff       	callq  930 <__read_chk@plt>
     bc9:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     bcd:	48 89 c7             	mov    %rax,%rdi
     bd0:	e8 eb fd ff ff       	callq  9c0 <atoi@plt>
     bd5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     bd9:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
     be0:	00 00 
     be2:	74 05                	je     be9 <read_int+0x57>
     be4:	e8 67 fd ff ff       	callq  950 <__stack_chk_fail@plt>
     be9:	c9                   	leaveq 
     bea:	c3                   	retq   

0000000000000beb <init>:
     beb:	55                   	push   %rbp
     bec:	48 89 e5             	mov    %rsp,%rbp
     bef:	48 8b 05 8a 14 20 00 	mov    0x20148a(%rip),%rax        # 202080 <stdout@@GLIBC_2.2.5>
     bf6:	b9 00 00 00 00       	mov    $0x0,%ecx
     bfb:	ba 02 00 00 00       	mov    $0x2,%edx
     c00:	be 00 00 00 00       	mov    $0x0,%esi
     c05:	48 89 c7             	mov    %rax,%rdi
     c08:	e8 a3 fd ff ff       	callq  9b0 <setvbuf@plt>
     c0d:	48 8b 05 7c 14 20 00 	mov    0x20147c(%rip),%rax        # 202090 <stdin@@GLIBC_2.2.5>
     c14:	b9 00 00 00 00       	mov    $0x0,%ecx
     c19:	ba 02 00 00 00       	mov    $0x2,%edx
     c1e:	be 00 00 00 00       	mov    $0x0,%esi
     c23:	48 89 c7             	mov    %rax,%rdi
     c26:	e8 85 fd ff ff       	callq  9b0 <setvbuf@plt>
     c2b:	48 8b 05 6e 14 20 00 	mov    0x20146e(%rip),%rax        # 2020a0 <stderr@@GLIBC_2.2.5>
     c32:	b9 00 00 00 00       	mov    $0x0,%ecx
     c37:	ba 02 00 00 00       	mov    $0x2,%edx
     c3c:	be 00 00 00 00       	mov    $0x0,%esi
     c41:	48 89 c7             	mov    %rax,%rdi
     c44:	e8 67 fd ff ff       	callq  9b0 <setvbuf@plt>
     c49:	48 8d 35 9a fe ff ff 	lea    -0x166(%rip),%rsi        # aea <handler>
     c50:	bf 0e 00 00 00       	mov    $0xe,%edi
     c55:	e8 46 fd ff ff       	callq  9a0 <signal@plt>
     c5a:	bf b4 00 00 00       	mov    $0xb4,%edi
     c5f:	e8 0c fd ff ff       	callq  970 <alarm@plt>
     c64:	90                   	nop
     c65:	5d                   	pop    %rbp
     c66:	c3                   	retq   

0000000000000c67 <banner>:
     c67:	55                   	push   %rbp
     c68:	48 89 e5             	mov    %rsp,%rbp
     c6b:	48 8d 3d c6 05 00 00 	lea    0x5c6(%rip),%rdi        # 1238 <_IO_stdin_used+0x78>
     c72:	e8 c9 fc ff ff       	callq  940 <puts@plt>
     c77:	48 8d 3d ea 05 00 00 	lea    0x5ea(%rip),%rdi        # 1268 <_IO_stdin_used+0xa8>
     c7e:	e8 bd fc ff ff       	callq  940 <puts@plt>
     c83:	48 8d 3d ae 05 00 00 	lea    0x5ae(%rip),%rdi        # 1238 <_IO_stdin_used+0x78>
     c8a:	e8 b1 fc ff ff       	callq  940 <puts@plt>
     c8f:	90                   	nop
     c90:	5d                   	pop    %rbp
     c91:	c3                   	retq   

0000000000000c92 <welcome>:
     c92:	55                   	push   %rbp
     c93:	48 89 e5             	mov    %rsp,%rbp
     c96:	b8 00 00 00 00       	mov    $0x0,%eax
     c9b:	e8 c7 ff ff ff       	callq  c67 <banner>
     ca0:	48 8d 3d ef 05 00 00 	lea    0x5ef(%rip),%rdi        # 1296 <_IO_stdin_used+0xd6>
     ca7:	e8 94 fc ff ff       	callq  940 <puts@plt>
     cac:	48 8d 3d ec 05 00 00 	lea    0x5ec(%rip),%rdi        # 129f <_IO_stdin_used+0xdf>
     cb3:	e8 88 fc ff ff       	callq  940 <puts@plt>
     cb8:	48 8d 3d ec 05 00 00 	lea    0x5ec(%rip),%rdi        # 12ab <_IO_stdin_used+0xeb>
     cbf:	e8 7c fc ff ff       	callq  940 <puts@plt>
     cc4:	48 8d 3d e8 05 00 00 	lea    0x5e8(%rip),%rdi        # 12b3 <_IO_stdin_used+0xf3>
     ccb:	e8 70 fc ff ff       	callq  940 <puts@plt>
     cd0:	90                   	nop
     cd1:	5d                   	pop    %rbp
     cd2:	c3                   	retq   

0000000000000cd3 <init_candidates>:
     cd3:	55                   	push   %rbp
     cd4:	48 89 e5             	mov    %rsp,%rbp
     cd7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     cde:	eb 4a                	jmp    d2a <init_candidates+0x57>
     ce0:	8b 45 fc             	mov    -0x4(%rbp),%eax
     ce3:	48 98                	cltq   
     ce5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     cec:	00 
     ced:	48 8d 05 2c 13 20 00 	lea    0x20132c(%rip),%rax        # 202020 <candidates_name>
     cf4:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     cf8:	8b 45 fc             	mov    -0x4(%rbp),%eax
     cfb:	48 98                	cltq   
     cfd:	48 c1 e0 04          	shl    $0x4,%rax
     d01:	48 89 c1             	mov    %rax,%rcx
     d04:	48 8d 05 b5 13 20 00 	lea    0x2013b5(%rip),%rax        # 2020c0 <candidates>
     d0b:	48 89 14 01          	mov    %rdx,(%rcx,%rax,1)
     d0f:	8b 45 fc             	mov    -0x4(%rbp),%eax
     d12:	48 98                	cltq   
     d14:	48 c1 e0 04          	shl    $0x4,%rax
     d18:	48 89 c2             	mov    %rax,%rdx
     d1b:	48 8d 05 a6 13 20 00 	lea    0x2013a6(%rip),%rax        # 2020c8 <candidates+0x8>
     d22:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
     d26:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     d2a:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
     d2e:	7e b0                	jle    ce0 <init_candidates+0xd>
     d30:	90                   	nop
     d31:	5d                   	pop    %rbp
     d32:	c3                   	retq   

0000000000000d33 <menu>:
     d33:	55                   	push   %rbp
     d34:	48 89 e5             	mov    %rsp,%rbp
     d37:	b8 00 00 00 00       	mov    $0x0,%eax
     d3c:	e8 26 ff ff ff       	callq  c67 <banner>
     d41:	48 8d 3d 6d 05 00 00 	lea    0x56d(%rip),%rdi        # 12b5 <_IO_stdin_used+0xf5>
     d48:	e8 f3 fb ff ff       	callq  940 <puts@plt>
     d4d:	48 8d 3d 6c 05 00 00 	lea    0x56c(%rip),%rdi        # 12c0 <_IO_stdin_used+0x100>
     d54:	e8 e7 fb ff ff       	callq  940 <puts@plt>
     d59:	48 8d 3d 89 05 00 00 	lea    0x589(%rip),%rdi        # 12e9 <_IO_stdin_used+0x129>
     d60:	e8 db fb ff ff       	callq  940 <puts@plt>
     d65:	48 8d 3d 47 05 00 00 	lea    0x547(%rip),%rdi        # 12b3 <_IO_stdin_used+0xf3>
     d6c:	e8 cf fb ff ff       	callq  940 <puts@plt>
     d71:	90                   	nop
     d72:	5d                   	pop    %rbp
     d73:	c3                   	retq   

0000000000000d74 <voting>:
     d74:	55                   	push   %rbp
     d75:	48 89 e5             	mov    %rsp,%rbp
     d78:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
     d7f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     d86:	00 00 
     d88:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d8c:	31 c0                	xor    %eax,%eax
     d8e:	b8 00 00 00 00       	mov    $0x0,%eax
     d93:	e8 9b ff ff ff       	callq  d33 <menu>
     d98:	b8 00 00 00 00       	mov    $0x0,%eax
     d9d:	e8 f0 fd ff ff       	callq  b92 <read_int>
     da2:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
     da8:	8b 85 08 ff ff ff    	mov    -0xf8(%rbp),%eax
     dae:	83 f8 02             	cmp    $0x2,%eax
     db1:	0f 84 61 01 00 00    	je     f18 <voting+0x1a4>
     db7:	83 f8 03             	cmp    $0x3,%eax
     dba:	0f 84 24 02 00 00    	je     fe4 <voting+0x270>
     dc0:	83 f8 01             	cmp    $0x1,%eax
     dc3:	0f 85 09 02 00 00    	jne    fd2 <voting+0x25e>
     dc9:	8b 05 dd 12 20 00    	mov    0x2012dd(%rip),%eax        # 2020ac <vote>
     dcf:	85 c0                	test   %eax,%eax
     dd1:	75 11                	jne    de4 <voting+0x70>
     dd3:	48 8d 3d 19 05 00 00 	lea    0x519(%rip),%rdi        # 12f3 <_IO_stdin_used+0x133>
     dda:	e8 61 fb ff ff       	callq  940 <puts@plt>
     ddf:	e9 fb 01 00 00       	jmpq   fdf <voting+0x26b>
     de4:	48 8d 3d 24 05 00 00 	lea    0x524(%rip),%rdi        # 130f <_IO_stdin_used+0x14f>
     deb:	e8 50 fb ff ff       	callq  940 <puts@plt>
     df0:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%rbp)
     df7:	00 00 00 
     dfa:	eb 57                	jmp    e53 <voting+0xdf>
     dfc:	8b 85 04 ff ff ff    	mov    -0xfc(%rbp),%eax
     e02:	48 98                	cltq   
     e04:	48 c1 e0 04          	shl    $0x4,%rax
     e08:	48 89 c2             	mov    %rax,%rdx
     e0b:	48 8d 05 b6 12 20 00 	lea    0x2012b6(%rip),%rax        # 2020c8 <candidates+0x8>
     e12:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     e16:	0f b6 c8             	movzbl %al,%ecx
     e19:	8b 85 04 ff ff ff    	mov    -0xfc(%rbp),%eax
     e1f:	48 98                	cltq   
     e21:	48 c1 e0 04          	shl    $0x4,%rax
     e25:	48 89 c2             	mov    %rax,%rdx
     e28:	48 8d 05 91 12 20 00 	lea    0x201291(%rip),%rax        # 2020c0 <candidates>
     e2f:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     e33:	8b 85 04 ff ff ff    	mov    -0xfc(%rbp),%eax
     e39:	89 c6                	mov    %eax,%esi
     e3b:	48 8d 3d d9 04 00 00 	lea    0x4d9(%rip),%rdi        # 131b <_IO_stdin_used+0x15b>
     e42:	b8 00 00 00 00       	mov    $0x0,%eax
     e47:	e8 14 fb ff ff       	callq  960 <printf@plt>
     e4c:	83 85 04 ff ff ff 01 	addl   $0x1,-0xfc(%rbp)
     e53:	83 bd 04 ff ff ff 09 	cmpl   $0x9,-0xfc(%rbp)
     e5a:	7e a0                	jle    dfc <voting+0x88>
     e5c:	48 8d 3d ca 04 00 00 	lea    0x4ca(%rip),%rdi        # 132d <_IO_stdin_used+0x16d>
     e63:	b8 00 00 00 00       	mov    $0x0,%eax
     e68:	e8 f3 fa ff ff       	callq  960 <printf@plt>
     e6d:	b8 00 00 00 00       	mov    $0x0,%eax
     e72:	e8 1b fd ff ff       	callq  b92 <read_int>
     e77:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
     e7d:	83 bd 0c ff ff ff 00 	cmpl   $0x0,-0xf4(%rbp)
     e84:	78 09                	js     e8f <voting+0x11b>
     e86:	83 bd 0c ff ff ff 09 	cmpl   $0x9,-0xf4(%rbp)
     e8d:	7e 11                	jle    ea0 <voting+0x12c>
     e8f:	48 8d 3d ab 04 00 00 	lea    0x4ab(%rip),%rdi        # 1341 <_IO_stdin_used+0x181>
     e96:	e8 a5 fa ff ff       	callq  940 <puts@plt>
     e9b:	e9 3f 01 00 00       	jmpq   fdf <voting+0x26b>
     ea0:	8b 85 0c ff ff ff    	mov    -0xf4(%rbp),%eax
     ea6:	48 98                	cltq   
     ea8:	48 c1 e0 04          	shl    $0x4,%rax
     eac:	48 89 c2             	mov    %rax,%rdx
     eaf:	48 8d 05 12 12 20 00 	lea    0x201212(%rip),%rax        # 2020c8 <candidates+0x8>
     eb6:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     eba:	8d 48 01             	lea    0x1(%rax),%ecx
     ebd:	8b 85 0c ff ff ff    	mov    -0xf4(%rbp),%eax
     ec3:	48 98                	cltq   
     ec5:	48 c1 e0 04          	shl    $0x4,%rax
     ec9:	48 89 c2             	mov    %rax,%rdx
     ecc:	48 8d 05 f5 11 20 00 	lea    0x2011f5(%rip),%rax        # 2020c8 <candidates+0x8>
     ed3:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
     ed6:	8b 05 d0 11 20 00    	mov    0x2011d0(%rip),%eax        # 2020ac <vote>
     edc:	83 e8 01             	sub    $0x1,%eax
     edf:	89 05 c7 11 20 00    	mov    %eax,0x2011c7(%rip)        # 2020ac <vote>
     ee5:	8b 85 0c ff ff ff    	mov    -0xf4(%rbp),%eax
     eeb:	48 98                	cltq   
     eed:	48 c1 e0 04          	shl    $0x4,%rax
     ef1:	48 89 c2             	mov    %rax,%rdx
     ef4:	48 8d 05 c5 11 20 00 	lea    0x2011c5(%rip),%rax        # 2020c0 <candidates>
     efb:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     eff:	48 89 c6             	mov    %rax,%rsi
     f02:	48 8d 3d 48 04 00 00 	lea    0x448(%rip),%rdi        # 1351 <_IO_stdin_used+0x191>
     f09:	b8 00 00 00 00       	mov    $0x0,%eax
     f0e:	e8 4d fa ff ff       	callq  960 <printf@plt>
     f13:	e9 c7 00 00 00       	jmpq   fdf <voting+0x26b>
     f18:	48 8d 3d 49 04 00 00 	lea    0x449(%rip),%rdi        # 1368 <_IO_stdin_used+0x1a8>
     f1f:	e8 1c fa ff ff       	callq  940 <puts@plt>
     f24:	48 8d 3d 79 04 00 00 	lea    0x479(%rip),%rdi        # 13a4 <_IO_stdin_used+0x1e4>
     f2b:	b8 00 00 00 00       	mov    $0x0,%eax
     f30:	e8 2b fa ff ff       	callq  960 <printf@plt>
     f35:	b8 00 00 00 00       	mov    $0x0,%eax
     f3a:	e8 53 fc ff ff       	callq  b92 <read_int>
     f3f:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
     f45:	83 bd 0c ff ff ff 00 	cmpl   $0x0,-0xf4(%rbp)
     f4c:	78 09                	js     f57 <voting+0x1e3>
     f4e:	83 bd 0c ff ff ff 09 	cmpl   $0x9,-0xf4(%rbp)
     f55:	7e 0e                	jle    f65 <voting+0x1f1>
     f57:	48 8d 3d e3 03 00 00 	lea    0x3e3(%rip),%rdi        # 1341 <_IO_stdin_used+0x181>
     f5e:	e8 dd f9 ff ff       	callq  940 <puts@plt>
     f63:	eb 7a                	jmp    fdf <voting+0x26b>
     f65:	8b 85 0c ff ff ff    	mov    -0xf4(%rbp),%eax
     f6b:	48 98                	cltq   
     f6d:	48 c1 e0 04          	shl    $0x4,%rax
     f71:	48 89 c2             	mov    %rax,%rdx
     f74:	48 8d 05 45 11 20 00 	lea    0x201145(%rip),%rax        # 2020c0 <candidates>
     f7b:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     f7f:	48 89 c6             	mov    %rax,%rsi
     f82:	48 8d 3d 26 04 00 00 	lea    0x426(%rip),%rdi        # 13af <_IO_stdin_used+0x1ef>
     f89:	b8 00 00 00 00       	mov    $0x0,%eax
     f8e:	e8 cd f9 ff ff       	callq  960 <printf@plt>
     f93:	8b 85 0c ff ff ff    	mov    -0xf4(%rbp),%eax
     f99:	48 98                	cltq   
     f9b:	48 c1 e0 04          	shl    $0x4,%rax
     f9f:	48 89 c2             	mov    %rax,%rdx
     fa2:	48 8d 05 1f 11 20 00 	lea    0x20111f(%rip),%rax        # 2020c8 <candidates+0x8>
     fa9:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     fad:	0f b6 d0             	movzbl %al,%edx
     fb0:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
     fb7:	48 89 c6             	mov    %rax,%rsi
     fba:	bf 00 00 00 00       	mov    $0x0,%edi
     fbf:	e8 bc f9 ff ff       	callq  980 <read@plt>
     fc4:	48 8d 3d f5 03 00 00 	lea    0x3f5(%rip),%rdi        # 13c0 <_IO_stdin_used+0x200>
     fcb:	e8 70 f9 ff ff       	callq  940 <puts@plt>
     fd0:	eb 0d                	jmp    fdf <voting+0x26b>
     fd2:	48 8d 3d ed 03 00 00 	lea    0x3ed(%rip),%rdi        # 13c6 <_IO_stdin_used+0x206>
     fd9:	e8 62 f9 ff ff       	callq  940 <puts@plt>
     fde:	90                   	nop
     fdf:	e9 aa fd ff ff       	jmpq   d8e <voting+0x1a>
     fe4:	90                   	nop
     fe5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     fe9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     ff0:	00 00 
     ff2:	74 05                	je     ff9 <voting+0x285>
     ff4:	e8 57 f9 ff ff       	callq  950 <__stack_chk_fail@plt>
     ff9:	c9                   	leaveq 
     ffa:	c3                   	retq   

0000000000000ffb <main>:
     ffb:	55                   	push   %rbp
     ffc:	48 89 e5             	mov    %rsp,%rbp
     fff:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1006:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    100d:	00 00 
    100f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1013:	31 c0                	xor    %eax,%eax
    1015:	b8 00 00 00 00       	mov    $0x0,%eax
    101a:	e8 cc fb ff ff       	callq  beb <init>
    101f:	b8 00 00 00 00       	mov    $0x0,%eax
    1024:	e8 aa fc ff ff       	callq  cd3 <init_candidates>
    1029:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
    1030:	b8 00 00 00 00       	mov    $0x0,%eax
    1035:	b9 17 00 00 00       	mov    $0x17,%ecx
    103a:	48 89 d7             	mov    %rdx,%rdi
    103d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1040:	b8 00 00 00 00       	mov    $0x0,%eax
    1045:	e8 48 fc ff ff       	callq  c92 <welcome>
    104a:	b8 00 00 00 00       	mov    $0x0,%eax
    104f:	e8 3e fb ff ff       	callq  b92 <read_int>
    1054:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
    105a:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    1060:	83 f8 02             	cmp    $0x2,%eax
    1063:	74 79                	je     10de <main+0xe3>
    1065:	83 f8 03             	cmp    $0x3,%eax
    1068:	0f 84 b2 00 00 00    	je     1120 <main+0x125>
    106e:	83 f8 01             	cmp    $0x1,%eax
    1071:	0f 85 b5 00 00 00    	jne    112c <main+0x131>
    1077:	48 8d 3d 4b 03 00 00 	lea    0x34b(%rip),%rdi        # 13c9 <_IO_stdin_used+0x209>
    107e:	b8 00 00 00 00       	mov    $0x0,%eax
    1083:	e8 d8 f8 ff ff       	callq  960 <printf@plt>
    1088:	ba c8 00 00 00       	mov    $0xc8,%edx
    108d:	48 8d 35 cc 10 20 00 	lea    0x2010cc(%rip),%rsi        # 202160 <buf>
    1094:	bf 00 00 00 00       	mov    $0x0,%edi
    1099:	e8 e2 f8 ff ff       	callq  980 <read@plt>
    109e:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
    10a4:	8b 95 3c ff ff ff    	mov    -0xc4(%rbp),%edx
    10aa:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    10b1:	48 89 c6             	mov    %rax,%rsi
    10b4:	48 8d 3d a5 10 20 00 	lea    0x2010a5(%rip),%rdi        # 202160 <buf>
    10bb:	e8 d0 f8 ff ff       	callq  990 <memcmp@plt>
    10c0:	85 c0                	test   %eax,%eax
    10c2:	74 0e                	je     10d2 <main+0xd7>
    10c4:	48 8d 3d 06 03 00 00 	lea    0x306(%rip),%rdi        # 13d1 <_IO_stdin_used+0x211>
    10cb:	e8 70 f8 ff ff       	callq  940 <puts@plt>
    10d0:	eb 67                	jmp    1139 <main+0x13e>
    10d2:	b8 00 00 00 00       	mov    $0x0,%eax
    10d7:	e8 98 fc ff ff       	callq  d74 <voting>
    10dc:	eb 5b                	jmp    1139 <main+0x13e>
    10de:	48 8d 3d fb 02 00 00 	lea    0x2fb(%rip),%rdi        # 13e0 <_IO_stdin_used+0x220>
    10e5:	b8 00 00 00 00       	mov    $0x0,%eax
    10ea:	e8 71 f8 ff ff       	callq  960 <printf@plt>
    10ef:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    10f6:	ba b8 00 00 00       	mov    $0xb8,%edx
    10fb:	48 89 c6             	mov    %rax,%rsi
    10fe:	bf 00 00 00 00       	mov    $0x0,%edi
    1103:	e8 78 f8 ff ff       	callq  980 <read@plt>
    1108:	c7 05 9a 0f 20 00 0a 	movl   $0xa,0x200f9a(%rip)        # 2020ac <vote>
    110f:	00 00 00 
    1112:	48 8d 3d a7 02 00 00 	lea    0x2a7(%rip),%rdi        # 13c0 <_IO_stdin_used+0x200>
    1119:	e8 22 f8 ff ff       	callq  940 <puts@plt>
    111e:	eb 19                	jmp    1139 <main+0x13e>
    1120:	bf 00 00 00 00       	mov    $0x0,%edi
    1125:	e8 c0 f9 ff ff       	callq  aea <handler>
    112a:	eb 0d                	jmp    1139 <main+0x13e>
    112c:	48 8d 3d 93 02 00 00 	lea    0x293(%rip),%rdi        # 13c6 <_IO_stdin_used+0x206>
    1133:	e8 08 f8 ff ff       	callq  940 <puts@plt>
    1138:	90                   	nop
    1139:	e9 02 ff ff ff       	jmpq   1040 <main+0x45>
    113e:	66 90                	xchg   %ax,%ax

0000000000001140 <__libc_csu_init>:
    1140:	41 57                	push   %r15
    1142:	41 56                	push   %r14
    1144:	49 89 d7             	mov    %rdx,%r15
    1147:	41 55                	push   %r13
    1149:	41 54                	push   %r12
    114b:	4c 8d 25 16 0c 20 00 	lea    0x200c16(%rip),%r12        # 201d68 <__frame_dummy_init_array_entry>
    1152:	55                   	push   %rbp
    1153:	48 8d 2d 16 0c 20 00 	lea    0x200c16(%rip),%rbp        # 201d70 <__init_array_end>
    115a:	53                   	push   %rbx
    115b:	41 89 fd             	mov    %edi,%r13d
    115e:	49 89 f6             	mov    %rsi,%r14
    1161:	4c 29 e5             	sub    %r12,%rbp
    1164:	48 83 ec 08          	sub    $0x8,%rsp
    1168:	48 c1 fd 03          	sar    $0x3,%rbp
    116c:	e8 7f f7 ff ff       	callq  8f0 <_init>
    1171:	48 85 ed             	test   %rbp,%rbp
    1174:	74 20                	je     1196 <__libc_csu_init+0x56>
    1176:	31 db                	xor    %ebx,%ebx
    1178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    117f:	00 
    1180:	4c 89 fa             	mov    %r15,%rdx
    1183:	4c 89 f6             	mov    %r14,%rsi
    1186:	44 89 ef             	mov    %r13d,%edi
    1189:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    118d:	48 83 c3 01          	add    $0x1,%rbx
    1191:	48 39 dd             	cmp    %rbx,%rbp
    1194:	75 ea                	jne    1180 <__libc_csu_init+0x40>
    1196:	48 83 c4 08          	add    $0x8,%rsp
    119a:	5b                   	pop    %rbx
    119b:	5d                   	pop    %rbp
    119c:	41 5c                	pop    %r12
    119e:	41 5d                	pop    %r13
    11a0:	41 5e                	pop    %r14
    11a2:	41 5f                	pop    %r15
    11a4:	c3                   	retq   
    11a5:	90                   	nop
    11a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ad:	00 00 00 

00000000000011b0 <__libc_csu_fini>:
    11b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000011b4 <_fini>:
    11b4:	48 83 ec 08          	sub    $0x8,%rsp
    11b8:	48 83 c4 08          	add    $0x8,%rsp
    11bc:	c3                   	retq   
