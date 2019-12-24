
./note++:     file format elf64-x86-64


Disassembly of section .init:

0000000000000828 <_init>:
 828:	48 83 ec 08          	sub    rsp,0x8
 82c:	48 8b 05 b5 17 20 00 	mov    rax,QWORD PTR [rip+0x2017b5]        # 201fe8 <_GLOBAL_OFFSET_TABLE_+0x80>
 833:	48 85 c0             	test   rax,rax
 836:	74 02                	je     83a <_init+0x12>
 838:	ff d0                	call   rax
 83a:	48 83 c4 08          	add    rsp,0x8
 83e:	c3                   	ret    

Disassembly of section .plt:

0000000000000840 <free@plt-0x10>:
 840:	ff 35 2a 17 20 00    	push   QWORD PTR [rip+0x20172a]        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x8>
 846:	ff 25 2c 17 20 00    	jmp    QWORD PTR [rip+0x20172c]        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x10>
 84c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000850 <free@plt>:
 850:	ff 25 2a 17 20 00    	jmp    QWORD PTR [rip+0x20172a]        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x18>
 856:	68 00 00 00 00       	push   0x0
 85b:	e9 e0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000860 <_exit@plt>:
 860:	ff 25 22 17 20 00    	jmp    QWORD PTR [rip+0x201722]        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x20>
 866:	68 01 00 00 00       	push   0x1
 86b:	e9 d0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000870 <__read_chk@plt>:
 870:	ff 25 1a 17 20 00    	jmp    QWORD PTR [rip+0x20171a]        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x28>
 876:	68 02 00 00 00       	push   0x2
 87b:	e9 c0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000880 <puts@plt>:
 880:	ff 25 12 17 20 00    	jmp    QWORD PTR [rip+0x201712]        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x30>
 886:	68 03 00 00 00       	push   0x3
 88b:	e9 b0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000890 <__stack_chk_fail@plt>:
 890:	ff 25 0a 17 20 00    	jmp    QWORD PTR [rip+0x20170a]        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x38>
 896:	68 04 00 00 00       	push   0x4
 89b:	e9 a0 ff ff ff       	jmp    840 <_init+0x18>

00000000000008a0 <printf@plt>:
 8a0:	ff 25 02 17 20 00    	jmp    QWORD PTR [rip+0x201702]        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x40>
 8a6:	68 05 00 00 00       	push   0x5
 8ab:	e9 90 ff ff ff       	jmp    840 <_init+0x18>

00000000000008b0 <memset@plt>:
 8b0:	ff 25 fa 16 20 00    	jmp    QWORD PTR [rip+0x2016fa]        # 201fb0 <_GLOBAL_OFFSET_TABLE_+0x48>
 8b6:	68 06 00 00 00       	push   0x6
 8bb:	e9 80 ff ff ff       	jmp    840 <_init+0x18>

00000000000008c0 <malloc@plt>:
 8c0:	ff 25 f2 16 20 00    	jmp    QWORD PTR [rip+0x2016f2]        # 201fb8 <_GLOBAL_OFFSET_TABLE_+0x50>
 8c6:	68 07 00 00 00       	push   0x7
 8cb:	e9 70 ff ff ff       	jmp    840 <_init+0x18>

00000000000008d0 <setvbuf@plt>:
 8d0:	ff 25 ea 16 20 00    	jmp    QWORD PTR [rip+0x2016ea]        # 201fc0 <_GLOBAL_OFFSET_TABLE_+0x58>
 8d6:	68 08 00 00 00       	push   0x8
 8db:	e9 60 ff ff ff       	jmp    840 <_init+0x18>

00000000000008e0 <atoi@plt>:
 8e0:	ff 25 e2 16 20 00    	jmp    QWORD PTR [rip+0x2016e2]        # 201fc8 <_GLOBAL_OFFSET_TABLE_+0x60>
 8e6:	68 09 00 00 00       	push   0x9
 8eb:	e9 50 ff ff ff       	jmp    840 <_init+0x18>

