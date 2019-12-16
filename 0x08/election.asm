
./election:     file format elf64-x86-64


Disassembly of section .init:

00000000000008f0 <_init>:
 8f0:	48 83 ec 08          	sub    rsp,0x8
 8f4:	48 8b 05 ed 16 20 00 	mov    rax,QWORD PTR [rip+0x2016ed]        # 201fe8 <__gmon_start__>
 8fb:	48 85 c0             	test   rax,rax
 8fe:	74 02                	je     902 <_init+0x12>
 900:	ff d0                	call   rax
 902:	48 83 c4 08          	add    rsp,0x8
 906:	c3                   	ret    

Disassembly of section .plt:

0000000000000910 <.plt>:
 910:	ff 35 5a 16 20 00    	push   QWORD PTR [rip+0x20165a]        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x8>
 916:	ff 25 5c 16 20 00    	jmp    QWORD PTR [rip+0x20165c]        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x10>
 91c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000920 <_exit@plt>:
 920:	ff 25 5a 16 20 00    	jmp    QWORD PTR [rip+0x20165a]        # 201f80 <_exit@GLIBC_2.2.5>
 926:	68 00 00 00 00       	push   0x0
 92b:	e9 e0 ff ff ff       	jmp    910 <.plt>

0000000000000930 <__read_chk@plt>:
 930:	ff 25 52 16 20 00    	jmp    QWORD PTR [rip+0x201652]        # 201f88 <__read_chk@GLIBC_2.4>
 936:	68 01 00 00 00       	push   0x1
 93b:	e9 d0 ff ff ff       	jmp    910 <.plt>

0000000000000940 <puts@plt>:
 940:	ff 25 4a 16 20 00    	jmp    QWORD PTR [rip+0x20164a]        # 201f90 <puts@GLIBC_2.2.5>
 946:	68 02 00 00 00       	push   0x2
 94b:	e9 c0 ff ff ff       	jmp    910 <.plt>

0000000000000950 <__stack_chk_fail@plt>:
 950:	ff 25 42 16 20 00    	jmp    QWORD PTR [rip+0x201642]        # 201f98 <__stack_chk_fail@GLIBC_2.4>
 956:	68 03 00 00 00       	push   0x3
 95b:	e9 b0 ff ff ff       	jmp    910 <.plt>

0000000000000960 <printf@plt>:
 960:	ff 25 3a 16 20 00    	jmp    QWORD PTR [rip+0x20163a]        # 201fa0 <printf@GLIBC_2.2.5>
 966:	68 04 00 00 00       	push   0x4
 96b:	e9 a0 ff ff ff       	jmp    910 <.plt>

0000000000000970 <alarm@plt>:
 970:	ff 25 32 16 20 00    	jmp    QWORD PTR [rip+0x201632]        # 201fa8 <alarm@GLIBC_2.2.5>
 976:	68 05 00 00 00       	push   0x5
 97b:	e9 90 ff ff ff       	jmp    910 <.plt>

0000000000000980 <read@plt>:
 980:	ff 25 2a 16 20 00    	jmp    QWORD PTR [rip+0x20162a]        # 201fb0 <read@GLIBC_2.2.5>
 986:	68 06 00 00 00       	push   0x6
 98b:	e9 80 ff ff ff       	jmp    910 <.plt>

0000000000000990 <memcmp@plt>:
 990:	ff 25 22 16 20 00    	jmp    QWORD PTR [rip+0x201622]        # 201fb8 <memcmp@GLIBC_2.2.5>
 996:	68 07 00 00 00       	push   0x7
 99b:	e9 70 ff ff ff       	jmp    910 <.plt>

00000000000009a0 <signal@plt>:
 9a0:	ff 25 1a 16 20 00    	jmp    QWORD PTR [rip+0x20161a]        # 201fc0 <signal@GLIBC_2.2.5>
 9a6:	68 08 00 00 00       	push   0x8
 9ab:	e9 60 ff ff ff       	jmp    910 <.plt>

00000000000009b0 <setvbuf@plt>:
 9b0:	ff 25 12 16 20 00    	jmp    QWORD PTR [rip+0x201612]        # 201fc8 <setvbuf@GLIBC_2.2.5>
 9b6:	68 09 00 00 00       	push   0x9
 9bb:	e9 50 ff ff ff       	jmp    910 <.plt>

00000000000009c0 <atoi@plt>:
 9c0:	ff 25 0a 16 20 00    	jmp    QWORD PTR [rip+0x20160a]        # 201fd0 <atoi@GLIBC_2.2.5>
 9c6:	68 0a 00 00 00       	push   0xa
 9cb:	e9 40 ff ff ff       	jmp    910 <.plt>

Disassembly of section .plt.got:

