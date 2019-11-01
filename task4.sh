#!/bin/bash
echo -e "name of files $#\n"
if  [ "$#" -lt "3" ]; then
echo -e "Error Message"
exit 1
elif [ "$#" eq "3" ] && [ "$*"=-f ]; then
unset -v latest
for file in "$week3"; 
if [ "$1" -nt "$2" ] && [ "$1" -nt "$3" ]; then
echo -e "\n"$1" is the newer file\n"
if [ "$2" -nt "$1" ] && [ "$2" -nt "$3" ]; then
echo -e "\n"$2" is the newer file\n"
if [ "$3" -nt "$1" ] && [ "$3" -nt "$2" ]; then
echo -e "\n"$3" is the newer file\n"
exit 1
fi 

elif [ "$#" -gt "3" ]; then
echo -e "\n Error \n" 
exit 1
fi
exit 0