00000000000008f0 <__isoc99_scanf@plt>:
 8f0:	ff 25 da 16 20 00    	jmp    QWORD PTR [rip+0x2016da]        # 201fd0 <_GLOBAL_OFFSET_TABLE_+0x68>
 8f6:	68 0a 00 00 00       	push   0xa
 8fb:	e9 40 ff ff ff       	jmp    840 <_init+0x18>

Disassembly of section .plt.got:

0000000000000900 <.plt.got>:
 900:	ff 25 f2 16 20 00    	jmp    QWORD PTR [rip+0x2016f2]        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x90>
 906:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000910 <_start>:
 910:	31 ed                	xor    ebp,ebp
 912:	49 89 d1             	mov    r9,rdx
 915:	5e                   	pop    rsi
 916:	48 89 e2             	mov    rdx,rsp
 919:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 91d:	50                   	push   rax
 91e:	54                   	push   rsp
 91f:	4c 8d 05 4a 06 00 00 	lea    r8,[rip+0x64a]        # f70 <__libc_csu_fini>
 926:	48 8d 0d d3 05 00 00 	lea    rcx,[rip+0x5d3]        # f00 <__libc_csu_init>
 92d:	48 8d 3d 5e 05 00 00 	lea    rdi,[rip+0x55e]        # e92 <main>
 934:	ff 15 a6 16 20 00    	call   QWORD PTR [rip+0x2016a6]        # 201fe0 <_GLOBAL_OFFSET_TABLE_+0x78>
 93a:	f4                   	hlt    
 93b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000940 <deregister_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    rdi,[rip+0x2016c9]        # 202010 <__TMC_END__>
 947:	55                   	push   rbp
 948:	48 8d 05 c1 16 20 00 	lea    rax,[rip+0x2016c1]        # 202010 <__TMC_END__>
 94f:	48 39 f8             	cmp    rax,rdi
 952:	48 89 e5             	mov    rbp,rsp
 955:	74 19                	je     970 <deregister_tm_clones+0x30>
 957:	48 8b 05 7a 16 20 00 	mov    rax,QWORD PTR [rip+0x20167a]        # 201fd8 <_GLOBAL_OFFSET_TABLE_+0x70>
 95e:	48 85 c0             	test   rax,rax
 961:	74 0d                	je     970 <deregister_tm_clones+0x30>
 963:	5d                   	pop    rbp
 964:	ff e0                	jmp    rax
 966:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 96d:	00 00 00 
 970:	5d                   	pop    rbp
 971:	c3                   	ret    
 972:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 976:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 97d:	00 00 00 

0000000000000980 <register_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    rdi,[rip+0x201689]        # 202010 <__TMC_END__>
 987:	48 8d 35 82 16 20 00 	lea    rsi,[rip+0x201682]        # 202010 <__TMC_END__>
 98e:	55                   	push   rbp
 98f:	48 29 fe             	sub    rsi,rdi
 992:	48 89 e5             	mov    rbp,rsp
 995:	48 c1 fe 03          	sar    rsi,0x3
 999:	48 89 f0             	mov    rax,rsi
 99c:	48 c1 e8 3f          	shr    rax,0x3f
 9a0:	48 01 c6             	add    rsi,rax
 9a3:	48 d1 fe             	sar    rsi,1
 9a6:	74 18                	je     9c0 <register_tm_clones+0x40>
 9a8:	48 8b 05 41 16 20 00 	mov    rax,QWORD PTR [rip+0x201641]        # 201ff0 <_GLOBAL_OFFSET_TABLE_+0x88>
 9af:	48 85 c0             	test   rax,rax
 9b2:	74 0c                	je     9c0 <register_tm_clones+0x40>
 9b4:	5d                   	pop    rbp
 9b5:	ff e0                	jmp    rax
 9b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 9be:	00 00 
 9c0:	5d                   	pop    rbp
 9c1:	c3                   	ret    
 9c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 9c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 9cd:	00 00 00 

