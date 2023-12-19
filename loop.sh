#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log" 
echo -e " $G LOGS BEGAN FROM $TIMESTAMP $N" &>> $LOGFILE
if [ $ID -ne 0 ]
then
{
    echo -e " $R ERROR.... $N RUN WITH ROOT USER"
}
else
{
    echo -e " $G YOU ARE ROOT USER $N "
}
fi
VALIDATE ()
{
    if [ $1 -ne 0 ]
    then
    { 
        echo -e " $2 ..... $R ERROR....$N "
    }
    else
    {
        echo -e " $2 installation $G Success.....$N "
    }
    fi
}

for package in $@
do
{
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ] 
    then
    {
      yum install -y $package &>> $LOGFILE
      VALIDATE  $? $package
      # Checking the installation of each packages. If any fails, it will print an error message and exit with a non-
    }
    else
    {
       echo -e "package is already installed..... $Y SKIPPING $N "
    }
    fi
    
}
done