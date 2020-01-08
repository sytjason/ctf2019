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

upper_limit = n
lower_limit = 0

for i in range(1, 1025):
    # print(i)
    r.sendlineafter('> ', '2')
    chosen_ct = (ct * pow(2 ** i, e, n)) % n
    print(chosen_ct)
    r.sendline(str(chosen_ct))
    output = int(r.recvline()[4:])
    

    if (output % 2) == 0:
        upper_limit = (upper_limit + lower_limit) / 2
    elif (output % 2) == 1:
        lower_limit = (lower_limit + upper_limit) / 2

    # print("upper: {}\nlower: {}".format(upper_limit, lower_limit))

r.success("get message: {}".format(long_to_bytes(upper_limit)))






r.interactive()