00000000000009d0 <__do_global_dtors_aux>:
 9d0:	80 3d 71 16 20 00 00 	cmp    BYTE PTR [rip+0x201671],0x0        # 202048 <completed.7697>
 9d7:	75 2f                	jne    a08 <__do_global_dtors_aux+0x38>
 9d9:	48 83 3d 17 16 20 00 	cmp    QWORD PTR [rip+0x201617],0x0        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x90>
 9e0:	00 
 9e1:	55                   	push   rbp
 9e2:	48 89 e5             	mov    rbp,rsp
 9e5:	74 0c                	je     9f3 <__do_global_dtors_aux+0x23>
 9e7:	48 8b 3d 1a 16 20 00 	mov    rdi,QWORD PTR [rip+0x20161a]        # 202008 <__dso_handle>
 9ee:	e8 0d ff ff ff       	call   900 <__isoc99_scanf@plt+0x10>
 9f3:	e8 48 ff ff ff       	call   940 <deregister_tm_clones>
 9f8:	c6 05 49 16 20 00 01 	mov    BYTE PTR [rip+0x201649],0x1        # 202048 <completed.7697>
 9ff:	5d                   	pop    rbp
 a00:	c3                   	ret    
 a01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 a08:	f3 c3                	repz ret 
 a0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000a10 <frame_dummy>:
 a10:	55                   	push   rbp
 a11:	48 89 e5             	mov    rbp,rsp
 a14:	5d                   	pop    rbp
 a15:	e9 66 ff ff ff       	jmp    980 <register_tm_clones>

0000000000000a1a <init>:
 a1a:	55                   	push   rbp
 a1b:	48 89 e5             	mov    rbp,rsp
 a1e:	48 8b 05 fb 15 20 00 	mov    rax,QWORD PTR [rip+0x2015fb]        # 202020 <stdout@@GLIBC_2.2.5>
 a25:	b9 00 00 00 00       	mov    ecx,0x0
 a2a:	ba 02 00 00 00       	mov    edx,0x2
 a2f:	be 00 00 00 00       	mov    esi,0x0
 a34:	48 89 c7             	mov    rdi,rax
 a37:	e8 94 fe ff ff       	call   8d0 <setvbuf@plt>
 a3c:	48 8b 05 ed 15 20 00 	mov    rax,QWORD PTR [rip+0x2015ed]        # 202030 <stdin@@GLIBC_2.2.5>
 a43:	b9 00 00 00 00       	mov    ecx,0x0
 a48:	ba 02 00 00 00       	mov    edx,0x2
 a4d:	be 00 00 00 00       	mov    esi,0x0
 a52:	48 89 c7             	mov    rdi,rax
 a55:	e8 76 fe ff ff       	call   8d0 <setvbuf@plt>
 a5a:	48 8b 05 df 15 20 00 	mov    rax,QWORD PTR [rip+0x2015df]        # 202040 <stderr@@GLIBC_2.2.5>
 a61:	b9 00 00 00 00       	mov    ecx,0x0
 a66:	ba 02 00 00 00       	mov    edx,0x2
 a6b:	be 00 00 00 00       	mov    esi,0x0
 a70:	48 89 c7             	mov    rdi,rax
 a73:	e8 58 fe ff ff       	call   8d0 <setvbuf@plt>
 a78:	90                   	nop
 a79:	5d                   	pop    rbp
 a7a:	c3                   	ret    

0000000000000a7b <read_int>:
 a7b:	55                   	push   rbp
 a7c:	48 89 e5             	mov    rbp,rsp
 a7f:	48 83 ec 20          	sub    rsp,0x20
 a83:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 a8a:	00 00 
 a8c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a90:	31 c0                	xor    eax,eax
 a92:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 a96:	b9 10 00 00 00       	mov    ecx,0x10
 a9b:	ba 0f 00 00 00       	mov    edx,0xf
 aa0:	48 89 c6             	mov    rsi,rax
 aa3:	bf 00 00 00 00       	mov    edi,0x0
 aa8:	b8 00 00 00 00       	mov    eax,0x0
 aad:	e8 be fd ff ff       	call   870 <__read_chk@plt>
 ab2:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 ab6:	48 89 c7             	mov    rdi,rax
 ab9:	e8 22 fe ff ff       	call   8e0 <atoi@plt>
 abe:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 ac2:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
 ac9:	00 00 
 acb:	74 05                	je     ad2 <read_int+0x57>
 acd:	e8 be fd ff ff       	call   890 <__stack_chk_fail@plt>
 ad2:	c9                   	leave  
 ad3:	c3                   	ret    

