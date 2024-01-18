#!/bin/bash


DISK_USAGE=$(df -hT | grep -vE 'tmp|File') #this gives the files with ut having tmp or file names
DISK_THRESHOLD=1 # setting the threshold value to 1

Message=""


while IFS= read line # here IFS will take the input as line by line
do
  usage=$(echo $line | awk '{print $6F}'| cut -d % -f1) # IN this usage awk specifies that coloum which we want to disply and cut removes the % symbol
  partition=$(echo $line | awk '{print $1F}')
  if [ $usage -ge $DISK_THRESHOLD ]
  then 
  Message+="High disk usage on $partition:$usage\n"
fi
done <<< $DISK_USAGE


echo "$Message" | mail -s "HIGH DISK USAGE" koukuntlarakesh@gmail.com # send message to the following mailing address