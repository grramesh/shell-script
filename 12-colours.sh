#!/bin/bash

#colors command---> echo -e "e\[31m enter text "  30--> black 31-->RED -->32 GREEN --->33 YELLOW----> 34 blue-->35 PURPLE
# also we can split colour b/w two variables--> echo -e "e\[32m text e\[34m text" --->  e\[0m text FOR WHITE COLOUR

# To identify mistake--- view logs---> cd /tmp ---> ls -la ----> cat <file-name> ---> cd

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #It will log in tmp directory as .log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
B="\e[34m"


echo "script strated at: $TIMESTAMP " #JUST FOR USER EXPERIANCE
D=$(id -u)

#Below Validate is Funtion name 
VALIDATE(){    
       if [ $1 -ne 0 ]
      then
         echo -e "$2..$R FAILURE $N"
         exit 1
      else
         echo -e "$2.. $G SUCCESS $N"
    fi 
}

if [ $USERID -ne 0 ]
then 
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user." 

fi

dnf install mysql -y  &>>$LOGFILE
VALIDATE $? "Installing my sql"



dnf install git -y   &>>$LOGFILE
VALIDATE $? "Installing my git"

dnf install dockerr -y   &>>$LOGFILE
VALIDATE $? "Installing my docker"
