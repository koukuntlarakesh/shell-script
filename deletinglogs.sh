#!/bin/bash

SOURCE_DIRE=/tmp/shell-scripts-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
DIRECTORY=$(SOURCE_DIRE)

if [ ! -d "$DIRECTORY"]
then
   
    echo -e "$R Source Directory does not exit "
fi