
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe1]        # 403ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <__stack_chk_fail@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <__stack_chk_fail@GLIBC_2.4>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <printf@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <printf@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

Disassembly of section .text:

0000000000401050 <_start>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	31 ed                	xor    ebp,ebp
  401056:	49 89 d1             	mov    r9,rdx
  401059:	5e                   	pop    rsi
  40105a:	48 89 e2             	mov    rdx,rsp
  40105d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401061:	50                   	push   rax
  401062:	54                   	push   rsp
  401063:	49 c7 c0 00 12 40 00 	mov    r8,0x401200
  40106a:	48 c7 c1 90 11 40 00 	mov    rcx,0x401190
  401071:	48 c7 c7 36 11 40 00 	mov    rdi,0x401136
  401078:	ff 15 6a 2f 00 00    	call   QWORD PTR [rip+0x2f6a]        # 403fe8 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	ret    
  401085:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 40 40 00       	mov    eax,0x404038
  401095:	48 3d 38 40 40 00    	cmp    rax,0x404038
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	48 8b 05 3c 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f3c]        # 403fe0 <_ITM_deregisterTMCloneTable>
  4010a4:	48 85 c0             	test   rax,rax
  4010a7:	74 07                	je     4010b0 <deregister_tm_clones+0x20>
  4010a9:	bf 38 40 40 00       	mov    edi,0x404038
  4010ae:	ff e0                	jmp    rax
  4010b0:	c3                   	ret    
  4010b1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 40 40 00       	mov    esi,0x404038
  4010c5:	48 81 ee 38 40 40 00 	sub    rsi,0x404038
  4010cc:	48 89 f0             	mov    rax,rsi
  4010cf:	48 c1 ee 3f          	shr    rsi,0x3f
  4010d3:	48 c1 f8 03          	sar    rax,0x3
  4010d7:	48 01 c6             	add    rsi,rax
  4010da:	48 d1 fe             	sar    rsi,1
  4010dd:	74 19                	je     4010f8 <register_tm_clones+0x38>
  4010df:	48 8b 05 12 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f12]        # 403ff8 <_ITM_registerTMCloneTable>
  4010e6:	48 85 c0             	test   rax,rax
  4010e9:	74 0d                	je     4010f8 <register_tm_clones+0x38>
  4010eb:	bf 38 40 40 00       	mov    edi,0x404038
  4010f0:	ff e0                	jmp    rax
  4010f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4010f8:	c3                   	ret    
  4010f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 2d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f2d],0x0        # 404038 <__TMC_END__>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   rbp
  40110e:	48 89 e5             	mov    rbp,rsp
  401111:	e8 7a ff ff ff       	call   401090 <deregister_tm_clones>
  401116:	c6 05 1b 2f 00 00 01 	mov    BYTE PTR [rip+0x2f1b],0x1        # 404038 <__TMC_END__>
  40111d:	5d                   	pop    rbp
  40111e:	c3                   	ret    
  40111f:	90                   	nop
  401120:	c3                   	ret    
  401121:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401130 <frame_dummy>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	eb 8a                	jmp    4010c0 <register_tm_clones>

0000000000401136 <main>:
  401136:	55                   	push   rbp
  401137:	48 89 e5             	mov    rbp,rsp
  40113a:	48 83 ec 20          	sub    rsp,0x20
  40113e:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  401141:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  401145:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40114c:	00 00 
  40114e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401152:	31 c0                	xor    eax,eax
  401154:	c7 45 f4 14 00 00 00 	mov    DWORD PTR [rbp-0xc],0x14
  40115b:	48 8d 45 f4          	lea    rax,[rbp-0xc]
  40115f:	48 89 c6             	mov    rsi,rax
  401162:	48 8d 3d 9b 0e 00 00 	lea    rdi,[rip+0xe9b]        # 402004 <_IO_stdin_used+0x4>
  401169:	b8 00 00 00 00       	mov    eax,0x0
  40116e:	e8 cd fe ff ff       	call   401040 <printf@plt>
  401173:	b8 00 00 00 00       	mov    eax,0x0
  401178:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  40117c:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
  401183:	00 00 
  401185:	74 05                	je     40118c <main+0x56>
  401187:	e8 a4 fe ff ff       	call   401030 <__stack_chk_fail@plt>
  40118c:	c9                   	leave  
  40118d:	c3                   	ret    
  40118e:	66 90                	xchg   ax,ax

0000000000401190 <__libc_csu_init>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	41 57                	push   r15
  401196:	4c 8d 3d 63 2c 00 00 	lea    r15,[rip+0x2c63]        # 403e00 <__frame_dummy_init_array_entry>
  40119d:	41 56                	push   r14
  40119f:	49 89 d6             	mov    r14,rdx
  4011a2:	41 55                	push   r13
  4011a4:	49 89 f5             	mov    r13,rsi
  4011a7:	41 54                	push   r12
  4011a9:	41 89 fc             	mov    r12d,edi
  4011ac:	55                   	push   rbp
  4011ad:	48 8d 2d 54 2c 00 00 	lea    rbp,[rip+0x2c54]        # 403e08 <__init_array_end>
  4011b4:	53                   	push   rbx
  4011b5:	4c 29 fd             	sub    rbp,r15
  4011b8:	48 83 ec 08          	sub    rsp,0x8
  4011bc:	e8 3f fe ff ff       	call   401000 <_init>
  4011c1:	48 c1 fd 03          	sar    rbp,0x3
  4011c5:	74 1f                	je     4011e6 <__libc_csu_init+0x56>
  4011c7:	31 db                	xor    ebx,ebx
  4011c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4011d0:	4c 89 f2             	mov    rdx,r14
  4011d3:	4c 89 ee             	mov    rsi,r13
  4011d6:	44 89 e7             	mov    edi,r12d
  4011d9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  4011dd:	48 83 c3 01          	add    rbx,0x1
  4011e1:	48 39 dd             	cmp    rbp,rbx
  4011e4:	75 ea                	jne    4011d0 <__libc_csu_init+0x40>
  4011e6:	48 83 c4 08          	add    rsp,0x8
  4011ea:	5b                   	pop    rbx
  4011eb:	5d                   	pop    rbp
  4011ec:	41 5c                	pop    r12
  4011ee:	41 5d                	pop    r13
  4011f0:	41 5e                	pop    r14
  4011f2:	41 5f                	pop    r15
  4011f4:	c3                   	ret    
  4011f5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011fc:	00 00 00 00 

0000000000401200 <__libc_csu_fini>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	ret    

Disassembly of section .fini:

0000000000401208 <_fini>:
  401208:	f3 0f 1e fa          	endbr64 
  40120c:	48 83 ec 08          	sub    rsp,0x8
  401210:	48 83 c4 08          	add    rsp,0x8
  401214:	c3                   	ret    
