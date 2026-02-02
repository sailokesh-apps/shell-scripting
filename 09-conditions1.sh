#!/bin/bash

NUM=$1

if (( $NUM > 20 )); then
    echo "Given number $NUM is greater than 20"
elif (( $NUM == 20 )); then
    echo "Given number $NUM is equal to 20"
else
    echo "Given number $NUM is less than 20"
fi
