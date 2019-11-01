#!/bin/bash
read -p "Enter the file name: " file
sed -i '/Linux/i The next line contains the word Linux!' $file
echo "editing file..."
echo "done!"