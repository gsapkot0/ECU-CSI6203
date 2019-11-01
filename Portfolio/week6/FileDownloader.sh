#!/bin/bash
#Script for downloading a webpage to a specific location
file_downloader(){
    read -p "Type the URL of the file: " URL
    read -p "Type the location to download the file: " location
    wget -p $URL $location
}
file_downloader
echo -e "\033[32m File Downloaded."