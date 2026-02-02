#!/bin/bash

VALUE1=189
VALUE2=111

SUM=$(($VALUE1+$VALUE2))

echo "sum is here $SUM" 

#array or list 
FRUITS=("Apple" "Ball" "Cat")

echo "fruits are: ${FRUITS[2]}"
echo "fruits are: ${FRUITS[0]}"
echo "fruits are: ${FRUITS[1]}"

