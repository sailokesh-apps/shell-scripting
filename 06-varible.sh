#!/bin/bash

starttime=$(date +%s)

echo "scrpit executed at: $starttime"

sleep 10

endtime=$(date +%s)
TOTAL=$(($endtime-$starttime))

echo "script executed in : $TOTAL seconds"