0000000000000ad4 <read_input>:
 ad4:	55                   	push   rbp
 ad5:	48 89 e5             	mov    rbp,rsp
 ad8:	48 83 ec 20          	sub    rsp,0x20
 adc:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 ae0:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 ae3:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
 ae6:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
 ae9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 aed:	48 89 c6             	mov    rsi,rax
 af0:	bf 00 00 00 00       	mov    edi,0x0
 af5:	b8 00 00 00 00       	mov    eax,0x0
 afa:	e8 71 fd ff ff       	call   870 <__read_chk@plt>
 aff:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 b02:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
 b06:	7f 16                	jg     b1e <read_input+0x4a>
 b08:	48 8d 3d 79 04 00 00 	lea    rdi,[rip+0x479]        # f88 <_IO_stdin_used+0x8>
 b0f:	e8 6c fd ff ff       	call   880 <puts@plt>
 b14:	bf 01 00 00 00       	mov    edi,0x1
 b19:	e8 42 fd ff ff       	call   860 <_exit@plt>
 b1e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b21:	48 98                	cdqe   
 b23:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 b27:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 b2b:	48 01 d0             	add    rax,rdx
 b2e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 b31:	3c 0a                	cmp    al,0xa
 b33:	75 13                	jne    b48 <read_input+0x74>
 b35:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b38:	48 98                	cdqe   
 b3a:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 b3e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 b42:	48 01 d0             	add    rax,rdx
 b45:	c6 00 00             	mov    BYTE PTR [rax],0x0
 b48:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b4b:	c9                   	leave  
 b4c:	c3                   	ret    

