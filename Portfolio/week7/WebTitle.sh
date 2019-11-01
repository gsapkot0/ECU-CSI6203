#!/bin/bash
read -p "Type the URL of a file to download: " URL
read -p "Type the location to download the file: " location
wget -p $URL $location
#$ent/CSI6203/Portfolio/week7
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' $URL/index.html > webtitles.txt
echo -e "\033[32mDownload completed with the title:" 
cat webtitles.txt