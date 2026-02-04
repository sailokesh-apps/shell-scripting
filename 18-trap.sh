#!/bin/bash

set -e 

trap 'echo "there is an error  in $LINENO, comand $BASH_COMMAND"' ERR

echo "\e[32m my name is sai \e[0m"
echo "I am working here"
echo "which comapany"
ehco "joindevops"