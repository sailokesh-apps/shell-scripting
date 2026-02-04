#!/bin/bash

#colours
R="\e[31m"
G="\e[32m"
y="\e[33m"
B="\e[34m"
N="\e[0m"

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with $R root user access $N" | tee -a $LOGS_FILE
    exit 1
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... $R FAILURE $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ... $G SUCCESS $Y" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs
do
    apt list -a $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, install now"
        apt install $package -y &>>$LOGS_FILE
        VALIDATE $? "$package installation"
    else
        echo "$G $package is already installed skip now $N"
    fi 
done