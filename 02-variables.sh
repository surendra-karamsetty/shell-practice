#!/bin/bash

echo "All variables passed to the script $@"
echo "Number of variables passed to the script $#"
echo "script name $0"
echo "Present which directory you are in $PWD"
echo "who is running the script $USER"
echo "Home directory of the user $HOME"
echo "PID of the script $$"
sleep 10 &
echo "Background process id $!"
