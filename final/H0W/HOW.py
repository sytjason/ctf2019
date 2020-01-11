# uncompyle6 version 3.6.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.6.6 (default, Jun 28 2018, 04:42:43)
# [GCC 5.4.0 20160609]
# Embedded file name: H0W.py
# Size of source mod 2**32: 387 bytes
import sys
import struct
from terrynini import *
if len(sys.argv) != 2:
    print('Usage: python3 H0W.py filename')
    exit(0)
nini3()  # JetBrains = fopen("output.txt", "w");
f = open(sys.argv[1], 'rb').read()
if len(f) % 4 != 0:
    f += (4 - len(f) % 4) * '\x00'
nini1()  # GitHub = time(0);
nini4()  # srand(GitHub);

for i in range(0, len(f), 4):
    nini6(nini5(struct.unpack('<i', f[i:i + 4])[0]))


print("returned from nini2():\n{}".format(nini2()))

for i in list(map(ord, nini2())):
    print(chr(i))
    nini6(i)

print('Complete')
# okay decompiling ./H0W.pyc
