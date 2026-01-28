#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 20 ]; then
echo "Given number is $NUMBER is grater than 20"
elif [$NUMBER -eq 20]; then
echo "Gien number is $NUMBER is equal to 20"
elif [$NUMBER -lt 20]; then
echo "Given number is $NUMBER is less than 20"
fi
