from ctypes import *
from binascii import *

class Machine:

    def __init__(self, init):
        self.context = list(map(ord, init))
        self.op = {0:self.add,  1:self.cmp,  2:self.context,  3:self.empty,  6:self.pop,  7:self.push,  8:self.sub,  9:self.terminal}

    def empty(self, _):
        print("empty ")
        return len(self.context) == 0

    def e_start(self, code):
        for i in zip(*(iter(code),) * 2):
            if i != None:
                self.op[i[0]](i[1])

    def push(self, num):
        con = self.context
        self.context.append(num)
        print("{} push {}, {}".format(con, num, self.context))

    def pop(self, _):
        # assert len(self.context) < 1, 'You should sharpen your coding skill'
        con = self.context
        result, self.context = self.context[(-1)], self.context[:-1]
        print("{} pop, {}".format(con, self.context))
        return result

    def terminal(self, _):
        # assert len(self.context) < 1, 'You should sharpen your coding skill'
        print(self.context)
        if self.context[(-1)] == 0:
            print('You fail, try again')
            exit(0)

    def add(self, _):
        # assert len(self.context) < 2, 'You should sharpen your coding skill'
        con = self.context
        result, self.context = self.context[(-1)] + self.context[(-2)], self.context[:-2]
        self.context.append(c_int8(result).value)
        print("{} add, {}".format(con, self.context))

    def sub(self, _):
        # assert len(self.context) < 2, 'You should sharpen your coding skill'
        con = self.context
        result, self.context = self.context[(-1)] - self.context[(-2)], self.context[:-2]
        self.context.append(c_int8(result).value)
        print("{} sub, {}".format(con, self.context))

    def cmp(self, num):
        # assert len(self.context) < 1, 'You should sharpen your coding skill'
        print(self.context)
        print("cmp {} {}".format(self.context[(-1)],  num))
        self.context[-1] = 1 if self.context[(-1)] == num else 0

s = input('So, what is the flag ? >> ')

emu = Machine(s)
ops = {0:'add', 1:'cmp', 2:'context', 3:'empty', 6:'pop', 7:'push', 8:'sub', 9:'terminal'}
code = b'\x08\x00\x07\x08\x00\x00\x01d\t\x00\x00\x00\x014\t\x00\x073\x07\x01\x073\x08\x00\x00\x00\x01e\t\x00\x00\x00\x08\x00\x07c\x00\x00\x01\x00\t\x00\x00\x00\x074\x08\x00\x01\x00\t\x00\x06\x00\x01e\t\x00\x06\x00\x07Z\x08\x00\x01\x00\t\x00\x07h\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x07S\x08\x00\x01\x00\t\x00\x06\x00\x07_\x08\x00\x01\x00\t\x00\x06\x00\x07G\x08\x00\x01\x00\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01C\t\x00\x06\x00\x07\x00\x07\x01\x00\x00\x07\x02\x00\x00\x07\x03\x00\x00\x07\x04\x00\x00\x07\x05\x00\x00\x07\x06\x00\x00\x07\x07\x00\x00\x07\x08\x00\x00\x07\t\x00\x00\x07\n\x00\x00\x07\x0b\x00\x00\x07\x0c\x00\x00\x07\r\x00\x00\x07\x04\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x01w\t\x00\x06\x00\x010\t\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x13\x00\x00\x01\x00\t\x00'
# for i in zip(*(iter(code),) * 2):
    # if i != None:
        # print('{} {}'.format(ops[i[0]], i[1]))
emu.e_start(code)
print('Yeah, you got the flag')
# okay decompiling ./m4chine.pyc
