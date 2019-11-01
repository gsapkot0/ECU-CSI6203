#!/bin/bash
#This script is written to calculate the area of a triangle
area_triangle(){
echo " The area for a triangle with base: $b and height: $h is: " $(($b*$h/2))
}
#Using loops to repeat for base and height from 1 to 100
for (( b = 1; b <= 100; b++ )) do
for (( h = 1; h <= 100; h++ )) do
area_triangle $b $h
done
done
exit 0