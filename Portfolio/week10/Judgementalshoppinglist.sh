#!/bin/bash
awk 'BEGIN {
    FS=",";
    
    printf("----------------------------------------------------------------------------\n")
    printf "%-12s | %-12s | %-12s | %-10s | %-10s\n",
    "Item",
    "Quantity",
    "Price",
    "Total",
    "Comment"
    printf("----------------------------------------------------------------------------\n")
    
    }
    {
        printf "%-12s | %-12s | %-12s | %-10s |\n",
        $1,
        $2,
        "$"$3,
        "$"($2*$3)
        {
            if($2*$3 > 5){print "Thats a bit expensive! Are you sure? "}
            else if($2 > 5) {print "Do you really need that many?"}
            else if($3 < 3) {print "Such a cheapstake!"} 
        }
        
    } END {
       
    }' ../week9/shopping.csv

    awk -F',' 'BEGIN {sumquantity=0};
        {sumquantity=sumquantity+$2}
        {sumprice=sumprice+$3}
        {totalsum=totalsum+($2*$3)}

        END {
            printf "%-12s | %-12s | %-12s | %-10s\n",
            "TOTAL", sumquantity, "$"(sumprice) , "$"(totalsum)
            printf("----------------------------------------------------------------------------\n")
            printf "Total Number of items %d ",
            NR
    }' ../week9/shopping.csv

    echo ""