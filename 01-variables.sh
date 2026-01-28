#!/bin/bash

START_TIME=$(date +%s)

echo "script start time $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "Script end time $END_TIME"

TOTAL_TIME=$((END_TIME-START_TIME))

echo "Total time taken to run this script $TOTAL_TIME sec"


