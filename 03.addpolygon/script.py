#!/usr/bin/env python3
# script.py: meshnum to latlng

import os
import glob
import pandas as pd

def m3toPolygon (m):
    m = str(m)
    lat = int(m[0:2])*2/3 + int(m[4:5])/12 + int(m[6:7])/120 + 1/240
    lng = int(m[2:4])+100 + int(m[5:6])/8  + int(m[7:8])/80  + 1/160
    return "POLYGON (("+lng+" "+lat+", "+(lng+1/160)+" "+lat+", "+(lng+1/160)+" "+(lat+1/240)+", "+lng+" "+(lat+1/240)+", "+lng+" "+lat+"))"
    return (lat, lng)

def m5toPolygon (m):
    m = str(m)
    lat = int(m[0:2])*2/3 + int(m[4:5])/12 + int(m[6:7])/120 + (2<int(m[8:9]  )  )/240 + (2<int(m[9:10]  )  )/480
    lng = int(m[2:4])+100 + int(m[5:6])/8  + int(m[7:8])/80  + ((int(m[8:9])-1)%2)/160 + ((int(m[9:10])-1)%2)/320
    def f (x, y):
        return str(x) + " " + str(y)
    return "POLYGON (("+(", ").join([f(lng,lat), f(lng+1/320,lat), f(lng+1/320, lat+1/480), f(lng, lat+1/480), f(lng, lat)])+"))"

for f in glob.glob("../01.download/*.gz"):
    f = os.path.normpath(f)
    print(f)
    df = pd.read_csv(f, sep=',')
    df['geometry'] = df['KEY_CODE'].apply(lambda x: m5toPolygon(x))
    df.to_csv(f.split(os.sep)[-1].replace(r".csv", "-polygon.csv"), index=False)