0000000000000b4d <add>:
 b4d:	55                   	push   rbp
 b4e:	48 89 e5             	mov    rbp,rsp
 b51:	48 83 ec 10          	sub    rsp,0x10
 b55:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
 b5c:	e9 5b 01 00 00       	jmp    cbc <add+0x16f>
 b61:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 b64:	48 98                	cdqe   
 b66:	48 c1 e0 06          	shl    rax,0x6
 b6a:	48 89 c2             	mov    rdx,rax
 b6d:	48 8d 05 f4 14 20 00 	lea    rax,[rip+0x2014f4]        # 202068 <notes+0x8>
 b74:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 b78:	48 85 c0             	test   rax,rax
 b7b:	74 1e                	je     b9b <add+0x4e>
 b7d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 b80:	48 98                	cdqe   
 b82:	48 c1 e0 06          	shl    rax,0x6
 b86:	48 89 c2             	mov    rdx,rax
 b89:	48 8d 05 d0 14 20 00 	lea    rax,[rip+0x2014d0]        # 202060 <notes>
 b90:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 b93:	85 c0                	test   eax,eax
 b95:	0f 84 1d 01 00 00    	je     cb8 <add+0x16b>
 b9b:	48 8d 3d f1 03 00 00 	lea    rdi,[rip+0x3f1]        # f93 <_IO_stdin_used+0x13>
 ba2:	b8 00 00 00 00       	mov    eax,0x0
 ba7:	e8 f4 fc ff ff       	call   8a0 <printf@plt>
 bac:	b8 00 00 00 00       	mov    eax,0x0
 bb1:	e8 c5 fe ff ff       	call   a7b <read_int>
 bb6:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 bb9:	83 7d fc 78          	cmp    DWORD PTR [rbp-0x4],0x78
 bbd:	76 11                	jbe    bd0 <add+0x83>
 bbf:	48 8d 3d d4 03 00 00 	lea    rdi,[rip+0x3d4]        # f9a <_IO_stdin_used+0x1a>
 bc6:	e8 b5 fc ff ff       	call   880 <puts@plt>
 bcb:	e9 02 01 00 00       	jmp    cd2 <add+0x185>
 bd0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 bd3:	48 89 c7             	mov    rdi,rax
 bd6:	e8 e5 fc ff ff       	call   8c0 <malloc@plt>
 bdb:	48 89 c1             	mov    rcx,rax
 bde:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 be1:	48 98                	cdqe   
 be3:	48 c1 e0 06          	shl    rax,0x6
 be7:	48 89 c2             	mov    rdx,rax
 bea:	48 8d 05 77 14 20 00 	lea    rax,[rip+0x201477]        # 202068 <notes+0x8>
 bf1:	48 89 0c 02          	mov    QWORD PTR [rdx+rax*1],rcx
 bf5:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
 bf8:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 bfb:	48 98                	cdqe   
 bfd:	48 c1 e0 06          	shl    rax,0x6
 c01:	48 89 c1             	mov    rcx,rax
 c04:	48 8d 05 5d 14 20 00 	lea    rax,[rip+0x20145d]        # 202068 <notes+0x8>
 c0b:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
 c0f:	be 00 00 00 00       	mov    esi,0x0
 c14:	48 89 c7             	mov    rdi,rax
 c17:	e8 94 fc ff ff       	call   8b0 <memset@plt>
 c1c:	48 8d 3d 80 03 00 00 	lea    rdi,[rip+0x380]        # fa3 <_IO_stdin_used+0x23>
 c23:	b8 00 00 00 00       	mov    eax,0x0
 c28:	e8 73 fc ff ff       	call   8a0 <printf@plt>
 c2d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 c30:	8d 50 ff             	lea    edx,[rax-0x1]
 c33:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c36:	48 98                	cdqe   
 c38:	48 c1 e0 06          	shl    rax,0x6
 c3c:	48 89 c1             	mov    rcx,rax
 c3f:	48 8d 05 22 14 20 00 	lea    rax,[rip+0x201422]        # 202068 <notes+0x8>
 c46:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
 c4a:	89 d6                	mov    esi,edx
 c4c:	48 89 c7             	mov    rdi,rax
 c4f:	e8 80 fe ff ff       	call   ad4 <read_input>
 c54:	48 8d 3d 4f 03 00 00 	lea    rdi,[rip+0x34f]        # faa <_IO_stdin_used+0x2a>
 c5b:	b8 00 00 00 00       	mov    eax,0x0
 c60:	e8 3b fc ff ff       	call   8a0 <printf@plt>
 c65:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c68:	48 98                	cdqe   
 c6a:	48 c1 e0 06          	shl    rax,0x6
 c6e:	48 8d 50 10          	lea    rdx,[rax+0x10]
 c72:	48 8d 05 e7 13 20 00 	lea    rax,[rip+0x2013e7]        # 202060 <notes>
 c79:	48 01 d0             	add    rax,rdx
 c7c:	48 89 c6             	mov    rsi,rax
 c7f:	48 8d 3d 3f 03 00 00 	lea    rdi,[rip+0x33f]        # fc5 <_IO_stdin_used+0x45>
 c86:	b8 00 00 00 00       	mov    eax,0x0
 c8b:	e8 60 fc ff ff       	call   8f0 <__isoc99_scanf@plt>
 c90:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c93:	48 98                	cdqe   
 c95:	48 c1 e0 06          	shl    rax,0x6
 c99:	48 89 c2             	mov    rdx,rax
 c9c:	48 8d 05 bd 13 20 00 	lea    rax,[rip+0x2013bd]        # 202060 <notes>
 ca3:	c7 04 02 00 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x0
 caa:	48 8d 3d 19 03 00 00 	lea    rdi,[rip+0x319]        # fca <_IO_stdin_used+0x4a>
 cb1:	e8 ca fb ff ff       	call   880 <puts@plt>
 cb6:	eb 1a                	jmp    cd2 <add+0x185>
 cb8:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
 cbc:	83 7d f8 09          	cmp    DWORD PTR [rbp-0x8],0x9
 cc0:	0f 8e 9b fe ff ff    	jle    b61 <add+0x14>
 cc6:	48 8d 3d 03 03 00 00 	lea    rdi,[rip+0x303]        # fd0 <_IO_stdin_used+0x50>
 ccd:	e8 ae fb ff ff       	call   880 <puts@plt>
 cd2:	c9                   	leave  
 cd3:	c3                   	ret    

