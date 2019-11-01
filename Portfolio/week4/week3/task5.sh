#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
echo "1.create folder"
echo "2.list files in a folder"
echo "3.Copy a folder"
echo "4.Save a password"
echo "5.Read a password"
echo "6.Print newest file"
#echo is used to display the output
read num
#read is used to read the user input
echo
if [[ $num == 1 ]]
then
bash ~/CSI6203/Portfolio/week2/foldermaker.sh
elif [[ $num == 2 ]]
then 
bash ~/CSI6203/Portfolio/week2/folderLister.sh
elif [[ $num == 3 ]]
then
bash ~/CSI6203/Portfolio/week3/folderCopy.sh
elif [[ $num == 4 ]]
then
bash ~/CSI6203/Portfolio/week2/savePassword.sh
elif [[ $num == 5 ]]
then
bash ~/CSI6203/Portfolio/week3/readPassword.sh
elif [[ $num == 6 ]]
then
read $*
bash ~/CSI6203/Portfolio/week3/task4.sh
fi 
exit 0