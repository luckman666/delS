#!/bin/bash
fileName=$1
now=`date +%Y%m%d%H%M`
read -p "Are you sure delete the file or directory $1? yes|no: " input
 
if [ $input == "yes" ] || [ $input == "y" ]
then
    mkdir -p /data/$now
    rsync -aR $1/ /data/$now/$1/
    /bin/rm -rf $1
elif [ $input == "no" ] || [ $input == "n" ]
then
    exit 0
else
    echo "Only input yes or no"
    exit
fi
