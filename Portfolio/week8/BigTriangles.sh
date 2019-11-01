#!/bin/bash
bash ../week7/ShorterTriangles.sh | grep -E '.*Area. \<[0-9]{2}\>' 
echo -e "\033[30m The results having only 2 digits area are"