0000000000000cd4 <list>:
 cd4:	55                   	push   rbp
 cd5:	48 89 e5             	mov    rbp,rsp
 cd8:	48 83 ec 10          	sub    rsp,0x10
 cdc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 ce3:	eb 7f                	jmp    d64 <list+0x90>
 ce5:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 ce8:	48 98                	cdqe   
 cea:	48 c1 e0 06          	shl    rax,0x6
 cee:	48 89 c2             	mov    rdx,rax
 cf1:	48 8d 05 70 13 20 00 	lea    rax,[rip+0x201370]        # 202068 <notes+0x8>
 cf8:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 cfc:	48 85 c0             	test   rax,rax
 cff:	74 5f                	je     d60 <list+0x8c>
 d01:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d04:	48 98                	cdqe   
 d06:	48 c1 e0 06          	shl    rax,0x6
 d0a:	48 89 c2             	mov    rdx,rax
 d0d:	48 8d 05 4c 13 20 00 	lea    rax,[rip+0x20134c]        # 202060 <notes>
 d14:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 d17:	85 c0                	test   eax,eax
 d19:	75 45                	jne    d60 <list+0x8c>
 d1b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d1e:	48 98                	cdqe   
 d20:	48 c1 e0 06          	shl    rax,0x6
 d24:	48 8d 50 10          	lea    rdx,[rax+0x10]
 d28:	48 8d 05 31 13 20 00 	lea    rax,[rip+0x201331]        # 202060 <notes>
 d2f:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
 d33:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d36:	48 98                	cdqe   
 d38:	48 c1 e0 06          	shl    rax,0x6
 d3c:	48 89 c2             	mov    rdx,rax
 d3f:	48 8d 05 22 13 20 00 	lea    rax,[rip+0x201322]        # 202068 <notes+0x8>
 d46:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
 d4a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d4d:	89 c6                	mov    esi,eax
 d4f:	48 8d 3d 82 02 00 00 	lea    rdi,[rip+0x282]        # fd8 <_IO_stdin_used+0x58>
 d56:	b8 00 00 00 00       	mov    eax,0x0
 d5b:	e8 40 fb ff ff       	call   8a0 <printf@plt>
 d60:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 d64:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
 d68:	0f 8e 77 ff ff ff    	jle    ce5 <list+0x11>
 d6e:	48 8d 3d 83 02 00 00 	lea    rdi,[rip+0x283]        # ff8 <_IO_stdin_used+0x78>
 d75:	e8 06 fb ff ff       	call   880 <puts@plt>
 d7a:	90                   	nop
 d7b:	c9                   	leave  
 d7c:	c3                   	ret    

