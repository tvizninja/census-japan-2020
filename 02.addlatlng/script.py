#!/usr/bin/env python3
# script.py: meshnum to latlng

import pandas as pd

def m3tolatlng (m):
    m = str(m)
    lat = int(m[0:2])*2/3 + int(m[4:5])/12 + int(m[6:7])/120 + 1/240
    lng = int(m[2:4])+100 + int(m[5:6])/8  + int(m[7:8])/80  + 1/160
    return (lat, lng)

def m5tolatlng (m):
    m = str(m)
    lat = int(m[0:2])*2/3 + int(m[4:5])/12 + int(m[6:7])/120 + (2<int(m[8:9]  )  )/240 + (2<int(m[9:10]  )  )/480 + 1/960
    lng = int(m[2:4])+100 + int(m[5:6])/8  + int(m[7:8])/80  + ((int(m[8:9])-1)%2)/160 + ((int(m[9:10])-1)%2)/320 + 1/640
    return (lat, lng)

df = pd.read_csv('../01.download/m5pop-2020.csv.gz', sep=',')
df['lat'] = df['KEY_CODE'].apply(lambda x: m5tolatlng(x)[0])
df['lng'] = df['KEY_CODE'].apply(lambda x: m5tolatlng(x)[1])
#df.to_csv('m5pop-2020-latlng.csv')
df.to_csv('m5pop-2020-latlng.csv.gz')
