#!/bin/bash

NUMBER1 =$1
NUMBER2 =$2


SUM= $(( $NUMBER1 + $NUMBER2 ))    
#DIFF=$(echo "$NUMBER1 - $NUMBER2")
      # using bc for the subtraction because bash doesn'
echo "the number of arguments :$#"
echo "the values are :$@"
echo "the file name is: $0"