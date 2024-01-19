#!/bin/bash

NAME=""
WISHES=""

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