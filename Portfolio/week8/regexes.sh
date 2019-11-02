#!/bin/bash
#This command searches all sed statements
grep -r sed
echo -e "All sed statements"
#This command searches all lines starting with letter m.
grep -r '^m'
echo -e "All lines starting with letter m"
#This command searches all lines having only three digit number.
grep -r '[0-9][0-9][0-9]'
echo -e "All lines containing three digit numbers."
#This command searches all lines starting with vowel.
grep -r '^[a,e,i,o,u]'
echo -e "All lines that start with vowel."
#This command searches all lines containing loops.
grep -r '.*(.*)'
echo -e "All lines that contain loops"
#This command searches all lines containing at least three words.
grep -r 'echo "[.*][.*][.*}.*"'
echo -e "All echo statements with at least three words."