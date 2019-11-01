#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
echo -e "\n the number of files are $#\n"
if [ "$#" -lt "3" ]; then
echo -e "\n ERROR MESSAGE \n"
exit 1
elif [ "$#" -eq "3" ] && [ "$*"=-f ]; then
unset -v latest
for file in "$week3"; do
if [ "$1" -nt "$2" ] && [ "$1" -nt "$3" ]; then
echo -e "\n "$1" is the newer file \n"
elif [ "$2" -nt "$1" ] && [ "$2" -nt "$3" ]; then
echo -e "\n "$2" is the newer file \n"
elif [ "$3" -nt "$1" ] && [ "$3" -nt "$2" ]; then
echo -e "\n "$3" is the newer file \n"
exit 1
fi
done
elif [ "$#" -gt "3" ]; then
echo -e "\n ERROR \n"
exit 1
fi 
exit 0
