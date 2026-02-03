#!/bin/bash

USERID=$(id -u)
Logsfolder="/var/log/shell-script"
Logsfile="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run scrpit with root user"
    exit 1
fi

Validate(){

    if [ $1 -ne 0 ]; then
        echo  "$2 .....failure"
        exit 1
    else 
        echo "$2 is sucusses"
    fi

}

apt install nginx -y &>> $Logfile
Validate $? "Installing nginx"

apt install nodejs -y &>> $Logfile
Validate $? "Installing nodejs

