#!/usr/bin/env python

from pwn import * 

# nc edu-ctf.csie.org 10192

r = remote('edu-ctf.csie.org', 10192)

# get cipher text
r.sendlineafter('> ', '1')
ct = int(r.recvline()[4:])
r.recvline()
e = 65537
n = int(r.recvline()[4:])
r.success("cipher: {}".format(ct))
r.success("n: {}".format(n))



r.interactive()
