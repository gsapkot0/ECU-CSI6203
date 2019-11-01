#!/bin/bash
echo ""
awk 'BEGIN {
    FS=",";
    printf("--------------------\n")
    printf "%-15s | %-15s | %-15s | %-10s\n","Item","Quantity","Cost","Total"
    Printf(---------------------\n")
    }
    {
        printf "%-15s | %-15s | %-15s | %-10s\n",
        $1,$2,"$"$3,"$"($2*$3)
    } END {
    }' shopping.csv
awk -F',' 'BEGIN {sumquantity=0};
{sumquantity=sumquantity+$2}
{sumprice=sumprice+$3}
{totalsum=totalsum+($2*$3)}
END {
    printf "%-15s | %-15s | %-15s | %-10s\n",
    "TOTAL", sumquantity, "$"(sumprice), "$"(totalsum)
    printf("------------------\n")
    printf "Total items: "
    NR
    }' shopping.csv
    echo ""