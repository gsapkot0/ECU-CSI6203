#!/bin/bash
echo "Your shopping list is as follows: "
awk 'BEGIN {
    FS=","
}
/^[aeiou]/ {
    print "starts with a vowel: " $1
}' ../week9/shopping.csv
awk 'BEGIN {
    FS=","
}
/^o/{
    print "Lines starting with letter o are: "$1
}' ../week9/shopping.csv
echo -e "Lines having more than one word"
awk -v count=1 'NF>count' ../week9/shopping.csv
awk 'BEGIN {
    FS=","
}
!/\./{
    print "whole number price: " $1
}' ../week9/shopping.csv