
EasyROP:     file format elf32-i386


Disassembly of section .init:

08048428 <_init@@Base>:
 8048428:	53                   	push   ebx
 8048429:	83 ec 08             	sub    esp,0x8
 804842c:	e8 0f 01 00 00       	call   8048540 <__gmon_start__@plt+0x60>
 8048431:	81 c3 9f 1b 00 00    	add    ebx,0x1b9f
 8048437:	8b 83 2c 00 00 00    	mov    eax,DWORD PTR [ebx+0x2c]
 804843d:	85 c0                	test   eax,eax
 804843f:	74 05                	je     8048446 <_init@@Base+0x1e>
 8048441:	e8 9a 00 00 00       	call   80484e0 <__gmon_start__@plt>
 8048446:	83 c4 08             	add    esp,0x8
 8048449:	5b                   	pop    ebx
 804844a:	c3                   	ret    

Disassembly of section .plt:

08048450 <seccomp_init@plt-0x10>:
 8048450:	ff 35 d4 9f 04 08    	push   DWORD PTR ds:0x8049fd4
 8048456:	ff 25 d8 9f 04 08    	jmp    DWORD PTR ds:0x8049fd8
 804845c:	00 00                	add    BYTE PTR [eax],al
	...

08048460 <seccomp_init@plt>:
 8048460:	ff 25 dc 9f 04 08    	jmp    DWORD PTR ds:0x8049fdc
 8048466:	68 00 00 00 00       	push   0x0
 804846b:	e9 e0 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

08048470 <read@plt>:
 8048470:	ff 25 e0 9f 04 08    	jmp    DWORD PTR ds:0x8049fe0
 8048476:	68 08 00 00 00       	push   0x8
 804847b:	e9 d0 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

08048480 <seccomp_rule_add@plt>:
 8048480:	ff 25 e4 9f 04 08    	jmp    DWORD PTR ds:0x8049fe4
 8048486:	68 10 00 00 00       	push   0x10
 804848b:	e9 c0 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

08048490 <seccomp_load@plt>:
 8048490:	ff 25 e8 9f 04 08    	jmp    DWORD PTR ds:0x8049fe8
 8048496:	68 18 00 00 00       	push   0x18
 804849b:	e9 b0 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

080484a0 <strcpy@plt>:
 80484a0:	ff 25 ec 9f 04 08    	jmp    DWORD PTR ds:0x8049fec
 80484a6:	68 20 00 00 00       	push   0x20
 80484ab:	e9 a0 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

080484b0 <strlen@plt>:
 80484b0:	ff 25 f0 9f 04 08    	jmp    DWORD PTR ds:0x8049ff0
 80484b6:	68 28 00 00 00       	push   0x28
 80484bb:	e9 90 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

080484c0 <__libc_start_main@plt>:
 80484c0:	ff 25 f4 9f 04 08    	jmp    DWORD PTR ds:0x8049ff4
 80484c6:	68 30 00 00 00       	push   0x30
 80484cb:	e9 80 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

080484d0 <memset@plt>:
 80484d0:	ff 25 f8 9f 04 08    	jmp    DWORD PTR ds:0x8049ff8
 80484d6:	68 38 00 00 00       	push   0x38
 80484db:	e9 70 ff ff ff       	jmp    8048450 <_init@@Base+0x28>

Disassembly of section .plt.got:

080484e0 <__gmon_start__@plt>:
 80484e0:	ff 25 fc 9f 04 08    	jmp    DWORD PTR ds:0x8049ffc
 80484e6:	66 90                	xchg   ax,ax

Disassembly of section .text:

