#!/bin/bash

URL="http://localhost"
response=$(curl -s -w "%{http_code}" $URL)
count=$(grep "${http_code}" access.log | wc -l)
http_code=$(tail -n1 <<< "$response")  # get the last line
content=$(sed '$ d' <<< "$response")   # get all but the last line which contains the status code

echo "http code" "$http_code" "$count"
