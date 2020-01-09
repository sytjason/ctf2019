#!/usr/bin/env python
from pwn import * 
from Crypto.Util.number import *
import math


# nc edu-ctf.csie.org 10192

# r = process('./server.py')
p = remote('edu-ctf.csie.org', 10192)

# get cipher text
p.sendlineafter('> ', '1')
ct = int(p.recvline()[4:])
p.recvline()
e = 65537
n = int(p.recvline()[4:])
p.success("cipher: {}".format(ct))
p.success("n: {}".format(n))

x = []
base = inverse(16, n)

for i in range(1024 // 4):
    p.sendlineafter('> ', '2')
    p.sendline(str(pow(base, i * e, n) * ct % n))
    r = int(p.recvline()[4:])
    xi = (r - (sum([ x[j] * pow(base, len(x) - j, n) for j in range(len(x)) ]) % n)) % 16
    x.append(xi)
    print(x)

res = []
max = math.floor(len(x) / 2)
for i in range(max):
    if (2 * i + 1) < len(x):
        tmp = x[2 * i] + 16 * x[2 * i + 1]
    else:
        tmp = x[2 * i]
    res.append(tmp)

print(''.join([chr(rr) for rr in res[::-1]]))



p.interactive()
