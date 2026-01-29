#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

### We need to give -e while we are giving the colour codes ##

echo -e "$R Hello world $N, $B I am learing shell $N"