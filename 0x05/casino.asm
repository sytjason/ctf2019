
casino:     file format elf64-x86-64


Disassembly of section .init:

00000000004006a0 <_init>:
  4006a0:	48 83 ec 08          	sub    rsp,0x8
  4006a4:	48 8b 05 4d 19 20 00 	mov    rax,QWORD PTR [rip+0x20194d]        # 601ff8 <__gmon_start__>
  4006ab:	48 85 c0             	test   rax,rax
  4006ae:	74 02                	je     4006b2 <_init+0x12>
  4006b0:	ff d0                	call   rax
  4006b2:	48 83 c4 08          	add    rsp,0x8
  4006b6:	c3                   	ret    

Disassembly of section .plt:

00000000004006c0 <.plt>:
  4006c0:	ff 35 42 19 20 00    	push   QWORD PTR [rip+0x201942]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006c6:	ff 25 44 19 20 00    	jmp    QWORD PTR [rip+0x201944]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006d0 <__read_chk@plt>:
  4006d0:	ff 25 42 19 20 00    	jmp    QWORD PTR [rip+0x201942]        # 602018 <__read_chk@GLIBC_2.4>
  4006d6:	68 00 00 00 00       	push   0x0
  4006db:	e9 e0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006e0 <puts@plt>:
  4006e0:	ff 25 3a 19 20 00    	jmp    QWORD PTR [rip+0x20193a]        # 602020 <puts@GLIBC_2.2.5>
  4006e6:	68 01 00 00 00       	push   0x1
  4006eb:	e9 d0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006f0 <__stack_chk_fail@plt>:
  4006f0:	ff 25 32 19 20 00    	jmp    QWORD PTR [rip+0x201932]        # 602028 <__stack_chk_fail@GLIBC_2.4>
  4006f6:	68 02 00 00 00       	push   0x2
  4006fb:	e9 c0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400700 <printf@plt>:
  400700:	ff 25 2a 19 20 00    	jmp    QWORD PTR [rip+0x20192a]        # 602030 <printf@GLIBC_2.2.5>
  400706:	68 03 00 00 00       	push   0x3
  40070b:	e9 b0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400710 <read@plt>:
  400710:	ff 25 22 19 20 00    	jmp    QWORD PTR [rip+0x201922]        # 602038 <read@GLIBC_2.2.5>
  400716:	68 04 00 00 00       	push   0x4
  40071b:	e9 a0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400720 <srand@plt>:
  400720:	ff 25 1a 19 20 00    	jmp    QWORD PTR [rip+0x20191a]        # 602040 <srand@GLIBC_2.2.5>
  400726:	68 05 00 00 00       	push   0x5
  40072b:	e9 90 ff ff ff       	jmp    4006c0 <.plt>

0000000000400730 <time@plt>:
  400730:	ff 25 12 19 20 00    	jmp    QWORD PTR [rip+0x201912]        # 602048 <time@GLIBC_2.2.5>
  400736:	68 06 00 00 00       	push   0x6
  40073b:	e9 80 ff ff ff       	jmp    4006c0 <.plt>

0000000000400740 <setvbuf@plt>:
  400740:	ff 25 0a 19 20 00    	jmp    QWORD PTR [rip+0x20190a]        # 602050 <setvbuf@GLIBC_2.2.5>
  400746:	68 07 00 00 00       	push   0x7
  40074b:	e9 70 ff ff ff       	jmp    4006c0 <.plt>

0000000000400750 <atoi@plt>:
  400750:	ff 25 02 19 20 00    	jmp    QWORD PTR [rip+0x201902]        # 602058 <atoi@GLIBC_2.2.5>
  400756:	68 08 00 00 00       	push   0x8
  40075b:	e9 60 ff ff ff       	jmp    4006c0 <.plt>

0000000000400760 <rand@plt>:
  400760:	ff 25 fa 18 20 00    	jmp    QWORD PTR [rip+0x2018fa]        # 602060 <rand@GLIBC_2.2.5>
  400766:	68 09 00 00 00       	push   0x9
  40076b:	e9 50 ff ff ff       	jmp    4006c0 <.plt>

