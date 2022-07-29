#!/bin/bash

outf="m5pop-2010.csv"
rm ./*.zip
rm ./*.txt
awk 'BEGIN{f=0}f{print $0}/^##/{f=1}' $0 | while read u; do a="${u#*code=}"; b="${a%&*}"; curl -s "$u" > "$b.zip"; sleep 5; done
find . -name "*.zip" -exec unzip -j {} \;
rm ./*.zip
find . -name "tbl*.txt" | while read f; do iconv -f cp932 -t UTF-8 "${f}" -o "${f/tbl/utbl}"; done
echo "KEY_CODE,T000649001,T000649002,T000649003,T000649004" > "$outf"
# "m5,total,totalm,totalf,house"
# ",人口総数,男,女,世帯総数"
grep -h "^[0-9]" u*.txt | sed "s/\r//g" >> "$outf"
rm ./*.txt
gzip "$outf"

exit

## download file list
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=3927&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4630&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4730&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4731&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4829&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4830&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4831&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4929&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4930&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=4931&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5030&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5031&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5032&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5033&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5034&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5131&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5132&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5133&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5134&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5135&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5136&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5137&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5233&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5234&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5235&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5236&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5237&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5238&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5239&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5332&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5333&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5334&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5335&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5336&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5338&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5339&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5340&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5435&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5436&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5437&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5438&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5439&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5440&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5536&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5537&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5538&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5539&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5638&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5639&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5640&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5740&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5741&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5940&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=5941&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=6040&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=6140&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=6440&downloadType=2
https://www.e-stat.go.jp/gis/statmap-search/data?statsId=T000649&code=6441&downloadType=2