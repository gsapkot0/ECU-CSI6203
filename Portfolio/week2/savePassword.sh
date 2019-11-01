#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
read -p "Type a folder name:" folderName
# read -p is the user input that is taken within the variable
mkdir $folderName
#mkdir is used to make a directory
read -s -p "Type your secret password" password
#read -s is used as the secret status of the text
echo -e "Your secret password is $password" > secret.txt 
#echo is used to display the variable content
mv secret.txt $folderName
#mv is used to move a file or directory from one directory to other
exit 0