00000000000009d0 <__cxa_finalize@plt>:
 9d0:	ff 25 22 16 20 00    	jmp    QWORD PTR [rip+0x201622]        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9d6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000009e0 <_start>:
     9e0:	31 ed                	xor    ebp,ebp
     9e2:	49 89 d1             	mov    r9,rdx
     9e5:	5e                   	pop    rsi
     9e6:	48 89 e2             	mov    rdx,rsp
     9e9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     9ed:	50                   	push   rax
     9ee:	54                   	push   rsp
     9ef:	4c 8d 05 ba 07 00 00 	lea    r8,[rip+0x7ba]        # 11b0 <__libc_csu_fini>
     9f6:	48 8d 0d 43 07 00 00 	lea    rcx,[rip+0x743]        # 1140 <__libc_csu_init>
     9fd:	48 8d 3d f7 05 00 00 	lea    rdi,[rip+0x5f7]        # ffb <main>
     a04:	ff 15 d6 15 20 00    	call   QWORD PTR [rip+0x2015d6]        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     a0a:	f4                   	hlt    
     a0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000a10 <deregister_tm_clones>:
     a10:	48 8d 3d 59 16 20 00 	lea    rdi,[rip+0x201659]        # 202070 <__TMC_END__>
     a17:	55                   	push   rbp
     a18:	48 8d 05 51 16 20 00 	lea    rax,[rip+0x201651]        # 202070 <__TMC_END__>
     a1f:	48 39 f8             	cmp    rax,rdi
     a22:	48 89 e5             	mov    rbp,rsp
     a25:	74 19                	je     a40 <deregister_tm_clones+0x30>
     a27:	48 8b 05 aa 15 20 00 	mov    rax,QWORD PTR [rip+0x2015aa]        # 201fd8 <_ITM_deregisterTMCloneTable>
     a2e:	48 85 c0             	test   rax,rax
     a31:	74 0d                	je     a40 <deregister_tm_clones+0x30>
     a33:	5d                   	pop    rbp
     a34:	ff e0                	jmp    rax
     a36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a3d:	00 00 00 
     a40:	5d                   	pop    rbp
     a41:	c3                   	ret    
     a42:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a4d:	00 00 00 

0000000000000a50 <register_tm_clones>:
     a50:	48 8d 3d 19 16 20 00 	lea    rdi,[rip+0x201619]        # 202070 <__TMC_END__>
     a57:	48 8d 35 12 16 20 00 	lea    rsi,[rip+0x201612]        # 202070 <__TMC_END__>
     a5e:	55                   	push   rbp
     a5f:	48 29 fe             	sub    rsi,rdi
     a62:	48 89 e5             	mov    rbp,rsp
     a65:	48 c1 fe 03          	sar    rsi,0x3
     a69:	48 89 f0             	mov    rax,rsi
     a6c:	48 c1 e8 3f          	shr    rax,0x3f
     a70:	48 01 c6             	add    rsi,rax
     a73:	48 d1 fe             	sar    rsi,1
     a76:	74 18                	je     a90 <register_tm_clones+0x40>
     a78:	48 8b 05 71 15 20 00 	mov    rax,QWORD PTR [rip+0x201571]        # 201ff0 <_ITM_registerTMCloneTable>
     a7f:	48 85 c0             	test   rax,rax
     a82:	74 0c                	je     a90 <register_tm_clones+0x40>
     a84:	5d                   	pop    rbp
     a85:	ff e0                	jmp    rax
     a87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     a8e:	00 00 
     a90:	5d                   	pop    rbp
     a91:	c3                   	ret    
     a92:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a9d:	00 00 00 

0000000000000aa0 <__do_global_dtors_aux>:
     aa0:	80 3d 01 16 20 00 00 	cmp    BYTE PTR [rip+0x201601],0x0        # 2020a8 <completed.7697>
     aa7:	75 2f                	jne    ad8 <__do_global_dtors_aux+0x38>
     aa9:	48 83 3d 47 15 20 00 	cmp    QWORD PTR [rip+0x201547],0x0        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     ab0:	00 
     ab1:	55                   	push   rbp
     ab2:	48 89 e5             	mov    rbp,rsp
     ab5:	74 0c                	je     ac3 <__do_global_dtors_aux+0x23>
     ab7:	48 8b 3d 4a 15 20 00 	mov    rdi,QWORD PTR [rip+0x20154a]        # 202008 <__dso_handle>
     abe:	e8 0d ff ff ff       	call   9d0 <__cxa_finalize@plt>
     ac3:	e8 48 ff ff ff       	call   a10 <deregister_tm_clones>
     ac8:	c6 05 d9 15 20 00 01 	mov    BYTE PTR [rip+0x2015d9],0x1        # 2020a8 <completed.7697>
     acf:	5d                   	pop    rbp
     ad0:	c3                   	ret    
     ad1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     ad8:	f3 c3                	repz ret 
     ada:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000ae0 <frame_dummy>:
     ae0:	55                   	push   rbp
     ae1:	48 89 e5             	mov    rbp,rsp
     ae4:	5d                   	pop    rbp
     ae5:	e9 66 ff ff ff       	jmp    a50 <register_tm_clones>