Disassembly of section .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    ebp,ebp
  400772:	49 89 d1             	mov    r9,rdx
  400775:	5e                   	pop    rsi
  400776:	48 89 e2             	mov    rdx,rsp
  400779:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40077d:	50                   	push   rax
  40077e:	54                   	push   rsp
  40077f:	49 c7 c0 30 0c 40 00 	mov    r8,0x400c30
  400786:	48 c7 c1 c0 0b 40 00 	mov    rcx,0x400bc0
  40078d:	48 c7 c7 21 0b 40 00 	mov    rdi,0x400b21
  400794:	ff 15 56 18 20 00    	call   QWORD PTR [rip+0x201856]        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40079a:	f4                   	hlt    
  40079b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004007a0 <_dl_relocate_static_pie>:
  4007a0:	f3 c3                	repz ret 
  4007a2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4007a9:	00 00 00 
  4007ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004007b0 <deregister_tm_clones>:
  4007b0:	55                   	push   rbp
  4007b1:	b8 78 20 60 00       	mov    eax,0x602078
  4007b6:	48 3d 78 20 60 00    	cmp    rax,0x602078
  4007bc:	48 89 e5             	mov    rbp,rsp
  4007bf:	74 17                	je     4007d8 <deregister_tm_clones+0x28>
  4007c1:	b8 00 00 00 00       	mov    eax,0x0
  4007c6:	48 85 c0             	test   rax,rax
  4007c9:	74 0d                	je     4007d8 <deregister_tm_clones+0x28>
  4007cb:	5d                   	pop    rbp
  4007cc:	bf 78 20 60 00       	mov    edi,0x602078
  4007d1:	ff e0                	jmp    rax
  4007d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007d8:	5d                   	pop    rbp
  4007d9:	c3                   	ret    
  4007da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007e0 <register_tm_clones>:
  4007e0:	be 78 20 60 00       	mov    esi,0x602078
  4007e5:	55                   	push   rbp
  4007e6:	48 81 ee 78 20 60 00 	sub    rsi,0x602078
  4007ed:	48 89 e5             	mov    rbp,rsp
  4007f0:	48 c1 fe 03          	sar    rsi,0x3
  4007f4:	48 89 f0             	mov    rax,rsi
  4007f7:	48 c1 e8 3f          	shr    rax,0x3f
  4007fb:	48 01 c6             	add    rsi,rax
  4007fe:	48 d1 fe             	sar    rsi,1
  400801:	74 15                	je     400818 <register_tm_clones+0x38>
  400803:	b8 00 00 00 00       	mov    eax,0x0
  400808:	48 85 c0             	test   rax,rax
  40080b:	74 0b                	je     400818 <register_tm_clones+0x38>
  40080d:	5d                   	pop    rbp
  40080e:	bf 78 20 60 00       	mov    edi,0x602078
  400813:	ff e0                	jmp    rax
  400815:	0f 1f 00             	nop    DWORD PTR [rax]
  400818:	5d                   	pop    rbp
  400819:	c3                   	ret    
  40081a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 81 18 20 00 00 	cmp    BYTE PTR [rip+0x201881],0x0        # 6020a8 <completed.7697>
  400827:	75 17                	jne    400840 <__do_global_dtors_aux+0x20>
  400829:	55                   	push   rbp
  40082a:	48 89 e5             	mov    rbp,rsp
  40082d:	e8 7e ff ff ff       	call   4007b0 <deregister_tm_clones>
  400832:	c6 05 6f 18 20 00 01 	mov    BYTE PTR [rip+0x20186f],0x1        # 6020a8 <completed.7697>
  400839:	5d                   	pop    rbp
  40083a:	c3                   	ret    
  40083b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400840:	f3 c3                	repz ret 
  400842:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400846:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40084d:	00 00 00 

0000000000400850 <frame_dummy>:
  400850:	55                   	push   rbp
  400851:	48 89 e5             	mov    rbp,rsp
  400854:	5d                   	pop    rbp
  400855:	eb 89                	jmp    4007e0 <register_tm_clones>

