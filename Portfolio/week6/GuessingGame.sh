#!/bin/bash
#This function prints a given error
printError(){
    echo -e "\033[31mEROOR:\033[0m $1"
}
#This function will get a value between the 2nd and 3rd arguments
getNumber(){
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 )); do
    printError "Input must be between $2 and $3"
    read -p "$1: "
done
}
while true;do
read -p "Please provide a number between 1 and 100 :" REPLY
if (( $REPLY == 42 )); then
echo -e "\033[32m You have guessed the right number\033[0m"
exit 0
elif (( $REPLY < 42 )); then
echo "Number is too low"
else
echo "Number is too high"
fi
done