0000000000000d7d <delete>:
 d7d:	55                   	push   rbp
 d7e:	48 89 e5             	mov    rbp,rsp
 d81:	48 83 ec 10          	sub    rsp,0x10
 d85:	48 8d 3d 74 02 00 00 	lea    rdi,[rip+0x274]        # 1000 <_IO_stdin_used+0x80>
 d8c:	b8 00 00 00 00       	mov    eax,0x0
 d91:	e8 0a fb ff ff       	call   8a0 <printf@plt>
 d96:	b8 00 00 00 00       	mov    eax,0x0
 d9b:	e8 db fc ff ff       	call   a7b <read_int>
 da0:	48 98                	cdqe   
 da2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 da6:	48 83 7d f8 09       	cmp    QWORD PTR [rbp-0x8],0x9
 dab:	76 11                	jbe    dbe <delete+0x41>
 dad:	48 8d 3d 76 02 00 00 	lea    rdi,[rip+0x276]        # 102a <_IO_stdin_used+0xaa>
 db4:	e8 c7 fa ff ff       	call   880 <puts@plt>
 db9:	e9 8f 00 00 00       	jmp    e4d <delete+0xd0>
 dbe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 dc2:	48 c1 e0 06          	shl    rax,0x6
 dc6:	48 89 c2             	mov    rdx,rax
 dc9:	48 8d 05 98 12 20 00 	lea    rax,[rip+0x201298]        # 202068 <notes+0x8>
 dd0:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 dd4:	48 85 c0             	test   rax,rax
 dd7:	75 0e                	jne    de7 <delete+0x6a>
 dd9:	48 8d 3d 59 02 00 00 	lea    rdi,[rip+0x259]        # 1039 <_IO_stdin_used+0xb9>
 de0:	e8 9b fa ff ff       	call   880 <puts@plt>
 de5:	eb 66                	jmp    e4d <delete+0xd0>
 de7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 deb:	48 c1 e0 06          	shl    rax,0x6
 def:	48 89 c2             	mov    rdx,rax
 df2:	48 8d 05 67 12 20 00 	lea    rax,[rip+0x201267]        # 202060 <notes>
 df9:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 dfc:	85 c0                	test   eax,eax
 dfe:	74 16                	je     e16 <delete+0x99>
 e00:	48 8d 3d 40 02 00 00 	lea    rdi,[rip+0x240]        # 1047 <_IO_stdin_used+0xc7>
 e07:	e8 74 fa ff ff       	call   880 <puts@plt>
 e0c:	bf ff ff ff ff       	mov    edi,0xffffffff
 e11:	e8 4a fa ff ff       	call   860 <_exit@plt>
 e16:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 e1a:	48 c1 e0 06          	shl    rax,0x6
 e1e:	48 89 c2             	mov    rdx,rax
 e21:	48 8d 05 40 12 20 00 	lea    rax,[rip+0x201240]        # 202068 <notes+0x8>
 e28:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 e2c:	48 89 c7             	mov    rdi,rax
 e2f:	e8 1c fa ff ff       	call   850 <free@plt>
 e34:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 e38:	48 c1 e0 06          	shl    rax,0x6
 e3c:	48 89 c2             	mov    rdx,rax
 e3f:	48 8d 05 1a 12 20 00 	lea    rax,[rip+0x20121a]        # 202060 <notes>
 e46:	c7 04 02 01 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x1
 e4d:	c9                   	leave  
 e4e:	c3                   	ret    

0000000000000e4f <menu>:
 e4f:	55                   	push   rbp
 e50:	48 89 e5             	mov    rbp,rsp
 e53:	48 8d 3d 08 02 00 00 	lea    rdi,[rip+0x208]        # 1062 <_IO_stdin_used+0xe2>
 e5a:	e8 21 fa ff ff       	call   880 <puts@plt>
 e5f:	48 8d 3d 0a 02 00 00 	lea    rdi,[rip+0x20a]        # 1070 <_IO_stdin_used+0xf0>
 e66:	e8 15 fa ff ff       	call   880 <puts@plt>
 e6b:	48 8d 3d 0c 02 00 00 	lea    rdi,[rip+0x20c]        # 107e <_IO_stdin_used+0xfe>
 e72:	e8 09 fa ff ff       	call   880 <puts@plt>
 e77:	48 8d 3d 11 02 00 00 	lea    rdi,[rip+0x211]        # 108f <_IO_stdin_used+0x10f>
 e7e:	e8 fd f9 ff ff       	call   880 <puts@plt>
 e83:	48 8d 3d 0d 02 00 00 	lea    rdi,[rip+0x20d]        # 1097 <_IO_stdin_used+0x117>
 e8a:	e8 f1 f9 ff ff       	call   880 <puts@plt>
 e8f:	90                   	nop
 e90:	5d                   	pop    rbp
 e91:	c3                   	ret    

