#!/bin/bash

if [ $USERID -ne 0 ]; then
    echo "This is installtion script you need to run with root user."
fi

echo "You have executed with root user so installing nginx."

dnf install nginx -y

echo "nginx installation is done."