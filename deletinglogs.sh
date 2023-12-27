#!/bin/bash

SOURCE="/tmp/shellscripts-log"

if [ ! -d "$SOURCE" ]
then
{
    echo -e "$SOURCE is not exits"
}
fi

FILES_TO_DELETE=$(find $SOURCE -type f -mtime +14 -name "*.log")

while IFS= read -r line
do 
   echo "deleating files"
   rm -rf $line
done <<< $FILES_TO_DELETE
echo "Deleting completed!"