0000000000000aea <handler>:
     aea:	55                   	push   rbp
     aeb:	48 89 e5             	mov    rbp,rsp
     aee:	48 83 ec 20          	sub    rsp,0x20
     af2:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
     af5:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
     afc:	eb 28                	jmp    b26 <handler+0x3c>
     afe:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
     b01:	48 98                	cdqe   
     b03:	48 c1 e0 04          	shl    rax,0x4
     b07:	48 89 c2             	mov    rdx,rax
     b0a:	48 8d 05 b7 15 20 00 	lea    rax,[rip+0x2015b7]        # 2020c8 <candidates+0x8>
     b11:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     b15:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
     b19:	38 45 f7             	cmp    BYTE PTR [rbp-0x9],al
     b1c:	0f 43 c2             	cmovae eax,edx
     b1f:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
     b22:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
     b26:	83 7d f8 09          	cmp    DWORD PTR [rbp-0x8],0x9
     b2a:	7e d2                	jle    afe <handler+0x14>
     b2c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
     b33:	eb 4d                	jmp    b82 <handler+0x98>
     b35:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b38:	48 98                	cdqe   
     b3a:	48 c1 e0 04          	shl    rax,0x4
     b3e:	48 89 c2             	mov    rdx,rax
     b41:	48 8d 05 80 15 20 00 	lea    rax,[rip+0x201580]        # 2020c8 <candidates+0x8>
     b48:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     b4c:	38 45 f7             	cmp    BYTE PTR [rbp-0x9],al
     b4f:	75 2d                	jne    b7e <handler+0x94>
     b51:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b54:	48 98                	cdqe   
     b56:	48 c1 e0 04          	shl    rax,0x4
     b5a:	48 89 c2             	mov    rdx,rax
     b5d:	48 8d 05 5c 15 20 00 	lea    rax,[rip+0x20155c]        # 2020c0 <candidates>
     b64:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     b68:	48 89 c6             	mov    rsi,rax
     b6b:	48 8d 3d ae 06 00 00 	lea    rdi,[rip+0x6ae]        # 1220 <_IO_stdin_used+0x60>
     b72:	b8 00 00 00 00       	mov    eax,0x0
     b77:	e8 e4 fd ff ff       	call   960 <printf@plt>
     b7c:	eb 0a                	jmp    b88 <handler+0x9e>
     b7e:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
     b82:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
     b86:	7e ad                	jle    b35 <handler+0x4b>
     b88:	bf 01 00 00 00       	mov    edi,0x1
     b8d:	e8 8e fd ff ff       	call   920 <_exit@plt>

0000000000000b92 <read_int>:
     b92:	55                   	push   rbp
     b93:	48 89 e5             	mov    rbp,rsp
     b96:	48 83 ec 20          	sub    rsp,0x20
     b9a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     ba1:	00 00 
     ba3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     ba7:	31 c0                	xor    eax,eax
     ba9:	48 8d 45 e0          	lea    rax,[rbp-0x20]
     bad:	b9 10 00 00 00       	mov    ecx,0x10
     bb2:	ba 0f 00 00 00       	mov    edx,0xf
     bb7:	48 89 c6             	mov    rsi,rax
     bba:	bf 00 00 00 00       	mov    edi,0x0
     bbf:	b8 00 00 00 00       	mov    eax,0x0
     bc4:	e8 67 fd ff ff       	call   930 <__read_chk@plt>
     bc9:	48 8d 45 e0          	lea    rax,[rbp-0x20]
     bcd:	48 89 c7             	mov    rdi,rax
     bd0:	e8 eb fd ff ff       	call   9c0 <atoi@plt>
     bd5:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
     bd9:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
     be0:	00 00 
     be2:	74 05                	je     be9 <read_int+0x57>
     be4:	e8 67 fd ff ff       	call   950 <__stack_chk_fail@plt>
     be9:	c9                   	leave  
     bea:	c3                   	ret    

