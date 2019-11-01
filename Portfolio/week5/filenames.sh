#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
IFS=$'\n'
#IFS is the Internal Field Seperator
for line in $(cat filenames.txt); do
#checking if the line is a file or a directory
if [ -f "$line" ]; then
echo "$line File exists"
#echo is used to display the output
elif [ -d "$line" ]; then
echo "$line is a directory"
elif [ "$line" ]; then
echo -e "\n $line I don't know what that is! \n"
fi 
done
exit 0