#!/bin/bash
ID=$(id -u)

if  [ $ID -ne 0] 
then 
{
    echo "Error please run with root user"
}
else
{
    echo "You are root user"
}
fi


yum install mysql -y

if [ $? -ne 0 ]
then 
{
    echo "Installing my sql is success"
}
echo
{
    echo "error occured"
}
fi