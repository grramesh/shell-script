#!/bin/bash

set -e 
# set -e give on top ,then shell script checking manually for errors
# for good user experiance we are using validates if not 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user."
fi

dnf install mysql -y
dnf install git -y 

echo "is still script proceeding"