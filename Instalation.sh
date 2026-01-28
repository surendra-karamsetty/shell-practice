#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "This is installtion script you need to run with root user"
    exit 1
fi

echo "You have executed with root user so installing nginx"

START_TIME=$(date +%s)

echo "Script start time $START_TIME"

dnf install nginx -y

if [ $? -eq 0 ]; then

echo "nginx installation is done"

END_TIME=$(date +%s)

echo "Script end time $END_TIME"

TOTAL_TIME=$((END_TIME-START_TIME))

echo "Total time taken to install the nginx $TOTAL_TIME"