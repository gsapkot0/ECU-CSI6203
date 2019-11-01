#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
read -p "Please type a folder to open:" folderName
# read -p is the user input that is taken within the variable
ls "/home/student/CSI6203/Portfolio/$folderName"
# ls is used to list or display the contents of a directory.
exit 0
