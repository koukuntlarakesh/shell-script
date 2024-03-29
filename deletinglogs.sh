#!/bin/bash

SOURCE_DIRE=/tmp/shell-script-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -d $SOURCE_DIRE ]
then
   
    echo -e "$R Source Directory does not exit $N"
    exit 1
else
   {
    echo -e "$G Source exits $N"
   }
fi 

FILES_TO_DELETE=$(find $SOURCE_DIRE -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "Deleting file:$line"
rm -rf $line
done <<< $FILES_TO_DELETE