0000000000000beb <init>:
     beb:	55                   	push   rbp
     bec:	48 89 e5             	mov    rbp,rsp
     bef:	48 8b 05 8a 14 20 00 	mov    rax,QWORD PTR [rip+0x20148a]        # 202080 <stdout@@GLIBC_2.2.5>
     bf6:	b9 00 00 00 00       	mov    ecx,0x0
     bfb:	ba 02 00 00 00       	mov    edx,0x2
     c00:	be 00 00 00 00       	mov    esi,0x0
     c05:	48 89 c7             	mov    rdi,rax
     c08:	e8 a3 fd ff ff       	call   9b0 <setvbuf@plt>
     c0d:	48 8b 05 7c 14 20 00 	mov    rax,QWORD PTR [rip+0x20147c]        # 202090 <stdin@@GLIBC_2.2.5>
     c14:	b9 00 00 00 00       	mov    ecx,0x0
     c19:	ba 02 00 00 00       	mov    edx,0x2
     c1e:	be 00 00 00 00       	mov    esi,0x0
     c23:	48 89 c7             	mov    rdi,rax
     c26:	e8 85 fd ff ff       	call   9b0 <setvbuf@plt>
     c2b:	48 8b 05 6e 14 20 00 	mov    rax,QWORD PTR [rip+0x20146e]        # 2020a0 <stderr@@GLIBC_2.2.5>
     c32:	b9 00 00 00 00       	mov    ecx,0x0
     c37:	ba 02 00 00 00       	mov    edx,0x2
     c3c:	be 00 00 00 00       	mov    esi,0x0
     c41:	48 89 c7             	mov    rdi,rax
     c44:	e8 67 fd ff ff       	call   9b0 <setvbuf@plt>
     c49:	48 8d 35 9a fe ff ff 	lea    rsi,[rip+0xfffffffffffffe9a]        # aea <handler>
     c50:	bf 0e 00 00 00       	mov    edi,0xe
     c55:	e8 46 fd ff ff       	call   9a0 <signal@plt>
     c5a:	bf b4 00 00 00       	mov    edi,0xb4
     c5f:	e8 0c fd ff ff       	call   970 <alarm@plt>
     c64:	90                   	nop
     c65:	5d                   	pop    rbp
     c66:	c3                   	ret    

0000000000000c67 <banner>:
     c67:	55                   	push   rbp
     c68:	48 89 e5             	mov    rbp,rsp
     c6b:	48 8d 3d c6 05 00 00 	lea    rdi,[rip+0x5c6]        # 1238 <_IO_stdin_used+0x78>
     c72:	e8 c9 fc ff ff       	call   940 <puts@plt>
     c77:	48 8d 3d ea 05 00 00 	lea    rdi,[rip+0x5ea]        # 1268 <_IO_stdin_used+0xa8>
     c7e:	e8 bd fc ff ff       	call   940 <puts@plt>
     c83:	48 8d 3d ae 05 00 00 	lea    rdi,[rip+0x5ae]        # 1238 <_IO_stdin_used+0x78>
     c8a:	e8 b1 fc ff ff       	call   940 <puts@plt>
     c8f:	90                   	nop
     c90:	5d                   	pop    rbp
     c91:	c3                   	ret    

0000000000000c92 <welcome>:
     c92:	55                   	push   rbp
     c93:	48 89 e5             	mov    rbp,rsp
     c96:	b8 00 00 00 00       	mov    eax,0x0
     c9b:	e8 c7 ff ff ff       	call   c67 <banner>
     ca0:	48 8d 3d ef 05 00 00 	lea    rdi,[rip+0x5ef]        # 1296 <_IO_stdin_used+0xd6>
     ca7:	e8 94 fc ff ff       	call   940 <puts@plt>
     cac:	48 8d 3d ec 05 00 00 	lea    rdi,[rip+0x5ec]        # 129f <_IO_stdin_used+0xdf>
     cb3:	e8 88 fc ff ff       	call   940 <puts@plt>
     cb8:	48 8d 3d ec 05 00 00 	lea    rdi,[rip+0x5ec]        # 12ab <_IO_stdin_used+0xeb>
     cbf:	e8 7c fc ff ff       	call   940 <puts@plt>
     cc4:	48 8d 3d e8 05 00 00 	lea    rdi,[rip+0x5e8]        # 12b3 <_IO_stdin_used+0xf3>
     ccb:	e8 70 fc ff ff       	call   940 <puts@plt>
     cd0:	90                   	nop
     cd1:	5d                   	pop    rbp
     cd2:	c3                   	ret    

0000000000000cd3 <init_candidates>:
     cd3:	55                   	push   rbp
     cd4:	48 89 e5             	mov    rbp,rsp
     cd7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
     cde:	eb 4a                	jmp    d2a <init_candidates+0x57>
     ce0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     ce3:	48 98                	cdqe   
     ce5:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     cec:	00 
     ced:	48 8d 05 2c 13 20 00 	lea    rax,[rip+0x20132c]        # 202020 <candidates_name>
     cf4:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
     cf8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cfb:	48 98                	cdqe   
     cfd:	48 c1 e0 04          	shl    rax,0x4
     d01:	48 89 c1             	mov    rcx,rax
     d04:	48 8d 05 b5 13 20 00 	lea    rax,[rip+0x2013b5]        # 2020c0 <candidates>
     d0b:	48 89 14 01          	mov    QWORD PTR [rcx+rax*1],rdx
     d0f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d12:	48 98                	cdqe   
     d14:	48 c1 e0 04          	shl    rax,0x4
     d18:	48 89 c2             	mov    rdx,rax
     d1b:	48 8d 05 a6 13 20 00 	lea    rax,[rip+0x2013a6]        # 2020c8 <candidates+0x8>
     d22:	c6 04 02 00          	mov    BYTE PTR [rdx+rax*1],0x0
     d26:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
     d2a:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
     d2e:	7e b0                	jle    ce0 <init_candidates+0xd>
     d30:	90                   	nop
     d31:	5d                   	pop    rbp
     d32:	c3                   	ret    

