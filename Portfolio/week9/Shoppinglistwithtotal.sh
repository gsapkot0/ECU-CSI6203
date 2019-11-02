#!/bin/bash
#Displaying all the text of the shopping list csv file.
awk 'BEGIN { FS=","; currency = "$";
    print ("Item         | Quantity | Price      | Amount")
    } 
    {     
        printf ("%-12s | %2d       | %-10s | %-10s\n" ,$1,$2,"$"$3, $2*$3)
    }' ./shopping.csv
awk -F',' 'BEGIN {sumquantity=0};
{sumquantity=sumquantity+$2}
{sumprice=sumprice+$3}
{Amount=($2*$3)}
{totalsum=totalsum+($2*$3)}
END {
    printf "%-12s | %-8s | %-8s   | %-10s\n",
    "TOTAL", sumquantity, "$"(sumprice), "$"(totalsum)
       NR
    }' shopping.csv
    echo ""