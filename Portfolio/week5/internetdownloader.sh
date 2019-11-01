#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
ping -c1 8.8.8.8
if [ "$?" -eq 0 ]; then
echo "Internet seems to be connected"
else 
echo "ERROR"
exit 1
fi
#Ask the user for website input or exit
read -p "Please type the URL of the website to download or exit" website
while [ "$website" != "exit" ]; do
#while loop is used to repeat the query till the user inputs exit
wget $website
read -p "Please type the URL of the website to download" website
done
echo "Thank You"
exit 0