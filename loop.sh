#!/bin/bash
ID=$(id -u)
R="/e[31m"
G="/e[32m"
Y="/e[33m"
N="/e[0m"
if [ $ID -ne 0 ]
then
{
    echo "$R ERROR....$N RUN WITH ROOT USER"
}
else
{
    echo "$G YOU ARE ROOT USER $N"
}
fi
VALIDATE ()
{
    if [ $1 -ne 0 ]
    then
    { 
        echo "$2 ..... $R ERROR....$N "
    }
    else
    {
        echo "$2 installation $G Success.....$N"
    }
}

for package in $@
do
{
    yum list installed $package
    if [ $? -ne 0 ] 
    then
    {
      yum install -y $package
      VALIDATE  $? $package
      # Checking the installation of each packages. If any fails, it will print an error message and exit with a non-
    }
    else
    {
       echo "package is already installed..... $Y SKIPPING $N"
    }

    
}