0000000000400857 <init>:
  400857:	55                   	push   rbp
  400858:	48 89 e5             	mov    rbp,rsp
  40085b:	48 8b 05 1e 18 20 00 	mov    rax,QWORD PTR [rip+0x20181e]        # 602080 <stdout@@GLIBC_2.2.5>
  400862:	b9 00 00 00 00       	mov    ecx,0x0
  400867:	ba 02 00 00 00       	mov    edx,0x2
  40086c:	be 00 00 00 00       	mov    esi,0x0
  400871:	48 89 c7             	mov    rdi,rax
  400874:	e8 c7 fe ff ff       	call   400740 <setvbuf@plt>
  400879:	48 8b 05 10 18 20 00 	mov    rax,QWORD PTR [rip+0x201810]        # 602090 <stdin@@GLIBC_2.2.5>
  400880:	b9 00 00 00 00       	mov    ecx,0x0
  400885:	ba 02 00 00 00       	mov    edx,0x2
  40088a:	be 00 00 00 00       	mov    esi,0x0
  40088f:	48 89 c7             	mov    rdi,rax
  400892:	e8 a9 fe ff ff       	call   400740 <setvbuf@plt>
  400897:	48 8b 05 02 18 20 00 	mov    rax,QWORD PTR [rip+0x201802]        # 6020a0 <stderr@@GLIBC_2.2.5>
  40089e:	b9 00 00 00 00       	mov    ecx,0x0
  4008a3:	ba 02 00 00 00       	mov    edx,0x2
  4008a8:	be 00 00 00 00       	mov    esi,0x0
  4008ad:	48 89 c7             	mov    rdi,rax
  4008b0:	e8 8b fe ff ff       	call   400740 <setvbuf@plt>
  4008b5:	bf 00 00 00 00       	mov    edi,0x0
  4008ba:	b8 00 00 00 00       	mov    eax,0x0
  4008bf:	e8 6c fe ff ff       	call   400730 <time@plt>
  4008c4:	89 05 36 18 20 00    	mov    DWORD PTR [rip+0x201836],eax        # 602100 <seed>
  4008ca:	90                   	nop
  4008cb:	5d                   	pop    rbp
  4008cc:	c3                   	ret    

00000000004008cd <read_int>:
  4008cd:	55                   	push   rbp
  4008ce:	48 89 e5             	mov    rbp,rsp
  4008d1:	48 83 ec 20          	sub    rsp,0x20
  4008d5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4008dc:	00 00 
  4008de:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4008e2:	31 c0                	xor    eax,eax
  4008e4:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4008e8:	b9 10 00 00 00       	mov    ecx,0x10
  4008ed:	ba 0f 00 00 00       	mov    edx,0xf
  4008f2:	48 89 c6             	mov    rsi,rax
  4008f5:	bf 00 00 00 00       	mov    edi,0x0
  4008fa:	b8 00 00 00 00       	mov    eax,0x0
  4008ff:	e8 cc fd ff ff       	call   4006d0 <__read_chk@plt>
  400904:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400908:	48 89 c7             	mov    rdi,rax
  40090b:	e8 40 fe ff ff       	call   400750 <atoi@plt>
  400910:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400914:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
  40091b:	00 00 
  40091d:	74 05                	je     400924 <read_int+0x57>
  40091f:	e8 cc fd ff ff       	call   4006f0 <__stack_chk_fail@plt>
  400924:	c9                   	leave  
  400925:	c3                   	ret    

0000000000400926 <welcome>:
  400926:	55                   	push   rbp
  400927:	48 89 e5             	mov    rbp,rsp
  40092a:	48 8d 3d 17 03 00 00 	lea    rdi,[rip+0x317]        # 400c48 <_IO_stdin_used+0x8>
  400931:	e8 aa fd ff ff       	call   4006e0 <puts@plt>
  400936:	48 8d 3d 22 03 00 00 	lea    rdi,[rip+0x322]        # 400c5f <_IO_stdin_used+0x1f>
  40093d:	e8 9e fd ff ff       	call   4006e0 <puts@plt>
  400942:	48 8d 3d ff 02 00 00 	lea    rdi,[rip+0x2ff]        # 400c48 <_IO_stdin_used+0x8>
  400949:	e8 92 fd ff ff       	call   4006e0 <puts@plt>
  40094e:	48 8d 3d 21 03 00 00 	lea    rdi,[rip+0x321]        # 400c76 <_IO_stdin_used+0x36>
  400955:	e8 86 fd ff ff       	call   4006e0 <puts@plt>
  40095a:	90                   	nop
  40095b:	5d                   	pop    rbp
  40095c:	c3                   	ret    

