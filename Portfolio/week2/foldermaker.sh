#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
read -p "type the name of the folder you would like to create:" folderName
#read -p is the user input that is taken within the variable
mkdir "$folderName"
#mkdir is used to create a new directory
exit 0
