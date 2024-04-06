#!/bin/bash
# Assumes you have aria2c (change accordingly if you differ)
# I chose 4 as the page limit, you are supposed to change it to your needs. 

for n in {1..4};
do 
curl -G "https://wallhaven.cc/api/v1/collections/$1/$2" -d "page=$n" | jq . | grep "path" >> gwy.txt
done
cat gwy.txt | cut -d '"' -f4 >> list.txt
rm gwy.txt
aria2c -x 16 -s 16 -i list.txt