000000000040095d <casino>:
  40095d:	55                   	push   rbp
  40095e:	48 89 e5             	mov    rbp,rsp
  400961:	48 83 ec 20          	sub    rsp,0x20
  400965:	8b 05 95 17 20 00    	mov    eax,DWORD PTR [rip+0x201795]        # 602100 <seed>
  40096b:	89 c7                	mov    edi,eax
  40096d:	e8 ae fd ff ff       	call   400720 <srand@plt>
  400972:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400979:	eb 3f                	jmp    4009ba <casino+0x5d>
  40097b:	e8 e0 fd ff ff       	call   400760 <rand@plt>
  400980:	89 c1                	mov    ecx,eax
  400982:	ba 1f 85 eb 51       	mov    edx,0x51eb851f
  400987:	89 c8                	mov    eax,ecx
  400989:	f7 ea                	imul   edx
  40098b:	c1 fa 05             	sar    edx,0x5
  40098e:	89 c8                	mov    eax,ecx
  400990:	c1 f8 1f             	sar    eax,0x1f
  400993:	29 c2                	sub    edx,eax
  400995:	89 d0                	mov    eax,edx
  400997:	6b c0 64             	imul   eax,eax,0x64
  40099a:	29 c1                	sub    ecx,eax
  40099c:	89 c8                	mov    eax,ecx
  40099e:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  4009a1:	48 63 d2             	movsxd rdx,edx
  4009a4:	48 8d 0c 95 00 00 00 	lea    rcx,[rdx*4+0x0]
  4009ab:	00 
  4009ac:	48 8d 15 fd 16 20 00 	lea    rdx,[rip+0x2016fd]        # 6020b0 <lottery>
  4009b3:	89 04 11             	mov    DWORD PTR [rcx+rdx*1],eax
  4009b6:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  4009ba:	83 7d ec 05          	cmp    DWORD PTR [rbp-0x14],0x5
  4009be:	7e bb                	jle    40097b <casino+0x1e>
  4009c0:	c7 45 f0 02 00 00 00 	mov    DWORD PTR [rbp-0x10],0x2
  4009c7:	e9 30 01 00 00       	jmp    400afc <casino+0x19f>
  4009cc:	48 8d 3d a4 02 00 00 	lea    rdi,[rip+0x2a4]        # 400c77 <_IO_stdin_used+0x37>
  4009d3:	b8 00 00 00 00       	mov    eax,0x0
  4009d8:	e8 23 fd ff ff       	call   400700 <printf@plt>
  4009dd:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  4009e4:	eb 3d                	jmp    400a23 <casino+0xc6>
  4009e6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4009e9:	89 c6                	mov    esi,eax
  4009eb:	48 8d 3d a0 02 00 00 	lea    rdi,[rip+0x2a0]        # 400c92 <_IO_stdin_used+0x52>
  4009f2:	b8 00 00 00 00       	mov    eax,0x0
  4009f7:	e8 04 fd ff ff       	call   400700 <printf@plt>
  4009fc:	b8 00 00 00 00       	mov    eax,0x0
  400a01:	e8 c7 fe ff ff       	call   4008cd <read_int>
  400a06:	89 c1                	mov    ecx,eax
  400a08:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  400a0b:	48 98                	cdqe   
  400a0d:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400a14:	00 
  400a15:	48 8d 05 b4 16 20 00 	lea    rax,[rip+0x2016b4]        # 6020d0 <guess>
  400a1c:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
  400a1f:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  400a23:	83 7d f4 05          	cmp    DWORD PTR [rbp-0xc],0x5
  400a27:	7e bd                	jle    4009e6 <casino+0x89>
  400a29:	48 8d 3d 78 02 00 00 	lea    rdi,[rip+0x278]        # 400ca8 <_IO_stdin_used+0x68>
  400a30:	b8 00 00 00 00       	mov    eax,0x0
  400a35:	e8 c6 fc ff ff       	call   400700 <printf@plt>
  400a3a:	b8 00 00 00 00       	mov    eax,0x0
  400a3f:	e8 89 fe ff ff       	call   4008cd <read_int>
  400a44:	83 f8 01             	cmp    eax,0x1
  400a47:	75 5a                	jne    400aa3 <casino+0x146>
  400a49:	48 8d 3d 7a 02 00 00 	lea    rdi,[rip+0x27a]        # 400cca <_IO_stdin_used+0x8a>
  400a50:	b8 00 00 00 00       	mov    eax,0x0
  400a55:	e8 a6 fc ff ff       	call   400700 <printf@plt>
  400a5a:	b8 00 00 00 00       	mov    eax,0x0
  400a5f:	e8 69 fe ff ff       	call   4008cd <read_int>
  400a64:	83 e8 01             	sub    eax,0x1
  400a67:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400a6a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400a6d:	89 c6                	mov    esi,eax
  400a6f:	48 8d 3d 1c 02 00 00 	lea    rdi,[rip+0x21c]        # 400c92 <_IO_stdin_used+0x52>
  400a76:	b8 00 00 00 00       	mov    eax,0x0
  400a7b:	e8 80 fc ff ff       	call   400700 <printf@plt>
  400a80:	b8 00 00 00 00       	mov    eax,0x0
  400a85:	e8 43 fe ff ff       	call   4008cd <read_int>
  400a8a:	89 c1                	mov    ecx,eax
  400a8c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400a8f:	48 98                	cdqe   
  400a91:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400a98:	00 
  400a99:	48 8d 05 30 16 20 00 	lea    rax,[rip+0x201630]        # 6020d0 <guess>
  400aa0:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
  400aa3:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  400aaa:	eb 4a                	jmp    400af6 <casino+0x199>
  400aac:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400aaf:	48 98                	cdqe   
  400ab1:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400ab8:	00 
  400ab9:	48 8d 05 10 16 20 00 	lea    rax,[rip+0x201610]        # 6020d0 <guess>
  400ac0:	8b 14 02             	mov    edx,DWORD PTR [rdx+rax*1]
  400ac3:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400ac6:	48 98                	cdqe   
  400ac8:	48 8d 0c 85 00 00 00 	lea    rcx,[rax*4+0x0]
  400acf:	00 
  400ad0:	48 8d 05 d9 15 20 00 	lea    rax,[rip+0x2015d9]        # 6020b0 <lottery>
  400ad7:	8b 04 01             	mov    eax,DWORD PTR [rcx+rax*1]
  400ada:	39 c2                	cmp    edx,eax
  400adc:	74 02                	je     400ae0 <casino+0x183>
  400ade:	eb 1c                	jmp    400afc <casino+0x19f>
  400ae0:	83 7d f8 05          	cmp    DWORD PTR [rbp-0x8],0x5
  400ae4:	75 0c                	jne    400af2 <casino+0x195>
  400ae6:	48 8d 3d fb 01 00 00 	lea    rdi,[rip+0x1fb]        # 400ce8 <_IO_stdin_used+0xa8>
  400aed:	e8 ee fb ff ff       	call   4006e0 <puts@plt>
  400af2:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
  400af6:	83 7d f8 05          	cmp    DWORD PTR [rbp-0x8],0x5
  400afa:	7e b0                	jle    400aac <casino+0x14f>
  400afc:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  400aff:	8d 50 ff             	lea    edx,[rax-0x1]
  400b02:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  400b05:	85 c0                	test   eax,eax
  400b07:	0f 85 bf fe ff ff    	jne    4009cc <casino+0x6f>
  400b0d:	48 8d 3d f7 01 00 00 	lea    rdi,[rip+0x1f7]        # 400d0b <_IO_stdin_used+0xcb>
  400b14:	b8 00 00 00 00       	mov    eax,0x0
  400b19:	e8 e2 fb ff ff       	call   400700 <printf@plt>
  400b1e:	90                   	nop
  400b1f:	c9                   	leave  
  400b20:	c3                   	ret    

