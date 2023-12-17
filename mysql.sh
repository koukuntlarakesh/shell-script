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


yum install mysql -y
if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi

if [ $? -ne 0 ]
then 
{
    echo "not installing"
   
}
else
{
    echo "SUCCESS"
}
fi