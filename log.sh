#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ USERID -ne 0 ]; then
    echo "Please execute the script with sudo user"
    exit 1
else
    echo "Script is executed with sudo user hence installing the software"
fi

mkdir -p $LOG_FOLDER

VALIDATION(){
    if [ $1 -ne 0 ]; then
        echo "$2 ..FAILED"
        exit 1
    else
        echo "$2 ..SUCESS"
    fi
}

dnf install nginx -y &>> LOG_FILE
VALIDATION $? "Installing nginx"

dnf install -mysql -y &>> LOG_FILE
VALIDATION $? "Installing mysql"