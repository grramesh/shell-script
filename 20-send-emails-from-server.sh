#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #generally 75%
MESSAGE=""

#below is read command syntax

while IFS= read -r line
do
   USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
   FOLDER=$(echo $line | awk -F " " '{print $NF}')

   if [ $USAGE -ge $DISK_THRESHOLD ] 
    then
       MESSAGE="$FOLDER is more than $DISK_THRESHOLD, CURRENT usage: $USAGE" 
    fi    

done <<< $DISK_USAGE

echo "MESSAGE= $MESSAGE"
