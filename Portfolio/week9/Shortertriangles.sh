#!/bin/bash
#using awk to shortening the text
bash ../week6/triangles.sh | awk '{ sub(/The area for a triangle with base/, "Base: ") }1' | awk '{ sub(/and height/, "Height: ") }1' | awk '{ sub(/is: /, "Area: ")}1'
#calculating the total area of triangle
bash ../week6/triangles.sh | awk -f ':' '{sum += $2} END {print "\033[30m Total Area is : \033[0m " "\033[31m" sum "\033[0m"}'