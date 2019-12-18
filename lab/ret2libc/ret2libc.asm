
ret2libc:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    rsp,0x8
  4004f4:	48 8b 05 fd 0a 20 00 	mov    rax,QWORD PTR [rip+0x200afd]        # 600ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   rax,rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	call   rax
  400502:	48 83 c4 08          	add    rsp,0x8
  400506:	c3                   	ret    

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 0a 20 00    	push   QWORD PTR [rip+0x200af2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmp    QWORD PTR [rip+0x200af4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400520 <puts@plt>:
  400520:	ff 25 f2 0a 20 00    	jmp    QWORD PTR [rip+0x200af2]        # 601018 <puts@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	push   0x0
  40052b:	e9 e0 ff ff ff       	jmp    400510 <.plt>

0000000000400530 <gets@plt>:
  400530:	ff 25 ea 0a 20 00    	jmp    QWORD PTR [rip+0x200aea]        # 601020 <gets@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	push   0x1
  40053b:	e9 d0 ff ff ff       	jmp    400510 <.plt>

0000000000400540 <setvbuf@plt>:
  400540:	ff 25 e2 0a 20 00    	jmp    QWORD PTR [rip+0x200ae2]        # 601028 <setvbuf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	push   0x2
  40054b:	e9 c0 ff ff ff       	jmp    400510 <.plt>

Disassembly of section .text:

0000000000400550 <_start>:
  400550:	31 ed                	xor    ebp,ebp
  400552:	49 89 d1             	mov    r9,rdx
  400555:	5e                   	pop    rsi
  400556:	48 89 e2             	mov    rdx,rsp
  400559:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40055d:	50                   	push   rax
  40055e:	54                   	push   rsp
  40055f:	49 c7 c0 40 07 40 00 	mov    r8,0x400740
  400566:	48 c7 c1 d0 06 40 00 	mov    rcx,0x4006d0
  40056d:	48 c7 c7 98 06 40 00 	mov    rdi,0x400698
  400574:	ff 15 76 0a 20 00    	call   QWORD PTR [rip+0x200a76]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40057a:	f4                   	hlt    
  40057b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400580 <_dl_relocate_static_pie>:
  400580:	f3 c3                	repz ret 
  400582:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400589:	00 00 00 
  40058c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400590 <deregister_tm_clones>:
  400590:	55                   	push   rbp
  400591:	b8 40 10 60 00       	mov    eax,0x601040
  400596:	48 3d 40 10 60 00    	cmp    rax,0x601040
  40059c:	48 89 e5             	mov    rbp,rsp
  40059f:	74 17                	je     4005b8 <deregister_tm_clones+0x28>
  4005a1:	b8 00 00 00 00       	mov    eax,0x0
  4005a6:	48 85 c0             	test   rax,rax
  4005a9:	74 0d                	je     4005b8 <deregister_tm_clones+0x28>
  4005ab:	5d                   	pop    rbp
  4005ac:	bf 40 10 60 00       	mov    edi,0x601040
  4005b1:	ff e0                	jmp    rax
  4005b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4005b8:	5d                   	pop    rbp
  4005b9:	c3                   	ret    
  4005ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004005c0 <register_tm_clones>:
  4005c0:	be 40 10 60 00       	mov    esi,0x601040
  4005c5:	55                   	push   rbp
  4005c6:	48 81 ee 40 10 60 00 	sub    rsi,0x601040
  4005cd:	48 89 e5             	mov    rbp,rsp
  4005d0:	48 c1 fe 03          	sar    rsi,0x3
  4005d4:	48 89 f0             	mov    rax,rsi
  4005d7:	48 c1 e8 3f          	shr    rax,0x3f
  4005db:	48 01 c6             	add    rsi,rax
  4005de:	48 d1 fe             	sar    rsi,1
  4005e1:	74 15                	je     4005f8 <register_tm_clones+0x38>
  4005e3:	b8 00 00 00 00       	mov    eax,0x0
  4005e8:	48 85 c0             	test   rax,rax
  4005eb:	74 0b                	je     4005f8 <register_tm_clones+0x38>
  4005ed:	5d                   	pop    rbp
  4005ee:	bf 40 10 60 00       	mov    edi,0x601040
  4005f3:	ff e0                	jmp    rax
  4005f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4005f8:	5d                   	pop    rbp
  4005f9:	c3                   	ret    
  4005fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400600 <__do_global_dtors_aux>:
  400600:	80 3d 61 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a61],0x0        # 601068 <completed.7697>
  400607:	75 17                	jne    400620 <__do_global_dtors_aux+0x20>
  400609:	55                   	push   rbp
  40060a:	48 89 e5             	mov    rbp,rsp
  40060d:	e8 7e ff ff ff       	call   400590 <deregister_tm_clones>
  400612:	c6 05 4f 0a 20 00 01 	mov    BYTE PTR [rip+0x200a4f],0x1        # 601068 <completed.7697>
  400619:	5d                   	pop    rbp
  40061a:	c3                   	ret    
  40061b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400620:	f3 c3                	repz ret 
  400622:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400626:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40062d:	00 00 00 

0000000000400630 <frame_dummy>:
  400630:	55                   	push   rbp
  400631:	48 89 e5             	mov    rbp,rsp
  400634:	5d                   	pop    rbp
  400635:	eb 89                	jmp    4005c0 <register_tm_clones>

0000000000400637 <init>:
  400637:	55                   	push   rbp
  400638:	48 89 e5             	mov    rbp,rsp
  40063b:	48 8b 05 fe 09 20 00 	mov    rax,QWORD PTR [rip+0x2009fe]        # 601040 <stdout@@GLIBC_2.2.5>
  400642:	b9 00 00 00 00       	mov    ecx,0x0
  400647:	ba 02 00 00 00       	mov    edx,0x2
  40064c:	be 00 00 00 00       	mov    esi,0x0
  400651:	48 89 c7             	mov    rdi,rax
  400654:	e8 e7 fe ff ff       	call   400540 <setvbuf@plt>
  400659:	48 8b 05 f0 09 20 00 	mov    rax,QWORD PTR [rip+0x2009f0]        # 601050 <stdin@@GLIBC_2.2.5>
  400660:	b9 00 00 00 00       	mov    ecx,0x0
  400665:	ba 02 00 00 00       	mov    edx,0x2
  40066a:	be 00 00 00 00       	mov    esi,0x0
  40066f:	48 89 c7             	mov    rdi,rax
  400672:	e8 c9 fe ff ff       	call   400540 <setvbuf@plt>
  400677:	48 8b 05 e2 09 20 00 	mov    rax,QWORD PTR [rip+0x2009e2]        # 601060 <stderr@@GLIBC_2.2.5>
  40067e:	b9 00 00 00 00       	mov    ecx,0x0
  400683:	ba 02 00 00 00       	mov    edx,0x2
  400688:	be 00 00 00 00       	mov    esi,0x0
  40068d:	48 89 c7             	mov    rdi,rax
  400690:	e8 ab fe ff ff       	call   400540 <setvbuf@plt>
  400695:	90                   	nop
  400696:	5d                   	pop    rbp
  400697:	c3                   	ret    

0000000000400698 <main>:
  400698:	55                   	push   rbp
  400699:	48 89 e5             	mov    rbp,rsp
  40069c:	48 83 ec 30          	sub    rsp,0x30
  4006a0:	b8 00 00 00 00       	mov    eax,0x0
  4006a5:	e8 8d ff ff ff       	call   400637 <init>
  4006aa:	48 8d 3d a3 00 00 00 	lea    rdi,[rip+0xa3]        # 400754 <_IO_stdin_used+0x4>
  4006b1:	e8 6a fe ff ff       	call   400520 <puts@plt>
  4006b6:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4006ba:	48 89 c7             	mov    rdi,rax
  4006bd:	b8 00 00 00 00       	mov    eax,0x0
  4006c2:	e8 69 fe ff ff       	call   400530 <gets@plt>
  4006c7:	b8 00 00 00 00       	mov    eax,0x0
  4006cc:	c9                   	leave  
  4006cd:	c3                   	ret    
  4006ce:	66 90                	xchg   ax,ax

00000000004006d0 <__libc_csu_init>:
  4006d0:	41 57                	push   r15
  4006d2:	41 56                	push   r14
  4006d4:	49 89 d7             	mov    r15,rdx
  4006d7:	41 55                	push   r13
  4006d9:	41 54                	push   r12
  4006db:	4c 8d 25 2e 07 20 00 	lea    r12,[rip+0x20072e]        # 600e10 <__frame_dummy_init_array_entry>
  4006e2:	55                   	push   rbp
  4006e3:	48 8d 2d 2e 07 20 00 	lea    rbp,[rip+0x20072e]        # 600e18 <__init_array_end>
  4006ea:	53                   	push   rbx
  4006eb:	41 89 fd             	mov    r13d,edi
  4006ee:	49 89 f6             	mov    r14,rsi
  4006f1:	4c 29 e5             	sub    rbp,r12
  4006f4:	48 83 ec 08          	sub    rsp,0x8
  4006f8:	48 c1 fd 03          	sar    rbp,0x3
  4006fc:	e8 ef fd ff ff       	call   4004f0 <_init>
  400701:	48 85 ed             	test   rbp,rbp
  400704:	74 20                	je     400726 <__libc_csu_init+0x56>
  400706:	31 db                	xor    ebx,ebx
  400708:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40070f:	00 
  400710:	4c 89 fa             	mov    rdx,r15
  400713:	4c 89 f6             	mov    rsi,r14
  400716:	44 89 ef             	mov    edi,r13d
  400719:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40071d:	48 83 c3 01          	add    rbx,0x1
  400721:	48 39 dd             	cmp    rbp,rbx
  400724:	75 ea                	jne    400710 <__libc_csu_init+0x40>
  400726:	48 83 c4 08          	add    rsp,0x8
  40072a:	5b                   	pop    rbx
  40072b:	5d                   	pop    rbp
  40072c:	41 5c                	pop    r12
  40072e:	41 5d                	pop    r13
  400730:	41 5e                	pop    r14
  400732:	41 5f                	pop    r15
  400734:	c3                   	ret    
  400735:	90                   	nop
  400736:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40073d:	00 00 00 

0000000000400740 <__libc_csu_fini>:
  400740:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400744 <_fini>:
  400744:	48 83 ec 08          	sub    rsp,0x8
  400748:	48 83 c4 08          	add    rsp,0x8
  40074c:	c3                   	ret    
