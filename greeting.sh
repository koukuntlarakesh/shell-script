#!/bin/bash

NAME=""
WISHES="GOOD MORNING" #ITS A DEFAULT IF USER WANT TO CHANGE HE CAN DOO


USAGE(){
    echo "Usage:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, specify the name mandatory"
    echo "-w, specify the wishes ex,Good morning"
    echo "-h,Displays Help and Exit"


}
while getopts "n:w:h" opt; do
    case $opt in
         n) NAME="$OPTARG";;
         w) WISHES="$OPTARG";;
         \?) USAGE;exit;;
         :) USAGE; exit;;
         h|*) USAGE; exit;;
   
    esac
done

#if [ -z "$NAME" ] || [ -Z "$wishes" ]; then
if [ -z "$NAME" ]; then
echo "ERROR: Both -n and -w are mandatory options."
USAGE
exit 1
fi

echo "Hello $NAME ,$WISHES. I have been learning Shell Scripting."
