#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
read -p "Name the file you want to open:" file
#read -p is used to read the user input
if [ -f "$file" ]; then
cat "$file"
#cat is used to read a file
else
echo "sorry "$file" doesn't exist"
#echo is used to display the result
fi