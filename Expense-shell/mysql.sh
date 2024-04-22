#!/bin/bash
USERID=$(id -u)    #to check whether is having root access or not
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #It will log in tmp directory as .log   
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
B="\e[34m"


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

dnf install mysql-server -y &>>$LOGFILE
VALIDATE $? "Installing Mysql server" 

systemctl enable mysqld     &>>$LOGFILE
VALIDATE $? "Enabling mysql server"

systemctl start mysqld &>>$LOGFILE
VALIDATE $? "starting mysql server"

mysql_secure_installation --set-root-pass ExpenseApp@1 &>>$LOGFILE
VALIDATE $? "setting up root password"
