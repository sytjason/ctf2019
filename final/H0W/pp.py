#!/usr/bin/env python
import sys
import struct

f = open('./exp.out').read().split()

print(b''.join([struct.pack('<i', int(x)) for x in f]))
