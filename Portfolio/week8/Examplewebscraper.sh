#!/bin/bash
#Curl command is used to get the website and grep command is used to get the title of the page
#Html tag of the title is removed by using sed command
echo -e "Title of the page:"
curl -s http://www.example.com | grep -o "<title>.*</title>" | sed 's/<title>//' | sed 's/<\/title>//'
echo -e "Content of the page:"
curl -s http://www.example.com | sed -n '/<p>/,/<\/p>/{ /html>/d; s/<[^>]*>//g; p}' | sed 's/<p>//' | sed 's/<\/p>//' 