080484f0 <.text>:
 80484f0:	31 ed                	xor    ebp,ebp
 80484f2:	5e                   	pop    esi
 80484f3:	89 e1                	mov    ecx,esp
 80484f5:	83 e4 f0             	and    esp,0xfffffff0
 80484f8:	50                   	push   eax
 80484f9:	54                   	push   esp
 80484fa:	52                   	push   edx
 80484fb:	e8 23 00 00 00       	call   8048523 <__gmon_start__@plt+0x43>
 8048500:	81 c3 d0 1a 00 00    	add    ebx,0x1ad0
 8048506:	8d 83 a0 e8 ff ff    	lea    eax,[ebx-0x1760]
 804850c:	50                   	push   eax
 804850d:	8d 83 40 e8 ff ff    	lea    eax,[ebx-0x17c0]
 8048513:	50                   	push   eax
 8048514:	51                   	push   ecx
 8048515:	56                   	push   esi
 8048516:	c7 c0 a3 86 04 08    	mov    eax,0x80486a3
 804851c:	50                   	push   eax
 804851d:	e8 9e ff ff ff       	call   80484c0 <__libc_start_main@plt>
 8048522:	f4                   	hlt    
 8048523:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048526:	c3                   	ret    
 8048527:	66 90                	xchg   ax,ax
 8048529:	66 90                	xchg   ax,ax
 804852b:	66 90                	xchg   ax,ax
 804852d:	66 90                	xchg   ax,ax
 804852f:	90                   	nop
 8048530:	f3 c3                	repz ret 
 8048532:	66 90                	xchg   ax,ax
 8048534:	66 90                	xchg   ax,ax
 8048536:	66 90                	xchg   ax,ax
 8048538:	66 90                	xchg   ax,ax
 804853a:	66 90                	xchg   ax,ax
 804853c:	66 90                	xchg   ax,ax
 804853e:	66 90                	xchg   ax,ax
 8048540:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048543:	c3                   	ret    
 8048544:	66 90                	xchg   ax,ax
 8048546:	66 90                	xchg   ax,ax
 8048548:	66 90                	xchg   ax,ax
 804854a:	66 90                	xchg   ax,ax
 804854c:	66 90                	xchg   ax,ax
 804854e:	66 90                	xchg   ax,ax
 8048550:	b8 08 a0 04 08       	mov    eax,0x804a008
 8048555:	3d 08 a0 04 08       	cmp    eax,0x804a008
 804855a:	74 24                	je     8048580 <__gmon_start__@plt+0xa0>
 804855c:	b8 00 00 00 00       	mov    eax,0x0
 8048561:	85 c0                	test   eax,eax
 8048563:	74 1b                	je     8048580 <__gmon_start__@plt+0xa0>
 8048565:	55                   	push   ebp
 8048566:	89 e5                	mov    ebp,esp
 8048568:	83 ec 14             	sub    esp,0x14
 804856b:	68 08 a0 04 08       	push   0x804a008
 8048570:	ff d0                	call   eax
 8048572:	83 c4 10             	add    esp,0x10
 8048575:	c9                   	leave  
 8048576:	c3                   	ret    
 8048577:	89 f6                	mov    esi,esi
 8048579:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 8048580:	f3 c3                	repz ret 
 8048582:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 8048589:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 8048590:	b8 08 a0 04 08       	mov    eax,0x804a008
 8048595:	2d 08 a0 04 08       	sub    eax,0x804a008
 804859a:	c1 f8 02             	sar    eax,0x2
 804859d:	89 c2                	mov    edx,eax
 804859f:	c1 ea 1f             	shr    edx,0x1f
 80485a2:	01 d0                	add    eax,edx
 80485a4:	d1 f8                	sar    eax,1
 80485a6:	74 20                	je     80485c8 <__gmon_start__@plt+0xe8>
 80485a8:	ba 00 00 00 00       	mov    edx,0x0
 80485ad:	85 d2                	test   edx,edx
 80485af:	74 17                	je     80485c8 <__gmon_start__@plt+0xe8>
 80485b1:	55                   	push   ebp
 80485b2:	89 e5                	mov    ebp,esp
 80485b4:	83 ec 10             	sub    esp,0x10
 80485b7:	50                   	push   eax
 80485b8:	68 08 a0 04 08       	push   0x804a008
 80485bd:	ff d2                	call   edx
 80485bf:	83 c4 10             	add    esp,0x10
 80485c2:	c9                   	leave  
 80485c3:	c3                   	ret    
 80485c4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80485c8:	f3 c3                	repz ret 
 80485ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80485d0:	80 3d 08 a0 04 08 00 	cmp    BYTE PTR ds:0x804a008,0x0
 80485d7:	75 17                	jne    80485f0 <__gmon_start__@plt+0x110>
 80485d9:	55                   	push   ebp
 80485da:	89 e5                	mov    ebp,esp
 80485dc:	83 ec 08             	sub    esp,0x8
 80485df:	e8 6c ff ff ff       	call   8048550 <__gmon_start__@plt+0x70>
 80485e4:	c6 05 08 a0 04 08 01 	mov    BYTE PTR ds:0x804a008,0x1
 80485eb:	c9                   	leave  
 80485ec:	c3                   	ret    
 80485ed:	8d 76 00             	lea    esi,[esi+0x0]
 80485f0:	f3 c3                	repz ret 
 80485f2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 80485f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 8048600:	55                   	push   ebp
 8048601:	89 e5                	mov    ebp,esp
 8048603:	5d                   	pop    ebp
 8048604:	eb 8a                	jmp    8048590 <__gmon_start__@plt+0xb0>
 8048606:	55                   	push   ebp
 8048607:	89 e5                	mov    ebp,esp
 8048609:	53                   	push   ebx
 804860a:	83 ec 14             	sub    esp,0x14
 804860d:	e8 2e ff ff ff       	call   8048540 <__gmon_start__@plt+0x60>
 8048612:	81 c3 be 19 00 00    	add    ebx,0x19be
 8048618:	83 ec 0c             	sub    esp,0xc
 804861b:	6a 00                	push   0x0
 804861d:	e8 3e fe ff ff       	call   8048460 <seccomp_init@plt>
 8048622:	83 c4 10             	add    esp,0x10
 8048625:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048628:	6a 00                	push   0x0
 804862a:	6a 05                	push   0x5
 804862c:	68 00 00 ff 7f       	push   0x7fff0000
 8048631:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048634:	e8 47 fe ff ff       	call   8048480 <seccomp_rule_add@plt>
 8048639:	83 c4 10             	add    esp,0x10
 804863c:	6a 00                	push   0x0
 804863e:	6a 03                	push   0x3
 8048640:	68 00 00 ff 7f       	push   0x7fff0000
 8048645:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048648:	e8 33 fe ff ff       	call   8048480 <seccomp_rule_add@plt>
 804864d:	83 c4 10             	add    esp,0x10
 8048650:	6a 00                	push   0x0
 8048652:	6a 04                	push   0x4
 8048654:	68 00 00 ff 7f       	push   0x7fff0000
 8048659:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 804865c:	e8 1f fe ff ff       	call   8048480 <seccomp_rule_add@plt>
 8048661:	83 c4 10             	add    esp,0x10
 8048664:	6a 00                	push   0x0
 8048666:	6a 01                	push   0x1
 8048668:	68 00 00 ff 7f       	push   0x7fff0000
 804866d:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048670:	e8 0b fe ff ff       	call   8048480 <seccomp_rule_add@plt>
 8048675:	83 c4 10             	add    esp,0x10
 8048678:	6a 00                	push   0x0
 804867a:	68 fc 00 00 00       	push   0xfc
 804867f:	68 00 00 ff 7f       	push   0x7fff0000
 8048684:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048687:	e8 f4 fd ff ff       	call   8048480 <seccomp_rule_add@plt>
 804868c:	83 c4 10             	add    esp,0x10
 804868f:	83 ec 0c             	sub    esp,0xc
 8048692:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048695:	e8 f6 fd ff ff       	call   8048490 <seccomp_load@plt>
 804869a:	83 c4 10             	add    esp,0x10
 804869d:	90                   	nop
 804869e:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 80486a1:	c9                   	leave  
 80486a2:	c3                   	ret    
 80486a3:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 80486a7:	83 e4 f0             	and    esp,0xfffffff0
 80486aa:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 80486ad:	55                   	push   ebp
 80486ae:	89 e5                	mov    ebp,esp
 80486b0:	57                   	push   edi
 80486b1:	56                   	push   esi
 80486b2:	53                   	push   ebx
 80486b3:	51                   	push   ecx
 80486b4:	81 ec 88 00 00 00    	sub    esp,0x88
 80486ba:	e8 81 fe ff ff       	call   8048540 <__gmon_start__@plt+0x60>
 80486bf:	81 c3 11 19 00 00    	add    ebx,0x1911
 80486c5:	89 e0                	mov    eax,esp
 80486c7:	89 c6                	mov    esi,eax
 80486c9:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
 80486d0:	8d 95 70 ff ff ff    	lea    edx,[ebp-0x90]
 80486d6:	b8 00 00 00 00       	mov    eax,0x0
 80486db:	b9 19 00 00 00       	mov    ecx,0x19
 80486e0:	89 d7                	mov    edi,edx
 80486e2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 80486e4:	83 ec 04             	sub    esp,0x4
 80486e7:	6a 64                	push   0x64
 80486e9:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
 80486ef:	50                   	push   eax
 80486f0:	6a 00                	push   0x0
 80486f2:	e8 79 fd ff ff       	call   8048470 <read@plt>
 80486f7:	83 c4 10             	add    esp,0x10
 80486fa:	83 ec 0c             	sub    esp,0xc
 80486fd:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
 8048703:	50                   	push   eax
 8048704:	e8 a7 fd ff ff       	call   80484b0 <strlen@plt>
 8048709:	83 c4 10             	add    esp,0x10
 804870c:	89 c2                	mov    edx,eax
 804870e:	83 ea 01             	sub    edx,0x1
 8048711:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
 8048714:	ba 10 00 00 00       	mov    edx,0x10
 8048719:	83 ea 01             	sub    edx,0x1
 804871c:	01 d0                	add    eax,edx
 804871e:	b9 10 00 00 00       	mov    ecx,0x10
 8048723:	ba 00 00 00 00       	mov    edx,0x0
 8048728:	f7 f1                	div    ecx
 804872a:	6b c0 10             	imul   eax,eax,0x10
 804872d:	29 c4                	sub    esp,eax
 804872f:	89 e0                	mov    eax,esp
 8048731:	83 c0 00             	add    eax,0x0
 8048734:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
 8048737:	83 ec 0c             	sub    esp,0xc
 804873a:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
 8048740:	50                   	push   eax
 8048741:	e8 6a fd ff ff       	call   80484b0 <strlen@plt>
 8048746:	83 c4 10             	add    esp,0x10
 8048749:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 804874c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 804874f:	25 f8 00 00 00       	and    eax,0xf8
 8048754:	83 c0 08             	add    eax,0x8
 8048757:	89 c2                	mov    edx,eax
 8048759:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 804875c:	83 ec 04             	sub    esp,0x4
 804875f:	52                   	push   edx
 8048760:	6a 00                	push   0x0
 8048762:	50                   	push   eax
 8048763:	e8 68 fd ff ff       	call   80484d0 <memset@plt>
 8048768:	83 c4 10             	add    esp,0x10
 804876b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 804876e:	83 ec 04             	sub    esp,0x4
 8048771:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
 8048774:	50                   	push   eax
 8048775:	6a 00                	push   0x0
 8048777:	e8 f4 fc ff ff       	call   8048470 <read@plt>
 804877c:	83 c4 10             	add    esp,0x10
 804877f:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 8048782:	83 ec 0c             	sub    esp,0xc
 8048785:	50                   	push   eax
 8048786:	e8 25 fd ff ff       	call   80484b0 <strlen@plt>
 804878b:	83 c4 10             	add    esp,0x10
 804878e:	89 c2                	mov    edx,eax
 8048790:	83 ea 01             	sub    edx,0x1
 8048793:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
 8048796:	ba 10 00 00 00       	mov    edx,0x10
 804879b:	83 ea 01             	sub    edx,0x1
 804879e:	01 d0                	add    eax,edx
 80487a0:	bf 10 00 00 00       	mov    edi,0x10
 80487a5:	ba 00 00 00 00       	mov    edx,0x0
 80487aa:	f7 f7                	div    edi
 80487ac:	6b c0 10             	imul   eax,eax,0x10
 80487af:	29 c4                	sub    esp,eax
 80487b1:	89 e0                	mov    eax,esp
 80487b3:	83 c0 00             	add    eax,0x0
 80487b6:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
 80487b9:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
 80487bc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
 80487bf:	83 ec 08             	sub    esp,0x8
 80487c2:	52                   	push   edx
 80487c3:	50                   	push   eax
 80487c4:	e8 d7 fc ff ff       	call   80484a0 <strcpy@plt>
 80487c9:	83 c4 10             	add    esp,0x10
 80487cc:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 80487cf:	83 ec 08             	sub    esp,0x8
 80487d2:	8d 95 70 ff ff ff    	lea    edx,[ebp-0x90]
 80487d8:	52                   	push   edx
 80487d9:	50                   	push   eax
 80487da:	e8 c1 fc ff ff       	call   80484a0 <strcpy@plt>
 80487df:	83 c4 10             	add    esp,0x10
 80487e2:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
 80487e5:	83 ec 08             	sub    esp,0x8
 80487e8:	50                   	push   eax
 80487e9:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
 80487ef:	50                   	push   eax
 80487f0:	e8 ab fc ff ff       	call   80484a0 <strcpy@plt>
 80487f5:	83 c4 10             	add    esp,0x10
 80487f8:	b8 00 00 00 00       	mov    eax,0x0
 80487fd:	89 f4                	mov    esp,esi
 80487ff:	8d 65 f0             	lea    esp,[ebp-0x10]
 8048802:	59                   	pop    ecx
 8048803:	5b                   	pop    ebx
 8048804:	5e                   	pop    esi
 8048805:	5f                   	pop    edi
 8048806:	5d                   	pop    ebp
 8048807:	8d 61 fc             	lea    esp,[ecx-0x4]
 804880a:	c3                   	ret    
 804880b:	66 90                	xchg   ax,ax
 804880d:	66 90                	xchg   ax,ax
 804880f:	90                   	nop
 8048810:	55                   	push   ebp
 8048811:	57                   	push   edi
 8048812:	56                   	push   esi
 8048813:	53                   	push   ebx
 8048814:	e8 27 fd ff ff       	call   8048540 <__gmon_start__@plt+0x60>
 8048819:	81 c3 b7 17 00 00    	add    ebx,0x17b7
 804881f:	83 ec 0c             	sub    esp,0xc
 8048822:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
 8048826:	8d b3 fc fe ff ff    	lea    esi,[ebx-0x104]
 804882c:	e8 f7 fb ff ff       	call   8048428 <_init@@Base>
 8048831:	8d 83 f4 fe ff ff    	lea    eax,[ebx-0x10c]
 8048837:	29 c6                	sub    esi,eax
 8048839:	c1 fe 02             	sar    esi,0x2
 804883c:	85 f6                	test   esi,esi
 804883e:	74 25                	je     8048865 <__gmon_start__@plt+0x385>
 8048840:	31 ff                	xor    edi,edi
 8048842:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048848:	83 ec 04             	sub    esp,0x4
 804884b:	55                   	push   ebp
 804884c:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048850:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048854:	ff 94 bb f4 fe ff ff 	call   DWORD PTR [ebx+edi*4-0x10c]
 804885b:	83 c7 01             	add    edi,0x1
 804885e:	83 c4 10             	add    esp,0x10
 8048861:	39 fe                	cmp    esi,edi
 8048863:	75 e3                	jne    8048848 <__gmon_start__@plt+0x368>
 8048865:	83 c4 0c             	add    esp,0xc
 8048868:	5b                   	pop    ebx
 8048869:	5e                   	pop    esi
 804886a:	5f                   	pop    edi
 804886b:	5d                   	pop    ebp
 804886c:	c3                   	ret    
 804886d:	8d 76 00             	lea    esi,[esi+0x0]
 8048870:	f3 c3                	repz ret 

Disassembly of section .fini:

08048874 <_fini@@Base>:
 8048874:	53                   	push   ebx
 8048875:	83 ec 08             	sub    esp,0x8
 8048878:	e8 c3 fc ff ff       	call   8048540 <__gmon_start__@plt+0x60>
 804887d:	81 c3 53 17 00 00    	add    ebx,0x1753
 8048883:	83 c4 08             	add    esp,0x8
 8048886:	5b                   	pop    ebx
 8048887:	c3                   	ret    
