#!/bin/bash
#Author:Gaurav Sapkota
#Edith Cowan University
echo "Enter two numbers:"
read A
read B
echo "Enter choice:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
#calculations
case $ch in
1) ans=$(( A + B ))
echo -e "\033[34m $A+$B = $ans\e[0m"
;;
2) ans=$(( A - B ))
echo -e "\033[32m $A-$B = $ans\e[0m"
;;
3) ans=$(( A * B ))
echo -e "\033[31m $A*$B = $ans\e[0m"
;;
4) ans=$(( A / B ))
echo -e "\033[35m $A/$B = $ans\e[0m"
;;
esac
echo "Result : $ans"
exit 0