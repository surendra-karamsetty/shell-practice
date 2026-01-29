#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run the script with sudo user"
    exit 1
else
    echo "Script was executed with sudo user hence installing the package"
fi

mkdir -p $LOG_FOLDER

VALIDATION(){
    if [ $1 -ne 0 ]; then
        echo "$2 ..FAILED"
        exit 1
    else
        echo "$2 ..SUCCESS"
    fi
}

for package in $@
do
    dnf install $package -y &>> $LOG_FILE
    VALIDATION $? "$package installing"
done