0000000000000d33 <menu>:
     d33:	55                   	push   rbp
     d34:	48 89 e5             	mov    rbp,rsp
     d37:	b8 00 00 00 00       	mov    eax,0x0
     d3c:	e8 26 ff ff ff       	call   c67 <banner>
     d41:	48 8d 3d 6d 05 00 00 	lea    rdi,[rip+0x56d]        # 12b5 <_IO_stdin_used+0xf5>
     d48:	e8 f3 fb ff ff       	call   940 <puts@plt>
     d4d:	48 8d 3d 6c 05 00 00 	lea    rdi,[rip+0x56c]        # 12c0 <_IO_stdin_used+0x100>
     d54:	e8 e7 fb ff ff       	call   940 <puts@plt>
     d59:	48 8d 3d 89 05 00 00 	lea    rdi,[rip+0x589]        # 12e9 <_IO_stdin_used+0x129>
     d60:	e8 db fb ff ff       	call   940 <puts@plt>
     d65:	48 8d 3d 47 05 00 00 	lea    rdi,[rip+0x547]        # 12b3 <_IO_stdin_used+0xf3>
     d6c:	e8 cf fb ff ff       	call   940 <puts@plt>
     d71:	90                   	nop
     d72:	5d                   	pop    rbp
     d73:	c3                   	ret    

