import requests


for i in range(1000):
    r = requests.get(f'http://192.168.0.4/content/{i}/text.txt', stream=True)
    print(i,len(r.text))