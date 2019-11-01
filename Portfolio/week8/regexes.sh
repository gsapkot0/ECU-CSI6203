#!/bin/bash
grep -r sed
echo -e "\033[32m All sed statements\033[0m"
grep -r '^m'
echo -e "\033[32m All lines starting with letter m\033[0m"
grep -r '[0-9][0-9][0-9]'
echo -e "\033[32m All lines containing three digit numbers.\033[0m"
grep -r '^[a,e,i,o,u]'
echo -e "\033[32m All lines that start with vowel.\033[0m"
grep -r '.*(.*)'
echo -e "\033[32m All lines that contain loops\033[0m"
grep -r 'echo "[.*][.*][.*}.*"'
echo -e "\033[32m All echo statements with at least three words.\033[0m"