0000000000000d74 <voting>:
     d74:	55                   	push   rbp
     d75:	48 89 e5             	mov    rbp,rsp
     d78:	48 81 ec 00 01 00 00 	sub    rsp,0x100
     d7f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     d86:	00 00 
     d88:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     d8c:	31 c0                	xor    eax,eax
     d8e:	b8 00 00 00 00       	mov    eax,0x0
     d93:	e8 9b ff ff ff       	call   d33 <menu>
     d98:	b8 00 00 00 00       	mov    eax,0x0
     d9d:	e8 f0 fd ff ff       	call   b92 <read_int>
     da2:	89 85 08 ff ff ff    	mov    DWORD PTR [rbp-0xf8],eax
     da8:	8b 85 08 ff ff ff    	mov    eax,DWORD PTR [rbp-0xf8]
     dae:	83 f8 02             	cmp    eax,0x2
     db1:	0f 84 61 01 00 00    	je     f18 <voting+0x1a4>
     db7:	83 f8 03             	cmp    eax,0x3
     dba:	0f 84 24 02 00 00    	je     fe4 <voting+0x270>
     dc0:	83 f8 01             	cmp    eax,0x1
     dc3:	0f 85 09 02 00 00    	jne    fd2 <voting+0x25e>
     dc9:	8b 05 dd 12 20 00    	mov    eax,DWORD PTR [rip+0x2012dd]        # 2020ac <vote>
     dcf:	85 c0                	test   eax,eax
     dd1:	75 11                	jne    de4 <voting+0x70>
     dd3:	48 8d 3d 19 05 00 00 	lea    rdi,[rip+0x519]        # 12f3 <_IO_stdin_used+0x133>
     dda:	e8 61 fb ff ff       	call   940 <puts@plt>
     ddf:	e9 fb 01 00 00       	jmp    fdf <voting+0x26b>
     de4:	48 8d 3d 24 05 00 00 	lea    rdi,[rip+0x524]        # 130f <_IO_stdin_used+0x14f>
     deb:	e8 50 fb ff ff       	call   940 <puts@plt>
     df0:	c7 85 04 ff ff ff 00 	mov    DWORD PTR [rbp-0xfc],0x0
     df7:	00 00 00 
     dfa:	eb 57                	jmp    e53 <voting+0xdf>
     dfc:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e02:	48 98                	cdqe   
     e04:	48 c1 e0 04          	shl    rax,0x4
     e08:	48 89 c2             	mov    rdx,rax
     e0b:	48 8d 05 b6 12 20 00 	lea    rax,[rip+0x2012b6]        # 2020c8 <candidates+0x8>
     e12:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     e16:	0f b6 c8             	movzx  ecx,al
     e19:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e1f:	48 98                	cdqe   
     e21:	48 c1 e0 04          	shl    rax,0x4
     e25:	48 89 c2             	mov    rdx,rax
     e28:	48 8d 05 91 12 20 00 	lea    rax,[rip+0x201291]        # 2020c0 <candidates>
     e2f:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
     e33:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e39:	89 c6                	mov    esi,eax
     e3b:	48 8d 3d d9 04 00 00 	lea    rdi,[rip+0x4d9]        # 131b <_IO_stdin_used+0x15b>
     e42:	b8 00 00 00 00       	mov    eax,0x0
     e47:	e8 14 fb ff ff       	call   960 <printf@plt>
     e4c:	83 85 04 ff ff ff 01 	add    DWORD PTR [rbp-0xfc],0x1
     e53:	83 bd 04 ff ff ff 09 	cmp    DWORD PTR [rbp-0xfc],0x9
     e5a:	7e a0                	jle    dfc <voting+0x88>
     e5c:	48 8d 3d ca 04 00 00 	lea    rdi,[rip+0x4ca]        # 132d <_IO_stdin_used+0x16d>
     e63:	b8 00 00 00 00       	mov    eax,0x0
     e68:	e8 f3 fa ff ff       	call   960 <printf@plt>
     e6d:	b8 00 00 00 00       	mov    eax,0x0
     e72:	e8 1b fd ff ff       	call   b92 <read_int>
     e77:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
     e7d:	83 bd 0c ff ff ff 00 	cmp    DWORD PTR [rbp-0xf4],0x0
     e84:	78 09                	js     e8f <voting+0x11b>
     e86:	83 bd 0c ff ff ff 09 	cmp    DWORD PTR [rbp-0xf4],0x9
     e8d:	7e 11                	jle    ea0 <voting+0x12c>
     e8f:	48 8d 3d ab 04 00 00 	lea    rdi,[rip+0x4ab]        # 1341 <_IO_stdin_used+0x181>
     e96:	e8 a5 fa ff ff       	call   940 <puts@plt>
     e9b:	e9 3f 01 00 00       	jmp    fdf <voting+0x26b>
     ea0:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     ea6:	48 98                	cdqe   
     ea8:	48 c1 e0 04          	shl    rax,0x4
     eac:	48 89 c2             	mov    rdx,rax
     eaf:	48 8d 05 12 12 20 00 	lea    rax,[rip+0x201212]        # 2020c8 <candidates+0x8>
     eb6:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     eba:	8d 48 01             	lea    ecx,[rax+0x1]
     ebd:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     ec3:	48 98                	cdqe   
     ec5:	48 c1 e0 04          	shl    rax,0x4
     ec9:	48 89 c2             	mov    rdx,rax
     ecc:	48 8d 05 f5 11 20 00 	lea    rax,[rip+0x2011f5]        # 2020c8 <candidates+0x8>
     ed3:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
     ed6:	8b 05 d0 11 20 00    	mov    eax,DWORD PTR [rip+0x2011d0]        # 2020ac <vote>
     edc:	83 e8 01             	sub    eax,0x1
     edf:	89 05 c7 11 20 00    	mov    DWORD PTR [rip+0x2011c7],eax        # 2020ac <vote>
     ee5:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     eeb:	48 98                	cdqe   
     eed:	48 c1 e0 04          	shl    rax,0x4
     ef1:	48 89 c2             	mov    rdx,rax
     ef4:	48 8d 05 c5 11 20 00 	lea    rax,[rip+0x2011c5]        # 2020c0 <candidates>
     efb:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     eff:	48 89 c6             	mov    rsi,rax
     f02:	48 8d 3d 48 04 00 00 	lea    rdi,[rip+0x448]        # 1351 <_IO_stdin_used+0x191>
     f09:	b8 00 00 00 00       	mov    eax,0x0
     f0e:	e8 4d fa ff ff       	call   960 <printf@plt>
     f13:	e9 c7 00 00 00       	jmp    fdf <voting+0x26b>
     f18:	48 8d 3d 49 04 00 00 	lea    rdi,[rip+0x449]        # 1368 <_IO_stdin_used+0x1a8>
     f1f:	e8 1c fa ff ff       	call   940 <puts@plt>
     f24:	48 8d 3d 79 04 00 00 	lea    rdi,[rip+0x479]        # 13a4 <_IO_stdin_used+0x1e4>
     f2b:	b8 00 00 00 00       	mov    eax,0x0
     f30:	e8 2b fa ff ff       	call   960 <printf@plt>
     f35:	b8 00 00 00 00       	mov    eax,0x0
     f3a:	e8 53 fc ff ff       	call   b92 <read_int>
     f3f:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
     f45:	83 bd 0c ff ff ff 00 	cmp    DWORD PTR [rbp-0xf4],0x0
     f4c:	78 09                	js     f57 <voting+0x1e3>
     f4e:	83 bd 0c ff ff ff 09 	cmp    DWORD PTR [rbp-0xf4],0x9
     f55:	7e 0e                	jle    f65 <voting+0x1f1>
     f57:	48 8d 3d e3 03 00 00 	lea    rdi,[rip+0x3e3]        # 1341 <_IO_stdin_used+0x181>
     f5e:	e8 dd f9 ff ff       	call   940 <puts@plt>
     f63:	eb 7a                	jmp    fdf <voting+0x26b>
     f65:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     f6b:	48 98                	cdqe   
     f6d:	48 c1 e0 04          	shl    rax,0x4
     f71:	48 89 c2             	mov    rdx,rax
     f74:	48 8d 05 45 11 20 00 	lea    rax,[rip+0x201145]        # 2020c0 <candidates>
     f7b:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     f7f:	48 89 c6             	mov    rsi,rax
     f82:	48 8d 3d 26 04 00 00 	lea    rdi,[rip+0x426]        # 13af <_IO_stdin_used+0x1ef>
     f89:	b8 00 00 00 00       	mov    eax,0x0
     f8e:	e8 cd f9 ff ff       	call   960 <printf@plt>
     f93:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     f99:	48 98                	cdqe   
     f9b:	48 c1 e0 04          	shl    rax,0x4
     f9f:	48 89 c2             	mov    rdx,rax
     fa2:	48 8d 05 1f 11 20 00 	lea    rax,[rip+0x20111f]        # 2020c8 <candidates+0x8>
     fa9:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     fad:	0f b6 d0             	movzx  edx,al
     fb0:	48 8d 85 10 ff ff ff 	lea    rax,[rbp-0xf0]
     fb7:	48 89 c6             	mov    rsi,rax
   
     fba:	bf 00 00 00 00       	mov    edi,0x0
     fbf:	e8 bc f9 ff ff       	call   980 <read@plt>
     fc4:	48 8d 3d f5 03 00 00 	lea    rdi,[rip+0x3f5]        # 13c0 <_IO_stdin_used+0x200>
     fcb:	e8 70 f9 ff ff       	call   940 <puts@plt>
     fd0:	eb 0d                	jmp    fdf <voting+0x26b>
     fd2:	48 8d 3d ed 03 00 00 	lea    rdi,[rip+0x3ed]        # 13c6 <_IO_stdin_used+0x206>
     fd9:	e8 62 f9 ff ff       	call   940 <puts@plt>
     fde:	90                   	nop
     fdf:	e9 aa fd ff ff       	jmp    d8e <voting+0x1a>
     fe4:	90                   	nop
     fe5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     fe9:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
     ff0:	00 00 
     ff2:	74 05                	je     ff9 <voting+0x285>
     ff4:	e8 57 f9 ff ff       	call   950 <__stack_chk_fail@plt>
     ff9:	c9                   	leave  
     ffa:	c3                   	ret    

