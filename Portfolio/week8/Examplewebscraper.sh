#!/bin/bash
#Curl command is used to get the website and grep command is used to get the title of the page
#Html tag of the title is removed by using sed command
curl -s http://example.com |\
tr '\n' ' ' |\
grep -oE '<div>.*<\/div>' |\
sed -e 's/<[^>]*>//g'