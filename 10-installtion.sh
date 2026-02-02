#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run scrpit with root user"
    exit 1
fi

echo "installing nginx"
apt install nginx -y

if [ $? -ne 0 ]; then
    echo  "INstalling nginx .....failure"
    exit 1
else 
    echo "Installing nginx is sucusses"
fi