0000000000000ffb <main>:
     ffb:	55                   	push   rbp
     ffc:	48 89 e5             	mov    rbp,rsp
     fff:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
    1006:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    100d:	00 00 
    100f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1013:	31 c0                	xor    eax,eax
    1015:	b8 00 00 00 00       	mov    eax,0x0
    101a:	e8 cc fb ff ff       	call   beb <init>
    101f:	b8 00 00 00 00       	mov    eax,0x0
    1024:	e8 aa fc ff ff       	call   cd3 <init_candidates>
    1029:	48 8d 95 40 ff ff ff 	lea    rdx,[rbp-0xc0]
    1030:	b8 00 00 00 00       	mov    eax,0x0
    1035:	b9 17 00 00 00       	mov    ecx,0x17
    103a:	48 89 d7             	mov    rdi,rdx
    103d:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    1040:	b8 00 00 00 00       	mov    eax,0x0
    1045:	e8 48 fc ff ff       	call   c92 <welcome>
    104a:	b8 00 00 00 00       	mov    eax,0x0
    104f:	e8 3e fb ff ff       	call   b92 <read_int>
    1054:	89 85 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],eax
    105a:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
    1060:	83 f8 02             	cmp    eax,0x2
    1063:	74 79                	je     10de <main+0xe3>
    1065:	83 f8 03             	cmp    eax,0x3
    1068:	0f 84 b2 00 00 00    	je     1120 <main+0x125>
    106e:	83 f8 01             	cmp    eax,0x1
    1071:	0f 85 b5 00 00 00    	jne    112c <main+0x131>
    1077:	48 8d 3d 4b 03 00 00 	lea    rdi,[rip+0x34b]        # 13c9 <_IO_stdin_used+0x209>
    107e:	b8 00 00 00 00       	mov    eax,0x0
    1083:	e8 d8 f8 ff ff       	call   960 <printf@plt>
    1088:	ba c8 00 00 00       	mov    edx,0xc8
    108d:	48 8d 35 cc 10 20 00 	lea    rsi,[rip+0x2010cc]        # 202160 <buf>
    1094:	bf 00 00 00 00       	mov    edi,0x0
    1099:	e8 e2 f8 ff ff       	call   980 <read@plt>
    109e:	89 85 3c ff ff ff    	mov    DWORD PTR [rbp-0xc4],eax
    10a4:	8b 95 3c ff ff ff    	mov    edx,DWORD PTR [rbp-0xc4]
    10aa:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
    10b1:	48 89 c6             	mov    rsi,rax
    10b4:	48 8d 3d a5 10 20 00 	lea    rdi,[rip+0x2010a5]        # 202160 <buf>
    10bb:	e8 d0 f8 ff ff       	call   990 <memcmp@plt>
    10c0:	85 c0                	test   eax,eax
    10c2:	74 0e                	je     10d2 <main+0xd7>
    10c4:	48 8d 3d 06 03 00 00 	lea    rdi,[rip+0x306]        # 13d1 <_IO_stdin_used+0x211>
    10cb:	e8 70 f8 ff ff       	call   940 <puts@plt>
    10d0:	eb 67                	jmp    1139 <main+0x13e>
    10d2:	b8 00 00 00 00       	mov    eax,0x0
    10d7:	e8 98 fc ff ff       	call   d74 <voting>
    10dc:	eb 5b                	jmp    1139 <main+0x13e>
    10de:	48 8d 3d fb 02 00 00 	lea    rdi,[rip+0x2fb]        # 13e0 <_IO_stdin_used+0x220>
    10e5:	b8 00 00 00 00       	mov    eax,0x0
    10ea:	e8 71 f8 ff ff       	call   960 <printf@plt>
    10ef:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
    10f6:	ba b8 00 00 00       	mov    edx,0xb8
    10fb:	48 89 c6             	mov    rsi,rax
    10fe:	bf 00 00 00 00       	mov    edi,0x0
    1103:	e8 78 f8 ff ff       	call   980 <read@plt>
    1108:	c7 05 9a 0f 20 00 0a 	mov    DWORD PTR [rip+0x200f9a],0xa        # 2020ac <vote>
    110f:	00 00 00 
    1112:	48 8d 3d a7 02 00 00 	lea    rdi,[rip+0x2a7]        # 13c0 <_IO_stdin_used+0x200>
    1119:	e8 22 f8 ff ff       	call   940 <puts@plt>
    111e:	eb 19                	jmp    1139 <main+0x13e>
    1120:	bf 00 00 00 00       	mov    edi,0x0
    1125:	e8 c0 f9 ff ff       	call   aea <handler>
    112a:	eb 0d                	jmp    1139 <main+0x13e>
    112c:	48 8d 3d 93 02 00 00 	lea    rdi,[rip+0x293]        # 13c6 <_IO_stdin_used+0x206>
    1133:	e8 08 f8 ff ff       	call   940 <puts@plt>
    1138:	90                   	nop
    1139:	e9 02 ff ff ff       	jmp    1040 <main+0x45>
    113e:	66 90                	xchg   ax,ax

