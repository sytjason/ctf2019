#!/usr/bin/env python
from pwn import * 
from Crypto.Util.number import *


# nc edu-ctf.csie.org 10192

# r = process('./server.py')
r = remote('edu-ctf.csie.org', 10192)

# get cipher text
r.sendlineafter('> ', '1')
ct = int(r.recvline()[4:])
r.recvline()
e = 65537
n = int(r.recvline()[4:])
r.success("cipher: {}".format(ct))
r.success("n: {}".format(n))

upper_limit = n
lower_limit = 0

output_interval = {}
for i in range(16):
    output_interval[(-i * n) % 16] = i
numerator = 0

for i in range(1, 1024 // 4 + 5):
    print(i)
    r.sendlineafter('> ', '2')
    chosen_ct = int((ct * pow(16 ** i, e, n)) % n)
    r.sendline(str(chosen_ct))
    output = r.recvline()
    output = int(output[4:])

    numerator = numerator * 16 + output_interval[output]
    upper_limit = ((numerator + 1) * n) // (16 ** i) 
    lower_limit = (numerator * n) // (16 ** i)

    print("upper: {}\nlower: {}".format(upper_limit, lower_limit))

    if upper_limit - lower_limit <= 1:
        break

r.success("get message: {}".format(long_to_bytes(upper_limit)))







r.interactive()