0000000000400b21 <main>:
  400b21:	55                   	push   rbp
  400b22:	48 89 e5             	mov    rbp,rsp
  400b25:	b8 00 00 00 00       	mov    eax,0x0
  400b2a:	e8 28 fd ff ff       	call   400857 <init>
  400b2f:	b8 00 00 00 00       	mov    eax,0x0
  400b34:	e8 ed fd ff ff       	call   400926 <welcome>
  400b39:	48 8d 3d dc 01 00 00 	lea    rdi,[rip+0x1dc]        # 400d1c <_IO_stdin_used+0xdc>
  400b40:	e8 9b fb ff ff       	call   4006e0 <puts@plt>
  400b45:	48 8d 3d e7 01 00 00 	lea    rdi,[rip+0x1e7]        # 400d33 <_IO_stdin_used+0xf3>
  400b4c:	b8 00 00 00 00       	mov    eax,0x0
  400b51:	e8 aa fb ff ff       	call   400700 <printf@plt>
  400b56:	ba 00 01 00 00       	mov    edx,0x100
  400b5b:	48 8d 35 8e 15 20 00 	lea    rsi,[rip+0x20158e]        # 6020f0 <name>
  400b62:	bf 00 00 00 00       	mov    edi,0x0
  400b67:	b8 00 00 00 00       	mov    eax,0x0
  400b6c:	e8 9f fb ff ff       	call   400710 <read@plt>
  400b71:	48 8d 3d c7 01 00 00 	lea    rdi,[rip+0x1c7]        # 400d3f <_IO_stdin_used+0xff>
  400b78:	b8 00 00 00 00       	mov    eax,0x0
  400b7d:	e8 7e fb ff ff       	call   400700 <printf@plt>
  400b82:	b8 00 00 00 00       	mov    eax,0x0
  400b87:	e8 41 fd ff ff       	call   4008cd <read_int>
  400b8c:	89 05 72 15 20 00    	mov    DWORD PTR [rip+0x201572],eax        # 602104 <age>
  400b92:	8b 05 6c 15 20 00    	mov    eax,DWORD PTR [rip+0x20156c]        # 602104 <age>
  400b98:	83 f8 13             	cmp    eax,0x13
  400b9b:	7f 0e                	jg     400bab <main+0x8a>
  400b9d:	48 8d 3d a6 01 00 00 	lea    rdi,[rip+0x1a6]        # 400d4a <_IO_stdin_used+0x10a>
  400ba4:	e8 37 fb ff ff       	call   4006e0 <puts@plt>
  400ba9:	eb 0a                	jmp    400bb5 <main+0x94>
  400bab:	b8 00 00 00 00       	mov    eax,0x0
  400bb0:	e8 a8 fd ff ff       	call   40095d <casino>
  400bb5:	b8 00 00 00 00       	mov    eax,0x0
  400bba:	5d                   	pop    rbp
  400bbb:	c3                   	ret    
  400bbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400bc0 <__libc_csu_init>:
  400bc0:	41 57                	push   r15
  400bc2:	41 56                	push   r14
  400bc4:	49 89 d7             	mov    r15,rdx
  400bc7:	41 55                	push   r13
  400bc9:	41 54                	push   r12
  400bcb:	4c 8d 25 3e 12 20 00 	lea    r12,[rip+0x20123e]        # 601e10 <__frame_dummy_init_array_entry>
  400bd2:	55                   	push   rbp
  400bd3:	48 8d 2d 3e 12 20 00 	lea    rbp,[rip+0x20123e]        # 601e18 <__init_array_end>
  400bda:	53                   	push   rbx
  400bdb:	41 89 fd             	mov    r13d,edi
  400bde:	49 89 f6             	mov    r14,rsi
  400be1:	4c 29 e5             	sub    rbp,r12
  400be4:	48 83 ec 08          	sub    rsp,0x8
  400be8:	48 c1 fd 03          	sar    rbp,0x3
  400bec:	e8 af fa ff ff       	call   4006a0 <_init>
  400bf1:	48 85 ed             	test   rbp,rbp
  400bf4:	74 20                	je     400c16 <__libc_csu_init+0x56>
  400bf6:	31 db                	xor    ebx,ebx
  400bf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400bff:	00 
  400c00:	4c 89 fa             	mov    rdx,r15
  400c03:	4c 89 f6             	mov    rsi,r14
  400c06:	44 89 ef             	mov    edi,r13d
  400c09:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400c0d:	48 83 c3 01          	add    rbx,0x1
  400c11:	48 39 dd             	cmp    rbp,rbx
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x40>
  400c16:	48 83 c4 08          	add    rsp,0x8
  400c1a:	5b                   	pop    rbx
  400c1b:	5d                   	pop    rbp
  400c1c:	41 5c                	pop    r12
  400c1e:	41 5d                	pop    r13
  400c20:	41 5e                	pop    r14
  400c22:	41 5f                	pop    r15
  400c24:	c3                   	ret    
  400c25:	90                   	nop
  400c26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400c2d:	00 00 00 

0000000000400c30 <__libc_csu_fini>:
  400c30:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400c34 <_fini>:
  400c34:	48 83 ec 08          	sub    rsp,0x8
  400c38:	48 83 c4 08          	add    rsp,0x8
  400c3c:	c3                   	ret    
