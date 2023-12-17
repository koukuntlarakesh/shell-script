#!/bin/bash
ID=$(id -u)

if  [ $ID -ne 0 ] 
then 
{
    echo "Error please run with root user"
}
else
{
    echo "You are root user"
}
fi
validate() {
if [ $1 -ne 0 ]
then
    echo "ERROR:: Installing $2 is failed"
    exit 1
else
    echo "Installing $2 is SUCCESS"
fi
}


yum install mysql -y

validate $? "my sql"

yum install git -y
validate $? "git"
