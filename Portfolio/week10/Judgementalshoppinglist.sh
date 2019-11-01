#!/bin/bash
awk 'Begin {
    FS=",";
    printf "%-12s | %-12s | %-12s | %-10s | %-10s\n",
    "Items",
    "Quantity",
    "Price",
    "Total",
    "Comment"
    }
{
    printf "%-12s | %-12s | %-12s | %-10s |\n",
    $1,
    $2,
    "$"$3,
    "$"($2*$3)
    {
        if($2*$3 > 5){print "That is a bit expensive! Are you sure? "}
        else if($2 > 5) {print "Do you really need that many?"}
        else if($3 <3) {print "Such a cheapstake!"}
    }
} END {
}' ../week9/shopping.csv
awk -F',' 'BEGIN {sumquantity=0};
{sumquantity=sumquantity+$2}
{sumprice=sumprice+$3}
{totalsum=totalsum+($2*$3)}
END {
    printf "%-12s | %-12s | %-12s | %-10s\n",
    "TOTAL", sumquantity, "$"(sumprice), "$"(totalsum)
    printf "There are %d items in total!"
    NR
}' ../week9/shopping.csv