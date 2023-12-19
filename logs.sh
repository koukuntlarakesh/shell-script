#!/bin/bash
ID=$(id -u) 

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
E="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started at $TIMESTAMP" &>> $LOGFILE

if  [ $ID -ne 0 ] 
then 
{
    echo "Error please run with root user"
    exit 1
}
else
{
    echo "You are root user"
}
fi
validate() {
if [ $1 -ne 0 ]
then
    echo -e " $R ERROR:: $E Installing $2 is failed"
    exit 1
else
    echo -e "Installing $2 is $G SUCCESS $E"
fi
}


yum install mysql -y &>> $LOGFILE

validate $? "my sqll"

yum install git -y &>> $LOGFILE
validate $? "git"
