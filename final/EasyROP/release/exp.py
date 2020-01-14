#!/usr/bin/env python

from pwn import *

context.arch = 'i386'
r = process('./EasyROP')

gdb.attach(r)

r.sendline("a" * 30)
r.sendline("b" * 30)