0000000000000e92 <main>:
 e92:	55                   	push   rbp
 e93:	48 89 e5             	mov    rbp,rsp
 e96:	48 83 ec 10          	sub    rsp,0x10
 e9a:	b8 00 00 00 00       	mov    eax,0x0
 e9f:	e8 76 fb ff ff       	call   a1a <init>
 ea4:	b8 00 00 00 00       	mov    eax,0x0
 ea9:	e8 a1 ff ff ff       	call   e4f <menu>
 eae:	b8 00 00 00 00       	mov    eax,0x0
 eb3:	e8 c3 fb ff ff       	call   a7b <read_int>
 eb8:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 ebb:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 ebe:	83 f8 02             	cmp    eax,0x2
 ec1:	74 16                	je     ed9 <main+0x47>
 ec3:	83 f8 03             	cmp    eax,0x3
 ec6:	74 1d                	je     ee5 <main+0x53>
 ec8:	83 f8 01             	cmp    eax,0x1
 ecb:	75 24                	jne    ef1 <main+0x5f>
 ecd:	b8 00 00 00 00       	mov    eax,0x0
 ed2:	e8 76 fc ff ff       	call   b4d <add>
 ed7:	eb 25                	jmp    efe <main+0x6c>
 ed9:	b8 00 00 00 00       	mov    eax,0x0
 ede:	e8 f1 fd ff ff       	call   cd4 <list>
 ee3:	eb 19                	jmp    efe <main+0x6c>
 ee5:	b8 00 00 00 00       	mov    eax,0x0
 eea:	e8 8e fe ff ff       	call   d7d <delete>
 eef:	eb 0d                	jmp    efe <main+0x6c>
 ef1:	48 8d 3d a2 01 00 00 	lea    rdi,[rip+0x1a2]        # 109a <_IO_stdin_used+0x11a>
 ef8:	e8 83 f9 ff ff       	call   880 <puts@plt>
 efd:	90                   	nop
 efe:	eb a4                	jmp    ea4 <main+0x12>

0000000000000f00 <__libc_csu_init>:
 f00:	41 57                	push   r15
 f02:	41 56                	push   r14
 f04:	49 89 d7             	mov    r15,rdx
 f07:	41 55                	push   r13
 f09:	41 54                	push   r12
 f0b:	4c 8d 25 56 0e 20 00 	lea    r12,[rip+0x200e56]        # 201d68 <__frame_dummy_init_array_entry>
 f12:	55                   	push   rbp
 f13:	48 8d 2d 56 0e 20 00 	lea    rbp,[rip+0x200e56]        # 201d70 <__init_array_end>
 f1a:	53                   	push   rbx
 f1b:	41 89 fd             	mov    r13d,edi
 f1e:	49 89 f6             	mov    r14,rsi
 f21:	4c 29 e5             	sub    rbp,r12
 f24:	48 83 ec 08          	sub    rsp,0x8
 f28:	48 c1 fd 03          	sar    rbp,0x3
 f2c:	e8 f7 f8 ff ff       	call   828 <_init>
 f31:	48 85 ed             	test   rbp,rbp
 f34:	74 20                	je     f56 <__libc_csu_init+0x56>
 f36:	31 db                	xor    ebx,ebx
 f38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 f3f:	00 
 f40:	4c 89 fa             	mov    rdx,r15
 f43:	4c 89 f6             	mov    rsi,r14
 f46:	44 89 ef             	mov    edi,r13d
 f49:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 f4d:	48 83 c3 01          	add    rbx,0x1
 f51:	48 39 dd             	cmp    rbp,rbx
 f54:	75 ea                	jne    f40 <__libc_csu_init+0x40>
 f56:	48 83 c4 08          	add    rsp,0x8
 f5a:	5b                   	pop    rbx
 f5b:	5d                   	pop    rbp
 f5c:	41 5c                	pop    r12
 f5e:	41 5d                	pop    r13
 f60:	41 5e                	pop    r14
 f62:	41 5f                	pop    r15
 f64:	c3                   	ret    
 f65:	90                   	nop
 f66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 f6d:	00 00 00 

0000000000000f70 <__libc_csu_fini>:
 f70:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000f74 <_fini>:
 f74:	48 83 ec 08          	sub    rsp,0x8
 f78:	48 83 c4 08          	add    rsp,0x8
 f7c:	c3                   	ret    
