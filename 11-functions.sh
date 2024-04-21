#!/bin/bash


USERID=$(id -u)

#Below Validate is Funtion name
VALIDATE(){    
        echo "Exit status: $1"
    echo "what are you doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user." 

fi

dnf install mysql -y
VALIDATE $? "Installing my sql"



dnf install git -y
VALIDATE $? "Installing my git"




echo "is still script proceeding"