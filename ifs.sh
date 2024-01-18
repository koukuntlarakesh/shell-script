#!/bin/bash



SOURCE_DIRE=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -f $SOURCE_DIRE ]
then
   
    echo -e "$R Source file does not exit $N"
    exit 1
else
   {
    echo -e "$G Source exits $N"
   }
fi 

FILES_TO_DELETE=$(find $SOURCE_DIRE -type f -mtime +14 -name "*.log")

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
echo "username:$username"
echo "password:$password"
done <<< $FILES_TO_DELETE
