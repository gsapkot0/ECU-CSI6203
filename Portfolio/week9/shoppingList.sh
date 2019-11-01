#!/bin/bash
#Displaying all the text of the shopping list csv file.
awk 'BEGIN {
    FS=",";
    echo ("--------\n")
    printf ("%-15s | %-15s | %-10s\n"),"Item","Quantity","Cost"
    echo ("--------\n")
    }
    {
        prinf ("%-15s | %-15s | %-10s\n"),$1,$2,"$"$3
    } END {
        printf ("%-15s | %-15s | %-10s\n",
        echo "Total number of items are %d\n",
        NR
    }' shopping.csv
