#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
echo "1.Create folder"
echo "2.List files in a folder"
echo "3.Copy a folder"
echo "4.Save a password"
echo "5.Read a password"
echo "6.Print newest file"
echo "7.Calculate"
echo "8.Check a lines for files and directories"
echo "9.Create a megafolder"
echo "10.Ping and Download a website"
echo "11.Find the third number"
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
bash ~/CSI6203/Portfolio/week3/argumentcount.sh
elif [[ $num == 7 ]]
then
bash ~/CSI6203/Portfolio/week4/simplecalculator.sh
elif [[ $num == 8 ]]
then
bash ~/CSI6203/Portfolio/week5/filenames.sh
elif [[ $num == 9 ]]
then
bash ~/CSI6203/Portfolio/week5/megafoldermaker.sh
elif [[ $num == 10 ]]
then
bash ~/CSI6203/Portfolio/week5/internetdownloader.sh
elif [[ $num == 11 ]]
then
bash ~/CSI6203/Portfolio/week5/loop.sh
fi 
exit 0