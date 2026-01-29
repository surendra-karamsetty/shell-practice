#!/bin/bash

USERID=$(id -u)

if [ $USER -nq 0 ]; then
    echo "Please run the script woth sudo user"
    exit 1
else
    echo "Executed the script with sudo user hence installing the nginx"
fi

VALIDATION(){
    if [ $1 -nq 0 ]; then
        echo "$2 .. FAILED"
        exit 1
    else
        echo "$2 .. COMPLETED"
    fi
}

dnf install nginx -y

VALIDATION $! "nginx installation"

dnf install mysql -y

VALIDATION $! "mysql instalation"