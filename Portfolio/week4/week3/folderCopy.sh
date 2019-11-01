#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
read -p "Type the name of the folder to copy:" FolderName
#read -p is used to take the value for the variable
#if the name is a valid folder
if [ -d "$FolderName" ]
then
read -p "type the name of the destination folder:" folder
#read -p is used to take the value for the variable
cp -r "$FolderName" "$folder"
#cp is used to copy the file or folder
else
echo "The folder couldn't be found"
#echo is used to display the result
fi
exit 0