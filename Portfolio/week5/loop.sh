#!/bin/bash
#Author: Gaurav Sapkota
#Edith Cowan University
#for loop to print the every third number from 1 to 1000
for (( a=1;a<=1000;a=a+2 ))
do
echo "$a"
done
exit 0