0000000000001140 <__libc_csu_init>:
    1140:	41 57                	push   r15
    1142:	41 56                	push   r14
    1144:	49 89 d7             	mov    r15,rdx
    1147:	41 55                	push   r13
    1149:	41 54                	push   r12
    114b:	4c 8d 25 16 0c 20 00 	lea    r12,[rip+0x200c16]        # 201d68 <__frame_dummy_init_array_entry>
    1152:	55                   	push   rbp
    1153:	48 8d 2d 16 0c 20 00 	lea    rbp,[rip+0x200c16]        # 201d70 <__init_array_end>
    115a:	53                   	push   rbx
    115b:	41 89 fd             	mov    r13d,edi
    115e:	49 89 f6             	mov    r14,rsi
    1161:	4c 29 e5             	sub    rbp,r12
    1164:	48 83 ec 08          	sub    rsp,0x8
    1168:	48 c1 fd 03          	sar    rbp,0x3
    116c:	e8 7f f7 ff ff       	call   8f0 <_init>
    1171:	48 85 ed             	test   rbp,rbp
    1174:	74 20                	je     1196 <__libc_csu_init+0x56>
    1176:	31 db                	xor    ebx,ebx
    1178:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    117f:	00 
    1180:	4c 89 fa             	mov    rdx,r15
    1183:	4c 89 f6             	mov    rsi,r14
    1186:	44 89 ef             	mov    edi,r13d
    1189:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    118d:	48 83 c3 01          	add    rbx,0x1
    1191:	48 39 dd             	cmp    rbp,rbx
    1194:	75 ea                	jne    1180 <__libc_csu_init+0x40>
    1196:	48 83 c4 08          	add    rsp,0x8
    119a:	5b                   	pop    rbx
    119b:	5d                   	pop    rbp
    119c:	41 5c                	pop    r12
    119e:	41 5d                	pop    r13
    11a0:	41 5e                	pop    r14
    11a2:	41 5f                	pop    r15
    11a4:	c3                   	ret    
    11a5:	90                   	nop
    11a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11ad:	00 00 00 

00000000000011b0 <__libc_csu_fini>:
    11b0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000000011b4 <_fini>:
    11b4:	48 83 ec 08          	sub    rsp,0x8
    11b8:	48 83 c4 08          	add    rsp,0x8
    11bc:	c3                   	ret    
