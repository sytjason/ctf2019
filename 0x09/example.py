#!/usr/bin/env python
import requests
import urllib
import base64
from padding_oracle import *

url = 'https://edu-ctf.csie.org:10190/party.php'
sess_id = 'fhqvkqfm8ggfng299mnag178q6'
flag = 'VOTPIhk2%2B%2FUAtTv6enX8BxSzZsJXuEZkvJiVE83qMvB9ZnKuSB8eS1l%2FVQIQC0jQVzA1Tgxy%2Feb37TfYv3D6PXfnggFYnZKWVuV5CulWF3QDElIGiuhi3CVxxyggxyHW'
sess = requests.Session()

def oracle(cipher):
    r = sess.get(url, cookies={'PHPSESSID': sess_id, 'FLAG': urllib.parse.quote(base64.b64encode(cipher).decode())}, verify=False)
    # return 'SUCCESS' in r.text
    return not 'CHEATER' in r.text

num_threads = 64

flag = base64.b64decode(urllib.parse.unquote(flag))
print(flag)


cipher = flag
block_size = 16

plaintext = padding_oracle(cipher, block_size, oracle, num_threads)

print(remove_padding(plaintext).decode())
