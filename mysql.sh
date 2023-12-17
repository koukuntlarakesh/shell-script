#!/bin/bash
ID=$(id -u)

if  [$ID -ne 0]
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