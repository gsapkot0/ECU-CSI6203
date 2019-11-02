#!/bin/bash
#using awk to shortening the text
#The script uses sed command to replace base with Base and height with height.
#The word area is replaced with Area .
bash ../week6/Triangles.sh | awk '{ sub(/The area for a triangle with base/, "Base: ") }1' | awk '{ sub(/and height/, "Height: ") }1' | awk '{ sub(/is: /, "Area: ")}1'
bash ../week6/Triangles.sh | awk -F ':' '{sum += $2} END {print "Total Area is: " "\033[33m" sum "\033[0m"}'