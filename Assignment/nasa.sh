#!/bin/bash
printf "\nConnecting to nasa.gov ...\n"
#Save the content to the directory.
PICTURES_DIR=~/Pictures
DESCRIPTION_DIR=~/Assignment
function get_page {
    echo "Downloading page to find image"
    wget http://apod.nasa.gov/apod/ --quiet -O /tmp/apod.html
    grep -m 1 jpg /tmp/apod.html | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' > /tmp/pic_url
} 
# Set date
TODAY=$(date +'%Y%m%d')
# If the picture is not downloaded for the current date
if [ ! -e ~/Pictures/${TODAY}_apod.jpg ]; then
    echo "We don't have the picture saved, save it"
    get_page
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "Picture URL is: ${PICURL}"
    echo  "Downloading image"
    wget --quiet $PICURL -O $PICTURES_DIR/${TODAY}_apod.jpg
# Else if we have it already, check if it's the most updated copy
else
    get_page
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "Picture URL is: ${PICURL}"
    # Get the filesize
    SITEFILESIZE=$(wget --spider $PICURL 2>&1 | grep Length | awk '{print $2}')
    FILEFILESIZE=$(stat -c %s $PICTURES_DIR/${TODAY}_apod.jpg)
    # If the picture has been updated
    if [ $SITEFILESIZE != $FILEFILESIZE ]; then
        echo "The picture has been updated, getting updated copy"
        rm $PICTURES_DIR/${TODAY}_apod.jpg
        # Got the link to the image
        PICURL=`/bin/cat /tmp/pic_url`
        echo  "Downloading image"
        wget --quiet $PICURL -O $PICTURES_DIR/${TODAY}_apod.jpg
# If the picture is the same
    else
        echo "The Picture which is downloaded is same"
    fi
fi
# Printing the content of the image
 desc=$(curl -s https://apod.nasa.gov/apod/ | 
 sed -n '/Explanation:/,/<center>/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g' | sed -e 's/^.*>//g' )
 printf "\n$desc\n"
# Printing the credit of the image
 credits=$(curl -s https://apod.nasa.gov/apod/ |
 sed -n '/redit/,/Explanation/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g; s/^.*>//g' |
 sed -e 's/<a.*">//g' |
 sed -e 's/<.*>//g' | 
 sed -e 's/Explanation//g' | 
 sed -e 's/ Image Credit &//gi'| 
 sed -e 's/Copyright//gi;s/Image Credit://gi')
 printf "Image Credit: $credits"
 printf "\nDownload Finished\n"