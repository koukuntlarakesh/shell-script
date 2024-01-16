#!/bin/bash

SOURCE_DIRE=/tmp/shell-scripts-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -d "$DIRECTORY"]
then
   
    echo -e "$R Source Directory does not exit "
else
   {
    echo -e "$G Source exits"
   }
fi 

FILES_TO_DELETE=$(find . -type f -mtime +14 -name "*.log")

while IFS= read r line
do
{
    echo "Deleting files :$line"
}
done <<< $FILES_TO_DELETE