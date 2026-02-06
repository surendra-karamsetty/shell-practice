#!/bin/bash

LOG_DIR=/home/ec2-user/app-log
LOG_FILES="$LOG_DIR/$0.log"

mkdir -p $LOG_DIR

if [ ! -d $LOG_DIR]; then
    echo "$LOG_DIR does not exist"
    exit 1
fi

FILES_TO_DELETE=$(find $LOG_DIR -name "*.log" -mtime +14)

while IFS= -r read filepath;
do
echo "Deleting file :$filepath"
rm -f $filepath
echo "Deleted file :$filepath"
done